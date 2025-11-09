import 'dart:convert';
import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:generated/generated.dart';
import 'package:movie_search_assistant/constants/watch_statuses.dart';
import 'package:movie_search_assistant/models/film_card.dart';

class FilmMapper {
  static FilmCard filmToFilmCard(
      Film? film, 
      ImageResponse? imagesFilm,
      Uint8List? posterBytes,
      List<Uint8List?> imageBytesList, 
      String? watchStatus) {
    
    FilmCard filmCard = FilmCard(
      kinopoiskId: film?.kinopoiskId,
      nameRu: film?.nameRu,
      nameOriginal: film?.nameOriginal,
      posterUrl: film?.posterUrl,
      posterBytes: posterBytes,
      ratingKinopoisk: film?.ratingKinopoisk == null ? null : film!.ratingKinopoisk!.toDouble(),
      ratingKinopoiskVoteCount: film?.ratingKinopoiskVoteCount,
      ratingImdb: film?.ratingImdb == null ? null : film!.ratingImdb!.toDouble(),
      ratingImdbVoteCount: film?.ratingImdbVoteCount,
      countries: film?.countries == null ? null : _countriesToList(film!.countries),
      genres: film?.genres == null ? null : _genresToList(film!.genres),
      imagesFilm: imagesFilm == null ? null : imagesFilmToList(imagesFilm),
      imagesFilmBytes: imageBytesList.isEmpty ? null : imageBytesList,
      year: film?.year,
      startYear: film?.startYear,
      endYear: film?.endYear,
      serial: film?.serial,
      description: film?.description,
      slogan: film?.slogan,
      watchStatus: watchStatus ?? WatchStatuses.DONT_WATCH,
      webUrl: film?.webUrl
    );
    return filmCard;
  }

  static Film filmCardToFilm(FilmCard card) {
    return Film(
      (b) => b
        ..kinopoiskId = card.kinopoiskId
        ..kinopoiskHDId = null
        ..imdbId = null
        ..nameRu = card.nameRu
        ..nameEn = null
        ..nameOriginal = card.nameOriginal
        ..posterUrl = card.posterUrl
        ..posterUrlPreview = " "
        ..coverUrl = null
        ..logoUrl = null
        ..reviewsCount = 0
        ..ratingGoodReview = null
        ..ratingGoodReviewVoteCount = null
        ..ratingKinopoisk = card.ratingKinopoisk?.toDouble()
        ..ratingKinopoiskVoteCount = card.ratingKinopoiskVoteCount
        ..ratingImdb = card.ratingImdb?.toDouble()
        ..ratingImdbVoteCount = card.ratingImdbVoteCount
        ..ratingFilmCritics = null
        ..ratingFilmCriticsVoteCount = null
        ..ratingAwait = null
        ..ratingAwaitCount = null
        ..ratingRfCritics = null
        ..ratingRfCriticsVoteCount = null
        ..webUrl = card.webUrl
        ..year = card.year
        ..filmLength = null
        ..slogan = card.slogan
        ..description = card.description
        ..shortDescription = null
        ..editorAnnotation = null
        ..isTicketsAvailable = false
        ..productionStatus = null
        ..type = FilmTypeEnum.FILM
        ..ratingMpaa = null
        ..ratingAgeLimits = null
        ..countries.replace(
          (card.countries ?? []).map((c) => $Country((cb) => cb..country = c)).toBuiltList(),
        )
        ..genres.replace(
          (card.genres ?? []).map((g) => Genre((gb) => gb..genre = g)).toBuiltList(),
        )
        ..startYear = card.startYear
        ..endYear = card.endYear
        ..serial = card.serial
        ..shortFilm = null
        ..completed = null
        ..hasImax = null
        ..has3D = null
        ..lastSync = ""        
    );
  }

  static List<String> _countriesToList(BuiltList<Country> countries) {
    List<String> countriesList =
        countries.map((country) => country.country).toList();
    return countriesList;
  }

  static List<String> _genresToList(BuiltList<Genre> genres) {
    List<String> genresList = genres.map((genre) => genre.genre).toList();
    return genresList;
  }

  static List<String> imagesFilmToList(ImageResponse imagesFilm) {
    List<String> imagesFilmList = imagesFilm.items
        .where((item) => item.imageUrl != null)
        .map((item) => item.imageUrl!)
        .toList();
    return imagesFilmList;
  }

  static List<Map<String, dynamic>> listFilmCardToMap(List<FilmCard> listFilms){
    List<Map<String, dynamic>> filmsMap = [];
    for(var film in listFilms){
      filmsMap.add({
        "kinopoiskId": film.kinopoiskId,
        "nameRu": film.nameRu,
        "nameOriginal": film.nameOriginal,
        "posterUrl": film.posterUrl,
        "posterBytes": _encodeBytesToBase64(film.posterBytes),
        "ratingKinopoisk": film.ratingKinopoisk,
        "ratingKinopoiskVoteCount": film.ratingKinopoiskVoteCount,
        "ratingImdb": film.ratingImdb,
        "ratingImdbVoteCount": film.ratingImdbVoteCount,
        "countries": film.countries,
        "genres": film.genres,
        "imagesFilm": film.imagesFilm,
        "imagesFilmBytes": "",
        "year": film.year,
        "startYear": film.startYear,
        "endYear": film.endYear,
        "serial": film.serial,
        "description": film.description,
        "slogan": film.slogan,
        "watchStatus": film.watchStatus,
        "webUrl": film.webUrl
      });
    }
    return filmsMap;
  }

  static List<FilmCard>? mapToListFilmCard(List<Map<String, dynamic>> filmsMap){
    List<FilmCard>? films = [];
    for(var filmMap in filmsMap){
      films.add(
        FilmCard(
        kinopoiskId: filmMap["kinopoiskId"] as int?,
        nameRu: filmMap["nameRu"] as String?,
        nameOriginal: filmMap["nameOriginal"] as String?,
        posterUrl: filmMap["posterUrl"] as String?,
        posterBytes: _decodeBase64(filmMap["posterBytes"] as String?),
        ratingKinopoisk: (filmMap['ratingKinopoisk'] as num?)?.toDouble(),
        ratingKinopoiskVoteCount: filmMap["ratingKinopoiskVoteCount"] as int?,
        ratingImdb: (filmMap["ratingImdb"] as num?)?.toDouble(),
        ratingImdbVoteCount: filmMap["ratingImdbVoteCount"] as int?,
        countries: (filmMap['countries'] as List<dynamic>?)?.cast<String>(),
        genres: (filmMap["genres"] as List<dynamic>?)?.cast<String>(),
        imagesFilm: (filmMap['imagesFilm'] as List<dynamic>?)?.cast<String>(),
        imagesFilmBytes: null,
        year: filmMap["year"] as int?,
        startYear: filmMap["startYear"] as int?,
        endYear: filmMap["endYear"] as int?,
        serial: filmMap["serial"] as bool?,
        description: filmMap["description"] as String?,
        slogan: filmMap["slogan"] as String?,
        watchStatus: filmMap["watchStatus"] as String?,
        webUrl: filmMap["webUrl"] as String?
        )
      );
    }
    return films;
  }

  static String? _encodeBytesToBase64(Uint8List? bytes) {
    return bytes != null ? base64Encode(bytes) : null;
  }

  static List<String?>? _encodeBytesListToBase64(List<Uint8List?>? list) {
    if (list == null) return null;
    return list.map((bytes) => _encodeBytesToBase64(bytes)).toList();
  }

  static Uint8List? _decodeBase64(String? base64Str) {
      if (base64Str == null) return null;
      return base64Decode(base64Str);
    }

  static List<Uint8List?>? _decodeBase64List(List<dynamic>? list) {
    if (list == null) return null;
    return list.map((item) => item is String ? _decodeBase64(item) : null).toList();
  }
}