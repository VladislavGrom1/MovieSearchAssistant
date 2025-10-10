import 'dart:developer';

import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/navigation_controller.dart';

class WillWatchingController extends GetxController{

  // TODO: Реализовать вывод сохранённых фильмов из хранилища (если isWillWatch == true)

  @override
  void onInit() async{
    getFilmCollection();
    ever(NavigationController.to.currentIndex, (index) {
      if (index == 1) {
        _onTabActivated();
      }
    });
    super.onInit();
  }

  void _onTabActivated() async {
    await getFilmCollection();
  }

  Future<void> getFilmCollection() async{

  }

}