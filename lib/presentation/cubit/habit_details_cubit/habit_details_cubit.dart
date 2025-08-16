import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitonic/config/constants/durations.dart';
import 'package:habitonic/core/helpers/modal_bottom_sheet_helper.dart';
import 'package:habitonic/data/models/view_model/habit_view/habit_view_model.dart';
import 'package:habitonic/domain/use_cases/habit_details_use_cases/get_habit.dart';
import 'package:rxdart/rxdart.dart';
import 'package:habitonic/l10n/app_localizations.dart';
import '../../../config/utilities/parts_of_day_util.dart';
import '../../../core/services/router_service/index.dart';
import '../../../domain/use_cases/habit_details_use_cases/update_habit.dart';
import '../../../injection_container.dart';

enum HabitDetailsState { loading, error, done }

class HabitDetailsCubit extends Cubit<HabitDetailsState> {
  HabitDetailsCubit({required this.getHabit, required this.updateHabit})
      : super(HabitDetailsState.done);

  final GetHabit getHabit;
  final UpdateHabit updateHabit;

  /// Initializations of Services
  RouterService get _navigation => getIt<RouterService>();

  /// Initializations of Variables
  HabitViewModel? habit;

  /// RxDart Stream Controllers
  final _totalRepeatTimesController = BehaviorSubject<int>();
  final _doneRepeatTimesController = BehaviorSubject<int>();
  final _morningRepeatTimesController = BehaviorSubject<int>();
  final _afternoonRepeatTimesController = BehaviorSubject<int>();
  final _eveningRepeatTimesController = BehaviorSubject<int>();
  final _nightRepeatTimesController = BehaviorSubject<int>();

  void fetchHabit(BuildContext _context, int _index) async {
    _getHabit(_index);
    Fimber.d('Habit details has been fetched successfully');
  }

  void refreshHabit(BuildContext _context, int _index) async {
    final _localization = AppLocalizations.of(_context)!;
    _emittingState(HabitDetailsState.loading);
    await _addDelay(DurationsUtil.oneSecondDuration);
    _refreshAllRepeatIndicators();
    final result = updateHabit(Params(index: _index, model: _getHabitModel()));

    if (result.isSuccess()) {
      if (doneRepeatTimesValue == habit!.totalRepeatTimes) {
        final result = updateHabit(
            Params(index: _index, model: _getHabitModel(isCompleted: true)));
        if (result.isSuccess()) {
          _emittingState(HabitDetailsState.done);
          Fimber.d('Habit details has been updated successfully');
          back(_context);
          showCompleteHabitsSuccessModalBottomSheet(_context, _localization);
        } else if (result.isError()) {
          emit(HabitDetailsState.error);
          return;
        }
      } else {
        _emittingState(HabitDetailsState.done);
        Fimber.d('Habit details has been updated successfully');
      }
    }
  }

  void _refreshAllRepeatIndicators() {
    _refreshTotalRepeatTimes();
    _refreshDoneRepeatTimes();
    if (_partOfDay == PartsOfDay.morning) {
      _refreshMorningRepeatTimes();
    } else if (_partOfDay == PartsOfDay.afternoon) {
      _refreshAfternoonRepeatTimes();
    } else if (_partOfDay == PartsOfDay.evening) {
      _refreshEveningRepeatTimes();
    } else {
      _refreshNightRepeatTimes();
    }
  }

  void _refreshTotalRepeatTimes() =>
      _totalRepeatTimesController.add(_totalRepeatTimesValue! - 1);

  void _refreshDoneRepeatTimes() =>
      _doneRepeatTimesController.add(doneRepeatTimesValue! + 1);

  void _refreshMorningRepeatTimes() =>
      _morningRepeatTimesController.add(_morningRepeatTimesValue! + 1);

  void _refreshAfternoonRepeatTimes() =>
      _afternoonRepeatTimesController.add(_afternoonRepeatTimesValue! + 1);

  void _refreshEveningRepeatTimes() =>
      _eveningRepeatTimesController.add(_eveningRepeatTimesValue! + 1);

  void _refreshNightRepeatTimes() =>
      _nightRepeatTimesController.add(_nightRepeatTimesValue! + 1);

  void _getHabit(int _index) {
    final result = getHabit(_index);

    result.when(
      error: (_) {
        emit(HabitDetailsState.error);
        return;
      },
      success: (model) {
        habit = model;
        _addDefualtValuesToControllers();
      },
    );
  }

  HabitViewModel _getHabitModel({bool isCompleted = false}) => HabitViewModel(
      createdAt: habit!.createdAt,
      emoji: habit!.emoji,
      name: habit!.name,
      isCompleted: isCompleted,
      totalRepeatTimes: habit!.totalRepeatTimes,
      doneRepeatTimes: doneRepeatTimesValue,
      morningRepeatTimes: _morningRepeatTimesValue,
      afternoonRepeatTimes: _afternoonRepeatTimesValue,
      eveningRepeatTimes: _eveningRepeatTimesValue,
      nightRepeatTimes: _nightRepeatTimesValue);

  void _addDefualtValuesToControllers() {
    _totalRepeatTimesController.add(habit!.totalRepeatTimes!);
    _doneRepeatTimesController.add(habit!.doneRepeatTimes!);
    _morningRepeatTimesController.add(habit!.morningRepeatTimes!);
    _afternoonRepeatTimesController.add(habit!.afternoonRepeatTimes!);
    _eveningRepeatTimesController.add(habit!.eveningRepeatTimes!);
    _nightRepeatTimesController.add(habit!.nightRepeatTimes!);
  }

  _addDelay(Duration _delay) async => await Future.delayed(_delay);

  void back(BuildContext _context) => _navigation.back(_context);

  void _emittingState(HabitDetailsState _state) => emit(_state);

  @override
  Future<void> close() {
    _totalRepeatTimesController.close();
    _doneRepeatTimesController.close();
    _morningRepeatTimesController.close();
    _afternoonRepeatTimesController.close();
    _eveningRepeatTimesController.close();
    _nightRepeatTimesController.close();
    return super.close();
  }
}

extension HabitDetailsCubitGetPartOfDayExtension on HabitDetailsCubit {
  PartsOfDay get _partOfDay => PartsOfDayUtil.partOfDay;
}

extension HabitDetailsCubitTotalRepeatTimesControllerRxExtension
    on HabitDetailsCubit {
  Stream<int?> get totalRepeatTimesStream => _totalRepeatTimesController.stream;
  int? get _totalRepeatTimesValue => _totalRepeatTimesController.value;
}

extension HabitDetailsCubitDoneRepeatTimesControllerRxExtension
    on HabitDetailsCubit {
  Stream<int?> get doneRepeatTimesStream => _doneRepeatTimesController.stream;
  int? get doneRepeatTimesValue => _doneRepeatTimesController.value;
}

extension HabitDetailsCubitMorningRepeatTimesControllerRxExtension
    on HabitDetailsCubit {
  Stream<int?> get morningRepeatTimesStream =>
      _morningRepeatTimesController.stream;
  int? get _morningRepeatTimesValue => _morningRepeatTimesController.value;
}

extension HabitDetailsCubitAfternoonRepeatTimesControllerRxExtension
    on HabitDetailsCubit {
  Stream<int?> get afternoonRepeatTimesStream =>
      _afternoonRepeatTimesController.stream;
  int? get _afternoonRepeatTimesValue => _afternoonRepeatTimesController.value;
}

extension HabitDetailsCubitEveningRepeatTimesControllerRxExtension
    on HabitDetailsCubit {
  Stream<int?> get eveningRepeatTimesStream =>
      _eveningRepeatTimesController.stream;
  int? get _eveningRepeatTimesValue => _eveningRepeatTimesController.value;
}

extension HabitDetailsCubitNightRepeatTimesControllerRxExtension
    on HabitDetailsCubit {
  Stream<int?> get nightRepeatTimesStream => _nightRepeatTimesController.stream;
  int? get _nightRepeatTimesValue => _nightRepeatTimesController.value;
}

extension HabitDetailsCubitRepeatTimesComparison on HabitDetailsCubit {
  double get habitsComparisonPercentage =>
      doneRepeatTimesValue! / habit!.totalRepeatTimes!;
}
