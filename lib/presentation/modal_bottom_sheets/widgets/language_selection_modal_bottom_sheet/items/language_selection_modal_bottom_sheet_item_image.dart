part of modal_bottom_sheets;

class LanguageSelectionModalBottomSheetItemImage extends StatelessWidget {
  final String _image;
  const LanguageSelectionModalBottomSheetItemImage(this._image, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.w,
      height: 10.w,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: svg_provider.Svg(_image),
          )),
    );
  }
}
