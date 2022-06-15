import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'habit_view_model.g.dart';

@HiveType(typeId: 1)
class HabitViewModel extends Equatable {
  @HiveField(0)
  final String? name;
  @HiveField(1)
  final String? emoji;
  @HiveField(2)
  final int? totalRepeatTimes;
  @HiveField(3)
  final int? doneRepeatTimes;
  @HiveField(4)
  final DateTime? createdAt;
  @HiveField(5)
  final bool? isCompleted;
  @HiveField(6)
  final int? morningRepeatTimes;
  @HiveField(7)
  final int? afternoonRepeatTimes;
  @HiveField(8)
  final int? eveningRepeatTimes;
  @HiveField(9)
  final int? nightRepeatTimes;

  const HabitViewModel(
      {this.name,
      this.emoji,
      this.totalRepeatTimes,
      this.doneRepeatTimes = 0,
      this.createdAt,
      this.isCompleted = false,
      this.morningRepeatTimes = 0,
      this.afternoonRepeatTimes = 0,
      this.eveningRepeatTimes = 0,
      this.nightRepeatTimes = 0});

  @override
  List<Object?> get props => [
        name,
        emoji,
        totalRepeatTimes,
        doneRepeatTimes,
        createdAt,
        isCompleted,
        morningRepeatTimes,
        afternoonRepeatTimes,
        eveningRepeatTimes,
        nightRepeatTimes
      ];
}
