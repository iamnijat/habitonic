// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_view_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HabitViewModelAdapter extends TypeAdapter<HabitViewModel> {
  @override
  final int typeId = 1;

  @override
  HabitViewModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HabitViewModel(
      name: fields[0] as String?,
      emoji: fields[1] as String?,
      totalRepeatTimes: fields[2] as int?,
      doneRepeatTimes: fields[3] as int?,
      createdAt: fields[4] as DateTime?,
      isCompleted: fields[5] as bool?,
      morningRepeatTimes: fields[6] as int?,
      afternoonRepeatTimes: fields[7] as int?,
      eveningRepeatTimes: fields[8] as int?,
      nightRepeatTimes: fields[9] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, HabitViewModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.emoji)
      ..writeByte(2)
      ..write(obj.totalRepeatTimes)
      ..writeByte(3)
      ..write(obj.doneRepeatTimes)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.isCompleted)
      ..writeByte(6)
      ..write(obj.morningRepeatTimes)
      ..writeByte(7)
      ..write(obj.afternoonRepeatTimes)
      ..writeByte(8)
      ..write(obj.eveningRepeatTimes)
      ..writeByte(9)
      ..write(obj.nightRepeatTimes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HabitViewModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
