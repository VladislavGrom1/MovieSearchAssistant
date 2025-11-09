import 'dart:developer';
import 'package:hive/hive.dart';
import 'package:movie_search_assistant/constants/hive_storage_keys.dart';
import 'package:movie_search_assistant/models/film_card.dart';
import '../exceptions/storage_exception.dart';

class FilmStorage {
  
  Future<void> addFilm(FilmCard film) async {
    try{
      final filmsBox = Hive.box<FilmCard>(HiveStorageKeys.userFilmsKeyBox);
      await filmsBox.put(film.kinopoiskId.toString(), film);
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }

  Future<void> removeFilm(int kinopoiskId) async{
    try{
      final filmsBox = Hive.box<FilmCard>(HiveStorageKeys.userFilmsKeyBox);
      await filmsBox.delete(kinopoiskId.toString());
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }

  Future<void> removeAllFilms() async{
    try{
      final filmsBox = Hive.box<FilmCard>(HiveStorageKeys.userFilmsKeyBox);
      await filmsBox.clear();
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }

  Future<List<FilmCard>?> getAllFilms() async{
    try{
      final filmsBox = Hive.box<FilmCard>(HiveStorageKeys.userFilmsKeyBox);
      List<FilmCard>? films = filmsBox.values.toList();
      return films;
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }

  Future<FilmCard?> getFilm(int kinopoiskId) async {
    try{
      final filmsBox = Hive.box<FilmCard>(HiveStorageKeys.userFilmsKeyBox);
      FilmCard? film = filmsBox.get(kinopoiskId.toString());
      return film;
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }
  
}