# SpotApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spotV1HistoricalDays**](SpotApi.md#spotV1HistoricalDays) | **GET** /spot/v1/historical/days | 
[**spotV1HistoricalHours**](SpotApi.md#spotV1HistoricalHours) | **GET** /spot/v1/historical/hours | 
[**spotV1HistoricalMinutes**](SpotApi.md#spotV1HistoricalMinutes) | **GET** /spot/v1/historical/minutes | 
[**spotV1HistoricalOrderbookL2SnapshotMinute**](SpotApi.md#spotV1HistoricalOrderbookL2SnapshotMinute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
[**spotV1HistoricalTrades**](SpotApi.md#spotV1HistoricalTrades) | **GET** /spot/v1/historical/trades | 
[**spotV1HistoricalTradesHour**](SpotApi.md#spotV1HistoricalTradesHour) | **GET** /spot/v1/historical/trades/hour | 
[**spotV1LatestInstrumentMetadata**](SpotApi.md#spotV1LatestInstrumentMetadata) | **GET** /spot/v1/latest/instrument/metadata | 
[**spotV1LatestTick**](SpotApi.md#spotV1LatestTick) | **GET** /spot/v1/latest/tick | 
[**spotV1Markets**](SpotApi.md#spotV1Markets) | **GET** /spot/v1/markets | 
[**spotV1MarketsInstruments**](SpotApi.md#spotV1MarketsInstruments) | **GET** /spot/v1/markets/instruments | 
[**spotV1MarketsInstrumentsUnmapped**](SpotApi.md#spotV1MarketsInstrumentsUnmapped) | **GET** /spot/v1/markets/instruments/unmapped | 


<a name="spotV1HistoricalDays"></a>
# **spotV1HistoricalDays**
> SPOTINSTRUMENTHISTODATARESPONSE spotV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SpotApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : SPOTINSTRUMENTHISTODATARESPONSE = apiInstance.spotV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SpotApi#spotV1HistoricalDays")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SpotApi#spotV1HistoricalDays")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="spotV1HistoricalHours"></a>
# **spotV1HistoricalHours**
> SPOTINSTRUMENTHISTODATARESPONSE spotV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SpotApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : SPOTINSTRUMENTHISTODATARESPONSE = apiInstance.spotV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SpotApi#spotV1HistoricalHours")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SpotApi#spotV1HistoricalHours")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="spotV1HistoricalMinutes"></a>
# **spotV1HistoricalMinutes**
> SPOTINSTRUMENTHISTODATARESPONSE spotV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SpotApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : SPOTINSTRUMENTHISTODATARESPONSE = apiInstance.spotV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SpotApi#spotV1HistoricalMinutes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SpotApi#spotV1HistoricalMinutes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="spotV1HistoricalOrderbookL2SnapshotMinute"></a>
# **spotV1HistoricalOrderbookL2SnapshotMinute**
> GENERICRESPONSE spotV1HistoricalOrderbookL2SnapshotMinute(market, instrument, minuteTs, depth, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SpotApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val minuteTs : kotlin.Int = 56 // kotlin.Int | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
val depth : kotlin.Int = 56 // kotlin.Int | The number of top bids and asks to return.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.spotV1HistoricalOrderbookL2SnapshotMinute(market, instrument, minuteTs, depth, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SpotApi#spotV1HistoricalOrderbookL2SnapshotMinute")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SpotApi#spotV1HistoricalOrderbookL2SnapshotMinute")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **minuteTs** | **kotlin.Int**| Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. |
 **depth** | **kotlin.Int**| The number of top bids and asks to return. | [optional] [default to 50]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization


Configure api_key_header:
    ApiClient.apiKey["authorization"] = ""
    ApiClient.apiKeyPrefix["authorization"] = ""
Configure api_key_query:
    ApiClient.apiKey["api_key"] = ""
    ApiClient.apiKeyPrefix["api_key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="spotV1HistoricalTrades"></a>
# **spotV1HistoricalTrades**
> SPOTINSTRUMENTTRADERESPONSE spotV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SpotApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val afterTs : kotlin.Int = 56 // kotlin.Int | Unix timestamp in seconds of the earliest trade in the response.
val lastCcseq : kotlin.Int = 56 // kotlin.Int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
val limit : kotlin.Int = 56 // kotlin.Int | The maximum number of trades to return
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
val return404OnEmptyResponse : kotlin.Boolean = true // kotlin.Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
try {
    val result : SPOTINSTRUMENTTRADERESPONSE = apiInstance.spotV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SpotApi#spotV1HistoricalTrades")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SpotApi#spotV1HistoricalTrades")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **afterTs** | **kotlin.Int**| Unix timestamp in seconds of the earliest trade in the response. | [optional]
 **lastCcseq** | **kotlin.Int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **kotlin.Int**| The maximum number of trades to return | [optional] [default to 100]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]
 **return404OnEmptyResponse** | **kotlin.Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization


Configure api_key_header:
    ApiClient.apiKey["authorization"] = ""
    ApiClient.apiKeyPrefix["authorization"] = ""
Configure api_key_query:
    ApiClient.apiKey["api_key"] = ""
    ApiClient.apiKeyPrefix["api_key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="spotV1HistoricalTradesHour"></a>
# **spotV1HistoricalTradesHour**
> SPOTINSTRUMENTTRADERESPONSE spotV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SpotApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val hourTs : kotlin.Int = 56 // kotlin.Int | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
val return404OnEmptyResponse : kotlin.Boolean = true // kotlin.Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
try {
    val result : SPOTINSTRUMENTTRADERESPONSE = apiInstance.spotV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SpotApi#spotV1HistoricalTradesHour")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SpotApi#spotV1HistoricalTradesHour")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **hourTs** | **kotlin.Int**| Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]
 **return404OnEmptyResponse** | **kotlin.Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization


Configure api_key_header:
    ApiClient.apiKey["authorization"] = ""
    ApiClient.apiKeyPrefix["authorization"] = ""
Configure api_key_query:
    ApiClient.apiKey["api_key"] = ""
    ApiClient.apiKeyPrefix["api_key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="spotV1LatestInstrumentMetadata"></a>
# **spotV1LatestInstrumentMetadata**
> SPOTINSTRUMENTMETADATARESPONSE spotV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SpotApi()
val market : kotlin.String = coinbase // kotlin.String | The exchange to obtain data from
val instruments : kotlin.collections.List<kotlin.String> = ["BTC-USD","ETH-USD"] // kotlin.collections.List<kotlin.String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
try {
    val result : SPOTINSTRUMENTMETADATARESPONSE = apiInstance.spotV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SpotApi#spotV1LatestInstrumentMetadata")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SpotApi#spotV1LatestInstrumentMetadata")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instruments** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] [default to arrayListOf()]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]

### Return type

[**SPOTINSTRUMENTMETADATARESPONSE**](SPOTINSTRUMENTMETADATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="spotV1LatestTick"></a>
# **spotV1LatestTick**
> SPOTINSTRUMENTMARKETDATARESPONSE spotV1LatestTick(market, instruments, groups, mappingPriority)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SpotApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instruments : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
try {
    val result : SPOTINSTRUMENTMARKETDATARESPONSE = apiInstance.spotV1LatestTick(market, instruments, groups, mappingPriority)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SpotApi#spotV1LatestTick")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SpotApi#spotV1LatestTick")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instruments** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to arrayListOf()]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]

### Return type

[**SPOTINSTRUMENTMARKETDATARESPONSE**](SPOTINSTRUMENTMARKETDATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="spotV1Markets"></a>
# **spotV1Markets**
> GENERICRESPONSE spotV1Markets(market)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SpotApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
try {
    val result : GENERICRESPONSE = apiInstance.spotV1Markets(market)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SpotApi#spotV1Markets")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SpotApi#spotV1Markets")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="spotV1MarketsInstruments"></a>
# **spotV1MarketsInstruments**
> GENERICRESPONSE spotV1MarketsInstruments(market, instrument, instrumentStatus)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SpotApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped instrument to retrieve on a specific market.
val instrumentStatus : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
try {
    val result : GENERICRESPONSE = apiInstance.spotV1MarketsInstruments(market, instrument, instrumentStatus)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SpotApi#spotV1MarketsInstruments")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SpotApi#spotV1MarketsInstruments")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **instrument** | **kotlin.String**| The mapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **instrumentStatus** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to arrayListOf(ACTIVE,IGNORED,RETIRED,EXPIRED)] [enum: ACTIVE, IGNORED, RETIRED, EXPIRED]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="spotV1MarketsInstrumentsUnmapped"></a>
# **spotV1MarketsInstrumentsUnmapped**
> GENERICRESPONSE spotV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = SpotApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The unmapped instrument to retrieve on a specific market.
val instrumentStatus : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
try {
    val result : GENERICRESPONSE = apiInstance.spotV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SpotApi#spotV1MarketsInstrumentsUnmapped")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SpotApi#spotV1MarketsInstrumentsUnmapped")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **instrument** | **kotlin.String**| The unmapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **instrumentStatus** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to arrayListOf(ACTIVE,IGNORED,RETIRED,EXPIRED)] [enum: ACTIVE, IGNORED, RETIRED, EXPIRED]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

