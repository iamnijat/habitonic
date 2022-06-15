part of pages;

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _localization = AppLocalizations.of(context)!;
    return Scaffold(
        backgroundColor: AppPalette.whiteColor, body: ErrorBody(_localization));
  }
}
