part of modal_bottom_sheets;

class NewHabitModalBottomSheetRecentEmojis extends StatelessWidget {
  final NewHabitModalBottomSheetCubit _newHabitModalBottomSheetCubit;
  const NewHabitModalBottomSheetRecentEmojis(
      this._newHabitModalBottomSheetCubit,
      {Key? key})
      : super(key: key);

  List<RecentEmojisViewModel> get _recentEmojis =>
      _newHabitModalBottomSheetCubit.recentEmojis;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 5.h,
        child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: _recentEmojis.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 7.h,
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    buildEmojiItem(_recentEmojis, index),
                    RecentEmojisSelectionIndicator(
                        _newHabitModalBottomSheetCubit,
                        _recentEmojis[index].emoji.toString()),
                  ],
                ),
              );
            }));
  }

  GestureDetector buildEmojiItem(List<RecentEmojisViewModel> data, int index) {
    return GestureDetector(
      onTap: () => _newHabitModalBottomSheetCubit
          .updateHabitEmoji(data[index].emoji.toString()),
      child: Padding(
        padding: index > 0 ? EdgeInsets.only(left: 4.w) : EdgeInsets.zero,
        child: Container(
          height: 5.h,
          width: 5.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(data[index].emoji.toString()),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
