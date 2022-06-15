part of modal_bottom_sheets;

class NewHabitModalBottomSheetEmojiField extends StatelessWidget {
  final NewHabitModalBottomSheetCubit _cubit;
  final AppLocalizations _localization;
  const NewHabitModalBottomSheetEmojiField(this._cubit, this._localization,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        NewHabitModalBottomSheetRecentEmojis(_cubit),
        Visibility(
            visible: _recentEmojisIsNotEmpty, child: const HorizontalSpacer(4)),
        NewHabitModalBottomSheetSelectEmojiButton(_cubit, _localization),
      ],
    );
  }

  bool get _recentEmojisIsNotEmpty => _cubit.recentEmojis.isNotEmpty;
}
