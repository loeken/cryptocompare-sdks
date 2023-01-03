# openapi.api.AssetApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assetV1DataByAddress**](AssetApi.md#assetv1databyaddress) | **GET** /asset/v1/data/by/address | 
[**assetV1DataById**](AssetApi.md#assetv1databyid) | **GET** /asset/v1/data/by/id | 
[**assetV1DataBySymbol**](AssetApi.md#assetv1databysymbol) | **GET** /asset/v1/data/by/symbol | 
[**assetV1TopList**](AssetApi.md#assetv1toplist) | **GET** /asset/v1/top/list | 


# **assetV1DataByAddress**
> GENERICRESPONSE assetV1DataByAddress(address, chainSymbol, groups)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AssetApi();
final address = address_example; // String | 
final chainSymbol = chainSymbol_example; // String | 
final groups = groups_example; // String | 

try {
    final result = api_instance.assetV1DataByAddress(address, chainSymbol, groups);
    print(result);
} catch (e) {
    print('Exception when calling AssetApi->assetV1DataByAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**|  | 
 **chainSymbol** | **String**|  | 
 **groups** | **String**|  | [optional] [default to '']

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assetV1DataById**
> GENERICRESPONSE assetV1DataById(assetId, groups)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AssetApi();
final assetId = 56; // int | The asset id you are interested in
final groups = groups_example; // String | 

try {
    final result = api_instance.assetV1DataById(assetId, groups);
    print(result);
} catch (e) {
    print('Exception when calling AssetApi->assetV1DataById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **int**| The asset id you are interested in | 
 **groups** | **String**|  | [optional] [default to '']

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assetV1DataBySymbol**
> GENERICRESPONSE assetV1DataBySymbol(assetSymbol, groups)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AssetApi();
final assetSymbol = assetSymbol_example; // String | The asset symbol you are interested in
final groups = groups_example; // String | 

try {
    final result = api_instance.assetV1DataBySymbol(assetSymbol, groups);
    print(result);
} catch (e) {
    print('Exception when calling AssetApi->assetV1DataBySymbol: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetSymbol** | **String**| The asset symbol you are interested in | 
 **groups** | **String**|  | [optional] [default to '']

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assetV1TopList**
> GENERICRESPONSE assetV1TopList(page, pageSize, assetType, sortBy, sortDirection, groups)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AssetApi();
final page = 56; // int | The page number for the request to get {page_size} coins at the time.
final pageSize = 56; // int | The number of items returned per page
final assetType = assetType_example; // String | The asset class/type
final sortBy = sortBy_example; // String | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
final sortDirection = sortDirection_example; // String | Sort direction ( DESC,ASC )
final groups = groups_example; // String | 

try {
    final result = api_instance.assetV1TopList(page, pageSize, assetType, sortBy, sortDirection, groups);
    print(result);
} catch (e) {
    print('Exception when calling AssetApi->assetV1TopList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page number for the request to get {page_size} coins at the time. | [optional] [default to 1]
 **pageSize** | **int**| The number of items returned per page | [optional] [default to 100]
 **assetType** | **String**| The asset class/type | [optional] [default to '']
 **sortBy** | **String**| Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to 'CREATED_ON']
 **sortDirection** | **String**| Sort direction ( DESC,ASC ) | [optional] [default to 'DESC']
 **groups** | **String**|  | [optional] [default to '']

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

