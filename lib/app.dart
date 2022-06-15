import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habitonic/core/services/router_service/index.dart';
import 'package:habitonic/presentation/cubit/app_language_cubit/app_language_cubit.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final navigationKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    final _locale = context.watch<AppLanguageCubit>().state;
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Habitonic',
        debugShowCheckedModeBanner: false,
        navigatorKey: Routes.navigationKey,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: _locale,
        initialRoute: Routes.splashPage,
        onGenerateRoute: Routes.generateRoute,
        theme: ThemeData.light(),
      );
    });
  }
}
