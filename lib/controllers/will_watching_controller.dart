import 'dart:developer';
import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/navigation_controller.dart';
import 'package:movie_search_assistant/models/film_card.dart';
import 'package:movie_search_assistant/repositories/film_repository.dart';

class WillWatchingController extends GetxController{

  FilmRepository filmRepository = Get.find<FilmRepository>();

  var filmsWillWatch = (null as List<FilmCard>?).obs;

  var isLoading = false.obs;

  @override
  void onInit() async{
    await getFilmWillWatchingCollection();
    ever(NavigationController.to.currentIndex, (index) {
      if (index == 1) {
        _onTabActivated();
      }
    });
    super.onInit();
  }

  void _onTabActivated() async {
    await getFilmWillWatchingCollection();
  }

  Future<void> getFilmWillWatchingCollection() async{
    isLoading.value = true;
    try{
      filmsWillWatch.value = await filmRepository.getAllFilmsWillWatchCollectionFromStorage();
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  }

}