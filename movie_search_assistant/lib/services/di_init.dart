import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/home_screen_controller.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class DiInit {
  static void init(){
    Get.put(GlobalApiService());
    Get.put(HomeScreenController());
  }
}