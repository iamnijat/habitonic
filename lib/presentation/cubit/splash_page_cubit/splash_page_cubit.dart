import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitonic/config/constants/durations.dart';

import '../../../core/services/router_service/index.dart';
import '../../../core/use_cases/use_case.dart';
import '../../../domain/use_cases/preferences_use_cases/get_intro_page_seen.dart';
import '../../../injection_container.dart';

enum SplashPageState { checking, error, done }

class SplashPageCubit extends Cubit<SplashPageState> {
  SplashPageCubit({
    required this.getIntroPageSeen,
  }) : super(SplashPageState.done);

  final GetIntroPageSeen getIntroPageSeen;

  /// Initializations of Services
  RouterService get _navigation => getIt<RouterService>();

  void checkRoute(BuildContext _context) async {
    _emittingState(SplashPageState.checking);
    final result = await getIntroPageSeen(NoParams());

    result.when(
      error: (_) {
        emit(SplashPageState.error);
        return;
      },
      success: (introPageSeen) async {
        if (introPageSeen != null) {
          await _addDelay();
          _navigateToHomePage(_context);
        } else {
          await _addDelay();
          _navigateToIntroPage(_context);
        }
        _emittingState(SplashPageState.done);
        Fimber.d('Successfully handled checking route');
      },
    );
  }

  void _navigateToIntroPage(BuildContext _context) =>
      _navigation.openIntroPage(_context);

  void _navigateToHomePage(BuildContext _context) =>
      _navigation.openHomePage(_context);

  _addDelay() async => await Future.delayed(DurationsUtil.twoSecondsDuration);

  void _emittingState(SplashPageState _state) => emit(_state);
}
