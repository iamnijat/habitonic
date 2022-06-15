part of widgets;

class HomeMain extends StatelessWidget {
  final TodayHabitsBloc _bloc;
  final TodayHabitsState _state;
  final AppLocalizations _localization;
  const HomeMain(this._bloc, this._state, this._localization, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.whiteColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: AppStyles.horizontal6wPadding,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const VerticalSpacer(6),
                HomeHeader(_bloc, _localization),
                const VerticalSpacer(5),
                HomeTitle(_localization),
                const VerticalSpacer(4),
                HomeProgressBox(_bloc, _state, _localization),
                const VerticalSpacer(4),
                HomeTodayHabitsTitle(_bloc, _state, _localization),
                HomeTodayHabitsOverview(_bloc, _state, _localization),
                const VerticalSpacer(12),
              ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: HomeFloatingButton(_bloc, _localization),
    );
  }
}
