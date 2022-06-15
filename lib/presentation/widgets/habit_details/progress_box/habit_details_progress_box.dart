part of widgets;

class HabitDetailsProgressBox extends StatelessWidget {
  final HabitDetailsCubit _cubit;
  final HabitDetailsState _state;
  final String _heroAnimationTag;
  final int _selectedindex;
  const HabitDetailsProgressBox(
    this._cubit,
    this._state,
    this._heroAnimationTag,
    this._selectedindex, {
    Key? key,
  }) : super(key: key);

  double get _percentage => _cubit.habitsComparisonPercentage;

  bool get _loading => _state == HabitDetailsState.loading;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: _loading,
      child: GestureDetector(
        onTap: () => _cubit.refreshHabit(context, _selectedindex),
        child: Center(
            child: StreamBuilder<int?>(
                stream: _cubit.totalRepeatTimesStream,
                initialData: 0,
                builder: (context, snapshot) {
                  return CircularPercentIndicator(
                    radius: 10.h,
                    lineWidth: 9,
                    linearGradient:
                        AppPalette.habitDetailsProgressLinearGradientColor,
                    animation: true,
                    animationDuration: 800,
                    animateFromLastPercent: true,
                    percent: _percentage,
                    center: buildHeroAnimationIcon(),
                    backgroundColor: AppPalette.grayWhiteColor,
                    circularStrokeCap: CircularStrokeCap.round,
                  );
                })),
      ),
    );
  }

  Hero buildHeroAnimationIcon() {
    return Hero(
      tag: _heroAnimationTag,
      child: _loading
          ? Container(
              height: 14.h,
              width: 14.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    AppImages.doneIconAnimation,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            )
          : Container(
              height: 8.h,
              width: 8.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    _cubit.habit!.emoji.toString(),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
    );
  }
}
