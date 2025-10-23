// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_card.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FilmCardAdapter extends TypeAdapter<FilmCard> {
  @override
  final int typeId = 1;

  @override
  FilmCard read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FilmCard(
      kinopoiskId: fields[0] as int?,
      nameRu: fields[1] as String?,
      nameOriginal: fields[2] as String?,
      posterUrl: fields[3] as String?,
      ratingKinopoisk: fields[4] as double?,
      ratingKinopoiskVoteCount: fields[5] as int?,
      ratingImdb: fields[6] as double?,
      ratingImdbVoteCount: fields[7] as int?,
      countries: (fields[8] as List?)?.cast<String>(),
      genres: (fields[9] as List?)?.cast<String>(),
      imagesFilm: (fields[10] as List?)?.cast<String>(),
      year: fields[11] as int?,
      startYear: fields[12] as int?,
      endYear: fields[13] as int?,
      serial: fields[14] as bool?,
      description: fields[15] as String?,
      slogan: fields[16] as String?,
      isWillWatch: fields[17] as bool?,
      isFavourite: fields[18] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, FilmCard obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.kinopoiskId)
      ..writeByte(1)
      ..write(obj.nameRu)
      ..writeByte(2)
      ..write(obj.nameOriginal)
      ..writeByte(3)
      ..write(obj.posterUrl)
      ..writeByte(4)
      ..write(obj.ratingKinopoisk)
      ..writeByte(5)
      ..write(obj.ratingKinopoiskVoteCount)
      ..writeByte(6)
      ..write(obj.ratingImdb)
      ..writeByte(7)
      ..write(obj.ratingImdbVoteCount)
      ..writeByte(8)
      ..write(obj.countries)
      ..writeByte(9)
      ..write(obj.genres)
      ..writeByte(10)
      ..write(obj.imagesFilm)
      ..writeByte(11)
      ..write(obj.year)
      ..writeByte(12)
      ..write(obj.startYear)
      ..writeByte(13)
      ..write(obj.endYear)
      ..writeByte(14)
      ..write(obj.serial)
      ..writeByte(15)
      ..write(obj.description)
      ..writeByte(16)
      ..write(obj.slogan)
      ..writeByte(17)
      ..write(obj.isWillWatch)
      ..writeByte(18)
      ..write(obj.isFavourite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FilmCardAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
