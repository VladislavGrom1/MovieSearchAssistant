import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/login_controller.dart';
import 'package:movie_search_assistant/controllers/navigation_controller.dart';
import 'package:movie_search_assistant/controllers/root_controller.dart';
import 'package:movie_search_assistant/controllers/search_category_controller.dart';
import 'package:movie_search_assistant/controllers/search_home_controller.dart';
import 'package:movie_search_assistant/controllers/search_filters_controller.dart';
import 'package:movie_search_assistant/infrastructure/storage/user_storage.dart';
import 'package:movie_search_assistant/repositories/user_repository.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class DiInit {
  static void init(){
    Get.put(UserStorage());
    Get.put(UserRepository());
    Get.put(GlobalApiService());
    Get.put(RootController());
    Get.put(LoginController());
  }
}