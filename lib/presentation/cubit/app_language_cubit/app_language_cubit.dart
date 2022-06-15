import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/use_cases/use_case.dart';
import '../../../domain/use_cases/preferences_use_cases/change_locale.dart';
import '../../../domain/use_cases/preferences_use_cases/get_default_locale.dart';

class AppLanguageCubit extends Cubit<Locale> {
  AppLanguageCubit({
    required GetDefaultLocale getDefaultLocale,
    required this.changeLocale,
  }) : super(const Locale('en', 'EN')) {
    fetchLocale(getDefaultLocale);
  }

  final ChangeLocale changeLocale;

  void fetchLocale(GetDefaultLocale getDefaultLocale) async {
    final result = await getDefaultLocale(NoParams());

    result.when(
      error: (_) {},
      success: (languageCode) {
        if (languageCode != null) {
          emit(Locale(languageCode));
        }
      },
    );
  }

  void changeLanguage(String languageCode) async {
    if (state == Locale(languageCode)) return;

    final result = await changeLocale(languageCode);

    if (result.isSuccess()) {
      emit(Locale(languageCode));
    }
  }
}
