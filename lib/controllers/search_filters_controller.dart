import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/infrastructure/exceptions/api_exception.dart';
import 'package:movie_search_assistant/services/global_api_service.dart';

import 'global_network_controller.dart';

class SearchFiltersController extends GetxController{
  SearchFiltersController({this.keyword, this.countries, this.genres, this.yearFrom, this.yearTo});

  String? keyword;
  BuiltList<int>? countries;
  BuiltList<int>? genres;
  int? yearFrom;
  int? yearTo;

  GlobalApiService apiService = Get.find<GlobalApiService>();
  final globalNetworkController = Get.find<GlobalNetworkController>();

  ScrollController scrollController = ScrollController();

  var currentPage = 1.obs;
  var totalPages = (null as int?).obs;
  bool isFetchingNextPage = false;
  bool allPagesLoaded = false;

  var isLoading = false.obs;
  var isErrorConnection = false.obs;
  var statusCode = 0.obs;

  var filteredKeywordFilms = Rx<FilmSearchByFiltersResponse>(
    FilmSearchByFiltersResponse((b) => b
    ..total = 0
    ..totalPages = 0
    ..items = ListBuilder<FilmSearchByFiltersResponseItems>([])
    ),
  );

  @override
  Future<void> onInit() async {
    scrollController.addListener(() async {_updateFilterFilms();});

    ever(globalNetworkController.isConnectedToInternet, (hasInternet) async {
      if (hasInternet && 
          filteredKeywordFilms.value.items.isEmpty && 
          !isLoading.value && 
          !isErrorConnection.value) {
        await resetAndReload();
      }
    });

    if (globalNetworkController.isConnectedToInternet.value) {
      await getFilterFilms();
    } else {
      isLoading.value = false;
    }
    super.onInit();
  }

  Future<void> _updateFilterFilms() async{
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        if(!allPagesLoaded){
          await getFilterFilms();
        }
      }
  }

  Future<void> resetAndReload() async{
    currentPage.value = 1;
    totalPages.value = null;
    isFetchingNextPage = false;
    allPagesLoaded = false;
    isErrorConnection.value = false;
    
    filteredKeywordFilms = Rx<FilmSearchByFiltersResponse>(
      FilmSearchByFiltersResponse((b) => b
      ..total = 0
      ..totalPages = 0
      ..items = ListBuilder<FilmSearchByFiltersResponseItems>([])
      ),
    );

    clearListener();
    scrollController.addListener(() async {_updateFilterFilms();});
    if (globalNetworkController.isConnectedToInternet.value) {
      await getFilterFilms();
    }
  }

  void clearListener(){
    scrollController.removeListener(_updateFilterFilms);
  }

  Future<void> getFilterFilms() async{
    if (!globalNetworkController.isConnectedToInternet.value) {
      isLoading.value = false;
      isFetchingNextPage = false;
      return;
    }

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
      FilmSearchByFiltersResponse responseData = await apiService.getFilterFilms(
        keyword, 
        countries,
        genres,
        yearFrom,
        yearTo,
        currentPage.value
      );

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
      isFetchingNextPage = false;
      isLoading.value = false;
    }
  }
}