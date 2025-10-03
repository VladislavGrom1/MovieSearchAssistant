import 'dart:developer';

import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class FilmController extends GetxController{
  FilmController({required this.idFilm});

  int idFilm;

  GlobalApiService apiService = Get.find<GlobalApiService>();

  var film = (null as Film?).obs;
  var imagesFilm = (null as ImageResponse?).obs;
  var isLoading = false.obs;

  @override
  void onInit() async{
    await getIdFilm();
    await getImagesIdFilm();
    super.onInit();
  }
  
  Future<void> getIdFilm() async{
    isLoading.value = true;
    try{
      film.value = await apiService.getIdFilm(idFilm);
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  }

  Future<void> getImagesIdFilm() async {
    isLoading.value = true;
    try{
      imagesFilm.value = await apiService.getImagesIdFilm(idFilm);
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  }
  
}