part of modal_bottom_sheets;

class NewHabitModalBottomSheetForm extends StatefulWidget {
  final NewHabitModalBottomSheetCubit _newHabitModalBottomSheetCubit;
  final NewHabitModalBottomSheetState _newHabitModalBottomSheetState;
  final AppLocalizations _localization;
  const NewHabitModalBottomSheetForm(this._newHabitModalBottomSheetCubit,
      this._newHabitModalBottomSheetState, this._localization,
      {Key? key})
      : super(key: key);

  @override
  State<NewHabitModalBottomSheetForm> createState() =>
      _NewHabitModalBottomSheetFormState();
}

class _NewHabitModalBottomSheetFormState
    extends State<NewHabitModalBottomSheetForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                    widget._localization.newHabitModalSheetFormNameTitle,
                    style: AppStyles.secondaryGreyColor10spw600Poppins),
              ),
              NewHabitModalBottomSheetNameField(
                  widget._newHabitModalBottomSheetCubit, widget._localization),
              const NewHabitModalBottomSheetDivider(),
              const VerticalSpacer(2),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                    widget._localization.newHabitModalSheetFormEmojiTitle,
                    style: AppStyles.secondaryGreyColor10spw600Poppins),
              ),
              const VerticalSpacer(2),
              NewHabitModalBottomSheetEmojiField(
                  widget._newHabitModalBottomSheetCubit, widget._localization),
              const VerticalSpacer(2),
              const NewHabitModalBottomSheetDivider(),
              const VerticalSpacer(2),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                    widget._localization.newHabitModalSheetFormRepetitionTitle,
                    style: AppStyles.secondaryGreyColor10spw600Poppins),
              ),
              const VerticalSpacer(2),
              NewHabitModalBottomSheetRepeatField(
                  widget._newHabitModalBottomSheetCubit),
              const VerticalSpacer(6),
              NewHabitModalBottomSheetCreateHabitButton(
                  widget._newHabitModalBottomSheetCubit,
                  widget._newHabitModalBottomSheetState,
                  widget._localization),
            ]));
  }
}
