import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../config/constants/assets.dart';
import '../../data/models/view_model/language_view_model/language_view_model.dart';

abstract class LanguagesUtil {
  const LanguagesUtil._();

  static List<LanguageViewModel> fetchLanguages(
      AppLocalizations _localization) {
    return <LanguageViewModel>[
      LanguageViewModel(
        languageCode: _localization.englishLangLocale,
        name: _localization.englishLang,
        image: AppImages.enFlag,
      ),
      LanguageViewModel(
        languageCode: _localization.frenchLangLocale,
        name: _localization.frenchLang,
        image: AppImages.frFlag,
      ),
      LanguageViewModel(
        languageCode: _localization.turkishLangLocale,
        name: _localization.turkishLang,
        image: AppImages.trFlag,
      ),
    ];
  }
}
