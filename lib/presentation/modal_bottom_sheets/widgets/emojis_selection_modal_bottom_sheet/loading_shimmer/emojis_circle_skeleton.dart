part of modal_bottom_sheets;

class EmojisCircleSkeleton extends StatelessWidget {
  const EmojisCircleSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: 7.h,
      decoration: const BoxDecoration(
        color: AppPalette.openGreyColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
