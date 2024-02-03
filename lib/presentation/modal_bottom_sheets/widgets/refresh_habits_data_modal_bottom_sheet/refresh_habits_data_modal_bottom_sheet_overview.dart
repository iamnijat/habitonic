part of modal_bottom_sheets;

class RefreshHabitsDataModalBottomSheetOverview extends StatelessWidget {
  final RefreshHabitsDataModalSheetCubit _cubit;
  final RefreshHabitsDataModalSheetState _state;
  final AppLocalizations _localization;
  const RefreshHabitsDataModalBottomSheetOverview(
      this._cubit, this._state, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const RefreshHabitsDataModalBottomSheetImage(),
        const VerticalSpacer(3),
        Text(
          _localization.refreshHabitDataModalBottomSheetTitle,
          style: AppStyles.mainHeadlineColor14spw700Montserrat,
          textAlign: TextAlign.center,
        ),
        const VerticalSpacer(2),
        Padding(
          padding: AppStyles.onlyHorizontalPadding(8.w),
          child: Text(
            _localization.refreshHabitDataModalBottomSheetDesc,
            style: AppStyles.greyColorShade40012spw500PoppinsLineHeight,
            textAlign: TextAlign.center,
          ),
        ),
        const VerticalSpacer(4),
        IgnorePointer(
          ignoring: _loading,
          child: AnimatedContainer(
            height: AppStyles.deviceTablet ? 10.h : 7.h,
            width: 100.w,
            margin: EdgeInsets.only(bottom: 2.h),
            duration: DurationsUtil.threeHundredMillisecondsDuration,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppPalette.mainBlueColor,
            ),
            child: Material(
              color: AppPalette.transparentColor,
              child: InkWell(
                  onTap: () => _cubit.refreshHabits(context),
                  child: Center(
                      child: _loading
                          ? const JumpingDotsIndicator()
                          : Text(
                              _localization
                                  .refreshHabitDataModalBottomSheetRenewHabitsButtonText,
                              style: AppStyles.whiteColor12spw700Montserrat,
                              textAlign: TextAlign.center,
                            ))),
            ),
          ),
        ),
        Container(
          height: AppStyles.deviceTablet ? 10.h : 7.h,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppPalette.mainGreyColor,
          ),
          child: Material(
            color: AppPalette.transparentColor,
            child: InkWell(
                onTap: () => _cubit.back(context),
                child: Center(
                    child: Text(
                  _localization
                      .refreshHabitDataModalBottomSheetCancelButtonText,
                  style: AppStyles.mainBlackColor12spw700Montserrat,
                  textAlign: TextAlign.center,
                ))),
          ),
        ),
      ],
    );
  }

  bool get _loading => _state == RefreshHabitsDataModalSheetState.loading;
}
