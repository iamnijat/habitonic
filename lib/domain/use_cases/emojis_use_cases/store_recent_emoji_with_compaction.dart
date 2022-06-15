import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';
import '../../../data/models/view_model/recent_emojis/recent_emojis_view_model.dart';
import '../../repositories/emojis_repository.dart';

class StoreRecentEmojiWithCompaction
    extends UseCase<Either<Failure, Unit?>, RecentEmojisViewModel> {
  StoreRecentEmojiWithCompaction(this._repository);

  final EmojisRepository _repository;

  @override
  Either<Failure, Unit?> call(RecentEmojisViewModel params) {
    return _repository.storeRecentEmojiWithCompaction(params);
  }
}
