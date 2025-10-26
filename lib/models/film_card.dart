import 'package:built_collection/built_collection.dart';
import 'package:generated/generated.dart';
import 'package:built_value/serializer.dart';
import 'package:hive/hive.dart';
part 'film_card.g.dart';

@HiveType(typeId: 1)
class FilmCard {
  // TODO: Добавить поля ЛичныйРейтинг + Комментарий
  @HiveField(0) final int? kinopoiskId;
  @HiveField(1) final String? nameRu;
  @HiveField(2) final String? nameOriginal;
  @HiveField(3) final String? posterUrl;
  @HiveField(4) final double? ratingKinopoisk;
  @HiveField(5) final int? ratingKinopoiskVoteCount;
  @HiveField(6) final double? ratingImdb;
  @HiveField(7) final int? ratingImdbVoteCount;
  @HiveField(8) final List<String>? countries;
  @HiveField(9) final List<String>? genres;
  @HiveField(10) final List<String>? imagesFilm;
  @HiveField(11) final int? year;
  @HiveField(12) final int? startYear;
  @HiveField(13) final int? endYear;
  @HiveField(14) final bool? serial;
  @HiveField(15) final String? description;
  @HiveField(16) final String? slogan;
  @HiveField(17) final String? watchStatus;

  FilmCard({
    this.kinopoiskId,
    this.nameRu,
    this.nameOriginal,
    this.posterUrl,
    this.ratingKinopoisk,
    this.ratingKinopoiskVoteCount,
    this.ratingImdb,
    this.ratingImdbVoteCount,
    this.countries,
    this.genres,
    this.imagesFilm,
    this.year,
    this.startYear,
    this.endYear,
    this.serial,
    this.description,
    this.slogan,
    this.watchStatus
  });
}
