# generated.api.PersonsApi

## Load the API package
```dart
import 'package:generated/api.dart';
```

All URIs are relative to *https://kinopoiskapiunofficial.tech*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1PersonsGet**](PersonsApi.md#apiv1personsget) | **GET** /api/v1/persons | поиск актеров, режиссеров и т.д. по имени


# **apiV1PersonsGet**
> PersonByNameResponse apiV1PersonsGet(name, page)

поиск актеров, режиссеров и т.д. по имени

Одна страница может содержать до 50 элементов в items.

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getPersonsApi();
final String name = name_example; // String | имя человека
final int page = 56; // int | номер страницы

try {
    final response = api.apiV1PersonsGet(name, page);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PersonsApi->apiV1PersonsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| имя человека | 
 **page** | **int**| номер страницы | [optional] [default to 1]

### Return type

[**PersonByNameResponse**](PersonByNameResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

