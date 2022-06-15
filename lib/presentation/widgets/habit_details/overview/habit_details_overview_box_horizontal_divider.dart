part of widgets;

class HabitDetailsOverviewBoxHorizontalDivider extends StatelessWidget {
  const HabitDetailsOverviewBoxHorizontalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.5.h,
      width: 2.0,
      decoration: const BoxDecoration(
        color: AppPalette.openGreyColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    );
  }
}
