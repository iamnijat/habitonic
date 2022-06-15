part of modal_bottom_sheets;

class RefreshHabitsDataModalBottomSheet extends StatelessWidget {
  final AppLocalizations _localization;
  const RefreshHabitsDataModalBottomSheet(
    this._localization, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RefreshHabitsDataModalSheetCubit>(
      create: (_) => getIt<RefreshHabitsDataModalSheetCubit>(),
      child: _RefreshHabitsDataModalBottomSheetBody(_localization),
    );
  }
}

class _RefreshHabitsDataModalBottomSheetBody extends StatelessWidget {
  final AppLocalizations _localization;
  const _RefreshHabitsDataModalBottomSheetBody(
    this._localization, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: ModalScrollController.of(context),
        child: Material(
          type: MaterialType.transparency,
          child: BlocBuilder<RefreshHabitsDataModalSheetCubit,
              RefreshHabitsDataModalSheetState>(builder: (context, state) {
            final _cubit = context.read<RefreshHabitsDataModalSheetCubit>();
            if (state == RefreshHabitsDataModalSheetState.error) {
              return ErrorBody(_localization);
            }
            return Padding(
              padding: AppStyles.horizontalVerticalPadding(6.w, 5.h),
              child: Column(children: <Widget>[
                RefreshHabitsDataModalBottomSheetOverview(
                    _cubit, state, _localization),
              ]),
            );
          }),
        ));
  }
}
