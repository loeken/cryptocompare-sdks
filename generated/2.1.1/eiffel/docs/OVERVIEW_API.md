# OVERVIEW_API

All URIs are relative to *https://data-api.cryptocompare.com*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**overview_v1_historical_marketcap_all_assets_days**](OVERVIEW_API.md#overview_v1_historical_marketcap_all_assets_days) | **Get** /overview/v1/historical/marketcap/all/assets/days | 
[**overview_v1_historical_marketcap_all_assets_hours**](OVERVIEW_API.md#overview_v1_historical_marketcap_all_assets_hours) | **Get** /overview/v1/historical/marketcap/all/assets/hours | 
[**overview_v1_historical_marketcap_ftw_assets_days**](OVERVIEW_API.md#overview_v1_historical_marketcap_ftw_assets_days) | **Get** /overview/v1/historical/marketcap/ftw/assets/days | 
[**overview_v1_historical_marketcap_ftw_assets_hours**](OVERVIEW_API.md#overview_v1_historical_marketcap_ftw_assets_hours) | **Get** /overview/v1/historical/marketcap/ftw/assets/hours | 
[**overview_v1_latest_marketcap_all_tick**](OVERVIEW_API.md#overview_v1_latest_marketcap_all_tick) | **Get** /overview/v1/latest/marketcap/all/tick | 
[**overview_v1_latest_marketcap_ftw_tick**](OVERVIEW_API.md#overview_v1_latest_marketcap_ftw_tick) | **Get** /overview/v1/latest/marketcap/ftw/tick | 


# **overview_v1_historical_marketcap_all_assets_days**
> overview_v1_historical_marketcap_all_assets_days (groups:  detachable LIST [STRING_32] ; limit:  detachable INTEGER_32 ; to_ts:  detachable INTEGER_32 ; aggregate:  detachable INTEGER_32 ; fill:  detachable BOOLEAN ; response_format:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**LIST [STRING_32]**](STRING_32.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to []]
 **limit** | **INTEGER_32**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **INTEGER_32**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **INTEGER_32**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **BOOLEAN**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **response_format** | **STRING_32**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overview_v1_historical_marketcap_all_assets_hours**
> overview_v1_historical_marketcap_all_assets_hours (groups:  detachable LIST [STRING_32] ; limit:  detachable INTEGER_32 ; to_ts:  detachable INTEGER_32 ; aggregate:  detachable INTEGER_32 ; fill:  detachable BOOLEAN ; response_format:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**LIST [STRING_32]**](STRING_32.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to []]
 **limit** | **INTEGER_32**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **INTEGER_32**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **INTEGER_32**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **BOOLEAN**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **response_format** | **STRING_32**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overview_v1_historical_marketcap_ftw_assets_days**
> overview_v1_historical_marketcap_ftw_assets_days (groups:  detachable LIST [STRING_32] ; limit:  detachable INTEGER_32 ; to_ts:  detachable INTEGER_32 ; aggregate:  detachable INTEGER_32 ; fill:  detachable BOOLEAN ; response_format:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**LIST [STRING_32]**](STRING_32.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to []]
 **limit** | **INTEGER_32**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **INTEGER_32**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **INTEGER_32**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **BOOLEAN**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **response_format** | **STRING_32**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overview_v1_historical_marketcap_ftw_assets_hours**
> overview_v1_historical_marketcap_ftw_assets_hours (groups:  detachable LIST [STRING_32] ; limit:  detachable INTEGER_32 ; to_ts:  detachable INTEGER_32 ; aggregate:  detachable INTEGER_32 ; fill:  detachable BOOLEAN ; response_format:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**LIST [STRING_32]**](STRING_32.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to []]
 **limit** | **INTEGER_32**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **INTEGER_32**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] [default to null]
 **aggregate** | **INTEGER_32**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **BOOLEAN**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **response_format** | **STRING_32**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overview_v1_latest_marketcap_all_tick**
> overview_v1_latest_marketcap_all_tick (groups:  detachable LIST [STRING_32] ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**LIST [STRING_32]**](STRING_32.md)| When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] [default to []]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overview_v1_latest_marketcap_ftw_tick**
> overview_v1_latest_marketcap_ftw_tick (groups:  detachable LIST [STRING_32] ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**LIST [STRING_32]**](STRING_32.md)| When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] [default to []]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

