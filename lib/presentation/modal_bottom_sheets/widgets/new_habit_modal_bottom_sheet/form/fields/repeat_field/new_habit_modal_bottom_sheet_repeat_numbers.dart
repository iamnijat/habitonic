part of modal_bottom_sheets;

class NewHabitModalBottomSheetRepeatNumbers extends StatelessWidget {
  final NewHabitModalBottomSheetCubit _cubit;
  const NewHabitModalBottomSheetRepeatNumbers(this._cubit, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4.5.h,
      child: StreamBuilder<List<int>>(
          stream: _cubit.numbersStream,
          initialData: const [1, 2, 3, 4],
          builder: (context, snapshot) {
            final _numbers = snapshot.data;
            return ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: _numbers?.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding:
                        i > 0 ? EdgeInsets.only(left: 4.w) : EdgeInsets.zero,
                    child: StreamBuilder<int>(
                        stream: _cubit.habitRepetitionStream,
                        initialData: 1,
                        builder: (context, snapshot) {
                          final _repeatValue = snapshot.data;
                          final _isSelected = _repeatValue == _numbers?[i];
                          return GestureDetector(
                            onTap: () {
                              _cubit.updateHabitRepetition(_numbers![i]);
                            },
                            child: AnimatedContainer(
                              height: 4.5.h,
                              width: 4.5.h,
                              duration:
                                  Durations.twoHundredFiftyMillisecondsDuration,
                              decoration: BoxDecoration(
                                  color: _isSelected
                                      ? AppPalette.mainPurpleColor
                                      : AppPalette.whiteColor,
                                  border: Border.all(
                                      color: _isSelected
                                          ? AppPalette.mainPurpleColor
                                          : AppPalette.openGreyColor,
                                      width: 1.5),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: AnimatedSwitcher(
                                  duration: Durations
                                      .twoHundredFiftyMillisecondsDuration,
                                  transitionBuilder: (Widget child,
                                          Animation<double> animation) =>
                                      ScaleTransition(
                                    scale: animation,
                                    child: child,
                                  ),
                                  child: Text(
                                    _numbers![i].toString(),
                                    style: _isSelected
                                        ? AppStyles.whiteColor11spw600Montserrat
                                        : AppStyles
                                            .mainBlackColor11spw600Montserrat,
                                    key: UniqueKey(),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  );
                });
          }),
    );
  }
}
