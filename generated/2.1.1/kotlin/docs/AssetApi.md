# AssetApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assetV1DataByAddress**](AssetApi.md#assetV1DataByAddress) | **GET** /asset/v1/data/by/address | 
[**assetV1DataById**](AssetApi.md#assetV1DataById) | **GET** /asset/v1/data/by/id | 
[**assetV1DataBySymbol**](AssetApi.md#assetV1DataBySymbol) | **GET** /asset/v1/data/by/symbol | 
[**assetV1TopList**](AssetApi.md#assetV1TopList) | **GET** /asset/v1/top/list | 


<a name="assetV1DataByAddress"></a>
# **assetV1DataByAddress**
> GENERICRESPONSE assetV1DataByAddress(address, chainSymbol, groups)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AssetApi()
val address : kotlin.String = address_example // kotlin.String | 
val chainSymbol : kotlin.String = chainSymbol_example // kotlin.String | 
val groups : kotlin.String = groups_example // kotlin.String | 
try {
    val result : GENERICRESPONSE = apiInstance.assetV1DataByAddress(address, chainSymbol, groups)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AssetApi#assetV1DataByAddress")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AssetApi#assetV1DataByAddress")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **kotlin.String**|  |
 **chainSymbol** | **kotlin.String**|  |
 **groups** | **kotlin.String**|  | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="assetV1DataById"></a>
# **assetV1DataById**
> GENERICRESPONSE assetV1DataById(assetId, groups)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AssetApi()
val assetId : kotlin.Int = 56 // kotlin.Int | The asset id you are interested in
val groups : kotlin.String = groups_example // kotlin.String | 
try {
    val result : GENERICRESPONSE = apiInstance.assetV1DataById(assetId, groups)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AssetApi#assetV1DataById")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AssetApi#assetV1DataById")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **kotlin.Int**| The asset id you are interested in |
 **groups** | **kotlin.String**|  | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="assetV1DataBySymbol"></a>
# **assetV1DataBySymbol**
> GENERICRESPONSE assetV1DataBySymbol(assetSymbol, groups)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AssetApi()
val assetSymbol : kotlin.String = assetSymbol_example // kotlin.String | The asset symbol you are interested in
val groups : kotlin.String = groups_example // kotlin.String | 
try {
    val result : GENERICRESPONSE = apiInstance.assetV1DataBySymbol(assetSymbol, groups)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AssetApi#assetV1DataBySymbol")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AssetApi#assetV1DataBySymbol")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetSymbol** | **kotlin.String**| The asset symbol you are interested in |
 **groups** | **kotlin.String**|  | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="assetV1TopList"></a>
# **assetV1TopList**
> GENERICRESPONSE assetV1TopList(page, pageSize, assetType, sortBy, sortDirection, groups)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = AssetApi()
val page : kotlin.Int = 56 // kotlin.Int | The page number for the request to get {page_size} coins at the time.
val pageSize : kotlin.Int = 56 // kotlin.Int | The number of items returned per page
val assetType : kotlin.String = assetType_example // kotlin.String | The asset class/type
val sortBy : kotlin.String = sortBy_example // kotlin.String | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
val sortDirection : kotlin.String = sortDirection_example // kotlin.String | Sort direction ( DESC,ASC )
val groups : kotlin.String = groups_example // kotlin.String | 
try {
    val result : GENERICRESPONSE = apiInstance.assetV1TopList(page, pageSize, assetType, sortBy, sortDirection, groups)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AssetApi#assetV1TopList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AssetApi#assetV1TopList")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **kotlin.Int**| The page number for the request to get {page_size} coins at the time. | [optional] [default to 1]
 **pageSize** | **kotlin.Int**| The number of items returned per page | [optional] [default to 100]
 **assetType** | **kotlin.String**| The asset class/type | [optional] [default to &quot;&quot;]
 **sortBy** | **kotlin.String**| Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to CREATED_ON] [enum: CREATED_ON, UPDATED_ON, SYMBOL]
 **sortDirection** | **kotlin.String**| Sort direction ( DESC,ASC ) | [optional] [default to DESC] [enum: DESC, ASC]
 **groups** | **kotlin.String**|  | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

