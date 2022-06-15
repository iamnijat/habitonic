// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_emojis_view_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecentEmojisViewModelAdapter extends TypeAdapter<RecentEmojisViewModel> {
  @override
  final int typeId = 2;

  @override
  RecentEmojisViewModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecentEmojisViewModel(
      emoji: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, RecentEmojisViewModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.emoji);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecentEmojisViewModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
