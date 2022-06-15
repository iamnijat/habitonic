part of widgets;

class HorizontalSpacer extends StatelessWidget {
  final double size;
  const HorizontalSpacer(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.w,
    );
  }
}
