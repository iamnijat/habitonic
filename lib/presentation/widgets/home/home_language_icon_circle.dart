part of widgets;

class HomeLanguageIconCircle extends StatelessWidget {
  final AppLocalizations _localization;
  const HomeLanguageIconCircle(this._localization, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showLanguageSelectionModalBottomSheet(context, _localization)
          .then((value) {
        if (value != null) {
          context.read<AppLanguageCubit>().changeLanguage(value);
        }
      }),
      child: Container(
        height: 5.5.h,
        width: 5.5.h,
        decoration: BoxDecoration(
            color: AppPalette.whiteColor,
            border: Border.all(color: AppPalette.openGreyColor, width: 1),
            shape: BoxShape.circle),
        child: buildLangIcon(),
      ),
    );
  }

  Center buildLangIcon() {
    return Center(
        child: Icon(
      Icons.language_rounded,
      color: AppPalette.mainBlackColor,
      size: 2.7.h,
    ));
  }
}
