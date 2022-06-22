part of widgets;

class HomeTitle extends StatelessWidget {
  final AppLocalizations _localization;
  const HomeTitle(this._localization, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _localization.homePageTitle,
      style: AppStyles.mainHeadlineColor18spw700PoppinsLineHeight,
    );
  }
}
