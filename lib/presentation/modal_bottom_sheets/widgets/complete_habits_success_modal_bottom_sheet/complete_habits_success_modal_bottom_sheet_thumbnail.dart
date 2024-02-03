part of modal_bottom_sheets;

class CompleteHabitsSuccessModalBottomSheetThumbnail extends StatelessWidget {
  const CompleteHabitsSuccessModalBottomSheetThumbnail({
    Key? key,
    required this.progressAnimation,
    required this.endingAnimation,
  }) : super(key: key);

  final Animation<double>? progressAnimation;
  final Animation<double>? endingAnimation;

  @override
  Widget build(BuildContext context) {
    final bubbles = BubblesGenerator.bubbles;
    return AnimatedBuilder(
        animation: Listenable.merge([progressAnimation]),
        builder: (context, snapshot) {
          final size = 50.w;
          final circleSize = size * math.pow(progressAnimation!.value + 1, 2);
          final centerMargin = 100.w - circleSize;
          return SizedBox(
            height: 28.h,
            width: 100.w,
            child: Stack(
              children: [
                CompleteHabitsSuccessModalBottomSheetBubblesAnimation(
                  circleSize: circleSize,
                  centerMargin: centerMargin,
                  progressAnimation: progressAnimation,
                  bubbles: bubbles,
                ),
                CompleteHabitsSuccessModalBottomSheetDoneAnimation(
                  endingAnimation: endingAnimation,
                ),
              ],
            ),
          );
        });
  }
}
