part of modal_bottom_sheets;

class NewHabitModalBottomSheetNextNumbersButton extends StatelessWidget {
  final NewHabitModalBottomSheetCubit _cubit;
  const NewHabitModalBottomSheetNextNumbersButton(this._cubit, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _cubit.generateNextNumbers(),
      child: Container(
        height: 4.5.h,
        width: 4.5.h,
        decoration: BoxDecoration(
            color: AppPalette.grey,
            border: Border.all(color: AppPalette.grey, width: 1),
            shape: BoxShape.circle),
        child: buildAddIcon(),
      ),
    );
  }

  Center buildAddIcon() {
    return Center(
        child: Icon(
      Icons.arrow_forward_rounded,
      color: AppPalette.mainBlackColor,
      size: 2.4.h,
    ));
  }
}
