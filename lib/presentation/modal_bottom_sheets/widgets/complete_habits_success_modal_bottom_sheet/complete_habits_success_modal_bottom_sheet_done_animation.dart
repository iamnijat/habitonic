part of modal_bottom_sheets;

class CompleteHabitsSuccessModalBottomSheetDoneAnimation
    extends AnimatedWidget {
  CompleteHabitsSuccessModalBottomSheetDoneAnimation({
    super.key,
    Animation<double>? endingAnimation,
  }) : super(listenable: endingAnimation!);

  Animation get animation => (listenable as Animation);

  @override
  Widget build(BuildContext context) {
    return animation.value > 0
        ? Center(
            child: CustomPaint(
            foregroundPainter: CustomDoneAnimationPainter(animation: animation),
            child: SizedBox(
              height: 20.h,
              width: 20.h,
            ),
          ))
        : const SizedBox.shrink();
  }
}
