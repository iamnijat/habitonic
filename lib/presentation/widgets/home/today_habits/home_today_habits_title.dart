part of widgets;

class HomeTodayHabitsTitle extends StatelessWidget {
  final TodayHabitsBloc _todayHabitsBloc;
  final TodayHabitsState _state;
  final AppLocalizations _localization;
  const HomeTodayHabitsTitle(
      this._todayHabitsBloc, this._state, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: Text(
            _title,
            style: AppStyles.mainHeadlineColor17spw700Poppins,
          ),
        ),
        const HorizontalSpacer(3),
        HomeTodayHabitsFilterIcon(_todayHabitsBloc, _isHabitsEmpty),
      ],
    );
  }

  bool get _isHabitsEmpty => _state == const TodayHabitsState.empty();

  String get _title => _isHabitsEmpty
      ? _localization.homeNoTodayHabitsTitle
      : _localization.homeTodayHabitsTitle;
}
