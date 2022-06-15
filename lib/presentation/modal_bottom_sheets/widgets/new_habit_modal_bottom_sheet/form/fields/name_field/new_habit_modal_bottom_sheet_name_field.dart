part of modal_bottom_sheets;

class NewHabitModalBottomSheetNameField extends StatelessWidget {
  final NewHabitModalBottomSheetCubit _newHabitModalBottomSheetCubit;
  final AppLocalizations _localization;
  const NewHabitModalBottomSheetNameField(
      this._newHabitModalBottomSheetCubit, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorHeight: 3.3.h,
      cursorColor: AppPalette.mainPurpleColor,
      autofocus: true,
      showCursor: true,
      autocorrect: true,
      textCapitalization: TextCapitalization.sentences,
      enableSuggestions: true,
      inputFormatters: [
        LengthLimitingTextInputFormatter(40),
      ],
      onChanged: (text) {
        _newHabitModalBottomSheetCubit.updateHabitName(text.trimLeft());
      },
      style: AppStyles.mainBlackColor14spw600Montserrat,
      decoration: InputDecoration(
        contentPadding: AppStyles.onlyVerticalPadding(2.h),
        hintText: _localization.newHabitModalSheetFormNameHintText,
        hintStyle: AppStyles.secondaryGreyColor14spw600Montserrat,
        errorStyle: AppStyles.secondaryGreyColor14spw600Montserrat,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        filled: true,
        fillColor: AppPalette.whiteColor,
      ),
    );
  }
}
