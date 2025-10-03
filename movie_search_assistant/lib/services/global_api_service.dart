import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart' hide Response;

class GlobalApiService extends GetxController{

  late FilmsApi filmsApi;

  @override
  void onInit(){
    filmsApi = FilmsApi(
      Dio(BaseOptions(
        baseUrl: "https://kinopoiskapiunofficial.tech/"
      )),
      standardSerializers
    );
    super.onInit();
  }

  Future<FilmCollectionResponse> getCollectionFilms(String collectionName, int page) async{
    try{
      Response<FilmCollectionResponse> responseData = await filmsApi.apiV22FilmsCollectionsGet(
        headers: {"X-API-KEY": "aa5aaded-6a89-4485-b6ce-a3b32ee2aa89"},
        type: collectionName,
        page: page
      );
      return responseData.data!;
    } on DioException catch(e){
      log(e.message.toString());
      rethrow;
    }
  }

  // TODO: Реализовать передачу фильтров
  Future<FilmSearchByFiltersResponse> getKeywordFilms(String keyword, int page) async{
    try{
      Response<FilmSearchByFiltersResponse?> responseData = await filmsApi.apiV22FilmsGet(
        keyword: keyword,
        page: page,
        headers: {"X-API-KEY": "aa5aaded-6a89-4485-b6ce-a3b32ee2aa89"}
      );
      return responseData.data!;
    } on DioException catch(e){
      log(e.message.toString());
      rethrow;
    }
  }

  Future<FilmSearchByFiltersResponse> getFilterFilms(String? keyword, BuiltList<int>? countries, BuiltList<int>? genres, int? yearFrom, int? yearTo, int page) async{
    try{
      Response<FilmSearchByFiltersResponse?> responseData = await filmsApi.apiV22FilmsGet(
        keyword: keyword,
        countries: countries,
        genres: genres,
        yearFrom: yearFrom,
        yearTo: yearTo,
        page: page,
        headers: {"X-API-KEY": "aa5aaded-6a89-4485-b6ce-a3b32ee2aa89"}
      );
      return responseData.data!;
    } on DioException catch(e){
      log(e.message.toString());
      rethrow;
    }
  }

  Future<Film> getIdFilm(int idFilm) async{
    try{
      Response<Film> responseData = await filmsApi.apiV22FilmsIdGet(
        id: idFilm,
        headers: {"X-API-KEY": "aa5aaded-6a89-4485-b6ce-a3b32ee2aa89"}
      );
      return responseData.data!;
    } on DioException catch(e){
      log(e.message.toString());
      rethrow;
    }
  }

  Future<ImageResponse> getImagesIdFilm(int idFilm) async{
    try{
      Response<ImageResponse> responseData = await filmsApi.apiV22FilmsIdImagesGet(
        id: idFilm,
        type: "STILL",
        page: 1,
        headers: {"X-API-KEY": "aa5aaded-6a89-4485-b6ce-a3b32ee2aa89"}
      );
      return responseData.data!;
    } on DioException catch(e){
      log(e.message.toString());
      rethrow;
    }
  }

}