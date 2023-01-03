# \SpotApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spot_v1_historical_days**](SpotApi.md#spot_v1_historical_days) | **GET** /spot/v1/historical/days | 
[**spot_v1_historical_hours**](SpotApi.md#spot_v1_historical_hours) | **GET** /spot/v1/historical/hours | 
[**spot_v1_historical_minutes**](SpotApi.md#spot_v1_historical_minutes) | **GET** /spot/v1/historical/minutes | 
[**spot_v1_historical_orderbook_l2_snapshot_minute**](SpotApi.md#spot_v1_historical_orderbook_l2_snapshot_minute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
[**spot_v1_historical_trades**](SpotApi.md#spot_v1_historical_trades) | **GET** /spot/v1/historical/trades | 
[**spot_v1_historical_trades_hour**](SpotApi.md#spot_v1_historical_trades_hour) | **GET** /spot/v1/historical/trades/hour | 
[**spot_v1_latest_instrument_metadata**](SpotApi.md#spot_v1_latest_instrument_metadata) | **GET** /spot/v1/latest/instrument/metadata | 
[**spot_v1_latest_tick**](SpotApi.md#spot_v1_latest_tick) | **GET** /spot/v1/latest/tick | 
[**spot_v1_markets**](SpotApi.md#spot_v1_markets) | **GET** /spot/v1/markets | 
[**spot_v1_markets_instruments**](SpotApi.md#spot_v1_markets_instruments) | **GET** /spot/v1/markets/instruments | 
[**spot_v1_markets_instruments_unmapped**](SpotApi.md#spot_v1_markets_instruments_unmapped) | **GET** /spot/v1/markets/instruments/unmapped | 



## spot_v1_historical_days

> crate::models::SpotInstrumentHistoDataResponse spot_v1_historical_days(market, instrument, groups, limit, to_ts, aggregate, fill, mapping_priority, response_format)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**market** | **String** | The exchange to obtain data from | [required] |
**instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | [required] |
**groups** | Option<[**Vec<String>**](String.md)> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME |  |[default to []]
**limit** | Option<**i32**> | The number of data points to return |  |[default to 30]
**to_ts** | Option<**i32**> | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} |  |
**aggregate** | Option<**i32**> | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries |  |[default to 1]
**fill** | Option<**bool**> | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. |  |[default to true]
**mapping_priority** | Option<**String**> | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST |  |[default to CHECK_MAPPED_FIRST]
**response_format** | Option<**String**> | The format of the data response in uppercase. It can be one of the following: JSON,CSV |  |[default to JSON]

### Return type

[**crate::models::SpotInstrumentHistoDataResponse**](SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spot_v1_historical_hours

> crate::models::SpotInstrumentHistoDataResponse spot_v1_historical_hours(market, instrument, groups, limit, to_ts, aggregate, fill, mapping_priority, response_format)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**market** | **String** | The exchange to obtain data from | [required] |
**instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | [required] |
**groups** | Option<[**Vec<String>**](String.md)> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME |  |[default to []]
**limit** | Option<**i32**> | The number of data points to return |  |[default to 30]
**to_ts** | Option<**i32**> | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} |  |
**aggregate** | Option<**i32**> | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries |  |[default to 1]
**fill** | Option<**bool**> | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. |  |[default to true]
**mapping_priority** | Option<**String**> | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST |  |[default to CHECK_MAPPED_FIRST]
**response_format** | Option<**String**> | The format of the data response in uppercase. It can be one of the following: JSON,CSV |  |[default to JSON]

### Return type

[**crate::models::SpotInstrumentHistoDataResponse**](SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spot_v1_historical_minutes

> crate::models::SpotInstrumentHistoDataResponse spot_v1_historical_minutes(market, instrument, groups, limit, to_ts, aggregate, fill, mapping_priority, response_format)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**market** | **String** | The exchange to obtain data from | [required] |
**instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | [required] |
**groups** | Option<[**Vec<String>**](String.md)> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME |  |[default to []]
**limit** | Option<**i32**> | The number of data points to return |  |[default to 30]
**to_ts** | Option<**i32**> | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} |  |
**aggregate** | Option<**i32**> | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries |  |[default to 1]
**fill** | Option<**bool**> | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. |  |[default to true]
**mapping_priority** | Option<**String**> | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST |  |[default to CHECK_MAPPED_FIRST]
**response_format** | Option<**String**> | The format of the data response in uppercase. It can be one of the following: JSON,CSV |  |[default to JSON]

### Return type

[**crate::models::SpotInstrumentHistoDataResponse**](SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spot_v1_historical_orderbook_l2_snapshot_minute

> crate::models::GenericResponse spot_v1_historical_orderbook_l2_snapshot_minute(market, instrument, minute_ts, depth, mapping_priority, response_format)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**market** | **String** | The exchange to obtain data from | [required] |
**instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | [required] |
**minute_ts** | **i32** | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. | [required] |
**depth** | Option<**i32**> | The number of top bids and asks to return. |  |[default to 50]
**mapping_priority** | Option<**String**> | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST |  |[default to CHECK_MAPPED_FIRST]
**response_format** | Option<**String**> | The format of the data response in uppercase. It can be one of the following: JSON,CSV |  |[default to JSON]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spot_v1_historical_trades

> crate::models::SpotInstrumentTradeResponse spot_v1_historical_trades(market, instrument, after_ts, last_ccseq, limit, mapping_priority, response_format, return_404_on_empty_response)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**market** | **String** | The exchange to obtain data from | [required] |
**instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | [required] |
**after_ts** | Option<**i32**> | Unix timestamp in seconds of the earliest trade in the response. |  |
**last_ccseq** | Option<**i32**> | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. |  |[default to 0]
**limit** | Option<**i32**> | The maximum number of trades to return |  |[default to 100]
**mapping_priority** | Option<**String**> | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST |  |[default to CHECK_MAPPED_FIRST]
**response_format** | Option<**String**> | The format of the data response in uppercase. It can be one of the following: JSON,CSV |  |[default to JSON]
**return_404_on_empty_response** | Option<**bool**> | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. |  |[default to false]

### Return type

[**crate::models::SpotInstrumentTradeResponse**](SPOT_INSTRUMENT_TRADE_RESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spot_v1_historical_trades_hour

> crate::models::SpotInstrumentTradeResponse spot_v1_historical_trades_hour(market, instrument, hour_ts, mapping_priority, response_format, return_404_on_empty_response)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**market** | **String** | The exchange to obtain data from | [required] |
**instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | [required] |
**hour_ts** | Option<**i32**> | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. |  |
**mapping_priority** | Option<**String**> | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST |  |[default to CHECK_MAPPED_FIRST]
**response_format** | Option<**String**> | The format of the data response in uppercase. It can be one of the following: JSON,CSV |  |[default to JSON]
**return_404_on_empty_response** | Option<**bool**> | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. |  |[default to false]

### Return type

[**crate::models::SpotInstrumentTradeResponse**](SPOT_INSTRUMENT_TRADE_RESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spot_v1_latest_instrument_metadata

> crate::models::SpotInstrumentMetadataResponse spot_v1_latest_instrument_metadata(market, instruments, groups, mapping_priority)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**market** | **String** | The exchange to obtain data from | [required] |
**instruments** | [**Vec<String>**](String.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | [required] |
**groups** | Option<[**Vec<String>**](String.md)> | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE |  |[default to []]
**mapping_priority** | Option<**String**> | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST |  |[default to CHECK_MAPPED_FIRST]

### Return type

[**crate::models::SpotInstrumentMetadataResponse**](SPOT_INSTRUMENT_METADATA_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spot_v1_latest_tick

> crate::models::SpotInstrumentMarketDataResponse spot_v1_latest_tick(market, instruments, groups, mapping_priority)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**market** | **String** | The exchange to obtain data from | [required] |
**instruments** | [**Vec<String>**](String.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | [required] |
**groups** | Option<[**Vec<String>**](String.md)> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME |  |[default to []]
**mapping_priority** | Option<**String**> | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST |  |[default to CHECK_MAPPED_FIRST]

### Return type

[**crate::models::SpotInstrumentMarketDataResponse**](SPOT_INSTRUMENT_MARKET_DATA_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spot_v1_markets

> crate::models::GenericResponse spot_v1_markets(market)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**market** | Option<**String**> | The exchange to obtain data from |  |[default to ]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spot_v1_markets_instruments

> crate::models::GenericResponse spot_v1_markets_instruments(market, instrument, instrument_status)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**market** | Option<**String**> | The exchange to obtain data from |  |[default to ]
**instrument** | Option<**String**> | The mapped instrument to retrieve on a specific market. |  |[default to ]
**instrument_status** | Option<[**Vec<String>**](String.md)> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED |  |[default to ["ACTIVE","IGNORED","RETIRED","EXPIRED"]]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## spot_v1_markets_instruments_unmapped

> crate::models::GenericResponse spot_v1_markets_instruments_unmapped(market, instrument, instrument_status)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**market** | Option<**String**> | The exchange to obtain data from |  |[default to ]
**instrument** | Option<**String**> | The unmapped instrument to retrieve on a specific market. |  |[default to ]
**instrument_status** | Option<[**Vec<String>**](String.md)> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED |  |[default to ["ACTIVE","IGNORED","RETIRED","EXPIRED"]]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

