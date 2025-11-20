import 'dart:developer';
import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:generated/generated.dart';
import 'package:get/get.dart' hide Response;
import 'package:movie_search_assistant/infrastructure/exceptions/api_exception.dart';
import 'package:movie_search_assistant/infrastructure/exceptions/storage_exception.dart';
import 'package:movie_search_assistant/infrastructure/navigation/routes.dart';
import 'package:movie_search_assistant/infrastructure/storage/user_storage.dart';

class GlobalApiService extends GetxController{

  final userStorage = Get.find<UserStorage>();

  late FilmsApi filmsApi;
  late ApiKeysApi apiKeysApi;

  @override
  void onInit(){
    filmsApi = FilmsApi(_createDio("https://kinopoiskapiunofficial.tech/"), standardSerializers);
    apiKeysApi = ApiKeysApi(_createDio("https://kinopoiskapiunofficial.tech/"), standardSerializers);
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

  Future<bool> validateApiKey(String apiKey) async {
    try {
      final dio = Dio(BaseOptions(
        baseUrl: "https://kinopoiskapiunofficial.tech/",
      ));

      final response = await dio.get(
        '/api/v1/api_keys/$apiKey',
        options: Options(headers: {
          "X-API-KEY": apiKey,
        }),
      );
      return response.statusCode == 200;
    } on DioException catch (e) {
      if (e.response?.statusCode == 400 || 
          e.response?.statusCode == 401 || 
          e.response?.statusCode == 403) {
        return false;
      }
      throw ApiException(e.message.toString(), e.response?.statusCode);
    } catch (e) {
      log('Ошибка при проверке ApiKey: $e');
      rethrow;
    }
  }

  Future<ApiKeyResponse?> getApiKeyInfo() async {
    try{
      String? apikey = await getUserApiKey();
      Response<ApiKeyResponse> responseData = await apiKeysApi.apiV1ApiKeysApiKeyGet(apiKey: apikey ?? "");
      return responseData.data;
    } on DioException catch(e){
      throw ApiException(e.message.toString(), e.response?.statusCode);
    } catch(e){
      rethrow;
    }
  }

  Future<String?> getUserApiKey() async {
    try{
      String? apiKey = await userStorage.getUserApiKey();
      return apiKey;
    } on StorageException catch(e){
      log(e.toString());
      rethrow;  
    } catch(e){
      log(e.toString());
      rethrow;
    }
  }

  Future<FilmCollectionResponse> getCollectionFilms(String collectionName, int page) async{
    try{
      String? apikey = await getUserApiKey();
      Response<FilmCollectionResponse> responseData = await filmsApi.apiV22FilmsCollectionsGet(
        headers: {"X-API-KEY": apikey},
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
      String? apikey = await getUserApiKey();
      Response<FilmSearchByFiltersResponse?> responseData = await filmsApi.apiV22FilmsGet(
        keyword: keyword,
        countries: countries,
        genres: genres,
        yearFrom: yearFrom,
        yearTo: yearTo,
        page: page,
        headers: {"X-API-KEY": apikey}
      );
      return responseData.data!;
    } on DioException catch(e){
      throw ApiException(e.message.toString(), e.response?.statusCode);
    }
  }

  Future<Film> getIdFilm(int idFilm) async{
    try{
      String? apikey = await getUserApiKey();
      Response<Film> responseData = await filmsApi.apiV22FilmsIdGet(
        id: idFilm,
        headers: {"X-API-KEY": apikey}
      );
      return responseData.data!;
    } on DioException catch(e){
      throw ApiException(e.message.toString(), e.response?.statusCode);
    }
  }

  Future<Uint8List?> downloadImageAsBytes(String imageUrl) async {
  try {
    Response<List<int>> response = await Dio().get<List<int>>(
      imageUrl,
      options: Options(
        responseType: ResponseType.bytes,
        followRedirects: true,
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
    if (response.data != null) {
      return Uint8List.fromList(response.data!);
    }
    return null;
  } on DioException catch(e){
    throw ApiException(e.message.toString(), e.response?.statusCode);
  }
}

  Future<ImageResponse?> getImagesIdFilm(int idFilm) async{
    try{
      String? apikey = await getUserApiKey();
      Response<ImageResponse?> responseData = await filmsApi.apiV22FilmsIdImagesGet(
        id: idFilm,
        type: "STILL",
        page: 1,
        headers: {"X-API-KEY": apikey}
      );
      if (responseData.data != null) {
        return responseData.data;
      }
      return null;
    } on DioException catch(e){
      throw ApiException(e.message.toString(), e.response?.statusCode);
    }
  }

}