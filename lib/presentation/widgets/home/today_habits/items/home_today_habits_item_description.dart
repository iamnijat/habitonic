part of widgets;

class HomeTodayHabitsItemDescription extends StatelessWidget {
  final int? _repeatTimes;
  final int? _repeatTimes1;
  final AppLocalizations _localization;
  const HomeTodayHabitsItemDescription(
      this._repeatTimes, this._repeatTimes1, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.w,
      child: Text(
        _localization.homeTodayHabitsItemDesc(_repeatTimes! - _repeatTimes1!),
        style: AppStyles.greyColorShade40011spw500PoppinsLineHeight,
      ),
    );
  }
}
