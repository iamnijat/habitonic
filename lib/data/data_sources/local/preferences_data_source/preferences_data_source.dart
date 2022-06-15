abstract class PreferencesDataSource {
  Future<void> saveIntroPageSeen();

  Future<bool?> get introPageSeen;

  Future<void> changeAppLocale(String _languageCode);

  Future<String?> get locale;
}
