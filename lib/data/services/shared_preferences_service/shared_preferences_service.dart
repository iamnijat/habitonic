part of shared_preferences_service;

abstract class SharedPreferencesService {
  Future<SharedPreferences?> init();

  Future<bool?> getIntroPageSeen();

  Future<void> storeIntroPageSeen();

  Future<String?> getAppLocale();

  Future<void> storeAppLocale(String _languageCode);
}
