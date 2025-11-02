import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';
import 'package:movie_search_assistant/infrastructure/exceptions/api_exception.dart';

import '../services/global_api_service.dart';
import 'global_network_controller.dart';

class SearchCategoryController extends GetxController{
  SearchCategoryController({required this.collectionName});

  String collectionName;

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

  var collectionFilms = Rx<FilmCollectionResponse>(
  FilmCollectionResponse((b) => b
    ..total = 0
    ..totalPages = 0
    ..items = ListBuilder<FilmCollectionResponseItems>([])
    ),
  );

  @override
  Future<void> onInit() async{
    scrollController.addListener(() async {_updateCategoryFilms();});

    ever(globalNetworkController.isConnectedToInternet, (hasInternet) async {
      if (hasInternet && 
          collectionFilms.value.items.isEmpty && 
          !isLoading.value && 
          !isErrorConnection.value) {
        await resetAndReload();
      }
    });

    if (globalNetworkController.isConnectedToInternet.value) {
      await getCollectionFilms(collectionName);
    } else {
      isLoading.value = false;
    }

    super.onInit();
  }

  Future<void> _updateCategoryFilms() async{
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        if(!allPagesLoaded){
          await getCollectionFilms(collectionName);
        }
      }
  }

  Future<void> resetAndReload() async{
    currentPage.value = 1;
    totalPages.value = null;
    isFetchingNextPage = false;
    allPagesLoaded = false;
    isErrorConnection.value = false;
    
    collectionFilms = Rx<FilmCollectionResponse>(
      FilmCollectionResponse((b) => b
        ..total = 0
        ..totalPages = 0
        ..items = ListBuilder<FilmCollectionResponseItems>([])
        ),
    );

    clearListener();
    scrollController.addListener(() async {_updateCategoryFilms();});
    if (globalNetworkController.isConnectedToInternet.value) {
      await getCollectionFilms(collectionName);
    }
  }

  void clearListener(){
    scrollController.removeListener(_updateCategoryFilms);
  }


  Future<void> getCollectionFilms(String collectionName) async {
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
      FilmCollectionResponse responseData = await apiService.getCollectionFilms(collectionName, currentPage.value);
        
        final updated = collectionFilms.value.rebuild((b) {
          if (currentPage.value == 1) {
            b.items.replace(responseData.items);
          } else {
            b.items.addAll(responseData.items);
          }
          b.total = responseData.total;
          b.totalPages = responseData.totalPages;
        });

        collectionFilms.value = updated;
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