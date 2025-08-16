import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitonic/config/constants/durations.dart';
import 'package:habitonic/config/utilities/languages_util.dart';
import 'package:habitonic/data/models/view_model/language_view_model/language_view_model.dart';
import 'package:rxdart/rxdart.dart';
import 'package:habitonic/l10n/app_localizations.dart';

import '../../../core/services/router_service/index.dart';
import '../../../injection_container.dart';

enum LanguageSelectionState { loading, error, done }

class LanguageSelectionCubit extends Cubit<LanguageSelectionState> {
  LanguageSelectionCubit() : super(LanguageSelectionState.loading);

  /// Initializations of Services
  RouterService get _navigation => getIt<RouterService>();

  /// Initializations of Variables
  List<LanguageViewModel> languages = <LanguageViewModel>[];

  /// RxDart Stream Controllers
  final _languageSelectionController = BehaviorSubject<String>();

  void fetchLanguages(AppLocalizations _localization, String _langCode) async {
    _emittingState(LanguageSelectionState.loading);
    languages = LanguagesUtil.fetchLanguages(_localization);

    if (languages.isEmpty) {
      emit(LanguageSelectionState.error);
      return;
    }
    _addDefaultLangCode(_langCode);

    await _addDelay(DurationsUtil.oneHundredMillisecondsDuration);
    _emittingState(LanguageSelectionState.done);
    Fimber.d('Languages has been fetched successfully');
  }

  void selectLanguage(String _languageCode, BuildContext _context) async {
    _languageSelectionController.add(_languageCode);
    await _addDelay(DurationsUtil.oneHundredMillisecondsDuration);
    _back(_context, _languageCode);
  }

  void _addDefaultLangCode(String _langCode) =>
      _languageSelectionController.add(_langCode);

  void _back(BuildContext _context, String _langCode) =>
      _navigation.back(_context, result: _langCode);

  _addDelay(Duration _delay) async => await Future.delayed(_delay);

  void _emittingState(LanguageSelectionState _state) => emit(_state);

  @override
  Future<void> close() {
    _languageSelectionController.close();
    return super.close();
  }
}

extension LanguageSelectionCubitLanguageSelectionControllerRxExtension
    on LanguageSelectionCubit {
  Stream<String> get languageStream => _languageSelectionController.stream;
}
