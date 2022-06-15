part of hive_service;

abstract class HiveService {
  Future<void> init();

  void close();

  /// HabitViewBox
  List<HabitViewModel> get allHabits;

  void updateHabit(int _index, HabitViewModel _model);

  void storeHabit(HabitViewModel _model);

  HabitViewModel getHabit(int _index);

  Future<void> clearHabitsBox();

  /// RecentEmojisViewBox
  List<RecentEmojisViewModel> get recentEmojis;

  void storeRecentEmoji(RecentEmojisViewModel _model);

  void deleteRecentEmoji(int _index);
}
