import 'package:habitonic/data/models/view_model/habit_view/habit_view_model.dart';
import 'package:habitonic/domain/repositories/habits_repository.dart';

import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';

class GetHabitIndex extends UseCase<Either<Failure, int>, HabitViewModel> {
  GetHabitIndex(this._repository);

  final HabitsRepository _repository;

  @override
  Either<Failure, int> call(HabitViewModel params) {
    return _repository.getHabitIndex(params);
  }
}
