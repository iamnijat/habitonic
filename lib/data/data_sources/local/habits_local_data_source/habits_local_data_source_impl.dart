import 'package:habitonic/data/models/view_model/recent_emojis/recent_emojis_view_model.dart';
import 'package:habitonic/data/models/view_model/habit_view/habit_view_model.dart';
import 'package:habitonic/data/services/hive_service/index.dart';

import '../../../../config/constants/strings.dart';
import 'habits_local_data_source.dart';

class HabitsLocalDataSourceImpl implements HabitsLocalDataSource {
  HabitsLocalDataSourceImpl(this._hive);

  final HiveService _hive;

  @override
  Future<void> init() async => await _hive.init();

  @override
  List<HabitViewModel> get allHabits => _hive.allHabits;

  @override
  List<HabitViewModel> get completedHabits {
    final _filteredHabits = _hive.allHabits;
    _filteredHabits.removeWhere((e) => e.isCompleted == false);
    return _filteredHabits;
  }

  @override
  List<HabitViewModel> get unCompletedHabits {
    final _filteredHabits = _hive.allHabits;
    _filteredHabits.removeWhere((e) => e.isCompleted == true);
    return _filteredHabits;
  }

  @override
  List<HabitViewModel> filterHabits(
      List<HabitViewModel> _habits, String _filter) {
    final _filteredHabits = _habits;
    if (_filter == AppStrings.desc) {
      _filteredHabits.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));
    } else {
      _filteredHabits.sort((b, a) => b.createdAt!.compareTo(a.createdAt!));
    }
    return _filteredHabits;
  }

  @override
  void updateHabit(int _index, HabitViewModel _model) =>
      _hive.updateHabit(_index, _model);

  @override
  void storeHabit(HabitViewModel _model) => _hive.storeHabit(_model);

  @override
  HabitViewModel getHabit(int _index) => _hive.getHabit(_index);

  @override
  int getHabitIndex(HabitViewModel _model) {
    final _allHabits = _hive.allHabits;
    int index = _allHabits.indexWhere((e) => e.createdAt == _model.createdAt);
    return index;
  }

  @override
  Future<void> clearHabitsBox() async => await _hive.clearHabitsBox();

  @override
  List<RecentEmojisViewModel> get recentEmojis => _hive.recentEmojis;

  @override
  bool isEmojiDuplicated(String _emoji) {
    final _recentEmojis = _hive.recentEmojis;
    final _isEmojiDuplicated =
        _recentEmojis.where((element) => element.emoji == _emoji);
    return _isEmojiDuplicated.isNotEmpty;
  }

  @override
  void storeRecentEmoji(RecentEmojisViewModel _model) =>
      _hive.storeRecentEmoji(_model);

  @override
  void close() => _hive.close();
}
