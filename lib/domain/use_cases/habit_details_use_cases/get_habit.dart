import 'package:habitonic/data/models/view_model/habit_view/habit_view_model.dart';
import 'package:habitonic/domain/repositories/habits_repository.dart';

import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';

class GetHabit extends UseCase<Either<Failure, HabitViewModel>, int> {
  GetHabit(this._repository);

  final HabitsRepository _repository;

  @override
  Either<Failure, HabitViewModel> call(int params) {
    return _repository.getHabit(params);
  }
}
