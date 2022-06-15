part of modal_bottom_sheets;

class NewHabitModalBottomSheetSelectEmojiButton extends StatelessWidget {
  final NewHabitModalBottomSheetCubit _newHabitModalBottomSheetCubit;
  final AppLocalizations _localization;
  const NewHabitModalBottomSheetSelectEmojiButton(
      this._newHabitModalBottomSheetCubit, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectEmoji(context),
      child: Container(
        height: 5.h,
        width: 5.h,
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
      Icons.add,
      color: AppPalette.mainBlackColor,
      size: 2.8.h,
    ));
  }

  void _selectEmoji(BuildContext _context) =>
      showEmojisSelectionModalBottomSheet(_context, _localization)
          .then((value) {
        if (value != null) {
          _newHabitModalBottomSheetCubit
            ..updateHabitEmoji(value)
            ..fetchRecentEmojis();
        }
      });
}
