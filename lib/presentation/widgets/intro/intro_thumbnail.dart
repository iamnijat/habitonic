part of widgets;

class IntroThumbnail extends StatelessWidget {
  const IntroThumbnail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100.w,
        height: 45.h,
        margin: AppStyles.onlyHorizontalPadding(8.w),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: svg_provider.Svg(
            AppImages.introImage,
          ),
          fit: BoxFit.fitWidth,
        )),
      ),
    );
  }
}
