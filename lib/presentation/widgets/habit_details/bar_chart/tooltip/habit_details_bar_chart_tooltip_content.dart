part of widgets;

class HabitDetailsBarChartTooltipContent extends StatelessWidget {
  final String _chartTitle;
  final AppLocalizations _localization;
  final int? _totalRepeatTimes;
  final int? _doneRepeatTimes;
  const HabitDetailsBarChartTooltipContent(this._chartTitle, this._localization,
      this._totalRepeatTimes, this._doneRepeatTimes,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.w),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text: "$_chartTitle\n",
            style: AppStyles.whiteColor11spw700NotoSans,
          ),
          TextSpan(
            text: _desc,
            style: AppStyles.white54Color10spw600NotoSans,
          ),
        ]),
      ),
    );
  }

  String get _desc => _localization.habitDetailsToolTipContentDesc(
      _doneRepeatTimes, _totalRepeatTimes);
}
