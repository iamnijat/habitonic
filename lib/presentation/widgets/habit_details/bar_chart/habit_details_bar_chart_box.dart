part of widgets;

class HabitDetailsBarChartBox extends StatelessWidget {
  final HabitDetailsCubit _cubit;
  final AppLocalizations _localization;
  const HabitDetailsBarChartBox(this._cubit, this._localization, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: AppStyles.all6wPadding,
      decoration: BoxDecoration(
          color: AppPalette.whiteColor,
          border: Border.all(color: AppPalette.openGreyColor, width: 1),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HabitDetailsBarChartTitle(_localization),
          const VerticalSpacer(3),
          HabitDetailsBarChartGroup(_cubit, _localization),
        ],
      ),
    );
  }
}
