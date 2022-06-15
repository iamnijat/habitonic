import '../../core/either.dart';

import '../../core/failures.dart';

abstract class PreferencesRepository {
  Future<Either<Failure, Unit>> saveIntroPageSeen();

  Future<Either<Failure, bool?>> get introPageSeen;

  Future<Either<Failure, Unit>> changeLocale(String _languageCode);

  Future<Either<Failure, String?>> get locale;
}
