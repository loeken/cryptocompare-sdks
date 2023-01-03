# FuturesApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**futuresV1HistoricalDays**](FuturesApi.md#futuresV1HistoricalDays) | **GET** /futures/v1/historical/days | 
[**futuresV1HistoricalFundingRateDays**](FuturesApi.md#futuresV1HistoricalFundingRateDays) | **GET** /futures/v1/historical/funding-rate/days | 
[**futuresV1HistoricalFundingRateHours**](FuturesApi.md#futuresV1HistoricalFundingRateHours) | **GET** /futures/v1/historical/funding-rate/hours | 
[**futuresV1HistoricalFundingRateMessages**](FuturesApi.md#futuresV1HistoricalFundingRateMessages) | **GET** /futures/v1/historical/funding-rate-messages | 
[**futuresV1HistoricalFundingRateMessagesHour**](FuturesApi.md#futuresV1HistoricalFundingRateMessagesHour) | **GET** /futures/v1/historical/funding-rate-messages/hour | 
[**futuresV1HistoricalFundingRateMinutes**](FuturesApi.md#futuresV1HistoricalFundingRateMinutes) | **GET** /futures/v1/historical/funding-rate/minutes | 
[**futuresV1HistoricalHours**](FuturesApi.md#futuresV1HistoricalHours) | **GET** /futures/v1/historical/hours | 
[**futuresV1HistoricalMinutes**](FuturesApi.md#futuresV1HistoricalMinutes) | **GET** /futures/v1/historical/minutes | 
[**futuresV1HistoricalOpenInterestDays**](FuturesApi.md#futuresV1HistoricalOpenInterestDays) | **GET** /futures/v1/historical/open-interest/days | 
[**futuresV1HistoricalOpenInterestHours**](FuturesApi.md#futuresV1HistoricalOpenInterestHours) | **GET** /futures/v1/historical/open-interest/hours | 
[**futuresV1HistoricalOpenInterestMessages**](FuturesApi.md#futuresV1HistoricalOpenInterestMessages) | **GET** /futures/v1/historical/open-interest-messages | 
[**futuresV1HistoricalOpenInterestMessagesHour**](FuturesApi.md#futuresV1HistoricalOpenInterestMessagesHour) | **GET** /futures/v1/historical/open-interest-messages/hour | 
[**futuresV1HistoricalOpenInterestMinutes**](FuturesApi.md#futuresV1HistoricalOpenInterestMinutes) | **GET** /futures/v1/historical/open-interest/minutes | 
[**futuresV1HistoricalTrades**](FuturesApi.md#futuresV1HistoricalTrades) | **GET** /futures/v1/historical/trades | 
[**futuresV1HistoricalTradesHour**](FuturesApi.md#futuresV1HistoricalTradesHour) | **GET** /futures/v1/historical/trades/hour | 
[**futuresV1LatestFundingRateTick**](FuturesApi.md#futuresV1LatestFundingRateTick) | **GET** /futures/v1/latest/funding-rate/tick | 
[**futuresV1LatestInstrumentMetadata**](FuturesApi.md#futuresV1LatestInstrumentMetadata) | **GET** /futures/v1/latest/instrument/metadata | 
[**futuresV1LatestOpenInterestTick**](FuturesApi.md#futuresV1LatestOpenInterestTick) | **GET** /futures/v1/latest/open-interest/tick | 
[**futuresV1LatestTick**](FuturesApi.md#futuresV1LatestTick) | **GET** /futures/v1/latest/tick | 
[**futuresV1Markets**](FuturesApi.md#futuresV1Markets) | **GET** /futures/v1/markets | 
[**futuresV1MarketsInstruments**](FuturesApi.md#futuresV1MarketsInstruments) | **GET** /futures/v1/markets/instruments | 
[**futuresV1MarketsInstrumentsUnmapped**](FuturesApi.md#futuresV1MarketsInstrumentsUnmapped) | **GET** /futures/v1/markets/instruments/unmapped | 
[**indexV1HistoricalDays**](FuturesApi.md#indexV1HistoricalDays) | **GET** /index/v1/historical/days | 
[**indexV1HistoricalHours**](FuturesApi.md#indexV1HistoricalHours) | **GET** /index/v1/historical/hours | 
[**indexV1HistoricalMessages**](FuturesApi.md#indexV1HistoricalMessages) | **GET** /index/v1/historical/messages | 
[**indexV1HistoricalMessagesHour**](FuturesApi.md#indexV1HistoricalMessagesHour) | **GET** /index/v1/historical/messages/hour | 
[**indexV1HistoricalMinutes**](FuturesApi.md#indexV1HistoricalMinutes) | **GET** /index/v1/historical/minutes | 
[**indexV1LatestInstrumentMetadata**](FuturesApi.md#indexV1LatestInstrumentMetadata) | **GET** /index/v1/latest/instrument/metadata | 
[**indexV1LatestTick**](FuturesApi.md#indexV1LatestTick) | **GET** /index/v1/latest/tick | 
[**indexV1Markets**](FuturesApi.md#indexV1Markets) | **GET** /index/v1/markets | 
[**indexV1MarketsInstruments**](FuturesApi.md#indexV1MarketsInstruments) | **GET** /index/v1/markets/instruments | 
[**indexV1MarketsInstrumentsUnmapped**](FuturesApi.md#indexV1MarketsInstrumentsUnmapped) | **GET** /index/v1/markets/instruments/unmapped | 


<a name="futuresV1HistoricalDays"></a>
# **futuresV1HistoricalDays**
> GENERICRESPONSE futuresV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
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
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalDays")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalDays")
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1HistoricalFundingRateDays"></a>
# **futuresV1HistoricalFundingRateDays**
> GENERICRESPONSE futuresV1HistoricalFundingRateDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalFundingRateDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalFundingRateDays")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalFundingRateDays")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1HistoricalFundingRateHours"></a>
# **futuresV1HistoricalFundingRateHours**
> GENERICRESPONSE futuresV1HistoricalFundingRateHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalFundingRateHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalFundingRateHours")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalFundingRateHours")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1HistoricalFundingRateMessages"></a>
# **futuresV1HistoricalFundingRateMessages**
> GENERICRESPONSE futuresV1HistoricalFundingRateMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val afterTs : kotlin.Int = 56 // kotlin.Int | Unix timestamp in seconds of the earliest funding rate message in the response
val lastCcseq : kotlin.Int = 56 // kotlin.Int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
val limit : kotlin.Int = 56 // kotlin.Int | The maximum number of funding rate messages to return
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
val return404OnEmptyResponse : kotlin.Boolean = true // kotlin.Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalFundingRateMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalFundingRateMessages")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalFundingRateMessages")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **afterTs** | **kotlin.Int**| Unix timestamp in seconds of the earliest funding rate message in the response | [optional]
 **lastCcseq** | **kotlin.Int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **kotlin.Int**| The maximum number of funding rate messages to return | [optional] [default to 100]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]
 **return404OnEmptyResponse** | **kotlin.Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

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

<a name="futuresV1HistoricalFundingRateMessagesHour"></a>
# **futuresV1HistoricalFundingRateMessagesHour**
> GENERICRESPONSE futuresV1HistoricalFundingRateMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val hourTs : kotlin.Int = 56 // kotlin.Int | Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
val return404OnEmptyResponse : kotlin.Boolean = true // kotlin.Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalFundingRateMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalFundingRateMessagesHour")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalFundingRateMessagesHour")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **hourTs** | **kotlin.Int**| Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. | [optional]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]
 **return404OnEmptyResponse** | **kotlin.Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

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

<a name="futuresV1HistoricalFundingRateMinutes"></a>
# **futuresV1HistoricalFundingRateMinutes**
> GENERICRESPONSE futuresV1HistoricalFundingRateMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalFundingRateMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalFundingRateMinutes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalFundingRateMinutes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1HistoricalHours"></a>
# **futuresV1HistoricalHours**
> GENERICRESPONSE futuresV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
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
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalHours")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalHours")
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1HistoricalMinutes"></a>
# **futuresV1HistoricalMinutes**
> GENERICRESPONSE futuresV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
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
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalMinutes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalMinutes")
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1HistoricalOpenInterestDays"></a>
# **futuresV1HistoricalOpenInterestDays**
> GENERICRESPONSE futuresV1HistoricalOpenInterestDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalOpenInterestDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalOpenInterestDays")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalOpenInterestDays")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1HistoricalOpenInterestHours"></a>
# **futuresV1HistoricalOpenInterestHours**
> GENERICRESPONSE futuresV1HistoricalOpenInterestHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalOpenInterestHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalOpenInterestHours")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalOpenInterestHours")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1HistoricalOpenInterestMessages"></a>
# **futuresV1HistoricalOpenInterestMessages**
> GENERICRESPONSE futuresV1HistoricalOpenInterestMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val afterTs : kotlin.Int = 56 // kotlin.Int | Unix timestamp in seconds of the earliest open interest message in the response
val lastCcseq : kotlin.Int = 56 // kotlin.Int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
val limit : kotlin.Int = 56 // kotlin.Int | The maximum number of open interest messages to return
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
val return404OnEmptyResponse : kotlin.Boolean = true // kotlin.Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalOpenInterestMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalOpenInterestMessages")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalOpenInterestMessages")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **afterTs** | **kotlin.Int**| Unix timestamp in seconds of the earliest open interest message in the response | [optional]
 **lastCcseq** | **kotlin.Int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **kotlin.Int**| The maximum number of open interest messages to return | [optional] [default to 100]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]
 **return404OnEmptyResponse** | **kotlin.Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

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

<a name="futuresV1HistoricalOpenInterestMessagesHour"></a>
# **futuresV1HistoricalOpenInterestMessagesHour**
> GENERICRESPONSE futuresV1HistoricalOpenInterestMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val hourTs : kotlin.Int = 56 // kotlin.Int | Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
val return404OnEmptyResponse : kotlin.Boolean = true // kotlin.Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalOpenInterestMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalOpenInterestMessagesHour")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalOpenInterestMessagesHour")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **hourTs** | **kotlin.Int**| Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. | [optional]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]
 **return404OnEmptyResponse** | **kotlin.Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

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

<a name="futuresV1HistoricalOpenInterestMinutes"></a>
# **futuresV1HistoricalOpenInterestMinutes**
> GENERICRESPONSE futuresV1HistoricalOpenInterestMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalOpenInterestMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalOpenInterestMinutes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalOpenInterestMinutes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1HistoricalTrades"></a>
# **futuresV1HistoricalTrades**
> GENERICRESPONSE futuresV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val afterTs : kotlin.Int = 56 // kotlin.Int | Unix timestamp in seconds of the earliest trade in the response.
val lastCcseq : kotlin.Int = 56 // kotlin.Int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
val limit : kotlin.Int = 56 // kotlin.Int | The maximum number of trades to return
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
val return404OnEmptyResponse : kotlin.Boolean = true // kotlin.Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalTrades")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalTrades")
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

<a name="futuresV1HistoricalTradesHour"></a>
# **futuresV1HistoricalTradesHour**
> GENERICRESPONSE futuresV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val hourTs : kotlin.Int = 56 // kotlin.Int | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
val return404OnEmptyResponse : kotlin.Boolean = true // kotlin.Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1HistoricalTradesHour")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1HistoricalTradesHour")
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

<a name="futuresV1LatestFundingRateTick"></a>
# **futuresV1LatestFundingRateTick**
> GENERICRESPONSE futuresV1LatestFundingRateTick(market, instruments, groups, mappingPriority)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instruments : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1LatestFundingRateTick(market, instruments, groups, mappingPriority)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1LatestFundingRateTick")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1LatestFundingRateTick")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instruments** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to arrayListOf()]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1LatestInstrumentMetadata"></a>
# **futuresV1LatestInstrumentMetadata**
> GENERICRESPONSE futuresV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instruments : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1LatestInstrumentMetadata")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1LatestInstrumentMetadata")
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1LatestOpenInterestTick"></a>
# **futuresV1LatestOpenInterestTick**
> GENERICRESPONSE futuresV1LatestOpenInterestTick(market, instruments, groups, mappingPriority)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instruments : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1LatestOpenInterestTick(market, instruments, groups, mappingPriority)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1LatestOpenInterestTick")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1LatestOpenInterestTick")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instruments** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to arrayListOf()]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1LatestTick"></a>
# **futuresV1LatestTick**
> GENERICRESPONSE futuresV1LatestTick(market, instruments, groups, mappingPriority)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instruments : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1LatestTick(market, instruments, groups, mappingPriority)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1LatestTick")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1LatestTick")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instruments** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to arrayListOf()]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1Markets"></a>
# **futuresV1Markets**
> GENERICRESPONSE futuresV1Markets(market)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1Markets(market)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1Markets")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1Markets")
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

<a name="futuresV1MarketsInstruments"></a>
# **futuresV1MarketsInstruments**
> GENERICRESPONSE futuresV1MarketsInstruments(market, instrument, instrumentStatus)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped instrument to retrieve on a specific market.
val instrumentStatus : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1MarketsInstruments(market, instrument, instrumentStatus)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1MarketsInstruments")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1MarketsInstruments")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **instrument** | **kotlin.String**| The mapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **instrumentStatus** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to arrayListOf()] [enum: ACTIVE, IGNORED, RETIRED, EXPIRED]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="futuresV1MarketsInstrumentsUnmapped"></a>
# **futuresV1MarketsInstrumentsUnmapped**
> GENERICRESPONSE futuresV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The unmapped instrument to retrieve on a specific market.
val instrumentStatus : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
try {
    val result : GENERICRESPONSE = apiInstance.futuresV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#futuresV1MarketsInstrumentsUnmapped")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#futuresV1MarketsInstrumentsUnmapped")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **instrument** | **kotlin.String**| The unmapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **instrumentStatus** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to arrayListOf()] [enum: ACTIVE, IGNORED, RETIRED, EXPIRED]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="indexV1HistoricalDays"></a>
# **indexV1HistoricalDays**
> GENERICRESPONSE indexV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.indexV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#indexV1HistoricalDays")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#indexV1HistoricalDays")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="indexV1HistoricalHours"></a>
# **indexV1HistoricalHours**
> GENERICRESPONSE indexV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.indexV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#indexV1HistoricalHours")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#indexV1HistoricalHours")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="indexV1HistoricalMessages"></a>
# **indexV1HistoricalMessages**
> GENERICRESPONSE indexV1HistoricalMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val afterTs : kotlin.Int = 56 // kotlin.Int | Unix timestamp in seconds of the earliest index message in the response
val lastCcseq : kotlin.Int = 56 // kotlin.Int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
val limit : kotlin.Int = 56 // kotlin.Int | The maximum number of index messages to return
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
val return404OnEmptyResponse : kotlin.Boolean = true // kotlin.Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
try {
    val result : GENERICRESPONSE = apiInstance.indexV1HistoricalMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#indexV1HistoricalMessages")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#indexV1HistoricalMessages")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **afterTs** | **kotlin.Int**| Unix timestamp in seconds of the earliest index message in the response | [optional]
 **lastCcseq** | **kotlin.Int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **kotlin.Int**| The maximum number of index messages to return | [optional] [default to 100]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]
 **return404OnEmptyResponse** | **kotlin.Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

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

<a name="indexV1HistoricalMessagesHour"></a>
# **indexV1HistoricalMessagesHour**
> GENERICRESPONSE indexV1HistoricalMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val hourTs : kotlin.Int = 56 // kotlin.Int | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
val return404OnEmptyResponse : kotlin.Boolean = true // kotlin.Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
try {
    val result : GENERICRESPONSE = apiInstance.indexV1HistoricalMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#indexV1HistoricalMessagesHour")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#indexV1HistoricalMessagesHour")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **hourTs** | **kotlin.Int**| Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | [optional]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]
 **return404OnEmptyResponse** | **kotlin.Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

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

<a name="indexV1HistoricalMinutes"></a>
# **indexV1HistoricalMinutes**
> GENERICRESPONSE indexV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
val limit : kotlin.Int = 56 // kotlin.Int | The number of data points to return
val toTs : kotlin.Int = 56 // kotlin.Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
val aggregate : kotlin.Int = 56 // kotlin.Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
val fill : kotlin.Boolean = true // kotlin.Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
try {
    val result : GENERICRESPONSE = apiInstance.indexV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#indexV1HistoricalMinutes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#indexV1HistoricalMinutes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instrument** | **kotlin.String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] [default to arrayListOf()]
 **limit** | **kotlin.Int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **kotlin.Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **kotlin.Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **kotlin.Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **kotlin.String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] [enum: JSON, CSV]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="indexV1LatestInstrumentMetadata"></a>
# **indexV1LatestInstrumentMetadata**
> GENERICRESPONSE indexV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instruments : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
try {
    val result : GENERICRESPONSE = apiInstance.indexV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#indexV1LatestInstrumentMetadata")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#indexV1LatestInstrumentMetadata")
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="indexV1LatestTick"></a>
# **indexV1LatestTick**
> GENERICRESPONSE indexV1LatestTick(market, instruments, groups, mappingPriority)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instruments : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
try {
    val result : GENERICRESPONSE = apiInstance.indexV1LatestTick(market, instruments, groups, mappingPriority)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#indexV1LatestTick")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#indexV1LatestTick")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from |
 **instruments** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to arrayListOf()]
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="indexV1Markets"></a>
# **indexV1Markets**
> GENERICRESPONSE indexV1Markets(market)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
try {
    val result : GENERICRESPONSE = apiInstance.indexV1Markets(market)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#indexV1Markets")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#indexV1Markets")
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

<a name="indexV1MarketsInstruments"></a>
# **indexV1MarketsInstruments**
> GENERICRESPONSE indexV1MarketsInstruments(market, instrument, instrumentStatus)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped instrument to retrieve on a specific market.
val instrumentStatus : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
try {
    val result : GENERICRESPONSE = apiInstance.indexV1MarketsInstruments(market, instrument, instrumentStatus)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#indexV1MarketsInstruments")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#indexV1MarketsInstruments")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **instrument** | **kotlin.String**| The mapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **instrumentStatus** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to arrayListOf()] [enum: ACTIVE, IGNORED, RETIRED, EXPIRED]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="indexV1MarketsInstrumentsUnmapped"></a>
# **indexV1MarketsInstrumentsUnmapped**
> GENERICRESPONSE indexV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = FuturesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The unmapped instrument to retrieve on a specific market.
val instrumentStatus : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
try {
    val result : GENERICRESPONSE = apiInstance.indexV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling FuturesApi#indexV1MarketsInstrumentsUnmapped")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling FuturesApi#indexV1MarketsInstrumentsUnmapped")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **kotlin.String**| The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **instrument** | **kotlin.String**| The unmapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **instrumentStatus** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to arrayListOf()] [enum: ACTIVE, IGNORED, RETIRED, EXPIRED]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

