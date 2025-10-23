import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/repositories/user_repository.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class LoginController extends GetxController{
  final userRepository = Get.find<UserRepository>();
  final apiService = Get.find<GlobalApiService>();

  TextEditingController textEditingController = TextEditingController();

  Future<bool> entryApiKey() async{
    try{
      bool apiKeyIsValid = await apiService.validateApiKey(textEditingController.text);

      if(apiKeyIsValid){
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
}