import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class SearchKeywordController extends GetxController{

  GlobalApiService apiService = Get.find<GlobalApiService>();

  var isLoading = false.obs;

  var filteredKeywordFilms = FilmSearchByFiltersResponse((b) => b
    ..total = 0
    ..totalPages = 0
    ..items = ListBuilder([])
  ).obs;

  // TODO: Реализовать, чтобы при одном и том же слове в поиске не происходило повторного запроса к серверу
  Future<void> getKeywordFilms(String keyword) async{
    isLoading.value = true;
    try{
      filteredKeywordFilms.value = await apiService.getFiltersFilms(keyword);
    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isLoading.value = false;
    }
  }
}