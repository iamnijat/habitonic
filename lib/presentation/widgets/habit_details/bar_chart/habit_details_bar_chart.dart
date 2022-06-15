part of widgets;

class HabitDetailsBarChart extends StatefulWidget {
  final Stream<int?> stream;
  final AppLocalizations _localization;
  final int? _totalRepeatTimes;
  final String _chartTitle;
  final Color _chartBarColor;
  const HabitDetailsBarChart(
    this._totalRepeatTimes,
    this._chartTitle,
    this._localization,
    this._chartBarColor, {
    Key? key,
    required this.stream,
  }) : super(key: key);

  @override
  State<HabitDetailsBarChart> createState() => _HabitDetailsBarChartState();
}

class _HabitDetailsBarChartState extends State<HabitDetailsBarChart> {
  final _tooltipController = JustTheController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: showTooltip,
          child: StreamBuilder<int?>(
              stream: widget.stream,
              initialData: 0,
              builder: (context, snapshot) {
                final _repeat = snapshot.data;
                return JustTheTooltip(
                  controller: _tooltipController,
                  backgroundColor: widget._chartBarColor,
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: LinearPercentIndicator(
                      barRadius: const Radius.circular(5),
                      width: 70.w,
                      animation: true,
                      progressColor: widget._chartBarColor,
                      animationDuration: 1600,
                      percent: _percentage(_repeat),
                      lineHeight: 10,
                      animateFromLastPercent: true,
                      backgroundColor: AppPalette.grayWhiteColor,
                    ),
                  ),
                  content: HabitDetailsBarChartTooltipContent(
                      widget._chartTitle,
                      widget._localization,
                      widget._totalRepeatTimes,
                      _repeat),
                );
              }),
        ),
        const VerticalSpacer(2),
        buildChartTitle()
      ],
    );
  }

  SizedBox buildChartTitle() {
    return SizedBox(
      width: 8.w,
      child: Text(
        widget._chartTitle,
        style: AppStyles.secondaryGreyColor13spw700Montserrat,
        maxLines: 1,
        softWrap: true,
      ),
    );
  }

  double _percentage(int? _repeat) => _repeat! / widget._totalRepeatTimes!;

  void showTooltip() => _tooltipController.showTooltip();

  @override
  void dispose() {
    super.dispose();
    _tooltipController.dispose();
  }
}
