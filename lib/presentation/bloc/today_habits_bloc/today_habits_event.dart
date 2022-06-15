part of 'today_habits_bloc.dart';

@freezed
class TodayHabitsEvent with _$TodayHabitsEvent {
  const factory TodayHabitsEvent.load() = TodayHabitsLoadEvent;
  const factory TodayHabitsEvent.filter(String filter) =
      TodayHabitsFilteredEvent;
  const factory TodayHabitsEvent.reload(HabitViewModel habit) =
      TodayHabitsReloadEvent;
}
