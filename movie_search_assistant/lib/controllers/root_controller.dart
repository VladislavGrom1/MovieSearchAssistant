import 'package:get/get.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/repositories/user_repository.dart';

class RootController extends GetxController{
  UserRepository userRepository = Get.find<UserRepository>();

  @override 
  void onReady() async{
    super.onReady();
    await userRepository.removeUserApiKeyFromStorage();
    await userEntriedApiKey();
  }

  Future<void> userEntriedApiKey() async {
    String? userApiKey = await userRepository.getUserApiKeyFromStorage();
    if(userApiKey!=null){
      Future.delayed(const Duration(milliseconds: 10), () {
        Get.offAllNamed(Routes.navigationScreen);
      });
    }
    else{
      Get.offAllNamed(Routes.loginScreen);
    }
  }
}