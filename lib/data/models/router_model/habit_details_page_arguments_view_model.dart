import 'package:equatable/equatable.dart';

class HabitDetailsPageArgumentsViewModel extends Equatable {
  final String heroAnimationTag;
  final int selectedIndex;

  const HabitDetailsPageArgumentsViewModel({
    required this.heroAnimationTag,
    required this.selectedIndex,
  });

  @override
  List<Object?> get props => [heroAnimationTag, selectedIndex];
}
