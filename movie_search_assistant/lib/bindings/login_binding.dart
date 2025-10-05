import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<LoginController>(() => LoginController());
  }
}