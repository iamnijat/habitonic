import 'package:timeago/timeago.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'custom_en_messages.dart';
import 'custom_fr_messages.dart';

class TimeAgoUtil {
  const TimeAgoUtil._();

  static String getTimeDifference(
      DateTime _date, AppLocalizations _localization) {
    final _localeName = _localization.localeName;
    _setCustomLocaleMessages(_localization);

    return _formattedDate(_date, _localeName);
  }

  static String _formattedDate(DateTime _date, String _locale) =>
      format(_date, locale: _locale);

  static void _setCustomLocaleMessages(AppLocalizations _localization) {
    setLocaleMessages('fr', CustomFrMessages(_localization));
    setLocaleMessages('en', CustomEnMessages(_localization));
  }
}
