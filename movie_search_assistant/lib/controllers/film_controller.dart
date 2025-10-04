import 'dart:developer';

import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/infrastructure/exceptions/api_exception.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class FilmController extends GetxController{
  FilmController({required this.idFilm});

  int idFilm;

  GlobalApiService apiService = Get.find<GlobalApiService>();

  var film = (null as Film?).obs;
  var imagesFilm = (null as ImageResponse?).obs;
  var isLoading = false.obs;

  var isErrorConnection = false.obs;
  var statusCode = 0.obs;

  @override
  void onInit() async{
    await getIdFilm();
    super.onInit();
  }
  
  Future<void> getIdFilm() async{
    isLoading.value = true;
    isErrorConnection.value = false;
    try{
      film.value = await apiService.getIdFilm(idFilm);
      await getImagesIdFilm();
    } on ApiException catch(e){
      if(e.statusCode == 401){
        isErrorConnection.value = true;
        statusCode.value = 401;
      }
      if(e.statusCode == 402){
        isErrorConnection.value = true;
        statusCode.value = 402;
      }
    } catch(e){
      log(e.toString());
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
    } finally{
      isLoading.value = false;
    }
  }
  
}