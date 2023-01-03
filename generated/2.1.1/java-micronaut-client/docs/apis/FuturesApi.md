# FuturesApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**futuresV1HistoricalDays**](FuturesApi.md#futuresV1HistoricalDays) | **GET** /futures/v1/historical/days |  |
| [**futuresV1HistoricalFundingRateDays**](FuturesApi.md#futuresV1HistoricalFundingRateDays) | **GET** /futures/v1/historical/funding-rate/days |  |
| [**futuresV1HistoricalFundingRateHours**](FuturesApi.md#futuresV1HistoricalFundingRateHours) | **GET** /futures/v1/historical/funding-rate/hours |  |
| [**futuresV1HistoricalFundingRateMessages**](FuturesApi.md#futuresV1HistoricalFundingRateMessages) | **GET** /futures/v1/historical/funding-rate-messages |  |
| [**futuresV1HistoricalFundingRateMessagesHour**](FuturesApi.md#futuresV1HistoricalFundingRateMessagesHour) | **GET** /futures/v1/historical/funding-rate-messages/hour |  |
| [**futuresV1HistoricalFundingRateMinutes**](FuturesApi.md#futuresV1HistoricalFundingRateMinutes) | **GET** /futures/v1/historical/funding-rate/minutes |  |
| [**futuresV1HistoricalHours**](FuturesApi.md#futuresV1HistoricalHours) | **GET** /futures/v1/historical/hours |  |
| [**futuresV1HistoricalMinutes**](FuturesApi.md#futuresV1HistoricalMinutes) | **GET** /futures/v1/historical/minutes |  |
| [**futuresV1HistoricalOpenInterestDays**](FuturesApi.md#futuresV1HistoricalOpenInterestDays) | **GET** /futures/v1/historical/open-interest/days |  |
| [**futuresV1HistoricalOpenInterestHours**](FuturesApi.md#futuresV1HistoricalOpenInterestHours) | **GET** /futures/v1/historical/open-interest/hours |  |
| [**futuresV1HistoricalOpenInterestMessages**](FuturesApi.md#futuresV1HistoricalOpenInterestMessages) | **GET** /futures/v1/historical/open-interest-messages |  |
| [**futuresV1HistoricalOpenInterestMessagesHour**](FuturesApi.md#futuresV1HistoricalOpenInterestMessagesHour) | **GET** /futures/v1/historical/open-interest-messages/hour |  |
| [**futuresV1HistoricalOpenInterestMinutes**](FuturesApi.md#futuresV1HistoricalOpenInterestMinutes) | **GET** /futures/v1/historical/open-interest/minutes |  |
| [**futuresV1HistoricalTrades**](FuturesApi.md#futuresV1HistoricalTrades) | **GET** /futures/v1/historical/trades |  |
| [**futuresV1HistoricalTradesHour**](FuturesApi.md#futuresV1HistoricalTradesHour) | **GET** /futures/v1/historical/trades/hour |  |
| [**futuresV1LatestFundingRateTick**](FuturesApi.md#futuresV1LatestFundingRateTick) | **GET** /futures/v1/latest/funding-rate/tick |  |
| [**futuresV1LatestInstrumentMetadata**](FuturesApi.md#futuresV1LatestInstrumentMetadata) | **GET** /futures/v1/latest/instrument/metadata |  |
| [**futuresV1LatestOpenInterestTick**](FuturesApi.md#futuresV1LatestOpenInterestTick) | **GET** /futures/v1/latest/open-interest/tick |  |
| [**futuresV1LatestTick**](FuturesApi.md#futuresV1LatestTick) | **GET** /futures/v1/latest/tick |  |
| [**futuresV1Markets**](FuturesApi.md#futuresV1Markets) | **GET** /futures/v1/markets |  |
| [**futuresV1MarketsInstruments**](FuturesApi.md#futuresV1MarketsInstruments) | **GET** /futures/v1/markets/instruments |  |
| [**futuresV1MarketsInstrumentsUnmapped**](FuturesApi.md#futuresV1MarketsInstrumentsUnmapped) | **GET** /futures/v1/markets/instruments/unmapped |  |
| [**indexV1HistoricalDays**](FuturesApi.md#indexV1HistoricalDays) | **GET** /index/v1/historical/days |  |
| [**indexV1HistoricalHours**](FuturesApi.md#indexV1HistoricalHours) | **GET** /index/v1/historical/hours |  |
| [**indexV1HistoricalMessages**](FuturesApi.md#indexV1HistoricalMessages) | **GET** /index/v1/historical/messages |  |
| [**indexV1HistoricalMessagesHour**](FuturesApi.md#indexV1HistoricalMessagesHour) | **GET** /index/v1/historical/messages/hour |  |
| [**indexV1HistoricalMinutes**](FuturesApi.md#indexV1HistoricalMinutes) | **GET** /index/v1/historical/minutes |  |
| [**indexV1LatestInstrumentMetadata**](FuturesApi.md#indexV1LatestInstrumentMetadata) | **GET** /index/v1/latest/instrument/metadata |  |
| [**indexV1LatestTick**](FuturesApi.md#indexV1LatestTick) | **GET** /index/v1/latest/tick |  |
| [**indexV1Markets**](FuturesApi.md#indexV1Markets) | **GET** /index/v1/markets |  |
| [**indexV1MarketsInstruments**](FuturesApi.md#indexV1MarketsInstruments) | **GET** /index/v1/markets/instruments |  |
| [**indexV1MarketsInstrumentsUnmapped**](FuturesApi.md#indexV1MarketsInstrumentsUnmapped) | **GET** /index/v1/markets/instruments/unmapped |  |


## Creating FuturesApi

To initiate an instance of `FuturesApi`, you can use micronaut's `ApplicationContext`:
```java
/* imports
import io.micronaut.runtime.Micronaut;
import io.micronaut.context.ApplicationContext;
import org.openapitools.api.FuturesApi;
*/

ApplicationContext context = Micronaut.run(/* ... */);
PetApi apiInstance = context.getBean(FuturesApi.class);
```

Or the `@Inject` annotation:
```java
@Singleton
class MyClass {
    @Inject
    FuturesApi futuresApi;

    /* ... use the injected variable */
}
```
Note that the class needs to be annotated with one of Micronaut's [scope annotations](https://docs.micronaut.io/latest/guide/#scopes) like `Singleton` in order to be processed.

More information can be found inside [Inversion of Control guide section](https://docs.micronaut.io/latest/guide/#ioc).

<a name="futuresV1HistoricalDays"></a>
# **futuresV1HistoricalDays**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalDays(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalFundingRateDays"></a>
# **futuresV1HistoricalFundingRateDays**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalFundingRateDays(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalFundingRateHours"></a>
# **futuresV1HistoricalFundingRateHours**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalFundingRateHours(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalFundingRateMessages"></a>
# **futuresV1HistoricalFundingRateMessages**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalFundingRateMessages(marketinstrumentafterTslastCcseqlimitmappingPriorityresponseFormatreturn404OnEmptyResponse)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **afterTs** | `Integer`| Unix timestamp in seconds of the earliest funding rate message in the response | [optional parameter] |
| **lastCcseq** | `Integer`| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional parameter] [default to `0`] |
| **limit** | `Integer`| The maximum number of funding rate messages to return | [optional parameter] [default to `100`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |
| **return404OnEmptyResponse** | `Boolean`| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional parameter] [default to `false`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization
* **[api_key_header](auth.md#api_key_header)**
* **[api_key_query](auth.md#api_key_query)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalFundingRateMessagesHour"></a>
# **futuresV1HistoricalFundingRateMessagesHour**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalFundingRateMessagesHour(marketinstrumenthourTsmappingPriorityresponseFormatreturn404OnEmptyResponse)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **hourTs** | `Integer`| Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. | [optional parameter] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |
| **return404OnEmptyResponse** | `Boolean`| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional parameter] [default to `false`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization
* **[api_key_header](auth.md#api_key_header)**
* **[api_key_query](auth.md#api_key_query)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalFundingRateMinutes"></a>
# **futuresV1HistoricalFundingRateMinutes**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalFundingRateMinutes(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalHours"></a>
# **futuresV1HistoricalHours**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalHours(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalMinutes"></a>
# **futuresV1HistoricalMinutes**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalMinutes(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalOpenInterestDays"></a>
# **futuresV1HistoricalOpenInterestDays**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalOpenInterestDays(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalOpenInterestHours"></a>
# **futuresV1HistoricalOpenInterestHours**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalOpenInterestHours(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalOpenInterestMessages"></a>
# **futuresV1HistoricalOpenInterestMessages**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalOpenInterestMessages(marketinstrumentafterTslastCcseqlimitmappingPriorityresponseFormatreturn404OnEmptyResponse)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **afterTs** | `Integer`| Unix timestamp in seconds of the earliest open interest message in the response | [optional parameter] |
| **lastCcseq** | `Integer`| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional parameter] [default to `0`] |
| **limit** | `Integer`| The maximum number of open interest messages to return | [optional parameter] [default to `100`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |
| **return404OnEmptyResponse** | `Boolean`| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional parameter] [default to `false`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization
* **[api_key_header](auth.md#api_key_header)**
* **[api_key_query](auth.md#api_key_query)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalOpenInterestMessagesHour"></a>
# **futuresV1HistoricalOpenInterestMessagesHour**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalOpenInterestMessagesHour(marketinstrumenthourTsmappingPriorityresponseFormatreturn404OnEmptyResponse)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **hourTs** | `Integer`| Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. | [optional parameter] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |
| **return404OnEmptyResponse** | `Boolean`| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional parameter] [default to `false`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization
* **[api_key_header](auth.md#api_key_header)**
* **[api_key_query](auth.md#api_key_query)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalOpenInterestMinutes"></a>
# **futuresV1HistoricalOpenInterestMinutes**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalOpenInterestMinutes(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalTrades"></a>
# **futuresV1HistoricalTrades**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalTrades(marketinstrumentafterTslastCcseqlimitmappingPriorityresponseFormatreturn404OnEmptyResponse)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **afterTs** | `Integer`| Unix timestamp in seconds of the earliest trade in the response. | [optional parameter] |
| **lastCcseq** | `Integer`| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional parameter] [default to `0`] |
| **limit** | `Integer`| The maximum number of trades to return | [optional parameter] [default to `100`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |
| **return404OnEmptyResponse** | `Boolean`| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional parameter] [default to `false`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization
* **[api_key_header](auth.md#api_key_header)**
* **[api_key_query](auth.md#api_key_query)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1HistoricalTradesHour"></a>
# **futuresV1HistoricalTradesHour**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1HistoricalTradesHour(marketinstrumenthourTsmappingPriorityresponseFormatreturn404OnEmptyResponse)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **hourTs** | `Integer`| Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional parameter] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |
| **return404OnEmptyResponse** | `Boolean`| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional parameter] [default to `false`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization
* **[api_key_header](auth.md#api_key_header)**
* **[api_key_query](auth.md#api_key_query)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1LatestFundingRateTick"></a>
# **futuresV1LatestFundingRateTick**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1LatestFundingRateTick(marketinstrumentsgroupsmappingPriority)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instruments** | [**List&lt;String&gt;**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional parameter] [default to ``] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1LatestInstrumentMetadata"></a>
# **futuresV1LatestInstrumentMetadata**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1LatestInstrumentMetadata(marketinstrumentsgroupsmappingPriority)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instruments** | [**List&lt;String&gt;**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional parameter] [default to ``] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1LatestOpenInterestTick"></a>
# **futuresV1LatestOpenInterestTick**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1LatestOpenInterestTick(marketinstrumentsgroupsmappingPriority)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instruments** | [**List&lt;String&gt;**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional parameter] [default to ``] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1LatestTick"></a>
# **futuresV1LatestTick**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1LatestTick(marketinstrumentsgroupsmappingPriority)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instruments** | [**List&lt;String&gt;**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional parameter] [default to ``] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1Markets"></a>
# **futuresV1Markets**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1Markets(market)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | [optional parameter] [default to ``] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1MarketsInstruments"></a>
# **futuresV1MarketsInstruments**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1MarketsInstruments(marketinstrumentinstrumentStatus)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | [optional parameter] [default to ``] |
| **instrument** | `String`| The mapped instrument to retrieve on a specific market. | [optional parameter] [default to ``] |
| **instrumentStatus** | [**List&lt;String&gt;**](String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional parameter] [default to ``] [enum: `ACTIVE`, `IGNORED`, `RETIRED`, `EXPIRED`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="futuresV1MarketsInstrumentsUnmapped"></a>
# **futuresV1MarketsInstrumentsUnmapped**
```java
Mono<GENERICRESPONSE> FuturesApi.futuresV1MarketsInstrumentsUnmapped(marketinstrumentinstrumentStatus)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | [optional parameter] [default to ``] |
| **instrument** | `String`| The unmapped instrument to retrieve on a specific market. | [optional parameter] [default to ``] |
| **instrumentStatus** | [**List&lt;String&gt;**](String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional parameter] [default to ``] [enum: `ACTIVE`, `IGNORED`, `RETIRED`, `EXPIRED`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="indexV1HistoricalDays"></a>
# **indexV1HistoricalDays**
```java
Mono<GENERICRESPONSE> FuturesApi.indexV1HistoricalDays(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="indexV1HistoricalHours"></a>
# **indexV1HistoricalHours**
```java
Mono<GENERICRESPONSE> FuturesApi.indexV1HistoricalHours(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="indexV1HistoricalMessages"></a>
# **indexV1HistoricalMessages**
```java
Mono<GENERICRESPONSE> FuturesApi.indexV1HistoricalMessages(marketinstrumentafterTslastCcseqlimitmappingPriorityresponseFormatreturn404OnEmptyResponse)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **afterTs** | `Integer`| Unix timestamp in seconds of the earliest index message in the response | [optional parameter] |
| **lastCcseq** | `Integer`| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional parameter] [default to `0`] |
| **limit** | `Integer`| The maximum number of index messages to return | [optional parameter] [default to `100`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |
| **return404OnEmptyResponse** | `Boolean`| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional parameter] [default to `false`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization
* **[api_key_header](auth.md#api_key_header)**
* **[api_key_query](auth.md#api_key_query)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="indexV1HistoricalMessagesHour"></a>
# **indexV1HistoricalMessagesHour**
```java
Mono<GENERICRESPONSE> FuturesApi.indexV1HistoricalMessagesHour(marketinstrumenthourTsmappingPriorityresponseFormatreturn404OnEmptyResponse)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **hourTs** | `Integer`| Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | [optional parameter] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |
| **return404OnEmptyResponse** | `Boolean`| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional parameter] [default to `false`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization
* **[api_key_header](auth.md#api_key_header)**
* **[api_key_query](auth.md#api_key_query)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="indexV1HistoricalMinutes"></a>
# **indexV1HistoricalMinutes**
```java
Mono<GENERICRESPONSE> FuturesApi.indexV1HistoricalMinutes(marketinstrumentgroupslimittoTsaggregatefillmappingPriorityresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instrument** | `String`| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="indexV1LatestInstrumentMetadata"></a>
# **indexV1LatestInstrumentMetadata**
```java
Mono<GENERICRESPONSE> FuturesApi.indexV1LatestInstrumentMetadata(marketinstrumentsgroupsmappingPriority)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instruments** | [**List&lt;String&gt;**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional parameter] [default to ``] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="indexV1LatestTick"></a>
# **indexV1LatestTick**
```java
Mono<GENERICRESPONSE> FuturesApi.indexV1LatestTick(marketinstrumentsgroupsmappingPriority)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | |
| **instruments** | [**List&lt;String&gt;**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional parameter] [default to ``] |
| **mappingPriority** | `String`| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional parameter] [default to `CHECK_MAPPED_FIRST`] [enum: `CHECK_MAPPED_FIRST`, `CHECK_UNMAPPED_FIRST`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="indexV1Markets"></a>
# **indexV1Markets**
```java
Mono<GENERICRESPONSE> FuturesApi.indexV1Markets(market)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | [optional parameter] [default to ``] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="indexV1MarketsInstruments"></a>
# **indexV1MarketsInstruments**
```java
Mono<GENERICRESPONSE> FuturesApi.indexV1MarketsInstruments(marketinstrumentinstrumentStatus)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | [optional parameter] [default to ``] |
| **instrument** | `String`| The mapped instrument to retrieve on a specific market. | [optional parameter] [default to ``] |
| **instrumentStatus** | [**List&lt;String&gt;**](String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional parameter] [default to ``] [enum: `ACTIVE`, `IGNORED`, `RETIRED`, `EXPIRED`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="indexV1MarketsInstrumentsUnmapped"></a>
# **indexV1MarketsInstrumentsUnmapped**
```java
Mono<GENERICRESPONSE> FuturesApi.indexV1MarketsInstrumentsUnmapped(marketinstrumentinstrumentStatus)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **market** | `String`| The exchange to obtain data from | [optional parameter] [default to ``] |
| **instrument** | `String`| The unmapped instrument to retrieve on a specific market. | [optional parameter] [default to ``] |
| **instrumentStatus** | [**List&lt;String&gt;**](String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional parameter] [default to ``] [enum: `ACTIVE`, `IGNORED`, `RETIRED`, `EXPIRED`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

