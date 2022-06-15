import 'package:intl/intl.dart';

abstract class DateFormatUtil {
  const DateFormatUtil._();

  static String formattedDate(String? _locale, DateTime _date,
      DateFormat Function(String?) _translate) {
    return _translateLocale(_locale, _translate).format(_date);
  }

  static DateFormat _translateLocale(
          String? _locale, DateFormat Function(String?) _translate) =>
      _translate(_locale);
}
