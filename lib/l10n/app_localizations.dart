import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr'),
    Locale('tr')
  ];

  /// No description provided for @introPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Transform your habits with Habitonic'**
  String get introPageTitle;

  /// No description provided for @introPageDesc.
  ///
  /// In en, this message translates to:
  /// **'Small improvements accumulate into such remarkable results if you opt to be patient.'**
  String get introPageDesc;

  /// No description provided for @introPageButtonText.
  ///
  /// In en, this message translates to:
  /// **'Got it!'**
  String get introPageButtonText;

  /// No description provided for @englishLang.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get englishLang;

  /// No description provided for @englishLangLocale.
  ///
  /// In en, this message translates to:
  /// **'en'**
  String get englishLangLocale;

  /// No description provided for @frenchLang.
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get frenchLang;

  /// No description provided for @frenchLangLocale.
  ///
  /// In en, this message translates to:
  /// **'fr'**
  String get frenchLangLocale;

  /// No description provided for @turkishLang.
  ///
  /// In en, this message translates to:
  /// **'Turkish'**
  String get turkishLang;

  /// No description provided for @turkishLangLocale.
  ///
  /// In en, this message translates to:
  /// **'tr'**
  String get turkishLangLocale;

  /// No description provided for @homePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Let\'s make it habit together 👏'**
  String get homePageTitle;

  /// No description provided for @homeProgressBoxTitleWithLessProgress.
  ///
  /// In en, this message translates to:
  /// **'Your daily goals almost done! 🔥\n\n'**
  String get homeProgressBoxTitleWithLessProgress;

  /// No description provided for @homeProgressBoxTitleWithMoreProgress.
  ///
  /// In en, this message translates to:
  /// **'You are far from your purpose! 😥\n\n'**
  String get homeProgressBoxTitleWithMoreProgress;

  /// No description provided for @homeProgressBoxTitleWithNoProgress.
  ///
  /// In en, this message translates to:
  /// **'You have no habits for today! 🔥'**
  String get homeProgressBoxTitleWithNoProgress;

  /// No description provided for @homeProgressBoxDesc.
  ///
  /// In en, this message translates to:
  /// **'{completed} of {all} completed'**
  String homeProgressBoxDesc(int completed, int all);

  /// No description provided for @homeTodayHabitsTitle.
  ///
  /// In en, this message translates to:
  /// **'Today Habits'**
  String get homeTodayHabitsTitle;

  /// No description provided for @homeNoTodayHabitsTitle.
  ///
  /// In en, this message translates to:
  /// **'No Habits'**
  String get homeNoTodayHabitsTitle;

  /// No description provided for @homeTodayHabitsItemDesc.
  ///
  /// In en, this message translates to:
  /// **'Repeat {repeat} times'**
  String homeTodayHabitsItemDesc(int? repeat);

  /// No description provided for @homeNewHabitButtonText.
  ///
  /// In en, this message translates to:
  /// **'New Habits'**
  String get homeNewHabitButtonText;

  /// No description provided for @newHabitModalSheetFormNameTitle.
  ///
  /// In en, this message translates to:
  /// **'Name your habit'**
  String get newHabitModalSheetFormNameTitle;

  /// No description provided for @newHabitModalSheetFormNameHintText.
  ///
  /// In en, this message translates to:
  /// **'Read a book for 15 minutes'**
  String get newHabitModalSheetFormNameHintText;

  /// No description provided for @newHabitModalSheetFormEmojiTitle.
  ///
  /// In en, this message translates to:
  /// **'Pick an icon for your habit'**
  String get newHabitModalSheetFormEmojiTitle;

  /// No description provided for @newHabitModalSheetFormRepetitionTitle.
  ///
  /// In en, this message translates to:
  /// **'How many times would you like to repeat your habit?'**
  String get newHabitModalSheetFormRepetitionTitle;

  /// No description provided for @newHabitModalSheetFormCreateHabitButtonText.
  ///
  /// In en, this message translates to:
  /// **'Create a habit'**
  String get newHabitModalSheetFormCreateHabitButtonText;

  /// No description provided for @habitDetailsCurrentStreakTitle.
  ///
  /// In en, this message translates to:
  /// **'Current streak'**
  String get habitDetailsCurrentStreakTitle;

  /// No description provided for @habitDetailsRepeatTimesTitle.
  ///
  /// In en, this message translates to:
  /// **'Repeat times'**
  String get habitDetailsRepeatTimesTitle;

  /// No description provided for @habitDetailsRepeatTimesText.
  ///
  /// In en, this message translates to:
  /// **'{repeat} times'**
  String habitDetailsRepeatTimesText(int repeat);

  /// No description provided for @habitDetailsBarChartTitle.
  ///
  /// In en, this message translates to:
  /// **'Check-in Daytime'**
  String get habitDetailsBarChartTitle;

  /// No description provided for @habitDetailsBarChartMorningBarText.
  ///
  /// In en, this message translates to:
  /// **'Morning'**
  String get habitDetailsBarChartMorningBarText;

  /// No description provided for @habitDetailsBarChartAfternoonBarText.
  ///
  /// In en, this message translates to:
  /// **'Afternoon'**
  String get habitDetailsBarChartAfternoonBarText;

  /// No description provided for @habitDetailsBarChartEveningBarText.
  ///
  /// In en, this message translates to:
  /// **'Evening'**
  String get habitDetailsBarChartEveningBarText;

  /// No description provided for @habitDetailsBarChartNightBarText.
  ///
  /// In en, this message translates to:
  /// **'Night'**
  String get habitDetailsBarChartNightBarText;

  /// No description provided for @habitDetailsToolTipContentDesc.
  ///
  /// In en, this message translates to:
  /// **'{done} out of {all}'**
  String habitDetailsToolTipContentDesc(int? done, int? all);

  /// No description provided for @refreshHabitDataModalBottomSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'Renew Habits'**
  String get refreshHabitDataModalBottomSheetTitle;

  /// No description provided for @refreshHabitDataModalBottomSheetDesc.
  ///
  /// In en, this message translates to:
  /// **'This will renew the current variety of Habits. Use it if you don\'t like the current variety'**
  String get refreshHabitDataModalBottomSheetDesc;

  /// No description provided for @refreshHabitDataModalBottomSheetRenewHabitsButtonText.
  ///
  /// In en, this message translates to:
  /// **'RENEW HABITS'**
  String get refreshHabitDataModalBottomSheetRenewHabitsButtonText;

  /// No description provided for @refreshHabitDataModalBottomSheetCancelButtonText.
  ///
  /// In en, this message translates to:
  /// **'CANCEL'**
  String get refreshHabitDataModalBottomSheetCancelButtonText;

  /// No description provided for @errorPageTitle.
  ///
  /// In en, this message translates to:
  /// **'I have bad news for you'**
  String get errorPageTitle;

  /// No description provided for @errorPageDesc.
  ///
  /// In en, this message translates to:
  /// **'The page you are looking for might be removed or some error happened. Maybe something has broken this page. Come back to the homepage.'**
  String get errorPageDesc;

  /// No description provided for @errorPageBackToHomeButtonText.
  ///
  /// In en, this message translates to:
  /// **'Back to Home'**
  String get errorPageBackToHomeButtonText;

  /// No description provided for @completeHabitsSuccessModalBottomSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'Successfully Done'**
  String get completeHabitsSuccessModalBottomSheetTitle;

  /// No description provided for @completeHabitsSuccessModalBottomSheetSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Hurrah!'**
  String get completeHabitsSuccessModalBottomSheetSubtitle;

  /// No description provided for @completeHabitsSuccessModalBottomSheetDesc.
  ///
  /// In en, this message translates to:
  /// **'You completed this habit'**
  String get completeHabitsSuccessModalBottomSheetDesc;

  /// No description provided for @completeHabitsSuccessModalBottomSheetGoBackButtonText.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get completeHabitsSuccessModalBottomSheetGoBackButtonText;

  /// No description provided for @customTimeIndicatorNow.
  ///
  /// In en, this message translates to:
  /// **'now'**
  String get customTimeIndicatorNow;

  /// No description provided for @customTimeIndicatorMinute.
  ///
  /// In en, this message translates to:
  /// **'minute'**
  String get customTimeIndicatorMinute;

  /// No description provided for @customTimeIndicatorMinutes.
  ///
  /// In en, this message translates to:
  /// **'minutes'**
  String get customTimeIndicatorMinutes;

  /// No description provided for @customTimeIndicatorHours.
  ///
  /// In en, this message translates to:
  /// **'hours'**
  String get customTimeIndicatorHours;

  /// No description provided for @customTimeIndicatorDays.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get customTimeIndicatorDays;

  /// No description provided for @customTimeIndicatorMonths.
  ///
  /// In en, this message translates to:
  /// **'months'**
  String get customTimeIndicatorMonths;

  /// No description provided for @customTimeIndicatorYears.
  ///
  /// In en, this message translates to:
  /// **'years'**
  String get customTimeIndicatorYears;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'fr', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
    case 'tr':
      return AppLocalizationsTr();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
