import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart' hide Response;
import 'package:movie_search_assistant/infrastructure/exceptions/api_exception.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';

class GlobalApiService extends GetxController{

  late FilmsApi filmsApi;

  @override
  void onInit(){
    filmsApi = FilmsApi(_createDio("https://kinopoiskapiunofficial.tech/"), standardSerializers);
    
    super.onInit();
  }

  // TODO: Реализовать перехват всех кодов исключений 
  Dio _createDio(String baseUrl) {
  final dio = Dio(BaseOptions(
    baseUrl: baseUrl,
  ));

  dio.interceptors.add(InterceptorsWrapper(
    onError: (DioException error, handler) async {
      // Пустой или неправильный токен
      if (error.response?.statusCode == 401) {
        
      }
      // Превышен лимит запросов в сутки
      if (error.response?.statusCode == 402) {

      }
      handler.reject(error);
    },
  ));
  return dio;
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
      throw ApiException(e.message.toString(), e.response?.statusCode);
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
      throw ApiException(e.message.toString(), e.response?.statusCode);
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
      throw ApiException(e.message.toString(), e.response?.statusCode);
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
      throw ApiException(e.message.toString(), e.response?.statusCode);
    }
  }

}