// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get introPageTitle => 'Habitonic ile alışkanlıklarınızı değiştirin!';

  @override
  String get introPageDesc =>
      'Sabırlı olursanız küçük değişiklikler devasa başarılara dönüşebilir.';

  @override
  String get introPageButtonText => 'Anladım!';

  @override
  String get englishLang => 'İngilizce';

  @override
  String get englishLangLocale => 'en';

  @override
  String get frenchLang => 'Fransızca';

  @override
  String get frenchLangLocale => 'fr';

  @override
  String get turkishLang => 'Türkçe';

  @override
  String get turkishLangLocale => 'tr';

  @override
  String get homePageTitle =>
      'Haydi, birlikte bir alışkanlığa dönüştürelim. 👏';

  @override
  String get homeProgressBoxTitleWithLessProgress =>
      'Bugün yapılması gereken alışkanlıklar neredeyse bitti! 🔥\n\n';

  @override
  String get homeProgressBoxTitleWithMoreProgress =>
      'Hedefine ulaşmak için katetmen gereken uzun bir yol var! 😥\n\n';

  @override
  String get homeProgressBoxTitleWithNoProgress =>
      'Bugün için alışkanlık yok! 🔥';

  @override
  String homeProgressBoxDesc(int completed, int all) {
    return '$all alışkanlığın $completed tanesi tamamlandı.';
  }

  @override
  String get homeTodayHabitsTitle => 'Bugünkü Alışkanlıklar';

  @override
  String get homeNoTodayHabitsTitle => 'Alışkanlık Yok';

  @override
  String homeTodayHabitsItemDesc(int? repeat) {
    return '$repeat kere tekrarla';
  }

  @override
  String get homeNewHabitButtonText => 'Yeni';

  @override
  String get newHabitModalSheetFormNameTitle => 'Alışkanlığınızı adlandırın';

  @override
  String get newHabitModalSheetFormNameHintText =>
      '15 dakika boyunca kitap oku';

  @override
  String get newHabitModalSheetFormEmojiTitle =>
      'Alışkanlığınız için bir simge seçin.';

  @override
  String get newHabitModalSheetFormRepetitionTitle =>
      'Alışkanlığı ne kadar kez tekrar etmek istiyorsunuz?';

  @override
  String get newHabitModalSheetFormCreateHabitButtonText =>
      'Alışkanlığı oluşturun';

  @override
  String get habitDetailsCurrentStreakTitle => 'Mevcut başarı';

  @override
  String get habitDetailsRepeatTimesTitle => 'Kere tekrarla';

  @override
  String habitDetailsRepeatTimesText(int repeat) {
    return '$repeat kere';
  }

  @override
  String get habitDetailsBarChartTitle => 'Günlük Giriş';

  @override
  String get habitDetailsBarChartMorningBarText => 'Sabah';

  @override
  String get habitDetailsBarChartAfternoonBarText => 'Öğle';

  @override
  String get habitDetailsBarChartEveningBarText => 'Akşam';

  @override
  String get habitDetailsBarChartNightBarText => 'Gece';

  @override
  String habitDetailsToolTipContentDesc(int? done, int? all) {
    return '$all alışkanlığın $done tanesi tamamlandı';
  }

  @override
  String get refreshHabitDataModalBottomSheetTitle => 'Alışkanlıkları Yenile';

  @override
  String get refreshHabitDataModalBottomSheetDesc =>
      'Buradan alışkanlıklarınızın çeşitliliğini yenileyebilirsiniz. Lütfen sadece mevcut alışkanlık çeşitliliği hoşunuza gitmiyorsa kullanın.';

  @override
  String get refreshHabitDataModalBottomSheetRenewHabitsButtonText =>
      'ALIŞKANLIKLARI YENİLE';

  @override
  String get refreshHabitDataModalBottomSheetCancelButtonText => 'İPTAL ET';

  @override
  String get errorPageTitle => 'Kötü bir haberim var';

  @override
  String get errorPageDesc =>
      'Aradığınız sayfa ya silindi ya da bir hata meydana geldi. Belki bir şey bu sayfanın bozulmasına neden olmuş olabilir. Anasayfaya geri dön..';

  @override
  String get errorPageBackToHomeButtonText => 'Anasayfaya dön';

  @override
  String get completeHabitsSuccessModalBottomSheetTitle => 'Başarıyla yapıldı';

  @override
  String get completeHabitsSuccessModalBottomSheetSubtitle => 'Oley!';

  @override
  String get completeHabitsSuccessModalBottomSheetDesc =>
      'Bu alışkanlığı tamamladın';

  @override
  String get completeHabitsSuccessModalBottomSheetGoBackButtonText =>
      'Geri Dön';

  @override
  String get customTimeIndicatorNow => 'şimdi';

  @override
  String get customTimeIndicatorMinute => 'dakika';

  @override
  String get customTimeIndicatorMinutes => 'dakika';

  @override
  String get customTimeIndicatorHours => 'saat';

  @override
  String get customTimeIndicatorDays => 'gün';

  @override
  String get customTimeIndicatorMonths => 'ay';

  @override
  String get customTimeIndicatorYears => 'yıl';
}
