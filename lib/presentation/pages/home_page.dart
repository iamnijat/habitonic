part of pages;

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TodayHabitsBloc>(
      create: (_) =>
          getIt<TodayHabitsBloc>()..add(const TodayHabitsEvent.load()),
      child: const _HomePageBody(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _localization = AppLocalizations.of(context)!;
    return BlocBuilder<TodayHabitsBloc, TodayHabitsState>(
        builder: (context, state) {
      final _bloc = context.read<TodayHabitsBloc>();
      if (state == const TodayHabitsState.error()) {
        return const ErrorPage();
      }
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
                  HomeProgressBox(_bloc, state, _localization),
                  const VerticalSpacer(4),
                  HomeTodayHabitsTitle(_bloc, state, _localization),
                  const VerticalSpacer(3),
                  HomeTodayHabitsOverview(_bloc, state, _localization),
                  const VerticalSpacer(12),
                ]),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: HomeFloatingButton(_bloc, _localization),
      );
    });
  }
}
