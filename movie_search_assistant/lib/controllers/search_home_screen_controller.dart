import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class SearchHomeScreenController extends GetxController{

  TextEditingController searchTextEditingController = TextEditingController();

  var filteredKeywordFilms = FilmSearchByFiltersResponse((b) => b
    ..total = 0
    ..totalPages = 0
    ..items = ListBuilder([])
  ).obs;

  var films = PremiereResponse((b) => b
    ..total = 0
    ..items = ListBuilder([])
  ).obs;

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

  Future<void> getPremiereFilms() async{
    try{
      films.value = await apiService.getPremiereFilms();
    } catch(e){
      log(e.toString());
      rethrow;
    }
  }

}