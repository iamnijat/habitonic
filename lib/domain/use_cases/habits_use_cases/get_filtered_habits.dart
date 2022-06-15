import 'package:equatable/equatable.dart';
import 'package:habitonic/data/models/view_model/habit_view/habit_view_model.dart';
import 'package:habitonic/domain/repositories/habits_repository.dart';

import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';

class GetFilteredHabits
    extends UseCase<Either<Failure, List<HabitViewModel>>, Params> {
  GetFilteredHabits(this._repository);

  final HabitsRepository _repository;

  @override
  Either<Failure, List<HabitViewModel>> call(Params params) {
    return _repository.filterHabits(params.habits, params.filter);
  }
}

class Params extends Equatable {
  final String filter;
  final List<HabitViewModel> habits;

  const Params({required this.filter, required this.habits});

  @override
  List<Object?> get props => [filter, habits];
}
