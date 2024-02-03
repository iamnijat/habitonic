import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:habitonic/core/services/router_service/index.dart';
import 'package:habitonic/data/data_sources/local/emojis_local_data_source/emojis_local_data_source.dart';
import 'package:habitonic/data/data_sources/local/habits_local_data_source/habits_local_data_source.dart';
import 'package:habitonic/data/data_sources/local/habits_local_data_source/habits_local_data_source_impl.dart';
import 'package:habitonic/data/repositories/habits_repository_impl.dart';
import 'package:habitonic/data/repositories/preferences_repository_impl.dart';
import 'package:habitonic/domain/repositories/emojis_repository.dart';
import 'package:habitonic/domain/repositories/habits_repository.dart';
import 'package:habitonic/domain/use_cases/emojis_use_cases/get_all_emojis.dart';
import 'package:habitonic/domain/use_cases/emojis_use_cases/is_emoji_duplicated.dart';
import 'package:habitonic/domain/use_cases/habit_details_use_cases/get_habit.dart';
import 'package:habitonic/domain/use_cases/habit_details_use_cases/get_habit_index.dart';
import 'package:habitonic/domain/use_cases/habit_details_use_cases/update_habit.dart';
import 'package:habitonic/domain/use_cases/habits_use_cases/clear_habits_box.dart';
import 'package:habitonic/domain/use_cases/habits_use_cases/close_local_database.dart';
import 'package:habitonic/domain/use_cases/habits_use_cases/get_completed_habits.dart';
import 'package:habitonic/domain/use_cases/habits_use_cases/get_filtered_habits.dart';
import 'package:habitonic/domain/use_cases/habits_use_cases/get_uncompleted_habits.dart';
import 'package:habitonic/domain/use_cases/habits_use_cases/init_local_database.dart';
import 'package:habitonic/domain/use_cases/habits_use_cases/store_habit.dart';
import 'package:habitonic/presentation/bloc/today_habits_bloc/today_habits_bloc.dart';
import 'package:habitonic/presentation/cubit/app_language_cubit/app_language_cubit.dart';
import 'package:habitonic/presentation/cubit/emojis_modal_sheet_cubit/emojis_modal_sheet_cubit.dart';
import 'package:habitonic/presentation/cubit/habit_details_cubit/habit_details_cubit.dart';
import 'package:habitonic/presentation/cubit/language_selection_cubit/language_selection_cubit.dart';
import 'package:habitonic/presentation/cubit/new_habit_modal_sheet_cubit/new_habit_modal_sheet_cubit.dart';
import 'package:habitonic/presentation/cubit/refresh_habits_data_modal_sheet_cubit/refresh_habits_data_modal_sheet_cubit.dart';

import 'data/data_sources/local/emojis_local_data_source/emojis_local_data_source_impl.dart';
import 'data/data_sources/local/preferences_data_source/preferences_data_source.dart';
import 'data/data_sources/local/preferences_data_source/preferences_data_source_impl.dart';
import 'data/repositories/emojis_repository_impl.dart';
import 'data/services/hive_service/index.dart';
import 'data/services/shared_preferences_service/index.dart';
import 'domain/repositories/preferences_repository.dart';
import 'domain/use_cases/emojis_use_cases/get_recent_emojis.dart';
import 'domain/use_cases/emojis_use_cases/store_recent_emoji_with_compaction.dart';
import 'domain/use_cases/preferences_use_cases/change_locale.dart';
import 'domain/use_cases/preferences_use_cases/get_default_locale.dart';
import 'domain/use_cases/preferences_use_cases/get_intro_page_seen.dart';
import 'domain/use_cases/preferences_use_cases/store_intro_page_seen.dart';
import 'presentation/cubit/intro_page_cubit/intro_page_cubit.dart';
import 'presentation/cubit/splash_page_cubit/splash_page_cubit.dart';

final getIt = GetIt.instance;

class DependencyInjector {
  static DependencyInjector? _instance;

  static DependencyInjector get instance {
    _instance ??= DependencyInjector._init();
    return _instance!;
  }

  late final AppLanguageCubit appLanguageCubit;

  DependencyInjector._init() {
    appLanguageCubit =
        AppLanguageCubit(getDefaultLocale: getIt(), changeLocale: getIt());
  }

  List<BlocProvider<dynamic>> get getGlobalBlocProviders => [
        BlocProvider<AppLanguageCubit>(create: (context) => appLanguageCubit),
      ];
}

Future<void> setupLocator() async {
  _setupBlocs();
  _setupServices();
  _setUpDataSources();
  _setUpRepositories();
  _setUpUseCases();
  _setupCores();
}

//* Blocs
void _setupBlocs() {
  getIt.registerFactory(() => SplashPageCubit(getIntroPageSeen: getIt()));
  getIt.registerFactory(() => IntroPageCubit(storeIntroPageSeen: getIt()));

  getIt.registerFactory(() => TodayHabitsBloc(
      getCompletedHabits: getIt(),
      getUnCompletedHabits: getIt(),
      getFilteredHabits: getIt(),
      getHabitIndex: getIt()));

  getIt.registerFactory(() => EmojisModalSheetCubit(
      isEmojiDuplicated: getIt(),
      storeRecentEmojiWithCompaction: getIt(),
      getAllEmojis: getIt()));

  getIt.registerFactory(() => NewHabitModalBottomSheetCubit(
        getRecentEmojis: getIt(),
        storeHabit: getIt(),
      ));

  getIt.registerFactory(() => LanguageSelectionCubit());

  getIt.registerFactory(
      () => RefreshHabitsDataModalSheetCubit(clearHabitsBox: getIt()));

  getIt.registerFactory(
      () => HabitDetailsCubit(getHabit: getIt(), updateHabit: getIt()));

  getIt.registerFactory(
    () => AppLanguageCubit(getDefaultLocale: getIt(), changeLocale: getIt()),
  );
}

//* Services
void _setupServices() {
  getIt.registerLazySingleton<SharedPreferencesService>(
      () => SharedPreferencesServiceImpl());
  getIt.registerLazySingleton<HiveService>(() => HiveServiceImpl());
}

//* Data Sources
void _setUpDataSources() {
  getIt.registerLazySingleton<PreferencesDataSource>(
      () => PreferencesDataSourceImpl(getIt()));

  getIt.registerLazySingleton<HabitsLocalDataSource>(
      () => HabitsLocalDataSourceImpl(getIt()));

  getIt.registerLazySingleton<EmojisLocalDataSource>(
      () => EmojisLocalDataSourceImpl(getIt()));
}

//* Repositories
void _setUpRepositories() {
  getIt.registerLazySingleton<PreferencesRepository>(
      () => PreferencesRepositoryImpl(getIt()));

  getIt.registerLazySingleton<HabitsRepository>(
      () => HabitsRepositoryImpl(getIt()));

  getIt.registerLazySingleton<EmojisRepository>(
      () => EmojisRepositoryImpl(getIt()));
}

//* Use cases
void _setUpUseCases() {
  getIt.registerLazySingleton(() => GetDefaultLocale(getIt()));
  getIt.registerLazySingleton(() => ChangeLocale(getIt()));
  getIt.registerLazySingleton(() => GetIntroPageSeen(getIt()));
  getIt.registerLazySingleton(() => StoreIntroPageSeen(getIt()));

  getIt.registerLazySingleton(() => InitLocalDatabase(getIt()));
  getIt.registerLazySingleton(() => ClearHabitsBox(getIt()));
  getIt.registerLazySingleton(() => GetCompletedHabits(getIt()));
  getIt.registerLazySingleton(() => GetUnCompletedHabits(getIt()));
  getIt.registerLazySingleton(() => GetFilteredHabits(getIt()));
  getIt.registerLazySingleton(() => StoreHabit(getIt()));
  getIt.registerLazySingleton(() => CloseLocalDatabase(getIt()));

  getIt.registerLazySingleton(() => UpdateHabit(getIt()));
  getIt.registerLazySingleton(() => GetHabitIndex(getIt()));
  getIt.registerLazySingleton(() => GetHabit(getIt()));

  getIt.registerLazySingleton(() => GetRecentEmojis(getIt()));
  getIt.registerLazySingleton(() => GetAllEmojis(getIt()));
  getIt.registerLazySingleton(() => StoreRecentEmojiWithCompaction(getIt()));
  getIt.registerLazySingleton(() => IsEmojiDuplicated(getIt()));
}

//* Cores
void _setupCores() {
  getIt.registerLazySingleton<RouterService>(() => RouterServiceImpl());
}
