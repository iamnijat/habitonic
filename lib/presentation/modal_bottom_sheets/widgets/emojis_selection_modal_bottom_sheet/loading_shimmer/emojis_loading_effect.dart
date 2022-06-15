part of modal_bottom_sheets;

class EmojisLoadingEffect extends StatelessWidget {
  const EmojisLoadingEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: AppStyles.emojisSelectionGridDelegate,
        physics: const BouncingScrollPhysics(),
        itemCount: 40,
        itemBuilder: (context, index) {
          return const EmojisCircleSkeleton();
        });
  }
}
