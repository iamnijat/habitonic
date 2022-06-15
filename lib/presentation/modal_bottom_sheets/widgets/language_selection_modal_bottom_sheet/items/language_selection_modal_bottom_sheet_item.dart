part of modal_bottom_sheets;

class LanguageSelectionModalBottomSheetItem extends StatelessWidget {
  final LanguageSelectionCubit _selectionCubit;
  final LanguageViewModel _lang;

  const LanguageSelectionModalBottomSheetItem(this._selectionCubit, this._lang,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectionCubit.selectLanguage(_lang.languageCode, context),
      child: Container(
          color: AppPalette.whiteColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  LanguageSelectionModalBottomSheetItemImage(_lang.image),
                  const HorizontalSpacer(5),
                  LanguageSelectionModalBottomSheetItemTitle(_lang.name),
                ],
              ),
              LanguageSelectionIndicator(_selectionCubit, _lang.languageCode),
            ],
          )),
    );
  }
}
