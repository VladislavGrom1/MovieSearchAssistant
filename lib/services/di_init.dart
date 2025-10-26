import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/login_controller.dart'; 
import 'package:movie_search_assistant/controllers/root_controller.dart';
import 'package:movie_search_assistant/infrastructure/storage/film_storage.dart';
import 'package:movie_search_assistant/infrastructure/storage/user_storage.dart';
import 'package:movie_search_assistant/repositories/film_repository.dart';
import 'package:movie_search_assistant/repositories/user_repository.dart';
import 'package:movie_search_assistant/services/film_state_service.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class DiInit {
  static void init(){
    Get.put(UserStorage());
    Get.put(UserRepository());
    Get.put(FilmStorage());
    Get.put(FilmRepository());
    Get.put(GlobalApiService());
    Get.put(RootController());
    Get.put(LoginController());
    Get.put(FilmStateService());
  }
}