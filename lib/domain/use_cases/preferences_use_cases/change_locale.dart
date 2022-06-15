import 'package:habitonic/domain/repositories/preferences_repository.dart';
import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';
import '../../repositories/preferences_repository.dart';

class ChangeLocale extends UseCase<Future<Either<Failure, Unit?>>, String> {
  ChangeLocale(this._repository);

  final PreferencesRepository _repository;

  @override
  Future<Either<Failure, Unit?>> call(String params) {
    return _repository.changeLocale(params);
  }
}
