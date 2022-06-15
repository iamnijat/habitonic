import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';
import '../../../data/models/view_model/recent_emojis/recent_emojis_view_model.dart';
import '../../repositories/emojis_repository.dart';

class GetRecentEmojis
    extends UseCase<Either<Failure, List<RecentEmojisViewModel>>, NoParams> {
  GetRecentEmojis(this._repository);

  final EmojisRepository _repository;

  @override
  Either<Failure, List<RecentEmojisViewModel>> call(NoParams params) {
    return _repository.recentEmojis;
  }
}
