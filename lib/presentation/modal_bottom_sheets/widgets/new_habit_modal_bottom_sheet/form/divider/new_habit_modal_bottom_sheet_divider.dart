part of modal_bottom_sheets;

class NewHabitModalBottomSheetDivider extends StatelessWidget {
  const NewHabitModalBottomSheetDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppPalette.mainGreyColor,
      thickness: 1,
    );
  }
}
