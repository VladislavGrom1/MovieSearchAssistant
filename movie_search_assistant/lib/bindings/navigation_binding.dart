import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/navigation_controller.dart';

class NavigationBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<NavigationController>(() => NavigationController());
  }
}