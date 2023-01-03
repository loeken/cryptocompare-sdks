# OverviewApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**overviewV1HistoricalMarketcapAllAssetsDays**](OverviewApi.md#overviewV1HistoricalMarketcapAllAssetsDays) | **GET** /overview/v1/historical/marketcap/all/assets/days | 
[**overviewV1HistoricalMarketcapAllAssetsHours**](OverviewApi.md#overviewV1HistoricalMarketcapAllAssetsHours) | **GET** /overview/v1/historical/marketcap/all/assets/hours | 
[**overviewV1HistoricalMarketcapFtwAssetsDays**](OverviewApi.md#overviewV1HistoricalMarketcapFtwAssetsDays) | **GET** /overview/v1/historical/marketcap/ftw/assets/days | 
[**overviewV1HistoricalMarketcapFtwAssetsHours**](OverviewApi.md#overviewV1HistoricalMarketcapFtwAssetsHours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours | 
[**overviewV1LatestMarketcapAllTick**](OverviewApi.md#overviewV1LatestMarketcapAllTick) | **GET** /overview/v1/latest/marketcap/all/tick | 
[**overviewV1LatestMarketcapFtwTick**](OverviewApi.md#overviewV1LatestMarketcapFtwTick) | **GET** /overview/v1/latest/marketcap/ftw/tick | 


<a name="overviewV1HistoricalMarketcapAllAssetsDays"></a>
# **overviewV1HistoricalMarketcapAllAssetsDays**
> GENERICRESPONSE overviewV1HistoricalMarketcapAllAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OverviewApi()
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.overviewV1HistoricalMarketcapAllAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OverviewApi#overviewV1HistoricalMarketcapAllAssetsDays")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OverviewApi#overviewV1HistoricalMarketcapAllAssetsDays")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="overviewV1HistoricalMarketcapAllAssetsHours"></a>
# **overviewV1HistoricalMarketcapAllAssetsHours**
> GENERICRESPONSE overviewV1HistoricalMarketcapAllAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OverviewApi()
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.overviewV1HistoricalMarketcapAllAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OverviewApi#overviewV1HistoricalMarketcapAllAssetsHours")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OverviewApi#overviewV1HistoricalMarketcapAllAssetsHours")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="overviewV1HistoricalMarketcapFtwAssetsDays"></a>
# **overviewV1HistoricalMarketcapFtwAssetsDays**
> GENERICRESPONSE overviewV1HistoricalMarketcapFtwAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OverviewApi()
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.overviewV1HistoricalMarketcapFtwAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OverviewApi#overviewV1HistoricalMarketcapFtwAssetsDays")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OverviewApi#overviewV1HistoricalMarketcapFtwAssetsDays")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="overviewV1HistoricalMarketcapFtwAssetsHours"></a>
# **overviewV1HistoricalMarketcapFtwAssetsHours**
> GENERICRESPONSE overviewV1HistoricalMarketcapFtwAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OverviewApi()
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.overviewV1HistoricalMarketcapFtwAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OverviewApi#overviewV1HistoricalMarketcapFtwAssetsHours")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OverviewApi#overviewV1HistoricalMarketcapFtwAssetsHours")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="overviewV1LatestMarketcapAllTick"></a>
# **overviewV1LatestMarketcapAllTick**
> GENERICRESPONSE overviewV1LatestMarketcapAllTick(groups)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OverviewApi()
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
try {
    val result : GENERICRESPONSE = apiInstance.overviewV1LatestMarketcapAllTick(groups)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OverviewApi#overviewV1LatestMarketcapAllTick")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OverviewApi#overviewV1LatestMarketcapAllTick")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] [default to arrayListOf()]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="overviewV1LatestMarketcapFtwTick"></a>
# **overviewV1LatestMarketcapFtwTick**
> GENERICRESPONSE overviewV1LatestMarketcapFtwTick(groups)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OverviewApi()
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
try {
    val result : GENERICRESPONSE = apiInstance.overviewV1LatestMarketcapFtwTick(groups)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OverviewApi#overviewV1LatestMarketcapFtwTick")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OverviewApi#overviewV1LatestMarketcapFtwTick")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] [default to arrayListOf()]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

