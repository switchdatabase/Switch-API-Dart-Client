# swagger.api.AuthorizationApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://tr02.switchapi.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tokenGet**](AuthorizationApi.md#tokenGet) | **GET** /Token | Generate Access Token


# **tokenGet**
> String tokenGet(aPIKey, signature, expire)

Generate Access Token

For generating Access Token, you need API Key and API Secret parameters that are provided from the developer portal. At the request, API Key that will be sent by using header is generated as portal API Key and Signature parameter is generated as md5(APISecret + ExpireTimestamp) format. At Expire parameter, token's expire date and time information must be proper to ISO 8601 standarts and Unix Time format with msec information. 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthorizationApi();
var aPIKey = aPIKey_example; // String | Your Switch API Key.
var signature = signature_example; // String | Signature parameter is generated as md5(APISecret + ExpireTimestamp) format.
var expire = 789; // int | Expire parameter, token's expire date and time information must be proper to ISO 8601 standarts and Unix Time format with msec information.

try { 
    var result = api_instance.tokenGet(aPIKey, signature, expire);
    print(result);
} catch (e) {
    print("Exception when calling AuthorizationApi->tokenGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aPIKey** | **String**| Your Switch API Key. | 
 **signature** | **String**| Signature parameter is generated as md5(APISecret + ExpireTimestamp) format. | 
 **expire** | **int**| Expire parameter, token&#39;s expire date and time information must be proper to ISO 8601 standarts and Unix Time format with msec information. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

