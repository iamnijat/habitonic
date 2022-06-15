import 'package:habitonic/data/data_sources/local/preferences_data_source/preferences_data_source.dart';
import 'package:habitonic/data/services/shared_preferences_service/index.dart';

class PreferencesDataSourceImpl implements PreferencesDataSource {
  PreferencesDataSourceImpl(this._preferences);

  final SharedPreferencesService _preferences;

  @override
  Future<void> saveIntroPageSeen() async =>
      await _preferences.storeIntroPageSeen();

  @override
  Future<bool?> get introPageSeen async =>
      await _preferences.getIntroPageSeen();

  @override
  Future<void> changeAppLocale(String _languageCode) async =>
      await _preferences.storeAppLocale(_languageCode);

  @override
  Future<String?> get locale async => await _preferences.getAppLocale();
}
