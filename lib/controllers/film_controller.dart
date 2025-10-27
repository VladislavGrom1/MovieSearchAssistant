import 'dart:async';
import 'dart:developer';
import 'package:built_collection/built_collection.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/constants/watch_statuses.dart';
import 'package:movie_search_assistant/controllers/navigation_controller.dart';
import 'package:movie_search_assistant/infrastructure/exceptions/api_exception.dart';
import 'package:movie_search_assistant/models/film_card.dart';
import 'package:movie_search_assistant/repositories/film_repository.dart';
import 'package:movie_search_assistant/services/film_state_service.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';
import 'package:url_launcher/url_launcher.dart';

class FilmController extends GetxController {
  FilmController({
    required this.idFilm,
    required this.navId
    });

  int idFilm;
  int navId;

  GlobalApiService apiService = Get.find<GlobalApiService>();
  FilmRepository filmRepository = Get.find<FilmRepository>();

  var film = (null as Film?).obs;
  var imagesFilm = (null as ImageResponse?).obs;
  var filmIdKp = (null as int?).obs;

  var selectedRadioValue = "".obs;
  
  var isLoading = false.obs;

  var isErrorConnection = false.obs;
  var statusCode = 0.obs;

  @override
  void onInit() async {
    await getIdFilm();
    await getFilmWatchStatus();
    ever(FilmStateService.to.updatedFilmIds, (Set<int> updatedIds) {
      if (updatedIds.contains(idFilm)) {
        _refreshFilmStatus();
      }
    });
    super.onInit();
  }

  Future<void> _refreshFilmStatus() async {
    try {
      await getFilmWatchStatus();
    } catch (e) {
      log('Error refreshing film status: $e');
    }
  }

  void updateSelectionRadioValue(String? value){
    selectedRadioValue.value = value ?? WatchStatuses.DONT_WATCH;
  }

  Future<void> getIdFilm() async {
    isLoading.value = true;
    isErrorConnection.value = false;
    try {
      film.value = await apiService.getIdFilm(idFilm);
      filmIdKp.value = film.value?.kinopoiskId;
      await getImagesIdFilm();
    } on ApiException catch (e) {
      if (e.statusCode == 401) {
        isErrorConnection.value = true;
        statusCode.value = 401;
      }
      if (e.statusCode == 402) {
        isErrorConnection.value = true;
        statusCode.value = 402;
      }
    } catch (e) {
      log(e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getImagesIdFilm() async {
    isLoading.value = true;
    try {
      imagesFilm.value = await apiService.getImagesIdFilm(idFilm);
    } catch (e) {
      log(e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getFilmWatchStatus() async {
    isLoading.value = true;
    try{
      FilmCard? filmCard = await filmRepository.getFilmFromStorage(film.value?.kinopoiskId ?? 1);
      filmCard == null ? selectedRadioValue.value = WatchStatuses.DONT_WATCH : selectedRadioValue.value = filmCard.watchStatus!;
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  } 

  Future<void> saveFilmInCollection() async {
    try {
      FilmCard filmCard = filmToFilmCard(film.value, imagesFilm.value, selectedRadioValue.value);
      await filmRepository.addFilmInStorage(filmCard);
      log("Добавлен фильм со статусом ${filmCard.watchStatus}");
      FilmStateService.to.notifyFilmUpdated(idFilm);
    } catch (e) {
      log(e.toString());
      isLoading.value = false;
      rethrow;
    }
  }

  Future<void> removeFilmFromCategory() async {
    try {
      await filmRepository.removeFilmFromStorage(idFilm);
      selectedRadioValue.value = WatchStatuses.DONT_WATCH;
      FilmStateService.to.notifyFilmUpdated(idFilm);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  bool launchFilmWebURL() {
    final url = film.value?.webUrl;
    if (url == null || url.isEmpty) {
      return false;
    }
    try {
      final uri = Uri.parse(url);
      if (uri.isAbsolute) {
        launchUrl(uri);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}

FilmCard filmToFilmCard(Film? film, ImageResponse? imagesFilm, String? watchStatus) {
  FilmCard filmCard = FilmCard(
    kinopoiskId: film?.kinopoiskId,
    nameRu: film?.nameRu,
    nameOriginal: film?.nameOriginal,
    posterUrl: film?.posterUrl,
    ratingKinopoisk: film?.ratingKinopoisk == null
        ? null
        : film!.ratingKinopoisk!.toDouble(),
    ratingKinopoiskVoteCount: film?.ratingKinopoiskVoteCount,
    ratingImdb: film?.ratingImdb == null ? null : film!.ratingImdb!.toDouble(),
    ratingImdbVoteCount: film?.ratingImdbVoteCount,
    countries:
        film?.countries == null ? null : countriesToList(film!.countries),
    genres: film?.genres == null ? null : genresToList(film!.genres),
    imagesFilm: imagesFilm == null ? null : imagesFilmToList(imagesFilm),
    year: film?.year,
    startYear: film?.startYear,
    endYear: film?.endYear,
    serial: film?.serial,
    description: film?.description,
    slogan: film?.slogan,
    watchStatus: watchStatus ?? WatchStatuses.DONT_WATCH
  );
  return filmCard;
}

List<String> countriesToList(BuiltList<Country> countries) {
  List<String> countriesList =
      countries.map((country) => country.country).toList();
  return countriesList;
}

List<String> genresToList(BuiltList<Genre> genres) {
  List<String> genresList = genres.map((genre) => genre.genre).toList();
  return genresList;
}

List<String> imagesFilmToList(ImageResponse imagesFilm) {
  List<String> imagesFilmList = imagesFilm.items
      .where((item) => item.imageUrl != null)
      .map((item) => item.imageUrl!)
      .toList();
  return imagesFilmList;
}
