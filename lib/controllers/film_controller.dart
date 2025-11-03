import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';
import 'package:built_collection/built_collection.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/navigator_ids.dart';
import 'package:movie_search_assistant/constants/watch_statuses.dart';
import 'package:movie_search_assistant/controllers/global_network_controller.dart';
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
  final globalNetworkController = Get.find<GlobalNetworkController>();

  var film = (null as Film?).obs;
  var filmCard = (null as FilmCard?).obs;
  var imagesFilm = (null as ImageResponse?).obs;
  var filmIdKp = (null as int?).obs;

  var selectedRadioValue = "".obs;
  
  var isLoading = false.obs;

  var isErrorConnection = false.obs;
  var statusCode = 0.obs;

  @override
  void onInit() async {

    await _loadFromStorage();

    if (film.value == null && globalNetworkController.isConnectedToInternet.value) {
      await _loadFromApi();
    }
    
    ever(globalNetworkController.isConnectedToInternet, (hasInternet) async {
      if (hasInternet && film.value == null) {
        await _loadFromApi();
      }
    });

    ever(FilmStateService.to.updatedFilmIds, (Set<int> updatedIds) {
      if (updatedIds.contains(idFilm)) {
        _refreshFilmStatus();
      }
    });

    super.onInit();
  }

  Future<void> _loadFromStorage() async {
    try{
      filmCard.value = await filmRepository.getFilmFromStorage(idFilm);
      if (filmCard.value != null) {
        film.value = filmCardToFilm(filmCard.value!);
        selectedRadioValue.value = filmCard.value!.watchStatus ?? WatchStatuses.DONT_WATCH;
      }
    } catch(e){
      log(e.toString());
      rethrow;
    }
  }

  Future<void> _loadFromApi() async {
    isLoading.value = true;
    try {
      await getIdFilm();
      await getFilmWatchStatus();
      await getImagesIdFilm();
    } finally {
      isLoading.value = false;
    }
  }

  Film filmCardToFilm(FilmCard card) {
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

  Future<void> resetAndReload() async{
    isLoading.value = true;
    try{
      if (globalNetworkController.isConnectedToInternet.value) {
        await getIdFilm();
        await getFilmWatchStatus();
        await getImagesIdFilm();
        await saveFilmInCollection();
      }
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  }

  Future<void> _refreshFilmStatus() async {
    try {
      await getFilmWatchStatus();
    } catch (e) {
      log('Не удалось обновить статус фильма: $e');
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
      if(!globalNetworkController.isConnectedToInternet.value){
        filmCard.value!.watchStatus = selectedRadioValue.value;
        await filmRepository.addFilmInStorage(filmCard.value!);
      } else{
        // TODO: Загрузка 5 скриншотов фильма -> Подумать над целесообразностью
        List<String> imagesList = imagesFilm.value == null ? [] : imagesFilmToList(imagesFilm.value!);
        List<Uint8List?> imageBytesList = imagesList.isEmpty ? [] : await getImageFilmBytesList(imagesList);
        Uint8List? posterBytes = await getFilmPosterBytes(film.value!.posterUrl);
        FilmCard filmCard = filmToFilmCard(film.value, imagesFilm.value, posterBytes, imageBytesList, selectedRadioValue.value);
        await filmRepository.addFilmInStorage(filmCard);
      }
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

  FilmCard filmToFilmCard(
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
      countries: film?.countries == null ? null : countriesToList(film!.countries),
      genres: film?.genres == null ? null : genresToList(film!.genres),
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

  Future<Uint8List?> getFilmPosterBytes(String imageUrl) async{
    isLoading.value = true;
    try{
      Uint8List? imagesListBytes = await apiService.downloadImageAsBytes(imageUrl);
      return imagesListBytes;
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  }

  Future<List<Uint8List?>> getImageFilmBytesList(List<String> imageUrlList) async{
    isLoading.value = true;
    List<Uint8List?> imageBytesList = [];
    try{
      for(var url in imageUrlList){
        if(imageBytesList.length == 5){
          log("Загружено 5 фото -> выход");
          return imageBytesList;
        }
        Uint8List? imageBytes = await apiService.downloadImageAsBytes(url);
        imageBytesList.add(imageBytes);
      }
      return imageBytesList;
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  } 
}



