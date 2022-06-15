import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';
import '../../repositories/emojis_repository.dart';

class IsEmojiDuplicated extends UseCase<Either<Failure, bool?>, String> {
  IsEmojiDuplicated(this._repository);

  final EmojisRepository _repository;

  @override
  Either<Failure, bool?> call(String params) {
    return _repository.isEmojiDuplicated(params);
  }
}
