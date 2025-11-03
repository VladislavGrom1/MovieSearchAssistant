import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';
import 'package:generated/generated.dart';
import 'package:built_value/serializer.dart';
import 'package:hive/hive.dart';
part 'film_card.g.dart';

@HiveType(typeId: 1)
class FilmCard {
  // TODO: Добавить поля ЛичныйРейтинг + Комментарий
  @HiveField(0) int? kinopoiskId;
  @HiveField(1) String? nameRu;
  @HiveField(2) String? nameOriginal;
  @HiveField(3) String? posterUrl;
  @HiveField(4) Uint8List? posterBytes;
  @HiveField(5) double? ratingKinopoisk;
  @HiveField(6) int? ratingKinopoiskVoteCount;
  @HiveField(7) double? ratingImdb;
  @HiveField(8) int? ratingImdbVoteCount;
  @HiveField(9) List<String>? countries;
  @HiveField(10) List<String>? genres;
  @HiveField(11) List<String>? imagesFilm;
  @HiveField(12) List<Uint8List?>? imagesFilmBytes;
  @HiveField(13) int? year;
  @HiveField(14) int? startYear;
  @HiveField(15) int? endYear;
  @HiveField(16) bool? serial;
  @HiveField(17) String? description;
  @HiveField(18) String? slogan;
  @HiveField(19) String? watchStatus;
  @HiveField(20) String? webUrl;

  FilmCard({
    this.kinopoiskId,
    this.nameRu,
    this.nameOriginal,
    this.posterUrl,
    this.posterBytes,
    this.ratingKinopoisk,
    this.ratingKinopoiskVoteCount,
    this.ratingImdb,
    this.ratingImdbVoteCount,
    this.countries,
    this.genres,
    this.imagesFilm,
    this.imagesFilmBytes,
    this.year,
    this.startYear,
    this.endYear,
    this.serial,
    this.description,
    this.slogan,
    this.watchStatus,
    this.webUrl
  });
}
