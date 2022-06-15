import '../../core/either.dart';

import '../../core/failures.dart';
import '../../data/models/view_model/habit_view/habit_view_model.dart';

abstract class HabitsRepository {
  Future<Either<Failure, Unit>> init();

  Either<Failure, List<HabitViewModel>> get allHabits;

  Either<Failure, List<HabitViewModel>> get completedHabits;

  Either<Failure, List<HabitViewModel>> get unCompletedHabits;

  Either<Failure, List<HabitViewModel>> filterHabits(
      List<HabitViewModel> _habits, String _filter);

  Either<Failure, Unit> updateHabit(int _index, HabitViewModel _model);

  Either<Failure, Unit> storeHabit(HabitViewModel _model);

  Either<Failure, HabitViewModel> getHabit(int _index);

  Either<Failure, int> getHabitIndex(HabitViewModel _model);

  Future<Either<Failure, Unit>> clearHabitsBox();

  Either<Failure, Unit> close();
}
