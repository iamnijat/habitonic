part of router;

abstract class RouterService {
  void openSplashPage(BuildContext _context);

  void openIntroPage(BuildContext _context);

  void openHomePage(BuildContext _context);

  Future openHabitDetailsPage(BuildContext _context, {Object? arguments});

  void back(BuildContext _context, {dynamic result});
}
