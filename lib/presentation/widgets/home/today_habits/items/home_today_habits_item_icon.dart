part of widgets;

class HomeTodayHabitsItemIcon extends StatelessWidget {
  final String? _emoji;
  final String _heroTag;
  const HomeTodayHabitsItemIcon(this._emoji, this._heroTag, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: _heroTag,
      child: Container(
        height: 4.5.h,
        width: 4.5.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_emoji.toString()),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
