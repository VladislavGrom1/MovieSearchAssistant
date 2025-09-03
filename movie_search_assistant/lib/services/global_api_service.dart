import 'dart:developer';

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

  // TODO: Реализовать передачу фильтров
  Future<FilmSearchByFiltersResponse> getFiltersFilms(String keyword) async{
    try{
      Response<FilmSearchByFiltersResponse?> responseData = await filmsApi.apiV22FilmsGet(
        keyword: keyword,
        headers: {"X-API-KEY": "aa5aaded-6a89-4485-b6ce-a3b32ee2aa89"}
      );
      return responseData.data!;
    } on DioException catch(e){
      log(e.message.toString());
      rethrow;
    }
  }

  // TODO: Реализовать параметры Год и Месяц
  Future<PremiereResponse> getPremiereFilms() async {
    try{
      Response<PremiereResponse>? responseData = await filmsApi.apiV22FilmsPremieresGet(
        year: 2010, 
        month: "APRIL",
        headers: {"X-API-KEY": "aa5aaded-6a89-4485-b6ce-a3b32ee2aa89"});
      return responseData.data!;
    } on DioException catch(e){
      log(e.message.toString());
      rethrow;
    }
  }

}