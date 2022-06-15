part of modal_bottom_sheets;

class NewHabitModalBottomSheetCreateHabitButton extends StatelessWidget {
  final NewHabitModalBottomSheetCubit _cubit;
  final NewHabitModalBottomSheetState _state;
  final AppLocalizations _localization;
  const NewHabitModalBottomSheetCreateHabitButton(
      this._cubit, this._state, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: _cubit.validateForm,
        builder: (context, snapshot) {
          final _isValid = snapshot.hasData;
          return IgnorePointer(
            ignoring: _checking,
            child: AnimatedContainer(
              height: AppStyles.deviceTablet ? 10.h : 7.h,
              width: 100.w,
              margin: EdgeInsets.only(bottom: 3.h),
              duration: Durations.threeHundredMillisecondsDuration,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: _isValid
                    ? AppPalette.mainPurpleColor
                    : AppPalette.mainGreyColor,
              ),
              child: Material(
                color: AppPalette.transparentColor,
                child: InkWell(
                    onTap: () => _isValid ? _cubit.createHabit(context) : null,
                    child: Center(
                        child: _checking
                            ? const JumpingDotsIndicator()
                            : Text(
                                _localization
                                    .newHabitModalSheetFormCreateHabitButtonText,
                                style: _isValid
                                    ? AppStyles.whiteColor14spw700NotoSans
                                    : AppStyles
                                        .mainBlackColor14spw600Montserrat,
                                textAlign: TextAlign.center,
                              ))),
              ),
            ),
          );
        });
  }

  bool get _checking => _state == NewHabitModalBottomSheetState.checking;
}
