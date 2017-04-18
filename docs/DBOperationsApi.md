# swagger.api.DBOperationsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://tr02.switchapi.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPost**](DBOperationsApi.md#addPost) | **POST** /Add | Add is used for adding a data object to the list created at Switch DB.
[**listPost**](DBOperationsApi.md#listPost) | **POST** /List | It&#39;s used for listing a data added before.
[**setDelete**](DBOperationsApi.md#setDelete) | **DELETE** /Set | It&#39;s used for deleting a data added before at Switch DB.
[**setPost**](DBOperationsApi.md#setPost) | **POST** /Set | It&#39;s used for updating a data object that is already added to Switch DB.


# **addPost**
> AddResponse addPost(aPIKey, accessToken, list, body)

Add is used for adding a data object to the list created at Switch DB.

You can choose the list that will be added tha data set to with List parameter that will be sent to Header. It's equal to INSERT query at the relational databases model. The data set that will be added to the database is transmited at request body. For versions upper than v1.2.1, if the data sent is an array, all items in the array are added one by one, so they are added as a whole. 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DBOperationsApi();
var aPIKey = aPIKey_example; // String | Your Switch API Key.
var accessToken = accessToken_example; // String | Your Access Token.
var list = list_example; // String | Your data list name.
var body = new String(); // String | Your new value JSON.

try { 
    var result = api_instance.addPost(aPIKey, accessToken, list, body);
    print(result);
} catch (e) {
    print("Exception when calling DBOperationsApi->addPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aPIKey** | **String**| Your Switch API Key. | 
 **accessToken** | **String**| Your Access Token. | 
 **list** | **String**| Your data list name. | 
 **body** | **String**| Your new value JSON. | 

### Return type

[**AddResponse**](AddResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPost**
> listPost(aPIKey, accessToken, list, body)

It's used for listing a data added before.

List parameter sent remarks the list that will be do listing work on at Header. It's equal to SELECT query at relational databases. 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DBOperationsApi();
var aPIKey = aPIKey_example; // String | Your Switch API Key.
var accessToken = accessToken_example; // String | Your Access Token.
var list = list_example; // String | Your data list name.
var body = new Body(); // Body | Your Switch DB Query.

try { 
    api_instance.listPost(aPIKey, accessToken, list, body);
} catch (e) {
    print("Exception when calling DBOperationsApi->listPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aPIKey** | **String**| Your Switch API Key. | 
 **accessToken** | **String**| Your Access Token. | 
 **list** | **String**| Your data list name. | 
 **body** | [**Body**](Body.md)| Your Switch DB Query. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDelete**
> SetResponse setDelete(aPIKey, accessToken, list, listItemId)

It's used for deleting a data added before at Switch DB.

List parameter sent remarks the list that will be deleted data from at Header and ListItemId parameter remarks the ID consisted by Switch DB for the data that will be deleted. It's equal to DELETE query at relational databases. 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DBOperationsApi();
var aPIKey = aPIKey_example; // String | Your Switch API Key.
var accessToken = accessToken_example; // String | Your Access Token.
var list = list_example; // String | Your data list name.
var listItemId = listItemId_example; // String | Your list item id.

try { 
    var result = api_instance.setDelete(aPIKey, accessToken, list, listItemId);
    print(result);
} catch (e) {
    print("Exception when calling DBOperationsApi->setDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aPIKey** | **String**| Your Switch API Key. | 
 **accessToken** | **String**| Your Access Token. | 
 **list** | **String**| Your data list name. | 
 **listItemId** | **String**| Your list item id. | 

### Return type

[**SetResponse**](SetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPost**
> SetResponse setPost(aPIKey, accessToken, list, listItemId, body)

It's used for updating a data object that is already added to Switch DB.

In order to UPDATE a object, Listname and ListItemId parameters should be sent in the Header of the REQUEST as \"List\", \"ListItemId\", respectively, as shown in the example below. It's equal to UPDATE query at relational databases. The data set that will be edited is transmited to the database at request body. 

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DBOperationsApi();
var aPIKey = aPIKey_example; // String | Your Switch API Key.
var accessToken = accessToken_example; // String | Your Access Token.
var list = list_example; // String | Your data list name.
var listItemId = listItemId_example; // String | Your list item id.
var body = new String(); // String | Your new value JSON.

try { 
    var result = api_instance.setPost(aPIKey, accessToken, list, listItemId, body);
    print(result);
} catch (e) {
    print("Exception when calling DBOperationsApi->setPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aPIKey** | **String**| Your Switch API Key. | 
 **accessToken** | **String**| Your Access Token. | 
 **list** | **String**| Your data list name. | 
 **listItemId** | **String**| Your list item id. | 
 **body** | **String**| Your new value JSON. | 

### Return type

[**SetResponse**](SetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

