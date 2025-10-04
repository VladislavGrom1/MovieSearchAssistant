import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/navigation_controller.dart';
import 'package:movie_search_assistant/controllers/search_category_controller.dart';
import 'package:movie_search_assistant/controllers/search_home_controller.dart';
import 'package:movie_search_assistant/controllers/search_filters_controller.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class DiInit {
  static void init(){
    Get.put(NavigationController());
    Get.put(GlobalApiService());
    Get.put(SearchHomeController());
  }
}