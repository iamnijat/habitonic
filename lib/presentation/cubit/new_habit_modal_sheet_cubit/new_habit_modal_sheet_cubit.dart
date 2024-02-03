import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitonic/core/use_cases/use_case.dart';
import 'package:habitonic/data/models/view_model/recent_emojis/recent_emojis_view_model.dart';
import 'package:habitonic/domain/use_cases/habits_use_cases/store_habit.dart';
import 'package:rxdart/rxdart.dart';

import '../../../config/constants/durations.dart';
import '../../../core/services/router_service/index.dart';
import '../../../data/models/view_model/habit_view/habit_view_model.dart';
import '../../../domain/use_cases/emojis_use_cases/get_recent_emojis.dart';
import '../../../injection_container.dart';

enum NewHabitModalBottomSheetState { checking, error, done }

class NewHabitModalBottomSheetCubit
    extends Cubit<NewHabitModalBottomSheetState> {
  NewHabitModalBottomSheetCubit(
      {required this.getRecentEmojis, required this.storeHabit})
      : super(NewHabitModalBottomSheetState.done);

  final GetRecentEmojis getRecentEmojis;
  final StoreHabit storeHabit;

  /// Initializations of Services
  RouterService get _navigation => getIt<RouterService>();

  /// Initializations of Variables
  List<RecentEmojisViewModel> recentEmojis = [];

  /// RxDart Stream Controllers
  final _habitNameController = BehaviorSubject<String>.seeded('');
  final _habitEmojiController = BehaviorSubject<String>.seeded('');
  final _generatedRepeatNumbersController =
      BehaviorSubject<List<int>>.seeded([1, 2, 3, 4]);
  final _habitRepetitionController = BehaviorSubject<int>.seeded(1);

  void fetchRecentEmojis() {
    final result = getRecentEmojis(NoParams());

    result.when(
      error: (_) {
        emit(NewHabitModalBottomSheetState.error);
        return;
      },
      success: (emojis) {
        recentEmojis = emojis;
      },
    );
  }

  Future<void> createHabit(BuildContext _context) async {
    _emittingState(NewHabitModalBottomSheetState.checking);

    final _model = _createHabitModel();

    final result = storeHabit(_model);

    if (result.isSuccess()) {
      await _addDelay(DurationsUtil.oneSecondDuration);
      _emittingState(NewHabitModalBottomSheetState.done);

      Fimber.d('New habit was added successfully');
      back(_context, habit: _model);
    } else if (result.isError()) {
      emit(NewHabitModalBottomSheetState.error);
      return;
    }
  }

  void updateHabitName(String _habitName) {
    if (_checkEmptyFormField(_habitName)) {
      _habitNameController.add('');
      _addErrorCase();
    } else {
      _habitNameController.add(_habitName);
    }
  }

  void updateHabitEmoji(String _emojiStr) =>
      _habitEmojiController.add(_emojiStr);

  void updateHabitRepetition(int _repeatTimes) =>
      _habitRepetitionController.add(_repeatTimes);

  void generateNextNumbers() {
    _generatedRepeatNumbersController
        .add(_range(_numbersValue.last + 1, _numbersValue.last + 4));
  }

  HabitViewModel _createHabitModel() => HabitViewModel(
      createdAt: _currentDate,
      emoji: _habitEmojiValue,
      name: _habitNameValue,
      totalRepeatTimes: _habitRepetitionValue);

  List<int> _range(int from, int to) =>
      List.generate(to - from + 1, (i) => i + from);

  void _addErrorCase() => _habitNameController.addError("The field is empty");

  _addDelay(Duration _delay) async => await Future.delayed(_delay);

  void _emittingState(NewHabitModalBottomSheetState _state) => emit(_state);

  void back(BuildContext _context, {HabitViewModel? habit}) =>
      _navigation.back(_context, result: habit);

  @override
  Future<void> close() {
    _habitNameController.close();
    _habitEmojiController.close();
    _habitRepetitionController.close();
    _generatedRepeatNumbersController.close();
    return super.close();
  }
}

/// Current Date Extension
extension NewHabitModalBottomSheetCubitCurrentDate
    on NewHabitModalBottomSheetCubit {
  DateTime get _currentDate => DateTime.now();
}

/// Getter for checking empty form field
extension NewHabitModalBottomSheetCubitCheckingEmptyFormFieldExtension
    on NewHabitModalBottomSheetCubit {
  bool _checkEmptyFormField(value) => value == '';
}

/// RxDart Extensions
extension NewHabitModalBottomSheetCubitHabitNameControllerRxExtension
    on NewHabitModalBottomSheetCubit {
  Stream<String> get habitNameStream => _habitNameController.stream;
  String get _habitNameValue => _habitNameController.value;
}

extension NewHabitModalBottomSheetCubitHabitEmojiControllerRxExtension
    on NewHabitModalBottomSheetCubit {
  Stream<String> get habitEmojiStream => _habitEmojiController.stream;
  String get _habitEmojiValue => _habitEmojiController.value;
}

extension NewHabitModalBottomSheetCubitHabitRepetitionControllerRxExtension
    on NewHabitModalBottomSheetCubit {
  Stream<int> get habitRepetitionStream => _habitRepetitionController.stream;
  int get _habitRepetitionValue => _habitRepetitionController.value;
}

extension NewHabitModalBottomSheetCubitGeneratedRepeatNumbersControllerRxExtension
    on NewHabitModalBottomSheetCubit {
  Stream<List<int>> get numbersStream =>
      _generatedRepeatNumbersController.stream;
  List<int> get _numbersValue => _generatedRepeatNumbersController.value;
}

/// Text Validation
extension NewHabitModalBottomSheetCubitGeneratedRepeatNumbersControllerRxE
    on NewHabitModalBottomSheetCubit {
  bool get isNameEmpty => _habitNameValue.isEmpty;
  bool get isEmojiEmpty => _habitEmojiValue.isEmpty;
}

extension NewHabitModalBottomSheetCubitCombineControllersRxExtension
    on NewHabitModalBottomSheetCubit {
  Stream<bool> get validateForm => Rx.combineLatest3(
        habitNameStream,
        habitEmojiStream,
        habitRepetitionStream,
        (
          a,
          b,
          c,
        ) =>
            true,
      );
}
