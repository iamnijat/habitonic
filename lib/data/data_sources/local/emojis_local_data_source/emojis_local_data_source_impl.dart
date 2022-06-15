import 'package:flutter/cupertino.dart';
import 'package:habitonic/data/models/view_model/recent_emojis/recent_emojis_view_model.dart';
import 'package:habitonic/data/services/hive_service/index.dart';
import '../../../../config/utilities/emojis_util.dart';
import 'emojis_local_data_source.dart';

class EmojisLocalDataSourceImpl implements EmojisLocalDataSource {
  EmojisLocalDataSourceImpl(this._hive);

  final HiveService _hive;

  /// Compaction strategy
  static const compactionStrategy = 4;

  @override
  Future<List<String>> allEmojis(BuildContext _context) async =>
      await EmojisUtil.fetchEmojis(_context);

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
  void storeRecentEmojiWithCompaction(RecentEmojisViewModel _model) {
    final _recentEmojis = _hive.recentEmojis;
    if (_recentEmojis.length >= compactionStrategy) {
      _hive.deleteRecentEmoji(0);
    }
    _hive.storeRecentEmoji(_model);
  }
}
