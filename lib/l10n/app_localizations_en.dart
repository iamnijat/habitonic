// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get introPageTitle => 'Transform your habits with Habitonic';

  @override
  String get introPageDesc =>
      'Small improvements accumulate into such remarkable results if you opt to be patient.';

  @override
  String get introPageButtonText => 'Got it!';

  @override
  String get englishLang => 'English';

  @override
  String get englishLangLocale => 'en';

  @override
  String get frenchLang => 'French';

  @override
  String get frenchLangLocale => 'fr';

  @override
  String get turkishLang => 'Turkish';

  @override
  String get turkishLangLocale => 'tr';

  @override
  String get homePageTitle => 'Let\'s make it habit together 👏';

  @override
  String get homeProgressBoxTitleWithLessProgress =>
      'Your daily goals almost done! 🔥\n\n';

  @override
  String get homeProgressBoxTitleWithMoreProgress =>
      'You are far from your purpose! 😥\n\n';

  @override
  String get homeProgressBoxTitleWithNoProgress =>
      'You have no habits for today! 🔥';

  @override
  String homeProgressBoxDesc(int completed, int all) {
    return '$completed of $all completed';
  }

  @override
  String get homeTodayHabitsTitle => 'Today Habits';

  @override
  String get homeNoTodayHabitsTitle => 'No Habits';

  @override
  String homeTodayHabitsItemDesc(int? repeat) {
    return 'Repeat $repeat times';
  }

  @override
  String get homeNewHabitButtonText => 'New Habits';

  @override
  String get newHabitModalSheetFormNameTitle => 'Name your habit';

  @override
  String get newHabitModalSheetFormNameHintText => 'Read a book for 15 minutes';

  @override
  String get newHabitModalSheetFormEmojiTitle => 'Pick an icon for your habit';

  @override
  String get newHabitModalSheetFormRepetitionTitle =>
      'How many times would you like to repeat your habit?';

  @override
  String get newHabitModalSheetFormCreateHabitButtonText => 'Create a habit';

  @override
  String get habitDetailsCurrentStreakTitle => 'Current streak';

  @override
  String get habitDetailsRepeatTimesTitle => 'Repeat times';

  @override
  String habitDetailsRepeatTimesText(int repeat) {
    return '$repeat times';
  }

  @override
  String get habitDetailsBarChartTitle => 'Check-in Daytime';

  @override
  String get habitDetailsBarChartMorningBarText => 'Morning';

  @override
  String get habitDetailsBarChartAfternoonBarText => 'Afternoon';

  @override
  String get habitDetailsBarChartEveningBarText => 'Evening';

  @override
  String get habitDetailsBarChartNightBarText => 'Night';

  @override
  String habitDetailsToolTipContentDesc(int? done, int? all) {
    return '$done out of $all';
  }

  @override
  String get refreshHabitDataModalBottomSheetTitle => 'Renew Habits';

  @override
  String get refreshHabitDataModalBottomSheetDesc =>
      'This will renew the current variety of Habits. Use it if you don\'t like the current variety';

  @override
  String get refreshHabitDataModalBottomSheetRenewHabitsButtonText =>
      'RENEW HABITS';

  @override
  String get refreshHabitDataModalBottomSheetCancelButtonText => 'CANCEL';

  @override
  String get errorPageTitle => 'I have bad news for you';

  @override
  String get errorPageDesc =>
      'The page you are looking for might be removed or some error happened. Maybe something has broken this page. Come back to the homepage.';

  @override
  String get errorPageBackToHomeButtonText => 'Back to Home';

  @override
  String get completeHabitsSuccessModalBottomSheetTitle => 'Successfully Done';

  @override
  String get completeHabitsSuccessModalBottomSheetSubtitle => 'Hurrah!';

  @override
  String get completeHabitsSuccessModalBottomSheetDesc =>
      'You completed this habit';

  @override
  String get completeHabitsSuccessModalBottomSheetGoBackButtonText => 'Go back';

  @override
  String get customTimeIndicatorNow => 'now';

  @override
  String get customTimeIndicatorMinute => 'minute';

  @override
  String get customTimeIndicatorMinutes => 'minutes';

  @override
  String get customTimeIndicatorHours => 'hours';

  @override
  String get customTimeIndicatorDays => 'days';

  @override
  String get customTimeIndicatorMonths => 'months';

  @override
  String get customTimeIndicatorYears => 'years';
}
