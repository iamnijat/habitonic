import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';
import '../../repositories/preferences_repository.dart';

class StoreIntroPageSeen
    extends UseCase<Future<Either<Failure, Unit?>>, NoParams> {
  StoreIntroPageSeen(this._repository);

  final PreferencesRepository _repository;

  @override
  Future<Either<Failure, Unit?>> call(NoParams params) {
    return _repository.saveIntroPageSeen();
  }
}
