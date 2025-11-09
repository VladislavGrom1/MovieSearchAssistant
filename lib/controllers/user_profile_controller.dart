import 'dart:developer';
import 'dart:io';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/infrastructure/utils/file_manager.dart';
import 'package:movie_search_assistant/models/film_card.dart';
import 'package:movie_search_assistant/repositories/film_repository.dart';
import 'package:movie_search_assistant/repositories/user_repository.dart';

class UserProfileController extends GetxController{
  
  final userRepository = Get.find<UserRepository>();
  final filmRepository = Get.find<FilmRepository>();

  var userApiKey = (null as String?).obs;
  var isLoading = false.obs;

  @override
  void onInit() async {
    await getUserApiKey();
    super.onInit();
  }

  //  TODO: Дореализовать импорт/экспорт данных + протестить, правильно ли установятся статусы у фильмов на других экранах

  Future<void> getUserApiKey() async{
    isLoading.value = true;
    try{
      userApiKey.value = await userRepository.getUserApiKeyFromStorage();
    } catch(e){
      log(e.toString());
    } finally{
      isLoading.value = false;
    }
  }

  Future<void> clearAllFilms() async{
    isLoading.value = true;
    try{
      await filmRepository.removeAllFilmsFromStorage();
      log("Все фильмы удалены");
    } catch(e){
      log(e.toString());
    } finally{
      isLoading.value = false;
    }
  }

  Future<void> clearCache() async{
    isLoading.value = true;
    try{
      DefaultCacheManager manager = DefaultCacheManager();
      manager.emptyCache();
    } catch(e){
      log(e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<bool> saveFilmsFile() async {
    isLoading.value = true;
    try{
      List<FilmCard>? savedFilms = await filmRepository.getAllFilmsFromStorage();
      bool result = await FileManager.exportListFilms(savedFilms);
      if(result){
        log("Файл успешно сохранён");
        return true;
      } else{
        log("Файл не сохранён");
        return false;
      }
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  }

  Future<bool> loadFilmsFile() async{
    isLoading.value = true;
    try{
      List<FilmCard>? films = await FileManager.importListFilms();
      if(films == null){
        log("Файл пустой");
        return false;
      } 

      for(var film in films){
        bool filmIsExistInStorage = await filmRepository.filmIsExistInStorage(film.kinopoiskId);
        if(!filmIsExistInStorage){
          await filmRepository.addFilmInStorage(film);
        }
      }

      return true;
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  }
}