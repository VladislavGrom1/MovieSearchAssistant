import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:movie_search_assistant/constants/hive_storage_keys.dart';
import 'package:movie_search_assistant/constants/storage_keys.dart';
import 'package:movie_search_assistant/infrastructure/exceptions/storage_exception.dart';
import 'package:movie_search_assistant/infrastructure/storage/storage_manager.dart';
import 'package:movie_search_assistant/models/user_api_key_info.dart';

class UserStorage {
  
  Future<String?> getUserApiKey() async{
    UserApiKeyInfo? userApiKeyInfo;
    try{
      final storageBox = Hive.box<UserApiKeyInfo>(HiveStorageKeys.userApiKeyBox);
      userApiKeyInfo = storageBox.get(HiveStorageKeys.userApiKey);
      return userApiKeyInfo?.apikey;
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }

  Future<void> addUserApiKey(String apiKey) async {
    try{
      final storageBox = Hive.box<UserApiKeyInfo>(HiveStorageKeys.userApiKeyBox);
      await storageBox.put(HiveStorageKeys.userApiKey, UserApiKeyInfo(apiKey, null, null, null));
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }

  Future<void> removeUserApiKey() async{
    try{
      final storageBox = Hive.box<UserApiKeyInfo>(HiveStorageKeys.userApiKeyBox);
      await storageBox.delete(HiveStorageKeys.userApiKey);
    } catch(e){
      log(e.toString());
      throw StorageException(e.toString());
    }
  }

}