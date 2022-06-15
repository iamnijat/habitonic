part of widgets;

class HomeTodayHabitsItem extends StatelessWidget {
  final TodayHabitsBloc _bloc;
  final HabitViewModel _habitItem;
  final AppLocalizations _localization;
  const HomeTodayHabitsItem(this._bloc, this._habitItem, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _bloc.defineRouteToDetailsPage(
          _habitItem, context, _heroTag, _refreshData),
      child: Container(
        width: 100.w,
        padding: AppStyles.all6wPadding,
        decoration: BoxDecoration(
            color: AppPalette.whiteColor,
            border: Border.all(color: AppPalette.grayWhiteColor, width: 1),
            borderRadius: BorderRadius.circular(30)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  HomeTodayHabitsItemIcon(
                      _habitItem.emoji, _habitItem.createdAt.toString()),
                  const HorizontalSpacer(4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      HomeTodayHabitsItemTitle(_habitItem.name),
                      const VerticalSpacer(1.5),
                      HomeTodayHabitsItemDescription(
                          _habitItem.totalRepeatTimes,
                          _habitItem.doneRepeatTimes,
                          _localization),
                    ],
                  ),
                ],
              ),
              HomeTodayHabitsItemTime(_habitItem.createdAt, _localization),
            ]),
      ),
    );
  }

  void _refreshData() => _bloc.add(const TodayHabitsEvent.load());

  String get _heroTag => _habitItem.createdAt.toString();
}
