# REFERENCERATES_API

All URIs are relative to *https://data-api.cryptocompare.com*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**index_cc_v1_historical_days**](REFERENCERATES_API.md#index_cc_v1_historical_days) | **Get** /index/cc/v1/historical/days | 
[**index_cc_v1_historical_hours**](REFERENCERATES_API.md#index_cc_v1_historical_hours) | **Get** /index/cc/v1/historical/hours | 
[**index_cc_v1_historical_messages**](REFERENCERATES_API.md#index_cc_v1_historical_messages) | **Get** /index/cc/v1/historical/messages | 
[**index_cc_v1_historical_messages_hour**](REFERENCERATES_API.md#index_cc_v1_historical_messages_hour) | **Get** /index/cc/v1/historical/messages/hour | 
[**index_cc_v1_historical_minutes**](REFERENCERATES_API.md#index_cc_v1_historical_minutes) | **Get** /index/cc/v1/historical/minutes | 
[**index_cc_v1_latest_instrument_metadata**](REFERENCERATES_API.md#index_cc_v1_latest_instrument_metadata) | **Get** /index/cc/v1/latest/instrument/metadata | 
[**index_cc_v1_latest_tick**](REFERENCERATES_API.md#index_cc_v1_latest_tick) | **Get** /index/cc/v1/latest/tick | 
[**index_cc_v1_markets**](REFERENCERATES_API.md#index_cc_v1_markets) | **Get** /index/cc/v1/markets | 
[**index_cc_v1_markets_instruments**](REFERENCERATES_API.md#index_cc_v1_markets_instruments) | **Get** /index/cc/v1/markets/instruments | 
[**index_cc_v1_markets_instruments_unmapped**](REFERENCERATES_API.md#index_cc_v1_markets_instruments_unmapped) | **Get** /index/cc/v1/markets/instruments/unmapped | 


# **index_cc_v1_historical_days**
> index_cc_v1_historical_days (market: STRING_32 ; instrument: STRING_32 ; groups:  detachable LIST [STRING_32] ; limit:  detachable INTEGER_32 ; to_ts:  detachable INTEGER_32 ; aggregate:  detachable INTEGER_32 ; fill:  detachable BOOLEAN ; mapping_priority:  detachable STRING_32 ; response_format:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **STRING_32**| The exchange to obtain data from | [default to null]
 **instrument** | **STRING_32**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**LIST [STRING_32]**](STRING_32.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] [default to []]
 **limit** | **INTEGER_32**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **INTEGER_32**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **INTEGER_32**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **BOOLEAN**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **STRING_32**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **response_format** | **STRING_32**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_cc_v1_historical_hours**
> index_cc_v1_historical_hours (market: STRING_32 ; instrument: STRING_32 ; groups:  detachable LIST [STRING_32] ; limit:  detachable INTEGER_32 ; to_ts:  detachable INTEGER_32 ; aggregate:  detachable INTEGER_32 ; fill:  detachable BOOLEAN ; mapping_priority:  detachable STRING_32 ; response_format:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **STRING_32**| The exchange to obtain data from | [default to null]
 **instrument** | **STRING_32**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**LIST [STRING_32]**](STRING_32.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] [default to []]
 **limit** | **INTEGER_32**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **INTEGER_32**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **INTEGER_32**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **BOOLEAN**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **STRING_32**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **response_format** | **STRING_32**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_cc_v1_historical_messages**
> index_cc_v1_historical_messages (market: STRING_32 ; instrument: STRING_32 ; after_ts:  detachable INTEGER_32 ; last_ccseq:  detachable INTEGER_32 ; mapping_priority:  detachable STRING_32 ; limit:  detachable INTEGER_32 ; response_format:  detachable STRING_32 ; return_404_on_empty_response:  detachable BOOLEAN ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **STRING_32**| The exchange to obtain data from | [default to null]
 **instrument** | **STRING_32**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **after_ts** | **INTEGER_32**| Unix timestamp in seconds of the earliest index message in the response | [optional] [default to null]
 **last_ccseq** | **INTEGER_32**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **mapping_priority** | **STRING_32**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **limit** | **INTEGER_32**| The maximum number of index messages to return | [optional] [default to 100]
 **response_format** | **STRING_32**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]
 **return_404_on_empty_response** | **BOOLEAN**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_cc_v1_historical_messages_hour**
> index_cc_v1_historical_messages_hour (market: STRING_32 ; instrument: STRING_32 ; hour_ts:  detachable INTEGER_32 ; mapping_priority:  detachable STRING_32 ; response_format:  detachable STRING_32 ; return_404_on_empty_response:  detachable BOOLEAN ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **STRING_32**| The exchange to obtain data from | [default to null]
 **instrument** | **STRING_32**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **hour_ts** | **INTEGER_32**| Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | [optional] [default to null]
 **mapping_priority** | **STRING_32**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **response_format** | **STRING_32**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]
 **return_404_on_empty_response** | **BOOLEAN**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_cc_v1_historical_minutes**
> index_cc_v1_historical_minutes (market: STRING_32 ; instrument: STRING_32 ; groups:  detachable LIST [STRING_32] ; limit:  detachable INTEGER_32 ; to_ts:  detachable INTEGER_32 ; aggregate:  detachable INTEGER_32 ; fill:  detachable BOOLEAN ; mapping_priority:  detachable STRING_32 ; response_format:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **STRING_32**| The exchange to obtain data from | [default to null]
 **instrument** | **STRING_32**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**LIST [STRING_32]**](STRING_32.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] [default to []]
 **limit** | **INTEGER_32**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **INTEGER_32**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **INTEGER_32**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **BOOLEAN**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **STRING_32**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]
 **response_format** | **STRING_32**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_cc_v1_latest_instrument_metadata**
> index_cc_v1_latest_instrument_metadata (market: STRING_32 ; instruments: LIST [STRING_32] ; groups:  detachable LIST [STRING_32] ; mapping_priority:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **STRING_32**| The exchange to obtain data from | [default to null]
 **instruments** | [**LIST [STRING_32]**](STRING_32.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**LIST [STRING_32]**](STRING_32.md)| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] [default to []]
 **mapping_priority** | **STRING_32**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_cc_v1_latest_tick**
> index_cc_v1_latest_tick (market: STRING_32 ; instruments: LIST [STRING_32] ; groups:  detachable LIST [STRING_32] ; mapping_priority:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **STRING_32**| The exchange to obtain data from | [default to null]
 **instruments** | [**LIST [STRING_32]**](STRING_32.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | [default to null]
 **groups** | [**LIST [STRING_32]**](STRING_32.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to []]
 **mapping_priority** | **STRING_32**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_cc_v1_markets**
> index_cc_v1_markets (market:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **STRING_32**| The exchange to obtain data from | [optional] [default to ]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_cc_v1_markets_instruments**
> index_cc_v1_markets_instruments (market:  detachable STRING_32 ; instrument:  detachable STRING_32 ; instrument_status:  detachable LIST [STRING_32] ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **STRING_32**| The exchange to obtain data from | [optional] [default to ]
 **instrument** | **STRING_32**| The mapped instrument to retrieve on a specific market. | [optional] [default to ]
 **instrument_status** | [**LIST [STRING_32]**](STRING_32.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to []]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_cc_v1_markets_instruments_unmapped**
> index_cc_v1_markets_instruments_unmapped (market:  detachable STRING_32 ; instrument:  detachable STRING_32 ; instrument_status:  detachable LIST [STRING_32] ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **STRING_32**| The exchange to obtain data from | [optional] [default to ]
 **instrument** | **STRING_32**| The unmapped instrument to retrieve on a specific market. | [optional] [default to ]
 **instrument_status** | [**LIST [STRING_32]**](STRING_32.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to []]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

