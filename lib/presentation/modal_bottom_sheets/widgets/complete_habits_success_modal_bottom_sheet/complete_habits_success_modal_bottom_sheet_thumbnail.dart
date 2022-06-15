part of modal_bottom_sheets;

class CompleteHabitsSuccessModalBottomSheetThumbnail extends StatelessWidget {
  const CompleteHabitsSuccessModalBottomSheetThumbnail({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 30.h,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: svg_provider.Svg(AppImages.successImage),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
