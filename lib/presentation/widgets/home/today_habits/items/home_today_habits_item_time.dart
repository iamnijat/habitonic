part of widgets;

class HomeTodayHabitsItemTime extends StatelessWidget {
  final DateTime? _createdAt;
  final AppLocalizations _localization;
  const HomeTodayHabitsItemTime(this._createdAt, this._localization, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _electronTime,
      style: AppStyles.secondaryGreyColor10spw700Poppins,
    );
  }

  String get _electronTime => DateFormatUtil.formattedDate(
      _localeName, _createdAt!, DateFormats.clockFormatElectronicTime);

  String get _localeName => _localization.localeName;
}
