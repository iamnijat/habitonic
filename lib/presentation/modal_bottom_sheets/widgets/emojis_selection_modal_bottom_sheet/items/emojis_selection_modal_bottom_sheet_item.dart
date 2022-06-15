part of modal_bottom_sheets;

class EmojisSelectionModalBottomSheetItem extends StatelessWidget {
  final EmojisModalSheetCubit _emojisModalSheetCubit;
  final String _emojiItem;
  const EmojisSelectionModalBottomSheetItem(
      this._emojisModalSheetCubit, this._emojiItem,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 7.h,
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          clipBehavior: Clip.none,
          children: <Widget>[
            buildEmojiItem(context),
            EmojisSelectionIndicator(_emojisModalSheetCubit, _emojiItem),
          ],
        ));
  }

  GestureDetector buildEmojiItem(BuildContext context) {
    return GestureDetector(
      onTap: () => _emojisModalSheetCubit.selectEmoji(_emojiItem, context),
      child: Container(
        height: 5.h,
        width: 5.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_emojiItem),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
