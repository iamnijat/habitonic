part of widgets;

class IntroButton extends StatelessWidget {
  final IntroPageCubit _introPageCubit;
  final bool _checkingState;
  final AppLocalizations _localization;
  const IntroButton(
    this._introPageCubit,
    this._checkingState,
    this._localization, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
          splashColor: AppPalette.transparentColor,
          highlightColor: AppPalette.transparentColor,
        ),
        child: Container(
          height: AppStyles.deviceTablet ? 10.h : 9.h,
          width: 65.w,
          margin: AppStyles.horizontalVerticalPadding(6.w, 5.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppPalette.mainPurpleColor,
            boxShadow: [
              BoxShadow(
                color: AppPalette.mainPurpleColor.withOpacity(0.55),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Material(
            color: AppPalette.transparentColor,
            child: InkWell(
                onTap: () => _introPageCubit.triggerRouteToHomePage(context),
                child: Center(
                  child: _checkingState
                      ? const JumpingDotsIndicator()
                      : buildButtonText(_localization.introPageButtonText),
                )),
          ),
        ));
  }

  Text buildButtonText(String _text) {
    return Text(
      _text,
      style: AppStyles.whiteColor14spw700NotoSans,
      textAlign: TextAlign.center,
    );
  }
}
