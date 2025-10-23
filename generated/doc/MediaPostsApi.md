# generated.api.MediaPostsApi

## Load the API package
```dart
import 'package:generated/api.dart';
```

All URIs are relative to *https://kinopoiskapiunofficial.tech*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1MediaPostsGet**](MediaPostsApi.md#apiv1mediapostsget) | **GET** /api/v1/media_posts | получить медиа новости с сайта кинопоиск


# **apiV1MediaPostsGet**
> MediaPostsResponse apiV1MediaPostsGet(page)

получить медиа новости с сайта кинопоиск

Одна страница может содержать до 20 элементов в items.

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getMediaPostsApi();
final int page = 56; // int | номер страницы

try {
    final response = api.apiV1MediaPostsGet(page);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MediaPostsApi->apiV1MediaPostsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| номер страницы | [optional] [default to 1]

### Return type

[**MediaPostsResponse**](MediaPostsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

