# SpotAPI

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SpotAPI_spotV1HistoricalDays**](SpotAPI.md#SpotAPI_spotV1HistoricalDays) | **GET** /spot/v1/historical/days | 
[**SpotAPI_spotV1HistoricalHours**](SpotAPI.md#SpotAPI_spotV1HistoricalHours) | **GET** /spot/v1/historical/hours | 
[**SpotAPI_spotV1HistoricalMinutes**](SpotAPI.md#SpotAPI_spotV1HistoricalMinutes) | **GET** /spot/v1/historical/minutes | 
[**SpotAPI_spotV1HistoricalOrderbookL2SnapshotMinute**](SpotAPI.md#SpotAPI_spotV1HistoricalOrderbookL2SnapshotMinute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
[**SpotAPI_spotV1HistoricalTrades**](SpotAPI.md#SpotAPI_spotV1HistoricalTrades) | **GET** /spot/v1/historical/trades | 
[**SpotAPI_spotV1HistoricalTradesHour**](SpotAPI.md#SpotAPI_spotV1HistoricalTradesHour) | **GET** /spot/v1/historical/trades/hour | 
[**SpotAPI_spotV1LatestInstrumentMetadata**](SpotAPI.md#SpotAPI_spotV1LatestInstrumentMetadata) | **GET** /spot/v1/latest/instrument/metadata | 
[**SpotAPI_spotV1LatestTick**](SpotAPI.md#SpotAPI_spotV1LatestTick) | **GET** /spot/v1/latest/tick | 
[**SpotAPI_spotV1Markets**](SpotAPI.md#SpotAPI_spotV1Markets) | **GET** /spot/v1/markets | 
[**SpotAPI_spotV1MarketsInstruments**](SpotAPI.md#SpotAPI_spotV1MarketsInstruments) | **GET** /spot/v1/markets/instruments | 
[**SpotAPI_spotV1MarketsInstrumentsUnmapped**](SpotAPI.md#SpotAPI_spotV1MarketsInstrumentsUnmapped) | **GET** /spot/v1/markets/instruments/unmapped | 


# **SpotAPI_spotV1HistoricalDays**
```c
spot_instrument_histo_data_response_t* SpotAPI_spotV1HistoricalDays(apiClient_t *apiClient, char * market, char * instrument, list_t * groups, int limit, int to_ts, int aggregate, int fill, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalDays_mapping_priority_e mapping_priority, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalDays_response_format_e response_format);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instrument** | **char \*** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
**groups** | **[list_t](char.md) \*** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
**limit** | **int** | The number of data points to return | [optional] [default to 30]
**to_ts** | **int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
**aggregate** | **int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
**fill** | **int** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalDays_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalDays_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[spot_instrument_histo_data_response_t](spot_instrument_histo_data_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SpotAPI_spotV1HistoricalHours**
```c
spot_instrument_histo_data_response_t* SpotAPI_spotV1HistoricalHours(apiClient_t *apiClient, char * market, char * instrument, list_t * groups, int limit, int to_ts, int aggregate, int fill, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalHours_mapping_priority_e mapping_priority, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalHours_response_format_e response_format);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instrument** | **char \*** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
**groups** | **[list_t](char.md) \*** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
**limit** | **int** | The number of data points to return | [optional] [default to 30]
**to_ts** | **int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
**aggregate** | **int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
**fill** | **int** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalHours_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalHours_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[spot_instrument_histo_data_response_t](spot_instrument_histo_data_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SpotAPI_spotV1HistoricalMinutes**
```c
spot_instrument_histo_data_response_t* SpotAPI_spotV1HistoricalMinutes(apiClient_t *apiClient, char * market, char * instrument, list_t * groups, int limit, int to_ts, int aggregate, int fill, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalMinutes_mapping_priority_e mapping_priority, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalMinutes_response_format_e response_format);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instrument** | **char \*** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
**groups** | **[list_t](char.md) \*** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
**limit** | **int** | The number of data points to return | [optional] [default to 30]
**to_ts** | **int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
**aggregate** | **int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
**fill** | **int** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalMinutes_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalMinutes_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[spot_instrument_histo_data_response_t](spot_instrument_histo_data_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SpotAPI_spotV1HistoricalOrderbookL2SnapshotMinute**
```c
generic_response_t* SpotAPI_spotV1HistoricalOrderbookL2SnapshotMinute(apiClient_t *apiClient, char * market, char * instrument, int minute_ts, int depth, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalOrderbookL2SnapshotMinute_mapping_priority_e mapping_priority, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalOrderbookL2SnapshotMinute_response_format_e response_format);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instrument** | **char \*** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
**minute_ts** | **int** | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. | 
**depth** | **int** | The number of top bids and asks to return. | [optional] [default to 50]
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalOrderbookL2SnapshotMinute_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalOrderbookL2SnapshotMinute_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SpotAPI_spotV1HistoricalTrades**
```c
spot_instrument_trade_response_t* SpotAPI_spotV1HistoricalTrades(apiClient_t *apiClient, char * market, char * instrument, int after_ts, int last_ccseq, int limit, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalTrades_mapping_priority_e mapping_priority, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalTrades_response_format_e response_format, int return_404_on_empty_response);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instrument** | **char \*** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
**after_ts** | **int** | Unix timestamp in seconds of the earliest trade in the response. | [optional] 
**last_ccseq** | **int** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
**limit** | **int** | The maximum number of trades to return | [optional] [default to 100]
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalTrades_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalTrades_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
**return_404_on_empty_response** | **int** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[spot_instrument_trade_response_t](spot_instrument_trade_response.md) *


### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SpotAPI_spotV1HistoricalTradesHour**
```c
spot_instrument_trade_response_t* SpotAPI_spotV1HistoricalTradesHour(apiClient_t *apiClient, char * market, char * instrument, int hour_ts, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalTradesHour_mapping_priority_e mapping_priority, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalTradesHour_response_format_e response_format, int return_404_on_empty_response);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instrument** | **char \*** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
**hour_ts** | **int** | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional] 
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalTradesHour_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1HistoricalTradesHour_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
**return_404_on_empty_response** | **int** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[spot_instrument_trade_response_t](spot_instrument_trade_response.md) *


### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SpotAPI_spotV1LatestInstrumentMetadata**
```c
spot_instrument_metadata_response_t* SpotAPI_spotV1LatestInstrumentMetadata(apiClient_t *apiClient, char * market, list_t * instruments, list_t * groups, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1LatestInstrumentMetadata_mapping_priority_e mapping_priority);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instruments** | **[list_t](char.md) \*** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
**groups** | **[list_t](char.md) \*** | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] 
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1LatestInstrumentMetadata_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[spot_instrument_metadata_response_t](spot_instrument_metadata_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SpotAPI_spotV1LatestTick**
```c
spot_instrument_market_data_response_t* SpotAPI_spotV1LatestTick(apiClient_t *apiClient, char * market, list_t * instruments, list_t * groups, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1LatestTick_mapping_priority_e mapping_priority);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instruments** | **[list_t](char.md) \*** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
**groups** | **[list_t](char.md) \*** | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_spotV1LatestTick_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[spot_instrument_market_data_response_t](spot_instrument_market_data_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SpotAPI_spotV1Markets**
```c
generic_response_t* SpotAPI_spotV1Markets(apiClient_t *apiClient, char * market);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | [optional] [default to &#39;&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SpotAPI_spotV1MarketsInstruments**
```c
generic_response_t* SpotAPI_spotV1MarketsInstruments(apiClient_t *apiClient, char * market, char * instrument, list_t * instrument_status);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | [optional] [default to &#39;&#39;]
**instrument** | **char \*** | The mapped instrument to retrieve on a specific market. | [optional] [default to &#39;&#39;]
**instrument_status** | **[list_t](char.md) \*** | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SpotAPI_spotV1MarketsInstrumentsUnmapped**
```c
generic_response_t* SpotAPI_spotV1MarketsInstrumentsUnmapped(apiClient_t *apiClient, char * market, char * instrument, list_t * instrument_status);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | [optional] [default to &#39;&#39;]
**instrument** | **char \*** | The unmapped instrument to retrieve on a specific market. | [optional] [default to &#39;&#39;]
**instrument_status** | **[list_t](char.md) \*** | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

