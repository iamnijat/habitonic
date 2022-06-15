import 'package:equatable/equatable.dart';
import 'package:habitonic/data/models/view_model/habit_view/habit_view_model.dart';
import 'package:habitonic/domain/repositories/habits_repository.dart';

import '../../../core/either.dart';
import '../../../core/failures.dart';
import '../../../core/use_cases/use_case.dart';

class UpdateHabit extends UseCase<Either<Failure, Unit?>, Params> {
  UpdateHabit(this._repository);

  final HabitsRepository _repository;

  @override
  Either<Failure, Unit?> call(Params params) {
    return _repository.updateHabit(params.index, params.model);
  }
}

class Params extends Equatable {
  final int index;
  final HabitViewModel model;

  const Params({required this.index, required this.model});

  @override
  List<Object?> get props => [index, model];
}
