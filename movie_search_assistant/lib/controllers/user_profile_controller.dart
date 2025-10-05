import 'dart:developer';

import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/repositories/user_repository.dart';

class UserProfileController extends GetxController{
  
  final userRepository = Get.find<UserRepository>();

  var userApiKey = (null as String?).obs;
  var isLoading = false.obs;

  @override
  void onInit() async {
    await getUserApiKey();
    super.onInit();
  }

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
}