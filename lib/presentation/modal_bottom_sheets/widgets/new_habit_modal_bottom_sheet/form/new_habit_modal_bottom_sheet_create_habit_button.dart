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

          final isNameEmpty = _cubit.isNameEmpty;

          final isEmojiEmpty = _cubit.isEmojiEmpty;
          return IgnorePointer(
            ignoring: _checking ||
                _isFormValid(
                      _isValid,
                      isNameEmpty,
                      isEmojiEmpty,
                    ) ==
                    false,
            child: AnimatedContainer(
              height: AppStyles.deviceTablet ? 10.h : 7.h,
              width: 100.w,
              margin: EdgeInsets.only(bottom: 3.h),
              duration: DurationsUtil.threeHundredMillisecondsDuration,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: _isFormValid(
                          _isValid,
                          isNameEmpty,
                          isEmojiEmpty,
                        ) ==
                        true
                    ? AppPalette.mainPurpleColor
                    : AppPalette.mainGreyColor,
              ),
              child: Material(
                color: AppPalette.transparentColor,
                child: InkWell(
                    onTap: () => _isFormValid(
                              _isValid,
                              isNameEmpty,
                              isEmojiEmpty,
                            ) ==
                            true
                        ? _cubit.createHabit(context)
                        : null,
                    child: Center(
                        child: _checking
                            ? const JumpingDotsIndicator()
                            : Text(
                                _localization
                                    .newHabitModalSheetFormCreateHabitButtonText,
                                style: _isFormValid(
                                          _isValid,
                                          isNameEmpty,
                                          isEmojiEmpty,
                                        ) ==
                                        true
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

  bool _isFormValid(
    bool? isFormValid,
    bool isNameEmpty,
    bool isEmojiEmpty,
  ) =>
      isFormValid == true && !isNameEmpty && !isEmojiEmpty;

  bool get _checking => _state == NewHabitModalBottomSheetState.checking;
}
