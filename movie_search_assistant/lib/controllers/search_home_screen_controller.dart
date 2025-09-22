import 'dart:developer';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class SearchHomeScreenController extends GetxController{

  GlobalApiService apiService = Get.find<GlobalApiService>();

  TextEditingController searchTextEditingController = TextEditingController();

  var isLoading = false.obs;

  RxMap<String, FilmCollectionResponse> collectionsFilms = <String, FilmCollectionResponse>{}.obs;
  List<String> collectionNames = ["TOP_POPULAR_MOVIES", "POPULAR_SERIES", "TOP_250_MOVIES", "TOP_250_TV_SHOWS"];

  @override
  void onInit() async{
    await getAllCollectionsFilms();
    super.onInit();
  }

  Future<void> getCollectionFilms(String nameCollection) async {
    isLoading.value = true;
    try{
      FilmCollectionResponse responseData = await apiService.getCollectionFilms(nameCollection, 1);
      collectionsFilms[nameCollection] = responseData;
      collectionsFilms.refresh();
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  }

  Future<void> getAllCollectionsFilms() async {
    isLoading.value = true;
    try{
      for(var collectionName in collectionNames) {
        await getCollectionFilms(collectionName);
      }
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  }

}