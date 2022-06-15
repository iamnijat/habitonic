import 'package:habitonic/domain/repositories/habits_repository.dart';

import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';

class ClearHabitsBox extends UseCase<Future<Either<Failure, Unit?>>, NoParams> {
  ClearHabitsBox(this._repository);

  final HabitsRepository _repository;

  @override
  Future<Either<Failure, Unit?>> call(NoParams params) async {
    return await _repository.clearHabitsBox();
  }
}
