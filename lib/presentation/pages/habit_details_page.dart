part of pages;

class HabitDetailsPage extends StatelessWidget {
  final HabitDetailsPageArgumentsViewModel _args;
  const HabitDetailsPage(
    this._args, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HabitDetailsCubit>(
          create: (_) => getIt<HabitDetailsCubit>()
            ..fetchHabit(context, _args.selectedIndex),
        ),
      ],
      child: _HabitDetailsPageBody(_args.heroAnimationTag, _args.selectedIndex),
    );
  }
}

class _HabitDetailsPageBody extends StatelessWidget {
  final String _heroAnimationTag;
  final int _selectedIndex;
  const _HabitDetailsPageBody(
    this._heroAnimationTag,
    this._selectedIndex, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _localization = AppLocalizations.of(context)!;
    return BlocBuilder<HabitDetailsCubit, HabitDetailsState>(
        builder: (context, state) {
      final _cubit = context.read<HabitDetailsCubit>();
      if (state == HabitDetailsState.error) {
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
                    HabitDetailsHeader(_cubit),
                    const VerticalSpacer(3),
                    HabitDetailsProgressBox(
                        _cubit, state, _heroAnimationTag, _selectedIndex),
                    const VerticalSpacer(2),
                    HabitDetailsTitle(_cubit.habit?.name),
                    const VerticalSpacer(4),
                    HabitDetailsOverviewBox(_cubit, _localization),
                    const VerticalSpacer(4),
                    HabitDetailsBarChartBox(_cubit, _localization),
                    const VerticalSpacer(4),
                  ],
                ),
              )));
    });
  }
}
