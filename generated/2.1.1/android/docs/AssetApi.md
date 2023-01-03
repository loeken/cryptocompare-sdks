# AssetApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assetV1DataByAddress**](AssetApi.md#assetV1DataByAddress) | **GET** /asset/v1/data/by/address | 
[**assetV1DataById**](AssetApi.md#assetV1DataById) | **GET** /asset/v1/data/by/id | 
[**assetV1DataBySymbol**](AssetApi.md#assetV1DataBySymbol) | **GET** /asset/v1/data/by/symbol | 
[**assetV1TopList**](AssetApi.md#assetV1TopList) | **GET** /asset/v1/top/list | 



## assetV1DataByAddress

> GENERICRESPONSE assetV1DataByAddress(address, chainSymbol, groups)



### Example

```java
// Import classes:
//import org.openapitools.client.api.AssetApi;

AssetApi apiInstance = new AssetApi();
String address = null; // String | 
String chainSymbol = null; // String | 
String groups = ; // String | 
try {
    GENERICRESPONSE result = apiInstance.assetV1DataByAddress(address, chainSymbol, groups);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AssetApi#assetV1DataByAddress");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**|  | [default to null]
 **chainSymbol** | **String**|  | [default to null]
 **groups** | **String**|  | [optional] [default to ]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## assetV1DataById

> GENERICRESPONSE assetV1DataById(assetId, groups)



### Example

```java
// Import classes:
//import org.openapitools.client.api.AssetApi;

AssetApi apiInstance = new AssetApi();
Integer assetId = null; // Integer | The asset id you are interested in
String groups = ; // String | 
try {
    GENERICRESPONSE result = apiInstance.assetV1DataById(assetId, groups);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AssetApi#assetV1DataById");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **Integer**| The asset id you are interested in | [default to null]
 **groups** | **String**|  | [optional] [default to ]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## assetV1DataBySymbol

> GENERICRESPONSE assetV1DataBySymbol(assetSymbol, groups)



### Example

```java
// Import classes:
//import org.openapitools.client.api.AssetApi;

AssetApi apiInstance = new AssetApi();
String assetSymbol = null; // String | The asset symbol you are interested in
String groups = ; // String | 
try {
    GENERICRESPONSE result = apiInstance.assetV1DataBySymbol(assetSymbol, groups);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AssetApi#assetV1DataBySymbol");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetSymbol** | **String**| The asset symbol you are interested in | [default to null]
 **groups** | **String**|  | [optional] [default to ]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## assetV1TopList

> GENERICRESPONSE assetV1TopList(page, pageSize, assetType, sortBy, sortDirection, groups)



### Example

```java
// Import classes:
//import org.openapitools.client.api.AssetApi;

AssetApi apiInstance = new AssetApi();
Integer page = 1; // Integer | The page number for the request to get {page_size} coins at the time.
Integer pageSize = 100; // Integer | The number of items returned per page
String assetType = ; // String | The asset class/type
String sortBy = CREATED_ON; // String | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
String sortDirection = DESC; // String | Sort direction ( DESC,ASC )
String groups = ; // String | 
try {
    GENERICRESPONSE result = apiInstance.assetV1TopList(page, pageSize, assetType, sortBy, sortDirection, groups);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AssetApi#assetV1TopList");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| The page number for the request to get {page_size} coins at the time. | [optional] [default to 1]
 **pageSize** | **Integer**| The number of items returned per page | [optional] [default to 100]
 **assetType** | **String**| The asset class/type | [optional] [default to ]
 **sortBy** | **String**| Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to CREATED_ON] [enum: CREATED_ON, UPDATED_ON, SYMBOL]
 **sortDirection** | **String**| Sort direction ( DESC,ASC ) | [optional] [default to DESC] [enum: DESC, ASC]
 **groups** | **String**|  | [optional] [default to ]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

