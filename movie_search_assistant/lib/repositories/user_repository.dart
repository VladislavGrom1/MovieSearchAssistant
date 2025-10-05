import 'dart:developer';

import 'package:get/get.dart';
import 'package:movie_search_assistant/infrastructure/exceptions/storage_exception.dart';
import 'package:movie_search_assistant/infrastructure/storage/user_storage.dart';

class UserRepository extends GetxController{

  final UserStorage _userStorage = Get.find<UserStorage>();

  Future<String?> getUserApiKeyFromStorage() async {
    try{
      return await _userStorage.getUserApiKey();
    } on StorageException catch(e){
      log(e.toString());
      rethrow;
    } catch(e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<void> addUserApiKeyInStorage(String apiKey) async {
    try{
      await _userStorage.addUserApiKey(apiKey);
    } on StorageException catch(e){
      log(e.toString());
      rethrow;
    } catch(e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<void> removeUserApiKeyFromStorage() async{
    try{
      await _userStorage.removeUserApiKey();
    } on StorageException catch(e){
      log(e.toString());
      rethrow;
    } catch(e) {
      log(e.toString());
      rethrow;
    }
  }
 
}