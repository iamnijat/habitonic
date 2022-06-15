import '../../../models/view_model/habit_view/habit_view_model.dart';
import '../../../models/view_model/recent_emojis/recent_emojis_view_model.dart';

abstract class HabitsLocalDataSource {
  Future<void> init();

  /// HabitViewBox
  List<HabitViewModel> get allHabits;

  List<HabitViewModel> get completedHabits;

  List<HabitViewModel> get unCompletedHabits;

  List<HabitViewModel> filterHabits(
      List<HabitViewModel> _habits, String _filter);

  void updateHabit(int _index, HabitViewModel _model);

  void storeHabit(HabitViewModel _model);

  HabitViewModel getHabit(int _index);

  int getHabitIndex(HabitViewModel _model);

  Future<void> clearHabitsBox();

  /// RecentEmojisViewBox
  List<RecentEmojisViewModel> get recentEmojis;

  bool isEmojiDuplicated(String _emoji);

  void storeRecentEmoji(RecentEmojisViewModel _model);

  void close();
}
