part of widgets;

class IntroOverview extends StatelessWidget {
  final AppLocalizations _localization;
  const IntroOverview(this._localization, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: AppStyles.onlyHorizontalPadding(8.w),
          child: Text(
            _localization.introPageTitle,
            textAlign: TextAlign.center,
            style: AppStyles.mainHeadlineColor20spw700PoppinsLineHeight,
          ),
        ),
        const VerticalSpacer(2),
        Padding(
          padding: AppStyles.onlyHorizontalPadding(15.w),
          child: Text(
            _localization.introPageDesc,
            textAlign: TextAlign.center,
            style: AppStyles.greyColorShade40012spw500PoppinsLineHeight,
          ),
        ),
      ],
    );
  }
}
