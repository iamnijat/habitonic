part of modal_bottom_sheets;

class EmojisSelectionModalBottomSheet extends StatelessWidget {
  final AppLocalizations _localization;
  const EmojisSelectionModalBottomSheet(
    this._localization, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EmojisModalSheetCubit>(
      create: (_) => getIt<EmojisModalSheetCubit>()..fetchEmojis(context),
      child: _EmojisSelectionModalBottomSheetBody(_localization),
    );
  }
}

class _EmojisSelectionModalBottomSheetBody extends StatelessWidget {
  final AppLocalizations _localization;
  const _EmojisSelectionModalBottomSheetBody(
    this._localization, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: ModalScrollController.of(context),
        child: Material(
          type: MaterialType.transparency,
          child: Padding(
            padding: AppStyles.horizontalVerticalPadding(6.w, 4.h),
            child: Column(children: <Widget>[
              BlocBuilder<EmojisModalSheetCubit, EmojisModalSheetState>(
                  builder: (context, state) {
                final _cubit = context.read<EmojisModalSheetCubit>();
                final _loadingState = state == EmojisModalSheetState.loading;
                if (state == EmojisModalSheetState.error) {
                  return ErrorBody(_localization);
                }
                return Container(
                    constraints: BoxConstraints(maxHeight: 50.h),
                    child: _loadingState
                        ? const EmojisLoadingEffect()
                        : MediaQuery.removePadding(
                            context: context,
                            removeTop: true,
                            removeBottom: true,
                            child: GridView.builder(
                                gridDelegate:
                                    AppStyles.emojisSelectionGridDelegate,
                                physics: const BouncingScrollPhysics(),
                                itemCount: _cubit.emojis.length,
                                itemBuilder: (context, index) {
                                  final String _emojiItem =
                                      _cubit.emojis[index];
                                  return EmojisSelectionModalBottomSheetItem(
                                      _cubit, _emojiItem);
                                }),
                          ));
              }),
            ]),
          ),
        ));
  }
}
