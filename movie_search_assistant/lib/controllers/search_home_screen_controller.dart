import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class SearchHomeScreenController extends GetxController{

  TextEditingController searchTextEditingController = TextEditingController();

  var isLoading = false.obs;

  RxMap<String, FilmCollectionResponse> collectionsFilms = <String, FilmCollectionResponse>{}.obs;
  List<String> collectionNames = ["TOP_POPULAR_MOVIES", "POPULAR_SERIES", "TOP_250_MOVIES", "TOP_250_TV_SHOWS"];

  var filteredKeywordFilms = FilmSearchByFiltersResponse((b) => b
    ..total = 0
    ..totalPages = 0
    ..items = ListBuilder([])
  ).obs;

  @override
  void onInit() async{
    isLoading.value = true;
    
    for(var collectionName in collectionNames) {
      await getCollectionsFilms(collectionName);
    }

    isLoading.value = false;
    super.onInit();
  }

  GlobalApiService apiService = Get.find<GlobalApiService>();

  // TODO: Реализовать, чтобы при одном и том же слове в поиске не происходило повторного запроса к серверу
  Future<void> getKeywordFilms() async{
    try{
      log(searchTextEditingController.text);
      filteredKeywordFilms.value = await apiService.getFiltersFilms(searchTextEditingController.text);
    } catch(e){
      log(e.toString());
      rethrow;
    }
  }

  Future<void> getCollectionsFilms(String nameCollection) async {
    isLoading.value = true;
    try{
      FilmCollectionResponse responseData = await apiService.getCollectionFilms(nameCollection);
      collectionsFilms[nameCollection] = responseData;
      collectionsFilms.refresh();
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  }

}