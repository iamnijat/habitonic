import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitonic/config/constants/durations.dart';

import '../../../core/services/router_service/index.dart';
import '../../../core/use_cases/use_case.dart';
import '../../../domain/use_cases/preferences_use_cases/store_intro_page_seen.dart';
import '../../../injection_container.dart';

enum IntroPageState { checking, error, done }

class IntroPageCubit extends Cubit<IntroPageState> {
  IntroPageCubit({
    required this.storeIntroPageSeen,
  }) : super(IntroPageState.done);

  final StoreIntroPageSeen storeIntroPageSeen;

  /// Initializations of Services
  RouterService get _navigation => getIt<RouterService>();

  void triggerRouteToHomePage(BuildContext _context) async {
    _emittingState(IntroPageState.checking);

    final result = await storeIntroPageSeen(NoParams());

    if (result.isSuccess()) {
      await _addDelay(Durations.oneSecondDuration);
      _navigateToHomePage(_context);
    } else if (result.isError()) {
      emit(IntroPageState.error);
      return;
    }
  }

  void _navigateToHomePage(BuildContext _context) {
    _emittingState(IntroPageState.done);
    _navigation.openHomePage(_context);

    Fimber.d('Successfully navigated to home page');
  }

  _addDelay(Duration _delay) async => await Future.delayed(_delay);

  void _emittingState(IntroPageState _state) => emit(_state);
}
