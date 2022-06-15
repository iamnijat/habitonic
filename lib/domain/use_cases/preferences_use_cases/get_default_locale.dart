import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';
import '../../repositories/preferences_repository.dart';

class GetDefaultLocale
    extends UseCase<Future<Either<Failure, String?>>, NoParams> {
  GetDefaultLocale(this._repository);

  final PreferencesRepository _repository;

  @override
  Future<Either<Failure, String?>> call(NoParams params) {
    return _repository.locale;
  }
}
