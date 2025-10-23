// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api_key_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserApiKeyInfoAdapter extends TypeAdapter<UserApiKeyInfo> {
  @override
  final int typeId = 0;

  @override
  UserApiKeyInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserApiKeyInfo(
      fields[0] as String?,
      fields[1] as int?,
      fields[2] as int?,
      fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserApiKeyInfo obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.apikey)
      ..writeByte(1)
      ..write(obj.requestCount)
      ..writeByte(2)
      ..write(obj.requestUsedCount)
      ..writeByte(3)
      ..write(obj.accountType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserApiKeyInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
