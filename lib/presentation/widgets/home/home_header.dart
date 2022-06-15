part of widgets;

class HomeHeader extends StatelessWidget {
  final TodayHabitsBloc _bloc;
  final AppLocalizations _localization;
  const HomeHeader(this._bloc, this._localization, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        HomeRefreshIconCircle(_bloc, _localization),
        Text(
          _currentDate.toUpperCase(),
          style: AppStyles.secondaryGreyColor12spw700Poppins,
        ),
        HomeLanguageIconCircle(_localization),
      ],
    );
  }

  String get _currentDate => DateFormatUtil.formattedDate(
      _localeName, DateTime.now(), DateFormats.weekdayMonthDayDateFormat);

  String get _localeName => _localization.localeName;
}
