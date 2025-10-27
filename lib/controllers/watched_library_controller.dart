import 'dart:developer';

import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/navigation_controller.dart';
import 'package:movie_search_assistant/models/film_card.dart';
import 'package:movie_search_assistant/repositories/film_repository.dart';

class WatchedLibraryController extends GetxController{
  FilmRepository filmRepository = Get.find<FilmRepository>();

  var filmsWatched = (null as List<FilmCard>?).obs;

  var isLoading = false.obs;

  @override
  void onInit() async{
    await getFilmWatchedCollection();
    ever(NavigationController.to.currentIndex, (index) {
      if (index == 2) {
        _onTabActivated();
      }
    });
    super.onInit();
  }

  void _onTabActivated() async {
    await getFilmWatchedCollection();
  }

  Future<void> getFilmWatchedCollection() async{
    isLoading.value = true;
    try{
      filmsWatched.value = await filmRepository.getAllFilmsWatchedCollectionFromStorage();
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  }
}