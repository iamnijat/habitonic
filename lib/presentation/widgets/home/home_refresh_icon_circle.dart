part of widgets;

class HomeRefreshIconCircle extends StatelessWidget {
  final TodayHabitsBloc _bloc;
  final AppLocalizations _localization;
  const HomeRefreshIconCircle(this._bloc, this._localization, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          showRefreshHabitsConfirmationModalBottomSheet(context, _localization)
              .then((value) {
        if (value == true) {
          _bloc.add(const TodayHabitsEvent.load());
        }
      }),
      child: Container(
        height: 5.5.h,
        width: 5.5.h,
        decoration: BoxDecoration(
            color: AppPalette.whiteColor,
            border: Border.all(color: AppPalette.openGreyColor, width: 1),
            shape: BoxShape.circle),
        child: buildRefreshIcon(),
      ),
    );
  }

  Center buildRefreshIcon() {
    return Center(
        child: Icon(
      Icons.refresh_rounded,
      color: AppPalette.mainBlackColor,
      size: 2.7.h,
    ));
  }
}
