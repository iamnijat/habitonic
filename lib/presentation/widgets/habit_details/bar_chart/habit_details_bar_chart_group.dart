part of widgets;

class HabitDetailsBarChartGroup extends StatelessWidget {
  final HabitDetailsCubit _cubit;
  final AppLocalizations _localization;
  const HabitDetailsBarChartGroup(this._cubit, this._localization, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        HabitDetailsBarChart(
            _cubit.habit!.totalRepeatTimes,
            _localization.habitDetailsBarChartMorningBarText,
            _localization,
            AppPalette.openGreenColor,
            stream: _cubit.morningRepeatTimesStream),
        HabitDetailsBarChart(
            _cubit.habit!.totalRepeatTimes,
            _localization.habitDetailsBarChartAfternoonBarText,
            _localization,
            AppPalette.mainPurpleColor,
            stream: _cubit.afternoonRepeatTimesStream),
        HabitDetailsBarChart(
            _cubit.habit!.totalRepeatTimes,
            _localization.habitDetailsBarChartEveningBarText,
            _localization,
            AppPalette.openGreenColor,
            stream: _cubit.eveningRepeatTimesStream),
        HabitDetailsBarChart(
            _cubit.habit!.totalRepeatTimes,
            _localization.habitDetailsBarChartNightBarText,
            _localization,
            AppPalette.mainPurpleColor,
            stream: _cubit.nightRepeatTimesStream),
      ],
    );
  }
}
