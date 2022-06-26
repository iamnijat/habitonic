import 'package:timeago/timeago.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'custom_time_ago_localization_messages.dart';

class TimeAgoUtil {
  const TimeAgoUtil._();

  static String getTimeDifference(
      DateTime _date, AppLocalizations _localization) {
    _setCustomLocaleMessages(_localization);

    return _formattedDate(_date, _localeName(_localization));
  }

  static String _formattedDate(DateTime _date, String _locale) =>
      format(_date, locale: _locale);

  static void _setCustomLocaleMessages(AppLocalizations _localization) {
    setLocaleMessages(_localization.localeName,
        CustomTimeAgoLocalizationMessages(_localization));
  }

  static String _localeName(AppLocalizations _lcl) => _lcl.localeName;
}
