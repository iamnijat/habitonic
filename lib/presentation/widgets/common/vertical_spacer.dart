part of widgets;

class VerticalSpacer extends StatelessWidget {
  final double size;
  const VerticalSpacer(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.h,
    );
  }
}
