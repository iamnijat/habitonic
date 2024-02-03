part of modal_bottom_sheets;

const mainDataBackupColor = Color(0xFF5113AA);
const secondaryDataBackupColor = Color(0xFFBC53FA);
const backgroundColor = Color(0xFFfce7fe);

class CompleteHabitsSuccessModalBottomSheet extends StatelessWidget {
  final AppLocalizations _localization;
  const CompleteHabitsSuccessModalBottomSheet(
    this._localization, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CompleteHabitsSuccessModalBottomSheetBody(_localization);
  }
}

class _CompleteHabitsSuccessModalBottomSheetBody extends StatefulWidget {
  final AppLocalizations _localization;
  const _CompleteHabitsSuccessModalBottomSheetBody(
    this._localization, {
    Key? key,
  }) : super(key: key);

  @override
  State<_CompleteHabitsSuccessModalBottomSheetBody> createState() =>
      _CompleteHabitsSuccessModalBottomSheetBodyState();
}

class _CompleteHabitsSuccessModalBottomSheetBodyState
    extends State<_CompleteHabitsSuccessModalBottomSheetBody>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  Animation<double>? _progressAnimation;
  Animation<double>? _endingAnimation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _progressAnimation = CurvedAnimation(
        parent: _animationController!, curve: const Interval(0.0, 0.65));
    _endingAnimation = CurvedAnimation(
        parent: _animationController!, curve: const Interval(0.68, 0.86));
    _animationController?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: AppStyles.horizontalVerticalPadding(6.w, 5.h),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CompleteHabitsSuccessModalBottomSheetThumbnail(
                progressAnimation: _progressAnimation,
                endingAnimation: _endingAnimation,
              ),
              const VerticalSpacer(2),
              CompleteHabitsSuccessModalBottomSheetOverview(
                  widget._localization),
            ]),
      ),
    ));
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }
}
