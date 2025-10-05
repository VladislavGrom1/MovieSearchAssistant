import 'dart:developer';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/controllers/navigation_controller.dart';
import 'package:movie_search_assistant/infrastructure/exceptions/api_exception.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class SearchHomeController extends GetxController{

  GlobalApiService apiService = Get.find<GlobalApiService>();

  TextEditingController searchTextEditingController = TextEditingController();

  var isLoading = false.obs;
  
  var isErrorConnection = false.obs;
  var statusCode = 0.obs;

  RxMap<String, FilmCollectionResponse> collectionsFilms = <String, FilmCollectionResponse>{}.obs;
  List<String> collectionNames = ["TOP_POPULAR_MOVIES", "POPULAR_SERIES", "TOP_250_MOVIES", "TOP_250_TV_SHOWS"];

  @override
  void onInit() async{
    await getAllCollectionsFilms();

    ever(NavigationController.to.currentIndex, (index) {
      if (index == 0) {
        _onTabActivated();
      }
    });

    super.onInit();
  }

  void _onTabActivated() async {
    if (isErrorConnection.value == true) {
      await getAllCollectionsFilms();
    }
  }

  Future<void> getCollectionFilms(String nameCollection) async {
    isLoading.value = true;
    try{
      FilmCollectionResponse responseData = await apiService.getCollectionFilms(nameCollection, 1);
      collectionsFilms[nameCollection] = responseData;
      collectionsFilms.refresh();
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

  Future<void> getAllCollectionsFilms() async {
    isLoading.value = true;
    isErrorConnection.value = false;
    try{
      for(var collectionName in collectionNames) {
        await getCollectionFilms(collectionName);
      }
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

}