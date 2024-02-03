part of modal_bottom_sheets;

class LanguageSelectionModalBottomSheet extends StatelessWidget {
  final AppLocalizations _localization;
  const LanguageSelectionModalBottomSheet(
    this._localization, {
    Key? key,
  }) : super(key: key);

  String get _localeName => _localization.localeName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LanguageSelectionCubit>(
      create: (_) => getIt<LanguageSelectionCubit>()
        ..fetchLanguages(_localization, _localeName),
      child: _LanguageSelectionModalBottomSheetBody(_localization),
    );
  }
}

class _LanguageSelectionModalBottomSheetBody extends StatelessWidget {
  final AppLocalizations _localization;
  const _LanguageSelectionModalBottomSheetBody(
    this._localization, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Material(
      type: MaterialType.transparency,
      child: BlocBuilder<LanguageSelectionCubit, LanguageSelectionState>(
          builder: (context, state) {
        final _cubit = context.read<LanguageSelectionCubit>();
        if (state == LanguageSelectionState.error) {
          return ErrorBody(_localization);
        }
        return Padding(
          padding: AppStyles.horizontalVerticalPadding(6.w, 5.h),
          child: Column(children: <Widget>[
            LanguageSelectionModalBottomSheetOverview(_cubit),
          ]),
        );
      }),
    ));
  }
}
