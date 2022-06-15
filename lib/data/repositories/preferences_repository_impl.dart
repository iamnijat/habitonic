import '../../core/either.dart';
import '../../core/failures.dart';
import '../../domain/repositories/preferences_repository.dart';
import '../data_sources/local/preferences_data_source/preferences_data_source.dart';

class PreferencesRepositoryImpl implements PreferencesRepository {
  PreferencesRepositoryImpl(this._dataSource);

  final PreferencesDataSource _dataSource;

  @override
  Future<Either<Failure, Unit>> saveIntroPageSeen() async {
    try {
      await _dataSource.saveIntroPageSeen();
      return const Success(unit);
    } catch (_) {
      return const Error(Failure.cache());
    }
  }

  @override
  Future<Either<Failure, bool?>> get introPageSeen async {
    try {
      final _locale = await _dataSource.introPageSeen;
      return Success(_locale);
    } catch (_) {
      return const Error(Failure.cache());
    }
  }

  @override
  Future<Either<Failure, Unit>> changeLocale(String _languageCode) async {
    try {
      await _dataSource.changeAppLocale(_languageCode);
      return const Success(unit);
    } catch (_) {
      return const Error(Failure.cache());
    }
  }

  @override
  Future<Either<Failure, String?>> get locale async {
    try {
      final _locale = await _dataSource.locale;
      return Success(_locale);
    } catch (_) {
      return const Error(Failure.cache());
    }
  }
}
