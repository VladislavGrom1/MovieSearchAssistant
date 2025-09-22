import 'package:get/get.dart';
import 'package:movie_search_assistant/constants/storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage extends GetxService{
  late final SharedPreferences storage;

  Future<void> clearAllStorages() async {
    storage = await SharedPreferences.getInstance();
    for(int i = 0; i < StorageKeys.USER_STORAGE_KEYS.length; i++){
      await storage.remove(StorageKeys.USER_STORAGE_KEYS[i]);
    }
  }
}