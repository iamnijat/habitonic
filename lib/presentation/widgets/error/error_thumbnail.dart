part of widgets;

class ErrorThumbnail extends StatelessWidget {
  const ErrorThumbnail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100.w,
        height: 40.h,
        margin: AppStyles.onlyHorizontalPadding(8.w),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: svg_provider.Svg(
            AppImages.errorImage,
          ),
          fit: BoxFit.fitWidth,
        )),
      ),
    );
  }
}
