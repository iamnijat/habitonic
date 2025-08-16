// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get introPageTitle => 'Transformez vos habitudes avec Habitonic';

  @override
  String get introPageDesc =>
      'De petites améliorations s\'accumulent dans des résultats aussi remarquables si vous choisissez d\'être patient.';

  @override
  String get introPageButtonText => 'J\'ai compris!';

  @override
  String get englishLang => 'Anglais';

  @override
  String get englishLangLocale => 'en';

  @override
  String get frenchLang => 'Français';

  @override
  String get frenchLangLocale => 'fr';

  @override
  String get turkishLang => 'Turc';

  @override
  String get turkishLangLocale => 'tr';

  @override
  String get homePageTitle => 'Transformez l\'habitude ensemble 👏';

  @override
  String get homeProgressBoxTitleWithLessProgress =>
      'Vos objectifs quotidiens presque atteints ! 🔥\n\n';

  @override
  String get homeProgressBoxTitleWithMoreProgress =>
      'Vous êtes loin de votre but! 😥\n\n';

  @override
  String get homeProgressBoxTitleWithNoProgress =>
      'Vous n\'avez pas d\'habitudes pour aujourd\'hui ! 🔥';

  @override
  String homeProgressBoxDesc(int completed, int all) {
    return '$completed de $all complété';
  }

  @override
  String get homeTodayHabitsTitle => 'Habitudes d\'aujourd\'hui';

  @override
  String get homeNoTodayHabitsTitle => 'Pas d\'habitudes';

  @override
  String homeTodayHabitsItemDesc(int? repeat) {
    return 'Répéter $repeat fois';
  }

  @override
  String get homeNewHabitButtonText => 'Nouveau';

  @override
  String get newHabitModalSheetFormNameTitle => 'Nommez votre habitude';

  @override
  String get newHabitModalSheetFormNameHintText =>
      'Lisez un livre pendant 15 minutes';

  @override
  String get newHabitModalSheetFormEmojiTitle =>
      'Choisissez une icône pour votre habitude';

  @override
  String get newHabitModalSheetFormRepetitionTitle =>
      'Combien de fois aimeriez-vous répéter votre habitude?';

  @override
  String get newHabitModalSheetFormCreateHabitButtonText =>
      'Créez une habitude';

  @override
  String get habitDetailsCurrentStreakTitle => 'Série actuelle';

  @override
  String get habitDetailsRepeatTimesTitle => 'Fois de répétition';

  @override
  String habitDetailsRepeatTimesText(int repeat) {
    return '$repeat fois';
  }

  @override
  String get habitDetailsBarChartTitle => 'Enregistrement en journée';

  @override
  String get habitDetailsBarChartMorningBarText => 'Matin';

  @override
  String get habitDetailsBarChartAfternoonBarText => 'Après midi';

  @override
  String get habitDetailsBarChartEveningBarText => 'Soir';

  @override
  String get habitDetailsBarChartNightBarText => 'Nuit';

  @override
  String habitDetailsToolTipContentDesc(int? done, int? all) {
    return '$done hors de $all';
  }

  @override
  String get refreshHabitDataModalBottomSheetTitle =>
      'Renouveler les habitudes';

  @override
  String get refreshHabitDataModalBottomSheetDesc =>
      'Cela renouvellera la variété actuelle des Habitudes. Utilisez-le si vous n\'aimez pas la variété actuelle';

  @override
  String get refreshHabitDataModalBottomSheetRenewHabitsButtonText =>
      'RENOUVELER';

  @override
  String get refreshHabitDataModalBottomSheetCancelButtonText => 'ANNULEZ';

  @override
  String get errorPageTitle => 'J\'ai une mauvaise nouvelle pour toi';

  @override
  String get errorPageDesc =>
      'La page que vous recherchez a peut-être été supprimée ou une erreur s\'est produite. Peut-être que quelque chose a cassé cette page. Revenez à la page d\'accueil.';

  @override
  String get errorPageBackToHomeButtonText => 'De retour à la maison';

  @override
  String get completeHabitsSuccessModalBottomSheetTitle => 'Fait avec succès';

  @override
  String get completeHabitsSuccessModalBottomSheetSubtitle => 'Hourra!';

  @override
  String get completeHabitsSuccessModalBottomSheetDesc =>
      'Vous avez terminé cette habitude';

  @override
  String get completeHabitsSuccessModalBottomSheetGoBackButtonText =>
      'Retournez';

  @override
  String get customTimeIndicatorNow => 'à présent';

  @override
  String get customTimeIndicatorMinute => 'minute';

  @override
  String get customTimeIndicatorMinutes => 'minutes';

  @override
  String get customTimeIndicatorHours => 'heures';

  @override
  String get customTimeIndicatorDays => 'jours';

  @override
  String get customTimeIndicatorMonths => 'mois';

  @override
  String get customTimeIndicatorYears => 'ans';
}
