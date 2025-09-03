# generated.api.StaffApi

## Load the API package
```dart
import 'package:generated/api.dart';
```

All URIs are relative to *https://kinopoiskapiunofficial.tech*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1StaffGet**](StaffApi.md#apiv1staffget) | **GET** /api/v1/staff | получить данные об актерах, режисерах и т.д. по kinopoisk film id
[**apiV1StaffIdGet**](StaffApi.md#apiv1staffidget) | **GET** /api/v1/staff/{id} | получить данные о конкретном человеке по kinopoisk person id


# **apiV1StaffGet**
> BuiltList<StaffResponse> apiV1StaffGet(filmId)

получить данные об актерах, режисерах и т.д. по kinopoisk film id

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getStaffApi();
final int filmId = 56; // int | kinopoisk film id

try {
    final response = api.apiV1StaffGet(filmId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StaffApi->apiV1StaffGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filmId** | **int**| kinopoisk film id | 

### Return type

[**BuiltList&lt;StaffResponse&gt;**](StaffResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1StaffIdGet**
> PersonResponse apiV1StaffIdGet(id)

получить данные о конкретном человеке по kinopoisk person id

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getStaffApi();
final int id = 56; // int | kinopoisk person id

try {
    final response = api.apiV1StaffIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StaffApi->apiV1StaffIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| kinopoisk person id | 

### Return type

[**PersonResponse**](PersonResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

