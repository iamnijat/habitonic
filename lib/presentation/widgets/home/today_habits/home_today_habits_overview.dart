part of widgets;

class HomeTodayHabitsOverview extends StatefulWidget {
  final TodayHabitsBloc _bloc;
  final TodayHabitsState _state;
  final AppLocalizations _localization;
  const HomeTodayHabitsOverview(this._bloc, this._state, this._localization,
      {Key? key})
      : super(key: key);

  @override
  State<HomeTodayHabitsOverview> createState() =>
      _HomeTodayHabitsOverviewState();
}

class _HomeTodayHabitsOverviewState extends State<HomeTodayHabitsOverview> {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final _habits = widget._bloc.unCompletedHabits;
    return _isHabitsEmpty
        ? const HomeTodayHabitsEmpty()
        : MediaQuery.removePadding(
            context: context,
            removeTop: true,
            removeBottom: true,
            child: SizedBox(
                height: 30.h,
                child: FadingEdgeScrollView.fromScrollView(
                  child: ListView.builder(
                      shrinkWrap: true,
                      controller: _controller,
                      physics: const BouncingScrollPhysics(),
                      itemCount: _habits.length,
                      itemBuilder: (context, index) {
                        final _item = _habits[index];
                        return Padding(
                            padding: index == 0
                                ? EdgeInsets.zero
                                : EdgeInsets.only(top: 1.5.h),
                            child: HomeTodayHabitsItem(
                                widget._bloc, _item, widget._localization));
                      }),
                )));
  }

  bool get _isHabitsEmpty => widget._state == const TodayHabitsState.empty();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
