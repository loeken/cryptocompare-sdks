# SpotApi

All URIs are relative to **

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



## spotV1HistoricalDays



### Example

```bash
 spotV1HistoricalDays  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
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

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spotV1HistoricalHours



### Example

```bash
 spotV1HistoricalHours  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
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

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spotV1HistoricalMinutes



### Example

```bash
 spotV1HistoricalMinutes  market=value  instrument=value  Specify as:  groups="value1,value2,..."  limit=value  to_ts=value  aggregate=value  fill=value  mapping_priority=value  response_format=value
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

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spotV1HistoricalOrderbookL2SnapshotMinute



### Example

```bash
 spotV1HistoricalOrderbookL2SnapshotMinute  market=value  instrument=value  minute_ts=value  depth=value  mapping_priority=value  response_format=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list 
        but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **minuteTs** | **integer** | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. | [default to null]
 **depth** | **integer** | The number of top bids and asks to return. | [optional] [default to 50]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spotV1HistoricalTrades



### Example

```bash
 spotV1HistoricalTrades  market=value  instrument=value  after_ts=value  last_ccseq=value  limit=value  mapping_priority=value  response_format=value  return_404_on_empty_response=value
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

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spotV1HistoricalTradesHour



### Example

```bash
 spotV1HistoricalTradesHour  market=value  instrument=value  hour_ts=value  mapping_priority=value  response_format=value  return_404_on_empty_response=value
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

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spotV1LatestInstrumentMetadata



### Example

```bash
 spotV1LatestInstrumentMetadata  market=value  Specify as:  instruments="value1,value2,..."  Specify as:  groups="value1,value2,..."  mapping_priority=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instruments** | [**array[string]**](string.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] [default to []]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]

### Return type

[**SPOTINSTRUMENTMETADATARESPONSE**](SPOTINSTRUMENTMETADATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spotV1LatestTick



### Example

```bash
 spotV1LatestTick  market=value  Specify as:  instruments="value1,value2,..."  Specify as:  groups="value1,value2,..."  mapping_priority=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to null]
 **instruments** | [**array[string]**](string.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**array[string]**](string.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to []]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]

### Return type

[**SPOTINSTRUMENTMARKETDATARESPONSE**](SPOTINSTRUMENTMARKETDATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spotV1Markets



### Example

```bash
 spotV1Markets  market=value
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


## spotV1MarketsInstruments



### Example

```bash
 spotV1MarketsInstruments  market=value  instrument=value  Specify as:  instrument_status="value1,value2,..."
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [optional] [default to ]
 **instrument** | **string** | The mapped instrument to retrieve on a specific market. | [optional] [default to ]
 **instrumentStatus** | [**array[string]**](string.md) | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to [&quot;ACTIVE&quot;,&quot;IGNORED&quot;,&quot;RETIRED&quot;,&quot;EXPIRED&quot;]]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spotV1MarketsInstrumentsUnmapped



### Example

```bash
 spotV1MarketsInstrumentsUnmapped  market=value  instrument=value  Specify as:  instrument_status="value1,value2,..."
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [optional] [default to ]
 **instrument** | **string** | The unmapped instrument to retrieve on a specific market. | [optional] [default to ]
 **instrumentStatus** | [**array[string]**](string.md) | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to [&quot;ACTIVE&quot;,&quot;IGNORED&quot;,&quot;RETIRED&quot;,&quot;EXPIRED&quot;]]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

