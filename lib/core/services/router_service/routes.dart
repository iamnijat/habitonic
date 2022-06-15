part of router;

abstract class Routes {
  const Routes._();

  static final navigationKey = GlobalKey<NavigatorState>();

  static const String splashPage = '/';
  static const String introPage = '/introPage';
  static const String homePage = "/homePage";
  static const String habitDetailsPage = "/habitDetailsPage";

  static Route<dynamic> generateRoute(RouteSettings _settings) {
    switch (_settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case Routes.introPage:
        return MaterialPageRoute(builder: (_) => const IntroPage());
      case Routes.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.habitDetailsPage:
        return MaterialPageRoute(builder: (_) {
          return _handleHabitDetailsPageArguments(_settings);
        });
      default:
        return MaterialPageRoute(builder: (_) => const ErrorPage());
    }
  }

  static HabitDetailsPage _handleHabitDetailsPageArguments(
      RouteSettings _settings) {
    final _args = _settings.arguments;

    if (_args != null) {
      return HabitDetailsPage(_args as HabitDetailsPageArgumentsViewModel);
    }

    throw 'Invalid Habit Details Page Arguments';
  }
}
