part of modal_bottom_sheets;

class RefreshHabitsDataModalBottomSheetImage extends StatelessWidget {
  const RefreshHabitsDataModalBottomSheetImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 11.h,
      width: 11.h,
      decoration: const BoxDecoration(
          color: AppPalette.mainBlueColor, shape: BoxShape.circle),
      child: buildRefreshIcon(),
    );
  }

  Center buildRefreshIcon() {
    return Center(
        child: Icon(
      Icons.refresh_rounded,
      color: AppPalette.whiteColor,
      size: 6.h,
    ));
  }
}
