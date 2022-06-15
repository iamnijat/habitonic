part of widgets;

class HabitDetailsOverviewBoxCurrentStreak extends StatelessWidget {
  final HabitDetailsCubit _cubit;
  final AppLocalizations _localization;
  const HabitDetailsOverviewBoxCurrentStreak(this._cubit, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AnimatedSwitcher(
          duration: Durations.twoHundredFiftyMillisecondsDuration,
          transitionBuilder: (Widget child, Animation<double> animation) =>
              ScaleTransition(
            scale: animation,
            child: child,
          ),
          child: Text(
            _streak,
            style: AppStyles.mainPurpleColor14spw600Poppins,
            key: UniqueKey(),
          ),
        ),
        const VerticalSpacer(0.5),
        Text(
          _localization.habitDetailsCurrentStreakTitle,
          style: AppStyles.greyColorShade40012spw500NotoSansLineHeight,
        )
      ],
    );
  }

  String get _streak =>
      TimeAgoUtil.getTimeDifference(_cubit.habit!.createdAt!, _localization);
}
