import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart';

import '../services/global_api_service.dart';

class SearchCategoryController extends GetxController{
  SearchCategoryController({required this.collectionName});

  String collectionName;

  GlobalApiService apiService = Get.find<GlobalApiService>();

  ScrollController scrollController = ScrollController();

  var currentPage = 1.obs;
  var totalPages = (null as int?).obs;
  bool isFetchingNextPage = false;
  bool allPagesLoaded = false;
  var isLoading = false.obs; 

  var collectionFilms = Rx<FilmCollectionResponse>(
  FilmCollectionResponse((b) => b
    ..total = 0
    ..totalPages = 0
    ..items = ListBuilder<FilmCollectionResponseItems>([])
    ),
  );

  @override
  void onInit() async{
    scrollController.addListener(() async {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        if(!allPagesLoaded){
          await getCollectionFilms(collectionName);
        }
      }
    });
    await getCollectionFilms(collectionName);
    super.onInit();
  }


  Future<void> getCollectionFilms(String collectionName) async {

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

    } catch(e){
      log(e.toString());
      rethrow;
    } finally{
      isFetchingNextPage = false;
      isLoading.value = false;
    }
  }

}