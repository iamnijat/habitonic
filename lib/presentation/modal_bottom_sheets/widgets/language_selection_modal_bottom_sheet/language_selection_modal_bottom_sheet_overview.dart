part of modal_bottom_sheets;

class LanguageSelectionModalBottomSheetOverview extends StatelessWidget {
  final LanguageSelectionCubit _selectionCubit;
  const LanguageSelectionModalBottomSheetOverview(this._selectionCubit,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
            itemCount: _selectionCubit.languages.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final _language = _selectionCubit.languages[index];
              return Padding(
                  padding:
                      index > 0 ? EdgeInsets.only(top: 4.h) : EdgeInsets.zero,
                  child: LanguageSelectionModalBottomSheetItem(
                      _selectionCubit, _language));
            }));
  }
}
