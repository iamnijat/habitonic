part of widgets;

class HabitDetailsOverviewBoxRepeatTimes extends StatelessWidget {
  final HabitDetailsCubit _cubit;
  final AppLocalizations _localization;
  const HabitDetailsOverviewBoxRepeatTimes(this._cubit, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        StreamBuilder<int?>(
            stream: _cubit.doneRepeatTimesStream,
            initialData: 0,
            builder: (context, snapshot) {
              final _doneRepeatTimes = snapshot.data;
              return AnimatedSwitcher(
                  duration: Durations.twoHundredFiftyMillisecondsDuration,
                  transitionBuilder:
                      (Widget child, Animation<double> animation) =>
                          ScaleTransition(
                            scale: animation,
                            child: child,
                          ),
                  child: Text(_repeatTimesText(_doneRepeatTimes!),
                      style: AppStyles.mainPurpleColor14spw600Poppins,
                      key: UniqueKey()));
            }),
        const VerticalSpacer(0.5),
        Text(
          _localization.habitDetailsRepeatTimesTitle,
          style: AppStyles.greyColorShade40012spw500NotoSansLineHeight,
        )
      ],
    );
  }

  int? _updatedRepeatTimes(int? _doneRepeatTimes) =>
      _cubit.habit!.totalRepeatTimes! - _doneRepeatTimes!;

  String _repeatTimesText(int? _doneRepeatTimes) => _localization
      .habitDetailsRepeatTimesText(_updatedRepeatTimes(_doneRepeatTimes)!);
}
