# OverviewAPI

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OverviewAPI_overviewV1HistoricalMarketcapAllAssetsDays**](OverviewAPI.md#OverviewAPI_overviewV1HistoricalMarketcapAllAssetsDays) | **GET** /overview/v1/historical/marketcap/all/assets/days | 
[**OverviewAPI_overviewV1HistoricalMarketcapAllAssetsHours**](OverviewAPI.md#OverviewAPI_overviewV1HistoricalMarketcapAllAssetsHours) | **GET** /overview/v1/historical/marketcap/all/assets/hours | 
[**OverviewAPI_overviewV1HistoricalMarketcapFtwAssetsDays**](OverviewAPI.md#OverviewAPI_overviewV1HistoricalMarketcapFtwAssetsDays) | **GET** /overview/v1/historical/marketcap/ftw/assets/days | 
[**OverviewAPI_overviewV1HistoricalMarketcapFtwAssetsHours**](OverviewAPI.md#OverviewAPI_overviewV1HistoricalMarketcapFtwAssetsHours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours | 
[**OverviewAPI_overviewV1LatestMarketcapAllTick**](OverviewAPI.md#OverviewAPI_overviewV1LatestMarketcapAllTick) | **GET** /overview/v1/latest/marketcap/all/tick | 
[**OverviewAPI_overviewV1LatestMarketcapFtwTick**](OverviewAPI.md#OverviewAPI_overviewV1LatestMarketcapFtwTick) | **GET** /overview/v1/latest/marketcap/ftw/tick | 


# **OverviewAPI_overviewV1HistoricalMarketcapAllAssetsDays**
```c
generic_response_t* OverviewAPI_overviewV1HistoricalMarketcapAllAssetsDays(apiClient_t *apiClient, list_t * groups, int limit, int to_ts, int aggregate, int fill, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsDays_response_format_e response_format);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**groups** | **[list_t](char.md) \*** | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
**limit** | **int** | The number of data points to return | [optional] [default to 30]
**to_ts** | **int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
**aggregate** | **int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
**fill** | **int** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsDays_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OverviewAPI_overviewV1HistoricalMarketcapAllAssetsHours**
```c
generic_response_t* OverviewAPI_overviewV1HistoricalMarketcapAllAssetsHours(apiClient_t *apiClient, list_t * groups, int limit, int to_ts, int aggregate, int fill, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsHours_response_format_e response_format);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**groups** | **[list_t](char.md) \*** | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
**limit** | **int** | The number of data points to return | [optional] [default to 30]
**to_ts** | **int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
**aggregate** | **int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
**fill** | **int** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapAllAssetsHours_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OverviewAPI_overviewV1HistoricalMarketcapFtwAssetsDays**
```c
generic_response_t* OverviewAPI_overviewV1HistoricalMarketcapFtwAssetsDays(apiClient_t *apiClient, list_t * groups, int limit, int to_ts, int aggregate, int fill, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsDays_response_format_e response_format);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**groups** | **[list_t](char.md) \*** | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
**limit** | **int** | The number of data points to return | [optional] [default to 30]
**to_ts** | **int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
**aggregate** | **int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
**fill** | **int** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsDays_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OverviewAPI_overviewV1HistoricalMarketcapFtwAssetsHours**
```c
generic_response_t* OverviewAPI_overviewV1HistoricalMarketcapFtwAssetsHours(apiClient_t *apiClient, list_t * groups, int limit, int to_ts, int aggregate, int fill, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsHours_response_format_e response_format);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**groups** | **[list_t](char.md) \*** | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
**limit** | **int** | The number of data points to return | [optional] [default to 30]
**to_ts** | **int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
**aggregate** | **int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
**fill** | **int** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
**response_format** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_overviewV1HistoricalMarketcapFtwAssetsHours_response_format_e** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OverviewAPI_overviewV1LatestMarketcapAllTick**
```c
generic_response_t* OverviewAPI_overviewV1LatestMarketcapAllTick(apiClient_t *apiClient, list_t * groups);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**groups** | **[list_t](char.md) \*** | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] 

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **OverviewAPI_overviewV1LatestMarketcapFtwTick**
```c
generic_response_t* OverviewAPI_overviewV1LatestMarketcapFtwTick(apiClient_t *apiClient, list_t * groups);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**groups** | **[list_t](char.md) \*** | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] 

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

