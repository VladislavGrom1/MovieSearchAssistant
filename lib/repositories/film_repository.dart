import 'dart:developer';

import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/watch_statuses.dart';
import 'package:movie_search_assistant/infrastructure/exceptions/storage_exception.dart';
import 'package:movie_search_assistant/infrastructure/storage/film_storage.dart';
import 'package:movie_search_assistant/models/film_card.dart';

class FilmRepository extends GetxController{
  
  final FilmStorage _filmStorage = Get.find<FilmStorage>();

  Future<void> addFilmInStorage(FilmCard film) async{
    try{
      await _filmStorage.addFilm(film);
    } on StorageException catch(e){
      log(e.message);
    } catch(e){
      log(e.toString());
      rethrow;
    }
  }

  Future<void> removeFilmFromStorage(int kinopoiskId) async{
    try{
      await _filmStorage.removeFilm(kinopoiskId);
    } on StorageException catch(e){
      log(e.message);
    } catch(e){
      log(e.toString());
      rethrow;
    }
  }

  Future<void> removeAllFilmsFromStorage() async{
    try{
      await _filmStorage.removeAllFilms();
    } on StorageException catch(e){
      log(e.message);
    } catch(e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<FilmCard?> getFilmFromStorage(int? kinopoiskId) async{
    try{
      FilmCard? film = await _filmStorage.getFilm(kinopoiskId ?? 0);
      return film;
    } on StorageException catch(e){
      log(e.message);
    } catch(e){
      log(e.toString());
      rethrow;
    }
    return null;
  }

  Future<List<FilmCard>?> getAllFilmsFromStorage() async{
    try{
      List<FilmCard>? films = await _filmStorage.getAllFilms();
      return films;
    } on StorageException catch(e){
      log(e.message);
    } catch(e){
      log(e.toString());
      rethrow;
    }
    return null;
  }

  Future<List<FilmCard>?> getAllFilmsWillWatchCollectionFromStorage() async{
    try{
      List<FilmCard>? filmsWillWatchCollection;
      List<FilmCard>? films = await _filmStorage.getAllFilms();
      if(films != null){
        filmsWillWatchCollection = [];
        for(var film in films){
          if(film.watchStatus == WatchStatuses.WILL_WATCH){
            filmsWillWatchCollection.add(film);
          }
        }
      }
      return filmsWillWatchCollection;
    } on StorageException catch(e){
      log(e.message);
    } catch(e){
      log(e.toString());
      rethrow;
    }
    return null;
  }

  Future<List<FilmCard>?> getAllFilmsWatchedCollectionFromStorage() async{
    try{
      List<FilmCard>? filmsWatchedCollection;
      List<FilmCard>? films = await _filmStorage.getAllFilms();
      if(films != null){
        filmsWatchedCollection = [];
        for(var film in films){
          if(film.watchStatus == WatchStatuses.WATCHED){
            filmsWatchedCollection.add(film);
          }
        }
      }
      return filmsWatchedCollection;
    } on StorageException catch(e){
      log(e.message);
    } catch(e){
      log(e.toString());
      rethrow;
    }
    return null;
  }

  Future<bool> filmIsExistInStorage(int? kinopoiskId) async{
    try{
      FilmCard? film = await getFilmFromStorage(kinopoiskId);
      if(film != null){
        return true;
      }
    } on StorageException catch(e){
      log(e.message);
    } catch(e){
      log(e.toString());
      rethrow;
    }
    return false;
  }
}