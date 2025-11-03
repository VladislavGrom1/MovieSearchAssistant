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
      posterBytes: fields[4] as Uint8List?,
      ratingKinopoisk: fields[5] as double?,
      ratingKinopoiskVoteCount: fields[6] as int?,
      ratingImdb: fields[7] as double?,
      ratingImdbVoteCount: fields[8] as int?,
      countries: (fields[9] as List?)?.cast<String>(),
      genres: (fields[10] as List?)?.cast<String>(),
      imagesFilm: (fields[11] as List?)?.cast<String>(),
      imagesFilmBytes: (fields[12] as List?)?.cast<Uint8List?>(),
      year: fields[13] as int?,
      startYear: fields[14] as int?,
      endYear: fields[15] as int?,
      serial: fields[16] as bool?,
      description: fields[17] as String?,
      slogan: fields[18] as String?,
      watchStatus: fields[19] as String?,
      webUrl: fields[20] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, FilmCard obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.kinopoiskId)
      ..writeByte(1)
      ..write(obj.nameRu)
      ..writeByte(2)
      ..write(obj.nameOriginal)
      ..writeByte(3)
      ..write(obj.posterUrl)
      ..writeByte(4)
      ..write(obj.posterBytes)
      ..writeByte(5)
      ..write(obj.ratingKinopoisk)
      ..writeByte(6)
      ..write(obj.ratingKinopoiskVoteCount)
      ..writeByte(7)
      ..write(obj.ratingImdb)
      ..writeByte(8)
      ..write(obj.ratingImdbVoteCount)
      ..writeByte(9)
      ..write(obj.countries)
      ..writeByte(10)
      ..write(obj.genres)
      ..writeByte(11)
      ..write(obj.imagesFilm)
      ..writeByte(12)
      ..write(obj.imagesFilmBytes)
      ..writeByte(13)
      ..write(obj.year)
      ..writeByte(14)
      ..write(obj.startYear)
      ..writeByte(15)
      ..write(obj.endYear)
      ..writeByte(16)
      ..write(obj.serial)
      ..writeByte(17)
      ..write(obj.description)
      ..writeByte(18)
      ..write(obj.slogan)
      ..writeByte(19)
      ..write(obj.watchStatus)
      ..writeByte(20)
      ..write(obj.webUrl);
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
