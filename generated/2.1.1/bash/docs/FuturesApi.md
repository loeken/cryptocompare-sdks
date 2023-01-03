# FuturesApi

All URIs are relative to **

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



## futuresV1HistoricalDays



### Example

```bash
 futuresV1HistoricalDays  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] [default to []]
 **limit** | **integer** | The number of data points to return | [optional] [default to 30]
 **toTs** | **integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalFundingRateDays



### Example

```bash
 futuresV1HistoricalFundingRateDays  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to []]
 **limit** | **integer** | The number of data points to return | [optional] [default to 30]
 **toTs** | **integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalFundingRateHours



### Example

```bash
 futuresV1HistoricalFundingRateHours  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to []]
 **limit** | **integer** | The number of data points to return | [optional] [default to 30]
 **toTs** | **integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalFundingRateMessages



### Example

```bash
 futuresV1HistoricalFundingRateMessages  market=value  instrument=value  after_ts=value  last_ccseq=value  limit=value  mapping_priority=value  response_format=value  return_404_on_empty_response=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **afterTs** | **integer** | Unix timestamp in seconds of the earliest funding rate message in the response | [optional] [default to null]
 **lastCcseq** | **integer** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **integer** | The maximum number of funding rate messages to return | [optional] [default to 100]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]
 **return404OnEmptyResponse** | **boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalFundingRateMessagesHour



### Example

```bash
 futuresV1HistoricalFundingRateMessagesHour  market=value  instrument=value  hour_ts=value  mapping_priority=value  response_format=value  return_404_on_empty_response=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **hourTs** | **integer** | Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. | [optional] [default to null]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]
 **return404OnEmptyResponse** | **boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalFundingRateMinutes



### Example

```bash
 futuresV1HistoricalFundingRateMinutes  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to []]
 **limit** | **integer** | The number of data points to return | [optional] [default to 30]
 **toTs** | **integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalHours



### Example

```bash
 futuresV1HistoricalHours  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] [default to []]
 **limit** | **integer** | The number of data points to return | [optional] [default to 30]
 **toTs** | **integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalMinutes



### Example

```bash
 futuresV1HistoricalMinutes  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] [default to []]
 **limit** | **integer** | The number of data points to return | [optional] [default to 30]
 **toTs** | **integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalOpenInterestDays



### Example

```bash
 futuresV1HistoricalOpenInterestDays  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to []]
 **limit** | **integer** | The number of data points to return | [optional] [default to 30]
 **toTs** | **integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalOpenInterestHours



### Example

```bash
 futuresV1HistoricalOpenInterestHours  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to []]
 **limit** | **integer** | The number of data points to return | [optional] [default to 30]
 **toTs** | **integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalOpenInterestMessages



### Example

```bash
 futuresV1HistoricalOpenInterestMessages  market=value  instrument=value  after_ts=value  last_ccseq=value  limit=value  mapping_priority=value  response_format=value  return_404_on_empty_response=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **afterTs** | **integer** | Unix timestamp in seconds of the earliest open interest message in the response | [optional] [default to null]
 **lastCcseq** | **integer** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **integer** | The maximum number of open interest messages to return | [optional] [default to 100]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]
 **return404OnEmptyResponse** | **boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalOpenInterestMessagesHour



### Example

```bash
 futuresV1HistoricalOpenInterestMessagesHour  market=value  instrument=value  hour_ts=value  mapping_priority=value  response_format=value  return_404_on_empty_response=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **hourTs** | **integer** | Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. | [optional] [default to null]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]
 **return404OnEmptyResponse** | **boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalOpenInterestMinutes



### Example

```bash
 futuresV1HistoricalOpenInterestMinutes  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to []]
 **limit** | **integer** | The number of data points to return | [optional] [default to 30]
 **toTs** | **integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalTrades



### Example

```bash
 futuresV1HistoricalTrades  market=value  instrument=value  after_ts=value  last_ccseq=value  limit=value  mapping_priority=value  response_format=value  return_404_on_empty_response=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **afterTs** | **integer** | Unix timestamp in seconds of the earliest trade in the response. | [optional] [default to null]
 **lastCcseq** | **integer** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **integer** | The maximum number of trades to return | [optional] [default to 100]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]
 **return404OnEmptyResponse** | **boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1HistoricalTradesHour



### Example

```bash
 futuresV1HistoricalTradesHour  market=value  instrument=value  hour_ts=value  mapping_priority=value  response_format=value  return_404_on_empty_response=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **hourTs** | **integer** | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional] [default to null]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]
 **return404OnEmptyResponse** | **boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1LatestFundingRateTick



### Example

```bash
 futuresV1LatestFundingRateTick  market=value  Specify as:  instruments="value1,value2,..."  Specify as:  groups="value1,value2,..."  mapping_priority=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instruments** | [**array[string]**](string.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to []]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1LatestInstrumentMetadata



### Example

```bash
 futuresV1LatestInstrumentMetadata  market=value  Specify as:  instruments="value1,value2,..."  Specify as:  groups="value1,value2,..."  mapping_priority=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instruments** | [**array[string]**](string.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] [default to []]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1LatestOpenInterestTick



### Example

```bash
 futuresV1LatestOpenInterestTick  market=value  Specify as:  instruments="value1,value2,..."  Specify as:  groups="value1,value2,..."  mapping_priority=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instruments** | [**array[string]**](string.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to []]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1LatestTick



### Example

```bash
 futuresV1LatestTick  market=value  Specify as:  instruments="value1,value2,..."  Specify as:  groups="value1,value2,..."  mapping_priority=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instruments** | [**array[string]**](string.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to []]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1Markets



### Example

```bash
 futuresV1Markets  market=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [optional] [default to ]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1MarketsInstruments



### Example

```bash
 futuresV1MarketsInstruments  market=value  instrument=value  Specify as:  instrument_status="value1,value2,..."
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [optional] [default to ]
 **instrument** | **string** | The mapped instrument to retrieve on a specific market. | [optional] [default to ]
 **instrumentStatus** | [**array[string]**](string.md) | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to []]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## futuresV1MarketsInstrumentsUnmapped



### Example

```bash
 futuresV1MarketsInstrumentsUnmapped  market=value  instrument=value  Specify as:  instrument_status="value1,value2,..."
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [optional] [default to ]
 **instrument** | **string** | The unmapped instrument to retrieve on a specific market. | [optional] [default to ]
 **instrumentStatus** | [**array[string]**](string.md) | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to []]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## indexV1HistoricalDays



### Example

```bash
 indexV1HistoricalDays  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] [default to []]
 **limit** | **integer** | The number of data points to return | [optional] [default to 30]
 **toTs** | **integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## indexV1HistoricalHours



### Example

```bash
 indexV1HistoricalHours  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] [default to []]
 **limit** | **integer** | The number of data points to return | [optional] [default to 30]
 **toTs** | **integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## indexV1HistoricalMessages



### Example

```bash
 indexV1HistoricalMessages  market=value  instrument=value  after_ts=value  last_ccseq=value  limit=value  mapping_priority=value  response_format=value  return_404_on_empty_response=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **afterTs** | **integer** | Unix timestamp in seconds of the earliest index message in the response | [optional] [default to null]
 **lastCcseq** | **integer** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **integer** | The maximum number of index messages to return | [optional] [default to 100]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]
 **return404OnEmptyResponse** | **boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## indexV1HistoricalMessagesHour



### Example

```bash
 indexV1HistoricalMessagesHour  market=value  instrument=value  hour_ts=value  mapping_priority=value  response_format=value  return_404_on_empty_response=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **hourTs** | **integer** | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | [optional] [default to null]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]
 **return404OnEmptyResponse** | **boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## indexV1HistoricalMinutes



### Example

```bash
 indexV1HistoricalMinutes  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] [default to []]
 **limit** | **integer** | The number of data points to return | [optional] [default to 30]
 **toTs** | **integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## indexV1LatestInstrumentMetadata



### Example

```bash
 indexV1LatestInstrumentMetadata  market=value  Specify as:  instruments="value1,value2,..."  Specify as:  groups="value1,value2,..."  mapping_priority=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instruments** | [**array[string]**](string.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] [default to []]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## indexV1LatestTick



### Example

```bash
 indexV1LatestTick  market=value  Specify as:  instruments="value1,value2,..."  Specify as:  groups="value1,value2,..."  mapping_priority=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instruments** | [**array[string]**](string.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to []]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## indexV1Markets



### Example

```bash
 indexV1Markets  market=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [optional] [default to ]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## indexV1MarketsInstruments



### Example

```bash
 indexV1MarketsInstruments  market=value  instrument=value  Specify as:  instrument_status="value1,value2,..."
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [optional] [default to ]
 **instrument** | **string** | The mapped instrument to retrieve on a specific market. | [optional] [default to ]
 **instrumentStatus** | [**array[string]**](string.md) | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to []]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## indexV1MarketsInstrumentsUnmapped



### Example

```bash
 indexV1MarketsInstrumentsUnmapped  market=value  instrument=value  Specify as:  instrument_status="value1,value2,..."
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [optional] [default to ]
 **instrument** | **string** | The unmapped instrument to retrieve on a specific market. | [optional] [default to ]
 **instrumentStatus** | [**array[string]**](string.md) | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to []]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

