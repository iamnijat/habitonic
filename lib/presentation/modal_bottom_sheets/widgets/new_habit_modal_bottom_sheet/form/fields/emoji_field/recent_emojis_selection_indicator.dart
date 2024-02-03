part of modal_bottom_sheets;

class RecentEmojisSelectionIndicator extends StatelessWidget {
  final NewHabitModalBottomSheetCubit _newHabitModalBottomSheetCubit;
  final String _emojiItem;
  const RecentEmojisSelectionIndicator(
      this._newHabitModalBottomSheetCubit, this._emojiItem,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
        stream: _newHabitModalBottomSheetCubit.habitEmojiStream,
        builder: (context, snapshot) {
          final _emojiValue = snapshot.data;
          return Positioned(
            top: 3.5.h,
            child: AnimatedOpacity(
              opacity: _emojiValue == _emojiItem ? 1 : 0,
              duration: DurationsUtil.threeHundredMillisecondsDuration,
              child: Container(
                padding: AppStyles.horizontalVerticalPadding(2.w, 2.w),
                decoration: BoxDecoration(
                    color: AppPalette.openGreenColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: SvgPicture.asset(
                  AppImages.whiteDoneIcon,
                  colorFilter: const ColorFilter.mode(
                    AppPalette.whiteColor,
                    BlendMode.srcIn,
                  ),
                  height: 1.5.w,
                  width: 1.5.w,
                )),
              ),
            ),
          );
        });
  }
}
