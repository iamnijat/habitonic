import 'package:habitonic/domain/repositories/habits_repository.dart';

import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';
import '../../../data/models/view_model/habit_view/habit_view_model.dart';

class GetCompletedHabits
    extends UseCase<Either<Failure, List<HabitViewModel>>, NoParams> {
  GetCompletedHabits(this._repository);

  final HabitsRepository _repository;

  @override
  Either<Failure, List<HabitViewModel>> call(NoParams params) {
    return _repository.completedHabits;
  }
}
