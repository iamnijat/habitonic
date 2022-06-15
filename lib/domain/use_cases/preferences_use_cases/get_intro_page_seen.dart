import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';
import '../../repositories/preferences_repository.dart';

class GetIntroPageSeen
    extends UseCase<Future<Either<Failure, bool?>>, NoParams> {
  GetIntroPageSeen(this._repository);

  final PreferencesRepository _repository;

  @override
  Future<Either<Failure, bool?>> call(NoParams params) {
    return _repository.introPageSeen;
  }
}
