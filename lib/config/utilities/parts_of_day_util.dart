enum PartsOfDay { morning, afternoon, evening, night }

abstract class PartsOfDayUtil {
  const PartsOfDayUtil._();

  static PartsOfDay get partOfDay {
    if (_currentHour >= 5 && _currentHour <= 12) {
      return PartsOfDay.morning;
    } else if (_currentHour > 12 && _currentHour <= 17) {
      return PartsOfDay.afternoon;
    } else if (_currentHour > 17 && _currentHour <= 21) {
      return PartsOfDay.evening;
    } else {
      return PartsOfDay.night;
    }
  }


  ////grtrgrtgtr gr f r errrrrr
  // fff

  static int get _currentHour => DateTime.now().hour;
}
