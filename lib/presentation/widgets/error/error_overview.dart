part of widgets;

class ErrorOverview extends StatelessWidget {
  final AppLocalizations _localization;
  const ErrorOverview(this._localization, {Key? key}) : super(key: key);

  RouterService get _navigation => getIt<RouterService>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          _localization.errorPageTitle,
          style: AppStyles.mainHeadlineColor18spw700Montserrat,
          textAlign: TextAlign.center,
        ),
        const VerticalSpacer(4),
        Text(
          _localization.errorPageDesc,
          style: AppStyles.greyColorShade40012spw500PoppinsLineHeight,
          textAlign: TextAlign.center,
        ),
        const VerticalSpacer(4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: AppStyles.deviceTablet ? 10.h : 7.h,
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppPalette.mainPurpleColor,
              ),
              child: Material(
                color: AppPalette.transparentColor,
                child: InkWell(
                    onTap: () => _navigation.openSplashPage(context),
                    child: Center(
                        child: Text(
                      _localization.errorPageBackToHomeButtonText,
                      style: AppStyles.whiteColor14spw700NotoSans,
                      textAlign: TextAlign.center,
                    ))),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
