import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitonic/config/constants/durations.dart';
import 'package:habitonic/domain/use_cases/habits_use_cases/clear_habits_box.dart';

import '../../../core/services/router_service/index.dart';
import '../../../core/use_cases/use_case.dart';
import '../../../injection_container.dart';

enum RefreshHabitsDataModalSheetState { loading, error, done }

class RefreshHabitsDataModalSheetCubit
    extends Cubit<RefreshHabitsDataModalSheetState> {
  RefreshHabitsDataModalSheetCubit({
    required this.clearHabitsBox,
  }) : super(RefreshHabitsDataModalSheetState.done);

  final ClearHabitsBox clearHabitsBox;

  /// Initializations of Services
  RouterService get _navigation => getIt<RouterService>();

  void refreshHabits(BuildContext _context) async {
    _emittingState(RefreshHabitsDataModalSheetState.loading);

    final result = await clearHabitsBox(NoParams());

    if (result.isSuccess()) {
      await _addDelay(Durations.oneSecondDuration);
      _emittingState(RefreshHabitsDataModalSheetState.done);

      back(_context, result: true);
      Fimber.d('Habits has been cleared successfully');
    } else if (result.isError()) {
      emit(RefreshHabitsDataModalSheetState.error);
      return;
    }
  }

  void back(BuildContext _context, {bool? result}) =>
      _navigation.back(_context, result: result);

  _addDelay(Duration _delay) async => await Future.delayed(_delay);

  void _emittingState(RefreshHabitsDataModalSheetState _state) => emit(_state);
}
