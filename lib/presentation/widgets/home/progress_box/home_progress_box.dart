part of widgets;

class HomeProgressBox extends StatelessWidget {
  final TodayHabitsBloc _todayHabitsBloc;
  final TodayHabitsState _state;
  final AppLocalizations _localization;
  const HomeProgressBox(this._todayHabitsBloc, this._state, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppStyles.horizontalVerticalPadding(6.w, 5.h),
      decoration: BoxDecoration(
          color: AppPalette.mainPurpleColor,
          borderRadius: BorderRadius.circular(35)),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            HomeCircularPercentIndicator(_todayHabitsBloc, _isHabitsEmpty),
            HomeProgressBoxOverview(
                _todayHabitsBloc, _isHabitsEmpty, _localization),
          ]),
    );
  }

  bool get _isHabitsEmpty => _state == const TodayHabitsState.empty();
}
