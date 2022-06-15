part of widgets;

class HomeTodayHabitsItemTitle extends StatelessWidget {
  final String? _title;
  const HomeTodayHabitsItemTitle(this._title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 40.w,
        child: Text(_title.toString(),
            style: AppStyles.mainHeadlineColor12spw700MontserratLineHeight));
  }
}
