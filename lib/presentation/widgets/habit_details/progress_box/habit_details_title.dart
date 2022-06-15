part of widgets;

class HabitDetailsTitle extends StatelessWidget {
  final String? _title;
  const HabitDetailsTitle(this._title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _title.toString(),
        textAlign: TextAlign.center,
        style: AppStyles.mainHeadlineColor17spw700PoppinsLineHeight,
      ),
    );
  }
}
