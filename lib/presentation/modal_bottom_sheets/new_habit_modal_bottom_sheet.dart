part of modal_bottom_sheets;

class NewHabitModalBottomSheet extends StatelessWidget {
  final AppLocalizations _localization;
  const NewHabitModalBottomSheet(
    this._localization, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewHabitModalBottomSheetCubit>(
      create: (_) =>
          getIt<NewHabitModalBottomSheetCubit>()..fetchRecentEmojis(),
      child: _NewHabitModalBottomSheetBody(_localization),
    );
  }
}

class _NewHabitModalBottomSheetBody extends StatelessWidget {
  final AppLocalizations _localization;
  const _NewHabitModalBottomSheetBody(
    this._localization, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        type: MaterialType.transparency,
        child: BlocBuilder<NewHabitModalBottomSheetCubit,
            NewHabitModalBottomSheetState>(builder: (context, state) {
          final _cubit = context.read<NewHabitModalBottomSheetCubit>();
          if (state == NewHabitModalBottomSheetState.error) {
            return ErrorBody(_localization);
          }
          return Padding(
            padding: AppStyles.horizontal6wPadding,
            child: Column(children: <Widget>[
              const VerticalSpacer(3),
              NewHabitModalBottomSheetBackNavigationButton(_cubit),
              const VerticalSpacer(1),
              NewHabitModalBottomSheetForm(_cubit, state, _localization),
              buildViewInsetsPadding(context),
            ]),
          );
        }),
      ),
    );
  }

  Padding buildViewInsetsPadding(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom));
  }
}
