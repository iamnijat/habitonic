part of modal_bottom_sheets;

class CompleteHabitsSuccessModalBottomSheetOverview extends StatelessWidget {
  final AppLocalizations _localization;
  const CompleteHabitsSuccessModalBottomSheetOverview(this._localization,
      {Key? key})
      : super(key: key);

  RouterService get _navigation => getIt<RouterService>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          _localization.completeHabitsSuccessModalBottomSheetSubtitle,
          style: AppStyles.mainPurpleColor12spw600Poppins,
        ),
        const VerticalSpacer(2),
        Text(
          _localization.completeHabitsSuccessModalBottomSheetTitle,
          style: AppStyles.mainHeadlineColor14spw700Montserrat,
          textAlign: TextAlign.center,
        ),
        const VerticalSpacer(2),
        Padding(
          padding: AppStyles.onlyHorizontalPadding(8.w),
          child: Text(
            _localization.completeHabitsSuccessModalBottomSheetDesc,
            style: AppStyles.greyColorShade40012spw500PoppinsLineHeight,
            textAlign: TextAlign.center,
          ),
        ),
        const VerticalSpacer(7),
        Container(
          height: AppStyles.deviceTablet ? 10.h : 7.h,
          width: 70.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppPalette.mainPurpleColor,
          ),
          child: Material(
            color: AppPalette.transparentColor,
            child: InkWell(
                onTap: () => _navigation.back(context),
                child: Center(
                    child: Text(
                  _localization
                      .completeHabitsSuccessModalBottomSheetGoBackButtonText,
                  style: AppStyles.whiteColor14spw700NotoSans,
                  textAlign: TextAlign.center,
                ))),
          ),
        ),
      ],
    );
  }
}
