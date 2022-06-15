part of widgets;

class HomeProgressBoxTitle extends StatelessWidget {
  final AppLocalizations _localization;
  const HomeProgressBoxTitle(this._localization, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _localization.homeProgressBoxTitleWithNoProgress,
      style: AppStyles.whiteColor13spw600MontserratLineHeight,
    );
  }
}
