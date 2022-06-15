part of modal_bottom_sheets;

class LanguageSelectionIndicator extends StatelessWidget {
  final LanguageSelectionCubit _selectionCubit;
  final String _languageCode;
  const LanguageSelectionIndicator(this._selectionCubit, this._languageCode,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
        stream: _selectionCubit.languageStream,
        builder: (context, snapshot) {
          final _code = snapshot.data;
          return AnimatedOpacity(
            opacity: _code == _languageCode ? 1 : 0,
            duration: Durations.threeHundredMillisecondsDuration,
            child: Container(
              padding: AppStyles.horizontalVerticalPadding(3.w, 3.w),
              decoration: BoxDecoration(
                  color: AppPalette.openGreenColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: SvgPicture.asset(
                AppImages.whiteDoneIcon,
                color: AppPalette.whiteColor,
                height: 2.w,
                width: 2.w,
              )),
            ),
          );
        });
  }
}
