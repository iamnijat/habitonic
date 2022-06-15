import 'package:habitonic/domain/repositories/habits_repository.dart';

import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';

class CloseLocalDatabase extends UseCase<Either<Failure, Unit?>, NoParams> {
  CloseLocalDatabase(this._repository);

  final HabitsRepository _repository;

  @override
  Either<Failure, Unit?> call(NoParams params) {
    return _repository.close();
  }
}
