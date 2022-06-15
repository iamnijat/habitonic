import 'package:flutter/cupertino.dart';

import '../../../models/view_model/recent_emojis/recent_emojis_view_model.dart';

abstract class EmojisLocalDataSource {
  Future<List<String>> allEmojis(BuildContext _context);

  /// RecentEmojisViewBox
  List<RecentEmojisViewModel> get recentEmojis;

  bool isEmojiDuplicated(String _emoji);

  void storeRecentEmojiWithCompaction(RecentEmojisViewModel _model);
}
