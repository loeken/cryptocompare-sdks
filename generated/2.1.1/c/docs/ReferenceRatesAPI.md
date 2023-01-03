# ReferenceRatesAPI

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ReferenceRatesAPI_indexCcV1HistoricalDays**](ReferenceRatesAPI.md#ReferenceRatesAPI_indexCcV1HistoricalDays) | **GET** /index/cc/v1/historical/days | 
[**ReferenceRatesAPI_indexCcV1HistoricalHours**](ReferenceRatesAPI.md#ReferenceRatesAPI_indexCcV1HistoricalHours) | **GET** /index/cc/v1/historical/hours | 
[**ReferenceRatesAPI_indexCcV1HistoricalMessages**](ReferenceRatesAPI.md#ReferenceRatesAPI_indexCcV1HistoricalMessages) | **GET** /index/cc/v1/historical/messages | 
[**ReferenceRatesAPI_indexCcV1HistoricalMessagesHour**](ReferenceRatesAPI.md#ReferenceRatesAPI_indexCcV1HistoricalMessagesHour) | **GET** /index/cc/v1/historical/messages/hour | 
[**ReferenceRatesAPI_indexCcV1HistoricalMinutes**](ReferenceRatesAPI.md#ReferenceRatesAPI_indexCcV1HistoricalMinutes) | **GET** /index/cc/v1/historical/minutes | 
[**ReferenceRatesAPI_indexCcV1LatestInstrumentMetadata**](ReferenceRatesAPI.md#ReferenceRatesAPI_indexCcV1LatestInstrumentMetadata) | **GET** /index/cc/v1/latest/instrument/metadata | 
[**ReferenceRatesAPI_indexCcV1LatestTick**](ReferenceRatesAPI.md#ReferenceRatesAPI_indexCcV1LatestTick) | **GET** /index/cc/v1/latest/tick | 
[**ReferenceRatesAPI_indexCcV1Markets**](ReferenceRatesAPI.md#ReferenceRatesAPI_indexCcV1Markets) | **GET** /index/cc/v1/markets | 
[**ReferenceRatesAPI_indexCcV1MarketsInstruments**](ReferenceRatesAPI.md#ReferenceRatesAPI_indexCcV1MarketsInstruments) | **GET** /index/cc/v1/markets/instruments | 
[**ReferenceRatesAPI_indexCcV1MarketsInstrumentsUnmapped**](ReferenceRatesAPI.md#ReferenceRatesAPI_indexCcV1MarketsInstrumentsUnmapped) | **GET** /index/cc/v1/markets/instruments/unmapped | 


# **ReferenceRatesAPI_indexCcV1HistoricalDays**
```c
generic_response_t* ReferenceRatesAPI_indexCcV1HistoricalDays(apiClient_t *apiClient, char * market, char * instrument, list_t * groups, int limit, int to_ts, int aggregate, int fill, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_mapping_priority_e mapping_priority, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_response_format_e response_format);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instrument** | **char \*** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
**groups** | **[list_t](char.md) \*** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
**limit** | **int** | The number of data points to return | [optional] [default to 30]
**to_ts** | **int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
**aggregate** | **int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
**fill** | **int** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalDays_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReferenceRatesAPI_indexCcV1HistoricalHours**
```c
generic_response_t* ReferenceRatesAPI_indexCcV1HistoricalHours(apiClient_t *apiClient, char * market, char * instrument, list_t * groups, int limit, int to_ts, int aggregate, int fill, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_mapping_priority_e mapping_priority, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_response_format_e response_format);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instrument** | **char \*** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
**groups** | **[list_t](char.md) \*** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
**limit** | **int** | The number of data points to return | [optional] [default to 30]
**to_ts** | **int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
**aggregate** | **int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
**fill** | **int** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalHours_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReferenceRatesAPI_indexCcV1HistoricalMessages**
```c
generic_response_t* ReferenceRatesAPI_indexCcV1HistoricalMessages(apiClient_t *apiClient, char * market, char * instrument, int after_ts, int last_ccseq, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_mapping_priority_e mapping_priority, int limit, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_response_format_e response_format, int return_404_on_empty_response);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instrument** | **char \*** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
**after_ts** | **int** | Unix timestamp in seconds of the earliest index message in the response | [optional] 
**last_ccseq** | **int** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
**limit** | **int** | The maximum number of index messages to return | [optional] [default to 100]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessages_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
**return_404_on_empty_response** | **int** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReferenceRatesAPI_indexCcV1HistoricalMessagesHour**
```c
generic_response_t* ReferenceRatesAPI_indexCcV1HistoricalMessagesHour(apiClient_t *apiClient, char * market, char * instrument, int hour_ts, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_mapping_priority_e mapping_priority, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_response_format_e response_format, int return_404_on_empty_response);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instrument** | **char \*** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
**hour_ts** | **int** | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | [optional] 
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMessagesHour_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
**return_404_on_empty_response** | **int** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReferenceRatesAPI_indexCcV1HistoricalMinutes**
```c
generic_response_t* ReferenceRatesAPI_indexCcV1HistoricalMinutes(apiClient_t *apiClient, char * market, char * instrument, list_t * groups, int limit, int to_ts, int aggregate, int fill, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_mapping_priority_e mapping_priority, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_response_format_e response_format);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instrument** | **char \*** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
**groups** | **[list_t](char.md) \*** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
**limit** | **int** | The number of data points to return | [optional] [default to 30]
**to_ts** | **int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
**aggregate** | **int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
**fill** | **int** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1HistoricalMinutes_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReferenceRatesAPI_indexCcV1LatestInstrumentMetadata**
```c
generic_response_t* ReferenceRatesAPI_indexCcV1LatestInstrumentMetadata(apiClient_t *apiClient, char * market, list_t * instruments, list_t * groups, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestInstrumentMetadata_mapping_priority_e mapping_priority);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instruments** | **[list_t](char.md) \*** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
**groups** | **[list_t](char.md) \*** | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] 
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestInstrumentMetadata_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReferenceRatesAPI_indexCcV1LatestTick**
```c
generic_response_t* ReferenceRatesAPI_indexCcV1LatestTick(apiClient_t *apiClient, char * market, list_t * instruments, list_t * groups, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestTick_mapping_priority_e mapping_priority);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**market** | **char \*** | The exchange to obtain data from | 
**instruments** | **[list_t](char.md) \*** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
**groups** | **[list_t](char.md) \*** | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
**mapping_priority** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_indexCcV1LatestTick_mapping_priority_e** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReferenceRatesAPI_indexCcV1Markets**
```c
generic_response_t* ReferenceRatesAPI_indexCcV1Markets(apiClient_t *apiClient, char * market);
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

# **ReferenceRatesAPI_indexCcV1MarketsInstruments**
```c
generic_response_t* ReferenceRatesAPI_indexCcV1MarketsInstruments(apiClient_t *apiClient, char * market, char * instrument, list_t * instrument_status);
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

# **ReferenceRatesAPI_indexCcV1MarketsInstrumentsUnmapped**
```c
generic_response_t* ReferenceRatesAPI_indexCcV1MarketsInstrumentsUnmapped(apiClient_t *apiClient, char * market, char * instrument, list_t * instrument_status);
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

