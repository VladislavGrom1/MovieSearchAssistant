import 'dart:developer';

import 'package:movie_search_assistant/constants/storage_keys.dart';
import 'package:movie_search_assistant/infrastructure/exceptions/storage_exception.dart';
import 'package:movie_search_assistant/models/user_api_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserStorage {
  
  Future<SharedPreferences> getStorage() async{
    try{
      return await SharedPreferences.getInstance();
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }

  Future<String?> getUserApiKey() async{
    String? apiKey;
    try{
      final userStorage = await getStorage();
      apiKey = userStorage.getString(StorageKeys.USER_API_KEY);
      return apiKey;
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }

  Future<void> addUserApiKey(String apiKey) async {
    try{
      final userStorage = await getStorage();
      await userStorage.setString(StorageKeys.USER_API_KEY, apiKey);
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }

  Future<void> removeUserApiKey() async{
    try{
      final userStorage = await getStorage();
      await userStorage.remove(StorageKeys.USER_API_KEY);
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }

}