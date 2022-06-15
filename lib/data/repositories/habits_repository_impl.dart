import 'package:habitonic/data/data_sources/local/habits_local_data_source/habits_local_data_source.dart';
import 'package:habitonic/data/models/view_model/habit_view/habit_view_model.dart';

import '../../core/either.dart';
import '../../core/failures.dart';
import '../../domain/repositories/habits_repository.dart';

class HabitsRepositoryImpl implements HabitsRepository {
  HabitsRepositoryImpl(this._dataSource);

  final HabitsLocalDataSource _dataSource;

  @override
  Future<Either<Failure, Unit>> init() async {
    try {
      await _dataSource.init();
      return const Success(unit);
    } catch (_) {
      return const Error(Failure.other());
    }
  }

  @override
  Either<Failure, List<HabitViewModel>> get allHabits {
    try {
      return Success(_dataSource.allHabits);
    } catch (_) {
      return const Error(Failure.other());
    }
  }

  @override
  Either<Failure, List<HabitViewModel>> get completedHabits {
    try {
      return Success(_dataSource.completedHabits);
    } catch (_) {
      return const Error(Failure.other());
    }
  }

  @override
  Either<Failure, List<HabitViewModel>> get unCompletedHabits {
    try {
      return Success(_dataSource.unCompletedHabits);
    } catch (_) {
      return const Error(Failure.other());
    }
  }

  @override
  Either<Failure, List<HabitViewModel>> filterHabits(
      List<HabitViewModel> _habits, String _filter) {
    try {
      return Success(_dataSource.filterHabits(_habits, _filter));
    } catch (_) {
      return const Error(Failure.other());
    }
  }

  @override
  Either<Failure, Unit> updateHabit(int _index, HabitViewModel _model) {
    try {
      _dataSource.updateHabit(_index, _model);
      return const Success(unit);
    } catch (_) {
      return const Error(Failure.other());
    }
  }

  @override
  Either<Failure, Unit> storeHabit(HabitViewModel _model) {
    try {
      _dataSource.storeHabit(_model);
      return const Success(unit);
    } catch (_) {
      return const Error(Failure.other());
    }
  }

  @override
  Either<Failure, HabitViewModel> getHabit(int _index) {
    try {
      return Success(_dataSource.getHabit(_index));
    } catch (_) {
      return const Error(Failure.other());
    }
  }

  @override
  Either<Failure, int> getHabitIndex(HabitViewModel _model) {
    try {
      return Success(_dataSource.getHabitIndex(_model));
    } catch (_) {
      return const Error(Failure.other());
    }
  }

  @override
  Future<Either<Failure, Unit>> clearHabitsBox() async {
    try {
      await _dataSource.clearHabitsBox();
      return const Success(unit);
    } catch (_) {
      return const Error(Failure.other());
    }
  }

  @override
  Either<Failure, Unit> close() {
    try {
      _dataSource.close();
      return const Success(unit);
    } catch (_) {
      return const Error(Failure.other());
    }
  }
}
