part of widgets;

class HabitDetailsBarChartTitle extends StatelessWidget {
  final AppLocalizations _localization;
  const HabitDetailsBarChartTitle(this._localization, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _localization.habitDetailsBarChartTitle,
      style: AppStyles.mainHeadlineColor14spw700Montserrat,
    );
  }
}
