part of widgets;

class HomeCircularPercentIndicator extends StatelessWidget {
  final TodayHabitsBloc _todayHabitsBloc;
  final bool _isHabitsEmpty;
  const HomeCircularPercentIndicator(this._todayHabitsBloc, this._isHabitsEmpty,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 4.5.h,
      lineWidth: 5,
      linearGradient: AppPalette.homeProgressLinearGradientColor,
      animation: true,
      animationDuration: 1500,
      percent: _habitComparisonPercentage,
      center: AnimatedOpacity(
        opacity: _isHabitsEmpty ? 0 : 1,
        duration: Durations.threeHundredMillisecondsDuration,
        child: Text(
          '${_todayHabitsBloc.habitsComparisonPercentage.removeDecimals}%',
          style: AppStyles.whiteColor12spw700NotoSans,
        ),
      ),
      backgroundColor: AppPalette.mainPurpleColor,
      circularStrokeCap: CircularStrokeCap.round,
    );
  }

  double get _habitComparisonPercentage {
    if (_isHabitsEmpty) return 1;

    return _todayHabitsBloc
        .habitsComparisonPercentage.convertToTenDecimalPercentage;
  }
}
