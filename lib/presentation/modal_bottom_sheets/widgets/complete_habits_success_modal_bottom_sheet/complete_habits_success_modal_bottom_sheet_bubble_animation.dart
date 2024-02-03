part of modal_bottom_sheets;

class CompleteHabitsSuccessModalBottomSheetBubblesAnimation
    extends StatelessWidget {
  const CompleteHabitsSuccessModalBottomSheetBubblesAnimation({
    Key? key,
    required this.circleSize,
    required this.centerMargin,
    required this.progressAnimation,
    required this.bubbles,
  }) : super(key: key);

  final double circleSize;
  final double centerMargin;
  final Animation<double>? progressAnimation;
  final List<Bubble> bubbles;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: circleSize,
      width: circleSize,
      bottom: 0,
      left: centerMargin / 2,
      child: ClipOval(
        child: CustomPaint(
          foregroundPainter: BubblesPainter(progressAnimation, bubbles),
          child: Container(
            decoration: const BoxDecoration(color: AppPalette.whiteColor),
          ),
        ),
      ),
    );
  }
}
