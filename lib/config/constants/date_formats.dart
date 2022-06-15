import 'package:intl/intl.dart';

abstract class DateFormats {
  const DateFormats._();

  static DateFormat clockFormatElectronicTime(String? _locale) =>
      DateFormat('HH:mm', _locale);

  static DateFormat weekdayMonthDayDateFormat(String? _locale) =>
      DateFormat('EEEE, MMMM dd', _locale);
}
