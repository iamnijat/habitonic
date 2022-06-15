part of shared_preferences_service;

class SharedPreferencesServiceImpl implements SharedPreferencesService {
  late SharedPreferences _sp;

  /// Static Variables
  @protected
  static const introPageSeen = 'intro_page_seen';
  static const appLocale = 'app_locale';

  @protected
  @override
  Future<SharedPreferences> init() async {
    _sp = await SharedPreferences.getInstance();
    return _sp;
  }

  @protected
  @override
  Future<bool?> getIntroPageSeen() async {
    final _shared = await init();
    return _shared.getBool(introPageSeen);
  }

  @protected
  @override
  Future<void> storeIntroPageSeen() async {
    final _shared = await init();
    await _shared.setBool(introPageSeen, true);
  }

  @protected
  @override
  Future<String?> getAppLocale() async {
    final _shared = await init();
    return _shared.getString(appLocale);
  }

  @protected
  @override
  Future<void> storeAppLocale(String _languageCode) async {
    final _shared = await init();
    await _shared.setString(appLocale, _languageCode);
  }
}
