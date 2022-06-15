part of widgets;

class HomeFloatingButton extends StatelessWidget {
  final TodayHabitsBloc _todayHabitsBloc;
  final AppLocalizations _localization;
  const HomeFloatingButton(this._todayHabitsBloc, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: AppPalette.transparentColor,
        highlightColor: AppPalette.transparentColor,
      ),
      child: Container(
        height: AppStyles.deviceTablet ? 10.h : 9.h,
        width: 50.w,
        margin: EdgeInsets.only(bottom: 1.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: AppPalette.mainPurpleColor,
          boxShadow: [
            BoxShadow(
              color: AppPalette.mainPurpleColor.withOpacity(0.55),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Material(
          color: AppPalette.transparentColor,
          child: InkWell(
              onTap: () => _showNewHabitModalBottomSheet(context),
              child: Center(
                  child: Text(
                "${_localization.homeNewHabitButtonText}  +",
                style: AppStyles.whiteColor14spw700NotoSans,
                textAlign: TextAlign.center,
              ))),
        ),
      ),
    );
  }

  void _showNewHabitModalBottomSheet(BuildContext _context) {
    showNewHabitModalBottomSheet(_context, _localization).then((value) {
      if (value != null) {
        _todayHabitsBloc.add(TodayHabitsEvent.reload(value));
      }
    });
  }
}
