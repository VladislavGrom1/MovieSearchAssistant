import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

class SearchKeywordController extends GetxController{
  SearchKeywordController({required this.keyword});

  String keyword;

  GlobalApiService apiService = Get.find<GlobalApiService>();

  ScrollController scrollController = ScrollController();

  var currentPage = 1.obs;
  var totalPages = (null as int?).obs;
  bool isFetchingNextPage = false;
  bool allPagesLoaded = false;
  var isLoading = false.obs;

  var filteredKeywordFilms = Rx<FilmSearchByFiltersResponse>(
    FilmSearchByFiltersResponse((b) => b
    ..total = 0
    ..totalPages = 0
    ..items = ListBuilder<FilmSearchByFiltersResponseItems>([])
    ),
  );

  @override
  void onInit() async{
    scrollController.addListener(() async {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        if(!allPagesLoaded){
          await getKeywordFilms(keyword);
        }
      }
    });
    await getKeywordFilms(keyword);
    super.onInit();
  }

  // TODO: Реализовать, чтобы при одном и том же слове в поиске не происходило повторного запроса к серверу
  Future<void> getKeywordFilms(String keyword) async{

    if (isFetchingNextPage) {
      return;
    }

    if (totalPages.value != null && currentPage.value > totalPages.value!) {
      allPagesLoaded = true;
      return;
    }

    isFetchingNextPage = true;
    isLoading.value = true;

    try{
      FilmSearchByFiltersResponse responseData = await apiService.getFiltersFilms(keyword, currentPage.value);

      final updated = filteredKeywordFilms.value.rebuild((b) {
          if (currentPage.value == 1) {
            b.items.replace(responseData.items);
          } else {
            b.items.addAll(responseData.items);
          }
          b.total = responseData.total;
          b.totalPages = responseData.totalPages;
        });

        filteredKeywordFilms.value = updated;
        currentPage.value ++;
        totalPages.value = responseData.totalPages;

    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isFetchingNextPage = false;
      isLoading.value = false;
    }
  }
}