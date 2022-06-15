part of modal_bottom_sheets;

class NewHabitModalBottomSheetBackNavigationButton extends StatelessWidget {
  final NewHabitModalBottomSheetCubit _cubit;
  const NewHabitModalBottomSheetBackNavigationButton(this._cubit, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () => _cubit.back(context),
        child: Container(
          height: 5.5.h,
          width: 5.5.h,
          decoration: BoxDecoration(
              color: AppPalette.grey,
              border: Border.all(color: AppPalette.grey, width: 1),
              shape: BoxShape.circle),
          child: buildBackNavIcon(),
        ),
      ),
    );
  }

  Center buildBackNavIcon() {
    return Center(
        child: Icon(
      Icons.close_rounded,
      color: AppPalette.mainBlackColor,
      size: 2.8.h,
    ));
  }
}
