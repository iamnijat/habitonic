import 'dart:async';
import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitonic/presentation/cubit/app_language_cubit/app_language_cubit.dart';
import '../app.dart';
import 'constants/palette.dart';
import '../core/use_cases/use_case.dart';
import '../domain/use_cases/habits_use_cases/close_local_database.dart';
import '../domain/use_cases/habits_use_cases/init_local_database.dart';
import '../injection_container.dart';

abstract class AppConfigs {
  const AppConfigs._();

  static Future<void> config() async {
    runZonedGuarded<Future<void>>(() async {
      WidgetsFlutterBinding.ensureInitialized();

      if (kDebugMode) {
        Fimber.plantTree(DebugTree());
      }

      _init();

      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppPalette.transparentColor,
      ));

      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

      runApp(
        BlocProvider<AppLanguageCubit>(
          create: (context) => getIt(),
          child: const MyApp(),
        ),
      );
    }, (error, stackTrace) {
      Fimber.e('Error in main thread appeared. 😥',
          ex: error, stacktrace: stackTrace);
    });
  }

  static Future<void> _init() async {
    await setupLocator();

    getIt<CloseLocalDatabase>()(NoParams());

    await getIt<InitLocalDatabase>()(NoParams());
  }
}
