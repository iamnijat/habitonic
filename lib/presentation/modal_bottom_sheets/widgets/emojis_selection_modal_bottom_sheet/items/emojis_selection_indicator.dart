part of modal_bottom_sheets;

class EmojisSelectionIndicator extends StatelessWidget {
  final EmojisModalSheetCubit _emojisModalSheetCubit;
  final String _emojiItem;
  const EmojisSelectionIndicator(this._emojisModalSheetCubit, this._emojiItem,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
        stream: _emojisModalSheetCubit.emojisSelectionStream,
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
