import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fimber/fimber.dart';
import 'package:habitonic/config/constants/strings.dart';
import 'package:habitonic/core/services/router_service/index.dart';
import 'package:habitonic/data/models/router_model/habit_details_page_arguments_view_model.dart';

import 'package:habitonic/data/models/view_model/habit_view/habit_view_model.dart';
import 'package:habitonic/domain/use_cases/habit_details_use_cases/get_habit_index.dart';
import 'package:habitonic/domain/use_cases/habits_use_cases/get_completed_habits.dart';
import 'package:habitonic/domain/use_cases/habits_use_cases/get_filtered_habits.dart';
import 'package:habitonic/domain/use_cases/habits_use_cases/get_uncompleted_habits.dart';
import 'package:habitonic/injection_container.dart';
import 'package:rxdart/rxdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/use_cases/use_case.dart';

part 'today_habits_bloc.freezed.dart';
part 'today_habits_event.dart';
part 'today_habits_state.dart';

class TodayHabitsBloc extends Bloc<TodayHabitsEvent, TodayHabitsState> {
  TodayHabitsBloc({
    required this.getCompletedHabits,
    required this.getUnCompletedHabits,
    required this.getFilteredHabits,
    required this.getHabitIndex,
  }) : super(const _TodayHabitsInitial()) {
    on<TodayHabitsLoadEvent>(_onTodayHabitsLoad);
    on<TodayHabitsReloadEvent>(_onTodayHabitsReload);
    on<TodayHabitsFilteredEvent>(_onTodayHabitsFiltered);
  }

  final GetCompletedHabits getCompletedHabits;
  final GetUnCompletedHabits getUnCompletedHabits;
  final GetFilteredHabits getFilteredHabits;
  final GetHabitIndex getHabitIndex;

  /// Initializations of Services
  RouterService get _navigation => getIt<RouterService>();

  /// Initializations of Variables
  List<HabitViewModel> completedHabits = [];
  List<HabitViewModel> unCompletedHabits = [];

  /// RxDart Stream Controllers
  final _habitFilterController =
      BehaviorSubject<String>.seeded(AppStrings.desc);

  /// initialize BloC. Fires on first page touch
  FutureOr<void> _onTodayHabitsLoad(TodayHabitsLoadEvent event, emit) async {
    _emittingState(
        const _TodayHabitsLoading(), emit); // <- Loading today's habits

    _getCompletedHabits(emit);
    _getUnCompletedHabits(emit);

    _filterHabitsByDate(emit);

    if (unCompletedHabits.isEmpty) {
      _emittingState(const _TodayHabitsEmpty(), emit);
      Fimber.d('No Habits');
      return;
    }

    Fimber.d('Habits has been fetched successfully');

    emit(_TodayHabitsLoaded(completedHabits, unCompletedHabits));
  }

  FutureOr<void> _onTodayHabitsReload(
      TodayHabitsReloadEvent event, emit) async {
    _emittingState(
        const _TodayHabitsLoading(), emit); // <- Loading today's habits

    unCompletedHabits.insert(0, event.habit);

    _filterHabitsByDate(emit);

    if (unCompletedHabits.isEmpty) {
      _emittingState(const _TodayHabitsEmpty(), emit);
      Fimber.d('No Habits');
      return;
    }

    Fimber.d('Habits has been fetched successfully');

    emit(_TodayHabitsLoaded(completedHabits, unCompletedHabits));
  }

  FutureOr<void> _onTodayHabitsFiltered(
      TodayHabitsFilteredEvent event, emit) async {
    _emittingState(
        const _TodayHabitsLoading(), emit); // <- Loading today's habits

    _habitFilterController.add(event.filter);

    _filterHabitsByDate(emit);
    Fimber.d('Habits has been filtered with ${event.filter}');

    emit(_TodayHabitsLoaded(completedHabits, unCompletedHabits));
  }

  void defineRouteToDetailsPage(HabitViewModel _model, BuildContext _context,
      String _heroTag, VoidCallback refresh) async {
    final result = getHabitIndex(_model);

    result.when(
      error: (_) {},
      success: (index) async {
        await _navigateToDetailsPage(_context, _heroTag, index);
        refresh();
      },
    );
  }

  Future<void> _navigateToDetailsPage(
      BuildContext _context, String _heroTag, int _index) async {
    HabitDetailsPageArgumentsViewModel _args =
        HabitDetailsPageArgumentsViewModel(
            heroAnimationTag: _heroTag, selectedIndex: _index);

    await _navigation.openHabitDetailsPage(
      _context,
      arguments: _args,
    );
  }

  void _getCompletedHabits(emit) {
    final result = getCompletedHabits(NoParams());

    result.when(
      error: (_) {
        emit(const _TodayHabitsError());
        return;
      },
      success: (completed) {
        completedHabits = completed;
      },
    );
  }

  void _getUnCompletedHabits(emit) {
    final result = getUnCompletedHabits(NoParams());

    result.when(
      error: (_) {
        emit(const _TodayHabitsError());
        return;
      },
      success: (unCompleted) {
        unCompletedHabits = unCompleted;
      },
    );
  }

  void _filterHabitsByDate(emit) {
    final result = getFilteredHabits(
        Params(filter: habitFilterValue, habits: unCompletedHabits));

    result.when(
      error: (_) {
        emit(const _TodayHabitsError());
        return;
      },
      success: (filtered) {
        unCompletedHabits = filtered;
      },
    );
  }

  void _emittingState(TodayHabitsState _state, emit) => emit(_state);

  @override
  Future<void> close() {
    _habitFilterController.close();
    return super.close();
  }
}

/// Habits Comparison Extension
extension TodayHabitsBlocHabitsComparison on TodayHabitsBloc {
  double get habitsComparisonPercentage =>
      (completedHabitsCount / allHabitsCount) * 100;
}

/// Habits Count Extension
extension TodayHabitsBlocHabitsCount on TodayHabitsBloc {
  int get completedHabitsCount => completedHabits.length;
  int get allHabitsCount => completedHabits.length + unCompletedHabits.length;
}

/// RxDart Extension
extension TodayHabitsBlocHabitsFilterControllerRxExtension on TodayHabitsBloc {
  Stream<String> get habitFilterStream => _habitFilterController.stream;
  String get habitFilterValue => _habitFilterController.value;
}
