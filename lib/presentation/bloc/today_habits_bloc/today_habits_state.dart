part of 'today_habits_bloc.dart';

@freezed
class TodayHabitsState with _$TodayHabitsState {
  const factory TodayHabitsState.initial() = _TodayHabitsInitial;
  const factory TodayHabitsState.loading() = _TodayHabitsLoading;
  const factory TodayHabitsState.empty() = _TodayHabitsEmpty;
  const factory TodayHabitsState.error() = _TodayHabitsError;
  const factory TodayHabitsState.loaded(List<HabitViewModel> completedHabits,
      List<HabitViewModel> unCompletedHabits) = _TodayHabitsLoaded;
}
