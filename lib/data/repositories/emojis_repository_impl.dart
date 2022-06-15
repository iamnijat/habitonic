import 'package:flutter/cupertino.dart';
import 'package:habitonic/data/data_sources/local/emojis_local_data_source/emojis_local_data_source.dart';
import 'package:habitonic/data/models/view_model/recent_emojis/recent_emojis_view_model.dart';

import '../../core/either.dart';
import '../../core/failures.dart';
import '../../domain/repositories/emojis_repository.dart';

class EmojisRepositoryImpl implements EmojisRepository {
  EmojisRepositoryImpl(this._dataSource);

  final EmojisLocalDataSource _dataSource;

  @override
  Future<Either<Failure, List<String>>> allEmojis(BuildContext _context) async {
    try {
      return Success(await _dataSource.allEmojis(_context));
    } catch (_) {
      return const Error(Failure.other());
    }
  }

  @override
  Either<Failure, List<RecentEmojisViewModel>> get recentEmojis {
    try {
      return Success(_dataSource.recentEmojis);
    } catch (_) {
      return const Error(Failure.other());
    }
  }

  @override
  Either<Failure, bool> isEmojiDuplicated(String _emoji) {
    try {
      return Success(_dataSource.isEmojiDuplicated(_emoji));
    } catch (_) {
      return const Error(Failure.other());
    }
  }

  @override
  Either<Failure, Unit> storeRecentEmojiWithCompaction(
      RecentEmojisViewModel _model) {
    try {
      _dataSource.storeRecentEmojiWithCompaction(_model);
      return const Success(unit);
    } catch (_) {
      return const Error(Failure.other());
    }
  }
}
