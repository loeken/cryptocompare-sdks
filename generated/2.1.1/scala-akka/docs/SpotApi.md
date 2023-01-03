# SpotApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spotV1HistoricalDays**](SpotApi.md#spotV1HistoricalDays) | **GET** /spot/v1/historical/days | 
[**spotV1HistoricalDaysWithHttpInfo**](SpotApi.md#spotV1HistoricalDaysWithHttpInfo) | **GET** /spot/v1/historical/days | 
[**spotV1HistoricalHours**](SpotApi.md#spotV1HistoricalHours) | **GET** /spot/v1/historical/hours | 
[**spotV1HistoricalHoursWithHttpInfo**](SpotApi.md#spotV1HistoricalHoursWithHttpInfo) | **GET** /spot/v1/historical/hours | 
[**spotV1HistoricalMinutes**](SpotApi.md#spotV1HistoricalMinutes) | **GET** /spot/v1/historical/minutes | 
[**spotV1HistoricalMinutesWithHttpInfo**](SpotApi.md#spotV1HistoricalMinutesWithHttpInfo) | **GET** /spot/v1/historical/minutes | 
[**spotV1HistoricalOrderbookL2SnapshotMinute**](SpotApi.md#spotV1HistoricalOrderbookL2SnapshotMinute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
[**spotV1HistoricalOrderbookL2SnapshotMinuteWithHttpInfo**](SpotApi.md#spotV1HistoricalOrderbookL2SnapshotMinuteWithHttpInfo) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
[**spotV1HistoricalTrades**](SpotApi.md#spotV1HistoricalTrades) | **GET** /spot/v1/historical/trades | 
[**spotV1HistoricalTradesWithHttpInfo**](SpotApi.md#spotV1HistoricalTradesWithHttpInfo) | **GET** /spot/v1/historical/trades | 
[**spotV1HistoricalTradesHour**](SpotApi.md#spotV1HistoricalTradesHour) | **GET** /spot/v1/historical/trades/hour | 
[**spotV1HistoricalTradesHourWithHttpInfo**](SpotApi.md#spotV1HistoricalTradesHourWithHttpInfo) | **GET** /spot/v1/historical/trades/hour | 
[**spotV1LatestInstrumentMetadata**](SpotApi.md#spotV1LatestInstrumentMetadata) | **GET** /spot/v1/latest/instrument/metadata | 
[**spotV1LatestInstrumentMetadataWithHttpInfo**](SpotApi.md#spotV1LatestInstrumentMetadataWithHttpInfo) | **GET** /spot/v1/latest/instrument/metadata | 
[**spotV1LatestTick**](SpotApi.md#spotV1LatestTick) | **GET** /spot/v1/latest/tick | 
[**spotV1LatestTickWithHttpInfo**](SpotApi.md#spotV1LatestTickWithHttpInfo) | **GET** /spot/v1/latest/tick | 
[**spotV1Markets**](SpotApi.md#spotV1Markets) | **GET** /spot/v1/markets | 
[**spotV1MarketsWithHttpInfo**](SpotApi.md#spotV1MarketsWithHttpInfo) | **GET** /spot/v1/markets | 
[**spotV1MarketsInstruments**](SpotApi.md#spotV1MarketsInstruments) | **GET** /spot/v1/markets/instruments | 
[**spotV1MarketsInstrumentsWithHttpInfo**](SpotApi.md#spotV1MarketsInstrumentsWithHttpInfo) | **GET** /spot/v1/markets/instruments | 
[**spotV1MarketsInstrumentsUnmapped**](SpotApi.md#spotV1MarketsInstrumentsUnmapped) | **GET** /spot/v1/markets/instruments/unmapped | 
[**spotV1MarketsInstrumentsUnmappedWithHttpInfo**](SpotApi.md#spotV1MarketsInstrumentsUnmappedWithHttpInfo) | **GET** /spot/v1/markets/instruments/unmapped | 



## spotV1HistoricalDays

> spotV1HistoricalDays(spotV1HistoricalDaysRequest): ApiRequest[SPOTINSTRUMENTHISTODATARESPONSE]



### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = SpotApi("https://data-api.cryptocompare.com")
    val market: String = market_example // String | The exchange to obtain data from

    val instrument: String = instrument_example // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.

    val groups: Seq[String] =  // Seq[String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME

    val limit: Int = 56 // Int | The number of data points to return

    val toTs: Int = 56 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}

    val aggregate: Int = 56 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries

    val fill: Boolean = true // Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.

    val mappingPriority: String = mappingPriority_example // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

    val responseFormat: String = responseFormat_example // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
    
    val request = apiInstance.spotV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SpotApi#spotV1HistoricalDays")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SpotApi#spotV1HistoricalDays")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **String**| The exchange to obtain data from |
 **instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**Seq[String]**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional]
 **limit** | **Int**| The number of data points to return | [optional]
 **toTs** | **Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional]
 **fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional]
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [enum: JSON, CSV]

### Return type

ApiRequest[[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |


## spotV1HistoricalHours

> spotV1HistoricalHours(spotV1HistoricalHoursRequest): ApiRequest[SPOTINSTRUMENTHISTODATARESPONSE]



### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = SpotApi("https://data-api.cryptocompare.com")
    val market: String = market_example // String | The exchange to obtain data from

    val instrument: String = instrument_example // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.

    val groups: Seq[String] =  // Seq[String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME

    val limit: Int = 56 // Int | The number of data points to return

    val toTs: Int = 56 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}

    val aggregate: Int = 56 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries

    val fill: Boolean = true // Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.

    val mappingPriority: String = mappingPriority_example // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

    val responseFormat: String = responseFormat_example // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
    
    val request = apiInstance.spotV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SpotApi#spotV1HistoricalHours")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SpotApi#spotV1HistoricalHours")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **String**| The exchange to obtain data from |
 **instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**Seq[String]**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional]
 **limit** | **Int**| The number of data points to return | [optional]
 **toTs** | **Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional]
 **fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional]
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [enum: JSON, CSV]

### Return type

ApiRequest[[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |


## spotV1HistoricalMinutes

> spotV1HistoricalMinutes(spotV1HistoricalMinutesRequest): ApiRequest[SPOTINSTRUMENTHISTODATARESPONSE]



### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = SpotApi("https://data-api.cryptocompare.com")
    val market: String = market_example // String | The exchange to obtain data from

    val instrument: String = instrument_example // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.

    val groups: Seq[String] =  // Seq[String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME

    val limit: Int = 56 // Int | The number of data points to return

    val toTs: Int = 56 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}

    val aggregate: Int = 56 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries

    val fill: Boolean = true // Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.

    val mappingPriority: String = mappingPriority_example // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

    val responseFormat: String = responseFormat_example // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
    
    val request = apiInstance.spotV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SpotApi#spotV1HistoricalMinutes")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SpotApi#spotV1HistoricalMinutes")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **String**| The exchange to obtain data from |
 **instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**Seq[String]**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional]
 **limit** | **Int**| The number of data points to return | [optional]
 **toTs** | **Int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **Int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional]
 **fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional]
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [enum: JSON, CSV]

### Return type

ApiRequest[[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |


## spotV1HistoricalOrderbookL2SnapshotMinute

> spotV1HistoricalOrderbookL2SnapshotMinute(spotV1HistoricalOrderbookL2SnapshotMinuteRequest): ApiRequest[GENERICRESPONSE]



### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: api_key_header
    implicit val api_key_header: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure API key authorization: api_key_query
    implicit val api_key_query: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = SpotApi("https://data-api.cryptocompare.com")
    val market: String = market_example // String | The exchange to obtain data from

    val instrument: String = instrument_example // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.

    val minuteTs: Int = 56 // Int | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.

    val depth: Int = 56 // Int | The number of top bids and asks to return.

    val mappingPriority: String = mappingPriority_example // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

    val responseFormat: String = responseFormat_example // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
    
    val request = apiInstance.spotV1HistoricalOrderbookL2SnapshotMinute(market, instrument, minuteTs, depth, mappingPriority, responseFormat)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SpotApi#spotV1HistoricalOrderbookL2SnapshotMinute")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SpotApi#spotV1HistoricalOrderbookL2SnapshotMinute")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **String**| The exchange to obtain data from |
 **instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **minuteTs** | **Int**| Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. |
 **depth** | **Int**| The number of top bids and asks to return. | [optional]
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [enum: JSON, CSV]

### Return type

ApiRequest[[**GENERICRESPONSE**](GENERICRESPONSE.md)]


### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |


## spotV1HistoricalTrades

> spotV1HistoricalTrades(spotV1HistoricalTradesRequest): ApiRequest[SPOTINSTRUMENTTRADERESPONSE]



### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: api_key_header
    implicit val api_key_header: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure API key authorization: api_key_query
    implicit val api_key_query: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = SpotApi("https://data-api.cryptocompare.com")
    val market: String = market_example // String | The exchange to obtain data from

    val instrument: String = instrument_example // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.

    val afterTs: Int = 56 // Int | Unix timestamp in seconds of the earliest trade in the response.

    val lastCcseq: Int = 56 // Int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.

    val limit: Int = 56 // Int | The maximum number of trades to return

    val mappingPriority: String = mappingPriority_example // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

    val responseFormat: String = responseFormat_example // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV

    val return404OnEmptyResponse: Boolean = true // Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
    
    val request = apiInstance.spotV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SpotApi#spotV1HistoricalTrades")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SpotApi#spotV1HistoricalTrades")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **String**| The exchange to obtain data from |
 **instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **afterTs** | **Int**| Unix timestamp in seconds of the earliest trade in the response. | [optional]
 **lastCcseq** | **Int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional]
 **limit** | **Int**| The maximum number of trades to return | [optional]
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [enum: JSON, CSV]
 **return404OnEmptyResponse** | **Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional]

### Return type

ApiRequest[[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)]


### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |


## spotV1HistoricalTradesHour

> spotV1HistoricalTradesHour(spotV1HistoricalTradesHourRequest): ApiRequest[SPOTINSTRUMENTTRADERESPONSE]



### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure API key authorization: api_key_header
    implicit val api_key_header: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    // Configure API key authorization: api_key_query
    implicit val api_key_query: ApiKeyValue = ApiKeyValue("YOUR API KEY")

    val apiInvoker = ApiInvoker()
    val apiInstance = SpotApi("https://data-api.cryptocompare.com")
    val market: String = market_example // String | The exchange to obtain data from

    val instrument: String = instrument_example // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.

    val hourTs: Int = 56 // Int | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.

    val mappingPriority: String = mappingPriority_example // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

    val responseFormat: String = responseFormat_example // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV

    val return404OnEmptyResponse: Boolean = true // Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
    
    val request = apiInstance.spotV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SpotApi#spotV1HistoricalTradesHour")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SpotApi#spotV1HistoricalTradesHour")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **String**| The exchange to obtain data from |
 **instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **hourTs** | **Int**| Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional]
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [enum: JSON, CSV]
 **return404OnEmptyResponse** | **Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional]

### Return type

ApiRequest[[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)]


### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |


## spotV1LatestInstrumentMetadata

> spotV1LatestInstrumentMetadata(spotV1LatestInstrumentMetadataRequest): ApiRequest[SPOTINSTRUMENTMETADATARESPONSE]



### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = SpotApi("https://data-api.cryptocompare.com")
    val market: String = coinbase // String | The exchange to obtain data from

    val instruments: Seq[String] = ["BTC-USD","ETH-USD"] // Seq[String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.

    val groups: Seq[String] =  // Seq[String] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE

    val mappingPriority: String = mappingPriority_example // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    
    val request = apiInstance.spotV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SpotApi#spotV1LatestInstrumentMetadata")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SpotApi#spotV1LatestInstrumentMetadata")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **String**| The exchange to obtain data from |
 **instruments** | [**Seq[String]**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**Seq[String]**](String.md)| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional]
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]

### Return type

ApiRequest[[**SPOTINSTRUMENTMETADATARESPONSE**](SPOTINSTRUMENTMETADATARESPONSE.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |


## spotV1LatestTick

> spotV1LatestTick(spotV1LatestTickRequest): ApiRequest[SPOTINSTRUMENTMARKETDATARESPONSE]



### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = SpotApi("https://data-api.cryptocompare.com")
    val market: String = market_example // String | The exchange to obtain data from

    val instruments: Seq[String] =  // Seq[String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.

    val groups: Seq[String] =  // Seq[String] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME

    val mappingPriority: String = mappingPriority_example // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    
    val request = apiInstance.spotV1LatestTick(market, instruments, groups, mappingPriority)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SpotApi#spotV1LatestTick")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SpotApi#spotV1LatestTick")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **String**| The exchange to obtain data from |
 **instruments** | [**Seq[String]**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | [**Seq[String]**](String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional]
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [enum: CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST]

### Return type

ApiRequest[[**SPOTINSTRUMENTMARKETDATARESPONSE**](SPOTINSTRUMENTMARKETDATARESPONSE.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |


## spotV1Markets

> spotV1Markets(spotV1MarketsRequest): ApiRequest[GENERICRESPONSE]



### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = SpotApi("https://data-api.cryptocompare.com")
    val market: String = market_example // String | The exchange to obtain data from
    
    val request = apiInstance.spotV1Markets(market)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SpotApi#spotV1Markets")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SpotApi#spotV1Markets")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **String**| The exchange to obtain data from | [optional]

### Return type

ApiRequest[[**GENERICRESPONSE**](GENERICRESPONSE.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |


## spotV1MarketsInstruments

> spotV1MarketsInstruments(spotV1MarketsInstrumentsRequest): ApiRequest[GENERICRESPONSE]



### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = SpotApi("https://data-api.cryptocompare.com")
    val market: String = market_example // String | The exchange to obtain data from

    val instrument: String = instrument_example // String | The mapped instrument to retrieve on a specific market.

    val instrumentStatus: Seq[String] =  // Seq[String] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
    
    val request = apiInstance.spotV1MarketsInstruments(market, instrument, instrumentStatus)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SpotApi#spotV1MarketsInstruments")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SpotApi#spotV1MarketsInstruments")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **String**| The exchange to obtain data from | [optional]
 **instrument** | **String**| The mapped instrument to retrieve on a specific market. | [optional]
 **instrumentStatus** | [**Seq[String]**](String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [enum: ACTIVE, IGNORED, RETIRED, EXPIRED]

### Return type

ApiRequest[[**GENERICRESPONSE**](GENERICRESPONSE.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |


## spotV1MarketsInstrumentsUnmapped

> spotV1MarketsInstrumentsUnmapped(spotV1MarketsInstrumentsUnmappedRequest): ApiRequest[GENERICRESPONSE]



### Example

```scala
// Import classes:
import 
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = SpotApi("https://data-api.cryptocompare.com")
    val market: String = market_example // String | The exchange to obtain data from

    val instrument: String = instrument_example // String | The unmapped instrument to retrieve on a specific market.

    val instrumentStatus: Seq[String] =  // Seq[String] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
    
    val request = apiInstance.spotV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling SpotApi#spotV1MarketsInstrumentsUnmapped")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling SpotApi#spotV1MarketsInstrumentsUnmapped")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **String**| The exchange to obtain data from | [optional]
 **instrument** | **String**| The unmapped instrument to retrieve on a specific market. | [optional]
 **instrumentStatus** | [**Seq[String]**](String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [enum: ACTIVE, IGNORED, RETIRED, EXPIRED]

### Return type

ApiRequest[[**GENERICRESPONSE**](GENERICRESPONSE.md)]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

