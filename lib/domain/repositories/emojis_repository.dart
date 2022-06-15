import 'package:flutter/cupertino.dart';

import '../../core/either.dart';
import '../../core/failures.dart';
import '../../data/models/view_model/recent_emojis/recent_emojis_view_model.dart';

abstract class EmojisRepository {
  Future<Either<Failure, List<String>>> allEmojis(BuildContext _context);

  Either<Failure, List<RecentEmojisViewModel>> get recentEmojis;

  Either<Failure, bool> isEmojiDuplicated(String _emoji);

  Either<Failure, Unit> storeRecentEmojiWithCompaction(
      RecentEmojisViewModel _model);
}
