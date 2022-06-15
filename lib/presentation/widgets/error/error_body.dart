part of widgets;

class ErrorBody extends StatelessWidget {
  final AppLocalizations _localization;
  const ErrorBody(this._localization, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: AppStyles.horizontalVerticalPadding(6.w, 4.h),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const ErrorThumbnail(),
              ErrorOverview(_localization),
            ]));
  }
}
