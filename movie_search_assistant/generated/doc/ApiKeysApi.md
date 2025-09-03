# generated.api.ApiKeysApi

## Load the API package
```dart
import 'package:generated/api.dart';
```

All URIs are relative to *https://kinopoiskapiunofficial.tech*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1ApiKeysApiKeyGet**](ApiKeysApi.md#apiv1apikeysapikeyget) | **GET** /api/v1/api_keys/{apiKey} | получить данные об api key


# **apiV1ApiKeysApiKeyGet**
> ApiKeyResponse apiV1ApiKeysApiKeyGet(apiKey)

получить данные об api key

### Example
```dart
import 'package:generated/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = Generated().getApiKeysApi();
final String apiKey = apiKey_example; // String | api key

try {
    final response = api.apiV1ApiKeysApiKeyGet(apiKey);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ApiKeysApi->apiV1ApiKeysApiKeyGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiKey** | **String**| api key | 

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

