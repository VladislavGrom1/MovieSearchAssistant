import 'dart:developer';
import 'package:built_collection/built_collection.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/infrastructure/exceptions/api_exception.dart';
import 'package:movie_search_assistant/models/film_card.dart';
import 'package:movie_search_assistant/repositories/film_repository.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class FilmController extends GetxController{
  FilmController({required this.idFilm});

  int idFilm;

  GlobalApiService apiService = Get.find<GlobalApiService>();
  FilmRepository filmRepository = Get.find<FilmRepository>();
  
  var film = (null as Film?).obs;
  var imagesFilm = (null as ImageResponse?).obs;
  var isLoading = false.obs;

  var isErrorConnection = false.obs;
  var statusCode = 0.obs;

  @override
  void onInit() async{
    await getIdFilm();
    super.onInit();
  }
  
  Future<void> getIdFilm() async{
    isLoading.value = true;
    isErrorConnection.value = false;
    try{
      film.value = await apiService.getIdFilm(idFilm);
      await getImagesIdFilm();
    } on ApiException catch(e){
      if(e.statusCode == 401){
        isErrorConnection.value = true;
        statusCode.value = 401;
      }
      if(e.statusCode == 402){
        isErrorConnection.value = true;
        statusCode.value = 402;
      }
    } catch(e){
      log(e.toString());
    } finally{
      isLoading.value = false;
    }
  }

  Future<void> getImagesIdFilm() async {
    isLoading.value = true;
    try{
      imagesFilm.value = await apiService.getImagesIdFilm(idFilm);
    } catch(e){
      log(e.toString());
    } finally{
      isLoading.value = false;
    }
  }

  // TODO: Если фильм уже добавлен в Коллекцию, то нужно сделать проверку по id, чтобы просто поменять флаг на isWillWatch
  // Сделать проверку перед сохранением, есть ли фильм в локальном хранилище -> попробовать получить фильм, если получим, то проверить поля IsWillWatch и IsFavourite
  
  Future<void> saveFilmInWillWatchCollection() async{
    try{
      FilmCard filmCard = filmToFilmCard(film.value, imagesFilm.value);
      await filmRepository.addFilmInStorage(filmCard);
    } catch(e){
      log(e.toString());
      rethrow;
    }
  }

  FilmCard filmToFilmCard(Film? film, ImageResponse? imagesFilm){
    FilmCard filmCard = FilmCard(
        kinopoiskId: film?.kinopoiskId,
        nameRu: film?.nameRu,
        nameOriginal: film?.nameOriginal,
        posterUrl: film?.posterUrl,
        ratingKinopoisk: film?.ratingKinopoisk == null ? null : film!.ratingKinopoisk!.toDouble(),
        ratingKinopoiskVoteCount: film?.ratingKinopoiskVoteCount,
        ratingImdb: film?.ratingImdb == null ? null : film!.ratingImdb!.toDouble(),
        ratingImdbVoteCount: film?.ratingImdbVoteCount,
        countries: film?.countries == null ? null : countriesToList(film!.countries),
        genres: film?.genres == null ? null : genresToList(film!.genres),
        imagesFilm: imagesFilm == null ? null : imagesFilmToList(imagesFilm),
        year: film?.year,
        startYear: film?.startYear,
        endYear: film?.endYear,
        serial: film?.serial,
        description: film?.description,
        slogan: film?.slogan,
        isWillWatch: true,
        isFavourite: false,
      );
    return filmCard;
  }

  List<String> countriesToList(BuiltList<Country> countries){
    List<String> countriesList = countries.map((country) => country.country).toList();
    return countriesList; 
  }

  List<String> genresToList(BuiltList<Genre> genres){
    List<String> genresList = genres.map((genre) => genre.genre).toList();
    return genresList; 
  }

  List<String> imagesFilmToList(ImageResponse imagesFilm){
    List<String> imagesFilmList = imagesFilm.items.where((item) => item.imageUrl != null).map((item) => item.imageUrl!).toList();
    return imagesFilmList;
  }

}