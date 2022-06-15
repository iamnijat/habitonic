part of modal_bottom_sheets;

class CompleteHabitsSuccessModalBottomSheet extends StatelessWidget {
  final AppLocalizations _localization;
  const CompleteHabitsSuccessModalBottomSheet(
    this._localization, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CompleteHabitsSuccessModalBottomSheetBody(_localization);
  }
}

class _CompleteHabitsSuccessModalBottomSheetBody extends StatelessWidget {
  final AppLocalizations _localization;
  const _CompleteHabitsSuccessModalBottomSheetBody(
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
            padding: AppStyles.horizontalVerticalPadding(6.w, 5.h),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const CompleteHabitsSuccessModalBottomSheetThumbnail(),
                  const VerticalSpacer(2),
                  CompleteHabitsSuccessModalBottomSheetOverview(_localization),
                ]),
          ),
        ));
  }
}
