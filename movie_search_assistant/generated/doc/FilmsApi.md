# generated.api.FilmsApi

## Load the API package
```dart
import 'package:generated/api.dart';
```

All URIs are relative to *https://kinopoiskapiunofficial.tech*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV21FilmsIdSequelsAndPrequelsGet**](FilmsApi.md#apiv21filmsidsequelsandprequelsget) | **GET** /api/v2.1/films/{id}/sequels_and_prequels | получить сиквелы и приквелы для фильма по kinopoisk film id
[**apiV21FilmsSearchByKeywordGet**](FilmsApi.md#apiv21filmssearchbykeywordget) | **GET** /api/v2.1/films/search-by-keyword | получить список фильмов по ключевым словам
[**apiV22FilmsCollectionsGet**](FilmsApi.md#apiv22filmscollectionsget) | **GET** /api/v2.2/films/collections | получить список фильмов из различных топов или коллекций. Например https://www.kinopoisk.ru/top/lists/58/
[**apiV22FilmsFiltersGet**](FilmsApi.md#apiv22filmsfiltersget) | **GET** /api/v2.2/films/filters | получить id стран и жанров для использования в /api/v2.2/films
[**apiV22FilmsGet**](FilmsApi.md#apiv22filmsget) | **GET** /api/v2.2/films | получить список фильмов по различным фильтрам
[**apiV22FilmsIdAwardsGet**](FilmsApi.md#apiv22filmsidawardsget) | **GET** /api/v2.2/films/{id}/awards | получить данные о наградах фильма по kinopoisk film id
[**apiV22FilmsIdBoxOfficeGet**](FilmsApi.md#apiv22filmsidboxofficeget) | **GET** /api/v2.2/films/{id}/box_office | получить данные о бюджете и сборах фильма по kinopoisk film id
[**apiV22FilmsIdDistributionsGet**](FilmsApi.md#apiv22filmsiddistributionsget) | **GET** /api/v2.2/films/{id}/distributions | получить данные о прокате фильма по kinopoisk film id
[**apiV22FilmsIdExternalSourcesGet**](FilmsApi.md#apiv22filmsidexternalsourcesget) | **GET** /api/v2.2/films/{id}/external_sources | получить список сайтов, где можно посмотреть фильм по kinopoisk film id
[**apiV22FilmsIdFactsGet**](FilmsApi.md#apiv22filmsidfactsget) | **GET** /api/v2.2/films/{id}/facts | получить данные о фактах и ошибках в фильме по kinopoisk film id
[**apiV22FilmsIdGet**](FilmsApi.md#apiv22filmsidget) | **GET** /api/v2.2/films/{id} | получить данные о фильме по kinopoisk id
[**apiV22FilmsIdImagesGet**](FilmsApi.md#apiv22filmsidimagesget) | **GET** /api/v2.2/films/{id}/images | получить изображения(кадры, постеры, фан-арты, обои и т.д.) связанные с фильмом по kinopoisk film id
[**apiV22FilmsIdReviewsGet**](FilmsApi.md#apiv22filmsidreviewsget) | **GET** /api/v2.2/films/{id}/reviews | получить список рецензии зрителей по kinopoisk film id
[**apiV22FilmsIdSeasonsGet**](FilmsApi.md#apiv22filmsidseasonsget) | **GET** /api/v2.2/films/{id}/seasons | получить данные о сезонах для сериала по kinopoisk film id
[**apiV22FilmsIdSimilarsGet**](FilmsApi.md#apiv22filmsidsimilarsget) | **GET** /api/v2.2/films/{id}/similars | получить список похожих фильмов по kinopoisk film id
[**apiV22FilmsIdVideosGet**](FilmsApi.md#apiv22filmsidvideosget) | **GET** /api/v2.2/films/{id}/videos | получить трейлеры,тизеры,видео для фильма по kinopoisk film id
[**apiV22FilmsPremieresGet**](FilmsApi.md#apiv22filmspremieresget) | **GET** /api/v2.2/films/premieres | получить список кинопремьер


# **apiV21FilmsIdSequelsAndPrequelsGet**
> BuiltList<FilmSequelsAndPrequelsResponse> apiV21FilmsIdSequelsAndPrequelsGet(id)

получить сиквелы и приквелы для фильма по kinopoisk film id

tbd

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final int id = 56; // int | kinopoisk film id

try {
    final response = api.apiV21FilmsIdSequelsAndPrequelsGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV21FilmsIdSequelsAndPrequelsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| kinopoisk film id | 

### Return type

[**BuiltList&lt;FilmSequelsAndPrequelsResponse&gt;**](FilmSequelsAndPrequelsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV21FilmsSearchByKeywordGet**
> FilmSearchResponse apiV21FilmsSearchByKeywordGet(keyword, page)

получить список фильмов по ключевым словам

Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов.

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final String keyword = keyword_example; // String | ключивые слова для поиска
final int page = 56; // int | номер страницы

try {
    final response = api.apiV21FilmsSearchByKeywordGet(keyword, page);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV21FilmsSearchByKeywordGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword** | **String**| ключивые слова для поиска | 
 **page** | **int**| номер страницы | [optional] [default to 1]

### Return type

[**FilmSearchResponse**](FilmSearchResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsCollectionsGet**
> FilmCollectionResponse apiV22FilmsCollectionsGet(type, page)

получить список фильмов из различных топов или коллекций. Например https://www.kinopoisk.ru/top/lists/58/

Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов.

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final String type = type_example; // String | тип топа или коллекции
final int page = 56; // int | номер страницы

try {
    final response = api.apiV22FilmsCollectionsGet(type, page);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsCollectionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| тип топа или коллекции | [optional] [default to 'TOP_POPULAR_ALL']
 **page** | **int**| номер страницы | [optional] [default to 1]

### Return type

[**FilmCollectionResponse**](FilmCollectionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsFiltersGet**
> FiltersResponse apiV22FilmsFiltersGet()

получить id стран и жанров для использования в /api/v2.2/films

Возвращает список id стран и жанров, которые могут быть использованы в /api/v2.2/films

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();

try {
    final response = api.apiV22FilmsFiltersGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsFiltersGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FiltersResponse**](FiltersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsGet**
> FilmSearchByFiltersResponse apiV22FilmsGet(countries, genres, order, type, ratingFrom, ratingTo, yearFrom, yearTo, imdbId, keyword, page)

получить список фильмов по различным фильтрам

Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов. Данный эндпоинт не возращает более 400 фильмов. <i>Используй /api/v2.2/films/filters чтобы получить id стран и жанров.</i>

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final BuiltList<int> countries = ; // BuiltList<int> | список id стран разделенные запятой. Например <i>countries=1,2,3</i>. На данный момент можно указать не более одной страны.
final BuiltList<int> genres = ; // BuiltList<int> | список id жанров разделенные запятой. Например <i>genres=1,2,3</i>. На данный момент можно указать не более одного жанра.
final String order = order_example; // String | сортировка
final String type = type_example; // String | тип фильма
final num ratingFrom = 8.14; // num | минимальный рейтинг
final num ratingTo = 8.14; // num | максимальный рейтинг
final int yearFrom = 56; // int | минимальный год
final int yearTo = 56; // int | максимальный год
final String imdbId = imdbId_example; // String | imdb id
final String keyword = keyword_example; // String | ключевое слово, которое встречается в названии фильма
final int page = 56; // int | номер страницы

try {
    final response = api.apiV22FilmsGet(countries, genres, order, type, ratingFrom, ratingTo, yearFrom, yearTo, imdbId, keyword, page);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countries** | [**BuiltList&lt;int&gt;**](int.md)| список id стран разделенные запятой. Например <i>countries=1,2,3</i>. На данный момент можно указать не более одной страны. | [optional] 
 **genres** | [**BuiltList&lt;int&gt;**](int.md)| список id жанров разделенные запятой. Например <i>genres=1,2,3</i>. На данный момент можно указать не более одного жанра. | [optional] 
 **order** | **String**| сортировка | [optional] [default to 'RATING']
 **type** | **String**| тип фильма | [optional] [default to 'ALL']
 **ratingFrom** | **num**| минимальный рейтинг | [optional] [default to 0]
 **ratingTo** | **num**| максимальный рейтинг | [optional] [default to 10]
 **yearFrom** | **int**| минимальный год | [optional] [default to 1000]
 **yearTo** | **int**| максимальный год | [optional] [default to 3000]
 **imdbId** | **String**| imdb id | [optional] 
 **keyword** | **String**| ключевое слово, которое встречается в названии фильма | [optional] 
 **page** | **int**| номер страницы | [optional] [default to 1]

### Return type

[**FilmSearchByFiltersResponse**](FilmSearchByFiltersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdAwardsGet**
> AwardResponse apiV22FilmsIdAwardsGet(id)

получить данные о наградах фильма по kinopoisk film id

Данный эндпоинт возвращает данные о наградах и премиях фильма.

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final int id = 56; // int | kinopoisk film id

try {
    final response = api.apiV22FilmsIdAwardsGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsIdAwardsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| kinopoisk film id | 

### Return type

[**AwardResponse**](AwardResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdBoxOfficeGet**
> BoxOfficeResponse apiV22FilmsIdBoxOfficeGet(id)

получить данные о бюджете и сборах фильма по kinopoisk film id

Данный эндпоинт возвращает данные о бюджете и сборах.

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final int id = 56; // int | kinopoisk film id

try {
    final response = api.apiV22FilmsIdBoxOfficeGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsIdBoxOfficeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| kinopoisk film id | 

### Return type

[**BoxOfficeResponse**](BoxOfficeResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdDistributionsGet**
> DistributionResponse apiV22FilmsIdDistributionsGet(id)

получить данные о прокате фильма по kinopoisk film id

Данный эндпоинт возвращает данные о прокате в разных странах.

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final int id = 56; // int | kinopoisk film id

try {
    final response = api.apiV22FilmsIdDistributionsGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsIdDistributionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| kinopoisk film id | 

### Return type

[**DistributionResponse**](DistributionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdExternalSourcesGet**
> ExternalSourceResponse apiV22FilmsIdExternalSourcesGet(id, page)

получить список сайтов, где можно посмотреть фильм по kinopoisk film id

Возвращает список сайтов с пагинацией. Каждая страница содержит не более чем 20 рецензий.

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final int id = 56; // int | kinopoisk film id
final int page = 56; // int | номер страницы

try {
    final response = api.apiV22FilmsIdExternalSourcesGet(id, page);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsIdExternalSourcesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| kinopoisk film id | 
 **page** | **int**| номер страницы | [optional] [default to 1]

### Return type

[**ExternalSourceResponse**](ExternalSourceResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdFactsGet**
> FactResponse apiV22FilmsIdFactsGet(id)

получить данные о фактах и ошибках в фильме по kinopoisk film id

Данный эндпоинт возвращает список фактов и ошибок в фильме. <br> type - <b>FACT</b>, обозначает интересный факт о фильме. <br> type - <b>BLOOPER</b>, обозначает ошибку в фильме.

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final int id = 56; // int | kinopoisk film id

try {
    final response = api.apiV22FilmsIdFactsGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsIdFactsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| kinopoisk film id | 

### Return type

[**FactResponse**](FactResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdGet**
> Film apiV22FilmsIdGet(id)

получить данные о фильме по kinopoisk id

Данный эндпоинт возвращает базовые данные о фильме. Поле <b>lastSync</b> показывает дату последнего обновления данных.

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final int id = 56; // int | kinopoisk film id

try {
    final response = api.apiV22FilmsIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| kinopoisk film id | 

### Return type

[**Film**](Film.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdImagesGet**
> ImageResponse apiV22FilmsIdImagesGet(id, type, page)

получить изображения(кадры, постеры, фан-арты, обои и т.д.) связанные с фильмом по kinopoisk film id

Данный эндпоинт возвращает изображения связанные с фильмом с пагинацией. Каждая страница содержит <b>не более чем 20 фильмов</b>.</br> Доступные изображения:</br> <ul> <li>STILL - кадры</li> <li>SHOOTING - изображения со съемок</li> <li>POSTER - постеры</li> <li>FAN_ART - фан-арты</li> <li>PROMO - промо</li> <li>CONCEPT - концепт-арты</li> <li>WALLPAPER - обои</li> <li>COVER - обложки</li> <li>SCREENSHOT - скриншоты</li> </ul> 

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final int id = 56; // int | kinopoisk film id
final String type = type_example; // String | тип изображения
final int page = 56; // int | номер страницы

try {
    final response = api.apiV22FilmsIdImagesGet(id, type, page);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsIdImagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| kinopoisk film id | 
 **type** | **String**| тип изображения | [optional] [default to 'STILL']
 **page** | **int**| номер страницы | [optional] [default to 1]

### Return type

[**ImageResponse**](ImageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdReviewsGet**
> ReviewResponse apiV22FilmsIdReviewsGet(id, page, order)

получить список рецензии зрителей по kinopoisk film id

Возвращает список рецензии зрителей с пагинацией. Каждая страница содержит не более чем 20 рецензий.

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final int id = 56; // int | kinopoisk film id
final int page = 56; // int | номер страницы
final String order = order_example; // String | тип сортировки

try {
    final response = api.apiV22FilmsIdReviewsGet(id, page, order);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsIdReviewsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| kinopoisk film id | 
 **page** | **int**| номер страницы | [optional] [default to 1]
 **order** | **String**| тип сортировки | [optional] [default to 'DATE_DESC']

### Return type

[**ReviewResponse**](ReviewResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdSeasonsGet**
> SeasonResponse apiV22FilmsIdSeasonsGet(id)

получить данные о сезонах для сериала по kinopoisk film id

Данный эндпоинт возвращает данные о сезонах для сериала.

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final int id = 56; // int | kinopoisk film id

try {
    final response = api.apiV22FilmsIdSeasonsGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsIdSeasonsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| kinopoisk film id | 

### Return type

[**SeasonResponse**](SeasonResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdSimilarsGet**
> RelatedFilmResponse apiV22FilmsIdSimilarsGet(id)

получить список похожих фильмов по kinopoisk film id

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final int id = 56; // int | kinopoisk film id

try {
    final response = api.apiV22FilmsIdSimilarsGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsIdSimilarsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| kinopoisk film id | 

### Return type

[**RelatedFilmResponse**](RelatedFilmResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsIdVideosGet**
> VideoResponse apiV22FilmsIdVideosGet(id)

получить трейлеры,тизеры,видео для фильма по kinopoisk film id

Данный эндпоинт возвращает трейлеры,тизеры,видео для фильма по kinopoisk film id. В данный момент доступно три site:  <br/> <ul><li>YOUTUBE - в этом случае <b>url</b> это просто ссылка на youtube видео.</li><li>YANDEX_DISK - в этом случае <b>url</b> это ссылка на yandex disk.</li><li>KINOPOISK_WIDGET - в этом случае <b>url</b> это ссылка на кинопоиск виджет. Например https://widgets.kinopoisk.ru/discovery/trailer/123573?onlyPlayer=1&autoplay=1&cover=1. Если вы хотите вставить этот виджет на вашу страницу, вы можете сделать следующее:  <br/><br/>&lt;script src=&quot;https://unpkg.com/@ungap/custom-elements-builtin&quot;&gt;&lt;/script&gt;<br/>&lt;script type=&quot;module&quot; src=&quot;https://unpkg.com/x-frame-bypass&quot;&gt;&lt;/script&gt;<br/>&lt;iframe is=&quot;x-frame-bypass&quot; src=&quot;https://widgets.kinopoisk.ru/discovery/trailer/167560?onlyPlayer=1&amp;autoplay=1&amp;cover=1&quot; width=&quot;500&quot; height=&quot;500&quot;&gt;&lt;/iframe&gt;</li></ul>

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final int id = 56; // int | kinopoisk film id

try {
    final response = api.apiV22FilmsIdVideosGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsIdVideosGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| kinopoisk film id | 

### Return type

[**VideoResponse**](VideoResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV22FilmsPremieresGet**
> PremiereResponse apiV22FilmsPremieresGet(year, month)

получить список кинопремьер

Данный эндпоинт возвращает список кинопремьер. Например https://www.kinopoisk.ru/premiere/

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getFilmsApi();
final int year = 56; // int | год релиза
final String month = month_example; // String | месяц релиза

try {
    final response = api.apiV22FilmsPremieresGet(year, month);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilmsApi->apiV22FilmsPremieresGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **int**| год релиза | 
 **month** | **String**| месяц релиза | 

### Return type

[**PremiereResponse**](PremiereResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

