part of widgets;

class HabitDetailsHeader extends StatelessWidget {
  final HabitDetailsCubit _cubit;
  const HabitDetailsHeader(this._cubit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _cubit.back(context),
      child: Container(
        height: 5.5.h,
        width: 5.5.h,
        decoration: BoxDecoration(
            color: AppPalette.whiteColor,
            border: Border.all(color: AppPalette.openGreyColor, width: 1),
            shape: BoxShape.circle),
        child: buildBackNavIcon(),
      ),
    );
  }

  Center buildBackNavIcon() {
    return Center(
        child: Icon(
      Icons.arrow_back_ios_new_rounded,
      color: AppPalette.mainBlackColor,
      size: 2.3.h,
    ));
  }
}
