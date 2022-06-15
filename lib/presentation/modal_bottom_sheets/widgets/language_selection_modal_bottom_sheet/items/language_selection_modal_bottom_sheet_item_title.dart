part of modal_bottom_sheets;

class LanguageSelectionModalBottomSheetItemTitle extends StatelessWidget {
  final String _title;
  const LanguageSelectionModalBottomSheetItemTitle(this._title, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(_title, style: AppStyles.mainHeadlineColor14spw700Montserrat);
  }
}
