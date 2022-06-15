part of hive_service;

class HiveServiceImpl implements HiveService {
  @protected
  late Box habitViewBox;
  @protected
  late Box recentEmojisViewBox;

  @protected
  @override
  Future<void> init() async {
    /// getting application document directory
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    final appDocumentPath = appDocumentDirectory.path;

    /// initialize [HiveAdapter] logic
    Hive.init(appDocumentPath);

    /// register HabitViewModelAdapter component
    Hive.registerAdapter(HabitViewModelAdapter());

    /// opening HabitViewBox component
    habitViewBox = await Hive.openBox('habit_view_box');

    /// register RecentEmojisViewModelAdapter component
    Hive.registerAdapter(RecentEmojisViewModelAdapter());

    /// opening RecentEmojisViewBox component
    recentEmojisViewBox = await Hive.openBox(
      'recent_emojis_view_box',
      compactionStrategy: (int total, int deleted) {
        return deleted > 3;
      },
    );
  }

  /// HabitViewBox
  @protected
  @override
  List<HabitViewModel> get allHabits =>
      habitViewBox.values.toList().cast<HabitViewModel>();

  @protected
  @override
  void updateHabit(int _index, HabitViewModel _model) =>
      habitViewBox.putAt(_index, _model);

  @protected
  @override
  void storeHabit(HabitViewModel _model) => habitViewBox.add(_model);

  @protected
  @override
  HabitViewModel getHabit(int _index) => habitViewBox.getAt(_index);

  @protected
  @override
  Future<void> clearHabitsBox() async {
    await habitViewBox.clear();
  }

  /// RecentEmojisViewBox
  @protected
  @override
  List<RecentEmojisViewModel> get recentEmojis =>
      recentEmojisViewBox.values.toList().cast<RecentEmojisViewModel>();

  @protected
  @override
  void storeRecentEmoji(RecentEmojisViewModel _model) =>
      recentEmojisViewBox.add(_model);

  @protected
  @override
  void deleteRecentEmoji(int _index) => recentEmojisViewBox.deleteAt(_index);

  @protected
  @override
  void close() => Hive.close();
}
