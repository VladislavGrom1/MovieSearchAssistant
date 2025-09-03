# generated.api.KpUsersApi

## Load the API package
```dart
import 'package:generated/api.dart';
```

All URIs are relative to *https://kinopoiskapiunofficial.tech*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1KpUsersIdVotesGet**](KpUsersApi.md#apiv1kpusersidvotesget) | **GET** /api/v1/kp_users/{id}/votes | получить данные об оценках пользователя


# **apiV1KpUsersIdVotesGet**
> KinopoiskUserVoteResponse apiV1KpUsersIdVotesGet(id, page)

получить данные об оценках пользователя

Одна страница может содержать до 20 элементов в items. Доступны не все оценки пользователя, а примерно 1500 последних

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getKpUsersApi();
final int id = 56; // int | id пользователя на сайте кинопоиск
final int page = 56; // int | номер страницы

try {
    final response = api.apiV1KpUsersIdVotesGet(id, page);
    print(response);
} catch on DioException (e) {
    print('Exception when calling KpUsersApi->apiV1KpUsersIdVotesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id пользователя на сайте кинопоиск | 
 **page** | **int**| номер страницы | [optional] [default to 1]

### Return type

[**KinopoiskUserVoteResponse**](KinopoiskUserVoteResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

