part of widgets;

class HomeTodayHabitsEmpty extends StatelessWidget {
  const HomeTodayHabitsEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100.w,
          height: 40.h,
          margin: AppStyles.onlyHorizontalPadding(8.w),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: svg_provider.Svg(
              AppImages.noHabitsImage,
            ),
            fit: BoxFit.fitWidth,
          )),
        ),
      ],
    );
  }
}
