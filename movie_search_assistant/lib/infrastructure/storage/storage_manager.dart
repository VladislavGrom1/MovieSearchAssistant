import 'dart:developer';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:movie_search_assistant/constants/hive_storage_keys.dart';
import 'package:movie_search_assistant/models/film_card.dart';
import 'package:movie_search_assistant/models/user_api_key_info.dart';
import '../exceptions/storage_exception.dart';

class StorageManager extends GetxService{
  
  static Future<void> clearAllData() async {
    if (Hive.isBoxOpen(HiveStorageKeys.userApiKeyBox)) {
      final apiKeyBox = Hive.box<UserApiKeyInfo>(HiveStorageKeys.userApiKeyBox);
      await apiKeyBox.clear();
    }
    if (Hive.isBoxOpen(HiveStorageKeys.userFilmsKeyBox)) {
      final filmsBox = Hive.box<FilmCard>(HiveStorageKeys.userFilmsKeyBox);
      await filmsBox.clear();
    }
  }

  static Future<void> clearApiKeyBox() async{
    try{
      final apiKeyBox = Hive.box<UserApiKeyInfo>(HiveStorageKeys.userApiKeyBox);
      await apiKeyBox.clear();
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }

  static Future<void> clearUserFilmsBox() async{
    try{
      final userFilmsBox = Hive.box<FilmCard>(HiveStorageKeys.userFilmsKeyBox);
      await userFilmsBox.clear();
      log("Хранилище успешно очищено");
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }

}