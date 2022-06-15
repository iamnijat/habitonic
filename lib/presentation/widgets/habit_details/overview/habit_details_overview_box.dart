part of widgets;

class HabitDetailsOverviewBox extends StatelessWidget {
  final HabitDetailsCubit _cubit;
  final AppLocalizations _localization;
  const HabitDetailsOverviewBox(this._cubit, this._localization, {Key? key})
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
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            HabitDetailsOverviewBoxCurrentStreak(_cubit, _localization),
            const HabitDetailsOverviewBoxHorizontalDivider(),
            HabitDetailsOverviewBoxRepeatTimes(_cubit, _localization)
          ]),
    );
  }
}
