part of widgets;

class HomeProgressBoxDesc extends StatelessWidget {
  final TodayHabitsBloc _todayHabitsBloc;
  final AppLocalizations _localization;
  const HomeProgressBoxDesc(this._todayHabitsBloc, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: <TextSpan>[
        TextSpan(
          text: _progressTitle,
          style: AppStyles.whiteColor12spw600MontserratLineHeight,
        ),
        TextSpan(
          text: _localization.homeProgressBoxDesc(_completed, _all),
          style: AppStyles.white54Color10spw600NotoSans,
        ),
      ]),
    );
  }

  String get _progressTitle => _isBiggerThanHalfPercentage
      ? _localization.homeProgressBoxTitleWithLessProgress
      : _localization.homeProgressBoxTitleWithMoreProgress;

  bool get _isBiggerThanHalfPercentage =>
      _todayHabitsBloc.habitsComparisonPercentage > 50;

  int get _completed => _todayHabitsBloc.completedHabitsCount;

  int get _all => _todayHabitsBloc.allHabitsCount;
}
