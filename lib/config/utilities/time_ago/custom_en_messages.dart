import 'package:timeago/timeago.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomEnMessages implements LookupMessages {
  final AppLocalizations _lcl;
  CustomEnMessages(this._lcl);

  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => _lcl.customTimeIndicatorNow;
  @override
  String aboutAMinute(int minutes) =>
      '$minutes ${_lcl.customTimeIndicatorMinute}';
  @override
  String minutes(int minutes) => '$minutes ${_lcl.customTimeIndicatorMinutes}';
  @override
  String aboutAnHour(int minutes) =>
      '$minutes ${_lcl.customTimeIndicatorMinutes}';
  @override
  String hours(int hours) => '$hours ${_lcl.customTimeIndicatorHours}';
  @override
  String aDay(int hours) => '$hours ${_lcl.customTimeIndicatorHours}';
  @override
  String days(int days) => '$days ${_lcl.customTimeIndicatorDays}';
  @override
  String aboutAMonth(int days) => '$days ${_lcl.customTimeIndicatorDays}';
  @override
  String months(int months) => '$months ${_lcl.customTimeIndicatorMonths}';
  @override
  String aboutAYear(int year) => '$year ${_lcl.customTimeIndicatorYears}';
  @override
  String years(int years) => '$years ${_lcl.customTimeIndicatorYears}';
  @override
  String wordSeparator() => ' ';
}
