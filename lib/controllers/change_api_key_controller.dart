import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/repositories/user_repository.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class ChangeApiKeyController extends GetxController{

  final userRepository = Get.find<UserRepository>();
  final apiService = Get.find<GlobalApiService>();

  var currentUserApiKey = (null as String?).obs;
  
  var isLoading = false.obs;
  TextEditingController textEditingController = TextEditingController();

  @override
  void onInit() async{
    await getUserApiKey();
    super.onInit();
  }

  // TODO: Не происходит обновления API KEY если зайти без Api Key + если писать русские символы -> краш

  Future<bool> entryApiKey() async{
    try{
      bool apiKeyIsValid = await apiService.validateApiKey(textEditingController.text);
      if(apiKeyIsValid){
        await userRepository.removeUserApiKeyFromStorage();
        await userRepository.addUserApiKeyInStorage(textEditingController.text);
        return true;
      } else{
        return false;
      }
    } catch(e){
      log(e.toString());
      rethrow;
    }
  } 

  Future<void> getUserApiKey() async{
    isLoading.value = true;
    try{
      currentUserApiKey.value = await userRepository.getUserApiKeyFromStorage();

    } catch(e){
      log(e.toString());
    } finally{
      isLoading.value = false;
    }
  }

}