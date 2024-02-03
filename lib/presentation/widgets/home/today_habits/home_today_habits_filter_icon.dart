part of widgets;

class HomeTodayHabitsFilterIcon extends StatelessWidget {
  final TodayHabitsBloc _todayHabitsBloc;
  final bool _isHabitsEmpty;
  const HomeTodayHabitsFilterIcon(this._todayHabitsBloc, this._isHabitsEmpty,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isHabitsEmpty ? 0 : 1,
      duration: DurationsUtil.threeHundredMillisecondsDuration,
      child: StreamBuilder<String>(
          initialData: AppStrings.desc,
          stream: _todayHabitsBloc.habitFilterStream,
          builder: (context, snapshot) {
            final _filterValue = snapshot.data;
            final _isFilteredDesc = _filterValue == AppStrings.desc;
            return GestureDetector(
              onTap: () => _todayHabitsBloc.add(TodayHabitsEvent.filter(
                  _isFilteredDesc ? AppStrings.asc : AppStrings.desc)),
              child: AnimatedContainer(
                height: 5.5.h,
                width: 5.5.h,
                duration: DurationsUtil.fourHundredMillisecondsDuration,
                decoration: BoxDecoration(
                  color: _isFilteredDesc
                      ? AppPalette.whiteColor
                      : AppPalette.mainPurpleColor,
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(
                      color: _isFilteredDesc
                          ? AppPalette.openGreyColor
                          : AppPalette.mainPurpleColor,
                      width: 1),
                ),
                child: buildFilterIcon(_isFilteredDesc),
              ),
            );
          }),
    );
  }

  Center buildFilterIcon(bool _isFilteredDesc) {
    return Center(
        child: SvgPicture.asset(
      AppImages.filterIcon,
      colorFilter: ColorFilter.mode(
        _isFilteredDesc ? AppPalette.mainPurpleColor : AppPalette.whiteColor,
        BlendMode.srcIn,
      ),
      height: 2.h,
      width: 2.h,
    ));
  }
}
