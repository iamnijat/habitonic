part of router;

class RouterServiceImpl implements RouterService {
  @override
  void openSplashPage(BuildContext _context) =>
      Navigator.pushReplacementNamed(_context, Routes.splashPage);

  @override
  void openIntroPage(BuildContext _context) =>
      Navigator.pushReplacementNamed(_context, Routes.introPage);

  @override
  void openHomePage(BuildContext _context) =>
      Navigator.pushReplacementNamed(_context, Routes.homePage);

  @override
  Future openHabitDetailsPage(BuildContext _context, {Object? arguments}) =>
      Navigator.pushNamed(_context, Routes.habitDetailsPage,
          arguments: arguments);

  @override
  void back(BuildContext _context, {dynamic result}) =>
      Navigator.pop(_context, result);
}
