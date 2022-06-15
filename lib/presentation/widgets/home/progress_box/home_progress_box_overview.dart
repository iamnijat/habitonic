part of widgets;

class HomeProgressBoxOverview extends StatelessWidget {
  final TodayHabitsBloc _todayHabitsBloc;
  final bool _isHabitsEmpty;
  final AppLocalizations _localization;
  const HomeProgressBoxOverview(
      this._todayHabitsBloc, this._isHabitsEmpty, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 45.w,
        child: _isHabitsEmpty
            ? HomeProgressBoxTitle(_localization)
            : HomeProgressBoxDesc(_todayHabitsBloc, _localization));
  }
}
