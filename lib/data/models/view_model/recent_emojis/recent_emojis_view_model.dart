import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'recent_emojis_view_model.g.dart';

@HiveType(typeId: 2)
class RecentEmojisViewModel extends Equatable {
  @HiveField(0)
  final String? emoji;

  const RecentEmojisViewModel({
    this.emoji,
  });

  @override
  List<Object?> get props => ([emoji]);
}
