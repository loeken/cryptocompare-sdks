# ReferenceRatesApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**indexCcV1HistoricalDays**](ReferenceRatesApi.md#indexCcV1HistoricalDays) | **GET** /index/cc/v1/historical/days | 
[**indexCcV1HistoricalHours**](ReferenceRatesApi.md#indexCcV1HistoricalHours) | **GET** /index/cc/v1/historical/hours | 
[**indexCcV1HistoricalMessages**](ReferenceRatesApi.md#indexCcV1HistoricalMessages) | **GET** /index/cc/v1/historical/messages | 
[**indexCcV1HistoricalMessagesHour**](ReferenceRatesApi.md#indexCcV1HistoricalMessagesHour) | **GET** /index/cc/v1/historical/messages/hour | 
[**indexCcV1HistoricalMinutes**](ReferenceRatesApi.md#indexCcV1HistoricalMinutes) | **GET** /index/cc/v1/historical/minutes | 
[**indexCcV1LatestInstrumentMetadata**](ReferenceRatesApi.md#indexCcV1LatestInstrumentMetadata) | **GET** /index/cc/v1/latest/instrument/metadata | 
[**indexCcV1LatestTick**](ReferenceRatesApi.md#indexCcV1LatestTick) | **GET** /index/cc/v1/latest/tick | 
[**indexCcV1Markets**](ReferenceRatesApi.md#indexCcV1Markets) | **GET** /index/cc/v1/markets | 
[**indexCcV1MarketsInstruments**](ReferenceRatesApi.md#indexCcV1MarketsInstruments) | **GET** /index/cc/v1/markets/instruments | 
[**indexCcV1MarketsInstrumentsUnmapped**](ReferenceRatesApi.md#indexCcV1MarketsInstrumentsUnmapped) | **GET** /index/cc/v1/markets/instruments/unmapped | 


<a name="indexCcV1HistoricalDays"></a>
# **indexCcV1HistoricalDays**
> GENERICRESPONSE indexCcV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ReferenceRatesApi()
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
    val result : GENERICRESPONSE = apiInstance.indexCcV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ReferenceRatesApi#indexCcV1HistoricalDays")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ReferenceRatesApi#indexCcV1HistoricalDays")
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

<a name="indexCcV1HistoricalHours"></a>
# **indexCcV1HistoricalHours**
> GENERICRESPONSE indexCcV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ReferenceRatesApi()
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
    val result : GENERICRESPONSE = apiInstance.indexCcV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ReferenceRatesApi#indexCcV1HistoricalHours")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ReferenceRatesApi#indexCcV1HistoricalHours")
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

<a name="indexCcV1HistoricalMessages"></a>
# **indexCcV1HistoricalMessages**
> GENERICRESPONSE indexCcV1HistoricalMessages(market, instrument, afterTs, lastCcseq, mappingPriority, limit, responseFormat, return404OnEmptyResponse)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ReferenceRatesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val afterTs : kotlin.Int = 56 // kotlin.Int | Unix timestamp in seconds of the earliest index message in the response
val lastCcseq : kotlin.Int = 56 // kotlin.Int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val limit : kotlin.Int = 56 // kotlin.Int | The maximum number of index messages to return
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
val return404OnEmptyResponse : kotlin.Boolean = true // kotlin.Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
try {
    val result : GENERICRESPONSE = apiInstance.indexCcV1HistoricalMessages(market, instrument, afterTs, lastCcseq, mappingPriority, limit, responseFormat, return404OnEmptyResponse)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ReferenceRatesApi#indexCcV1HistoricalMessages")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ReferenceRatesApi#indexCcV1HistoricalMessages")
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
 **mappingPriority** | **kotlin.String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **limit** | **kotlin.Int**| The maximum number of index messages to return | [optional] [default to 100]
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

<a name="indexCcV1HistoricalMessagesHour"></a>
# **indexCcV1HistoricalMessagesHour**
> GENERICRESPONSE indexCcV1HistoricalMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ReferenceRatesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
val hourTs : kotlin.Int = 56 // kotlin.Int | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
val responseFormat : kotlin.String = responseFormat_example // kotlin.String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
val return404OnEmptyResponse : kotlin.Boolean = true // kotlin.Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
try {
    val result : GENERICRESPONSE = apiInstance.indexCcV1HistoricalMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ReferenceRatesApi#indexCcV1HistoricalMessagesHour")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ReferenceRatesApi#indexCcV1HistoricalMessagesHour")
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

<a name="indexCcV1HistoricalMinutes"></a>
# **indexCcV1HistoricalMinutes**
> GENERICRESPONSE indexCcV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ReferenceRatesApi()
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
    val result : GENERICRESPONSE = apiInstance.indexCcV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ReferenceRatesApi#indexCcV1HistoricalMinutes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ReferenceRatesApi#indexCcV1HistoricalMinutes")
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

<a name="indexCcV1LatestInstrumentMetadata"></a>
# **indexCcV1LatestInstrumentMetadata**
> GENERICRESPONSE indexCcV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ReferenceRatesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instruments : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
try {
    val result : GENERICRESPONSE = apiInstance.indexCcV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ReferenceRatesApi#indexCcV1LatestInstrumentMetadata")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ReferenceRatesApi#indexCcV1LatestInstrumentMetadata")
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

<a name="indexCcV1LatestTick"></a>
# **indexCcV1LatestTick**
> GENERICRESPONSE indexCcV1LatestTick(market, instruments, groups, mappingPriority)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ReferenceRatesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instruments : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
val groups : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
val mappingPriority : kotlin.String = mappingPriority_example // kotlin.String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
try {
    val result : GENERICRESPONSE = apiInstance.indexCcV1LatestTick(market, instruments, groups, mappingPriority)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ReferenceRatesApi#indexCcV1LatestTick")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ReferenceRatesApi#indexCcV1LatestTick")
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

<a name="indexCcV1Markets"></a>
# **indexCcV1Markets**
> GENERICRESPONSE indexCcV1Markets(market)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ReferenceRatesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
try {
    val result : GENERICRESPONSE = apiInstance.indexCcV1Markets(market)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ReferenceRatesApi#indexCcV1Markets")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ReferenceRatesApi#indexCcV1Markets")
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

<a name="indexCcV1MarketsInstruments"></a>
# **indexCcV1MarketsInstruments**
> GENERICRESPONSE indexCcV1MarketsInstruments(market, instrument, instrumentStatus)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ReferenceRatesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The mapped instrument to retrieve on a specific market.
val instrumentStatus : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
try {
    val result : GENERICRESPONSE = apiInstance.indexCcV1MarketsInstruments(market, instrument, instrumentStatus)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ReferenceRatesApi#indexCcV1MarketsInstruments")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ReferenceRatesApi#indexCcV1MarketsInstruments")
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

<a name="indexCcV1MarketsInstrumentsUnmapped"></a>
# **indexCcV1MarketsInstrumentsUnmapped**
> GENERICRESPONSE indexCcV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = ReferenceRatesApi()
val market : kotlin.String = market_example // kotlin.String | The exchange to obtain data from
val instrument : kotlin.String = instrument_example // kotlin.String | The unmapped instrument to retrieve on a specific market.
val instrumentStatus : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
try {
    val result : GENERICRESPONSE = apiInstance.indexCcV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ReferenceRatesApi#indexCcV1MarketsInstrumentsUnmapped")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ReferenceRatesApi#indexCcV1MarketsInstrumentsUnmapped")
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

