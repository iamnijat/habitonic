part of modal_bottom_sheets;

class NewHabitModalBottomSheetRepeatField extends StatelessWidget {
  final NewHabitModalBottomSheetCubit _cubit;
  const NewHabitModalBottomSheetRepeatField(this._cubit, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        NewHabitModalBottomSheetRepeatNumbers(_cubit),
        const HorizontalSpacer(4),
        NewHabitModalBottomSheetNextNumbersButton(_cubit),
      ],
    );
  }
}
