# \OverviewApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**overview_v1_historical_marketcap_all_assets_days**](OverviewApi.md#overview_v1_historical_marketcap_all_assets_days) | **GET** /overview/v1/historical/marketcap/all/assets/days | 
[**overview_v1_historical_marketcap_all_assets_hours**](OverviewApi.md#overview_v1_historical_marketcap_all_assets_hours) | **GET** /overview/v1/historical/marketcap/all/assets/hours | 
[**overview_v1_historical_marketcap_ftw_assets_days**](OverviewApi.md#overview_v1_historical_marketcap_ftw_assets_days) | **GET** /overview/v1/historical/marketcap/ftw/assets/days | 
[**overview_v1_historical_marketcap_ftw_assets_hours**](OverviewApi.md#overview_v1_historical_marketcap_ftw_assets_hours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours | 
[**overview_v1_latest_marketcap_all_tick**](OverviewApi.md#overview_v1_latest_marketcap_all_tick) | **GET** /overview/v1/latest/marketcap/all/tick | 
[**overview_v1_latest_marketcap_ftw_tick**](OverviewApi.md#overview_v1_latest_marketcap_ftw_tick) | **GET** /overview/v1/latest/marketcap/ftw/tick | 



## overview_v1_historical_marketcap_all_assets_days

> crate::models::GenericResponse overview_v1_historical_marketcap_all_assets_days(groups, limit, to_ts, aggregate, fill, response_format)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**groups** | Option<[**Vec<String>**](String.md)> | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME |  |[default to []]
**limit** | Option<**i32**> | The number of data points to return |  |[default to 30]
**to_ts** | Option<**i32**> | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} |  |
**aggregate** | Option<**i32**> | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries |  |[default to 1]
**fill** | Option<**bool**> | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. |  |[default to true]
**response_format** | Option<**String**> | The format of the data response in uppercase. It can be one of the following: JSON,CSV |  |[default to JSON]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## overview_v1_historical_marketcap_all_assets_hours

> crate::models::GenericResponse overview_v1_historical_marketcap_all_assets_hours(groups, limit, to_ts, aggregate, fill, response_format)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**groups** | Option<[**Vec<String>**](String.md)> | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME |  |[default to []]
**limit** | Option<**i32**> | The number of data points to return |  |[default to 30]
**to_ts** | Option<**i32**> | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} |  |
**aggregate** | Option<**i32**> | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries |  |[default to 1]
**fill** | Option<**bool**> | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. |  |[default to true]
**response_format** | Option<**String**> | The format of the data response in uppercase. It can be one of the following: JSON,CSV |  |[default to JSON]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## overview_v1_historical_marketcap_ftw_assets_days

> crate::models::GenericResponse overview_v1_historical_marketcap_ftw_assets_days(groups, limit, to_ts, aggregate, fill, response_format)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**groups** | Option<[**Vec<String>**](String.md)> | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME |  |[default to []]
**limit** | Option<**i32**> | The number of data points to return |  |[default to 30]
**to_ts** | Option<**i32**> | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} |  |
**aggregate** | Option<**i32**> | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries |  |[default to 1]
**fill** | Option<**bool**> | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. |  |[default to true]
**response_format** | Option<**String**> | The format of the data response in uppercase. It can be one of the following: JSON,CSV |  |[default to JSON]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## overview_v1_historical_marketcap_ftw_assets_hours

> crate::models::GenericResponse overview_v1_historical_marketcap_ftw_assets_hours(groups, limit, to_ts, aggregate, fill, response_format)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**groups** | Option<[**Vec<String>**](String.md)> | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME |  |[default to []]
**limit** | Option<**i32**> | The number of data points to return |  |[default to 30]
**to_ts** | Option<**i32**> | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} |  |
**aggregate** | Option<**i32**> | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries |  |[default to 1]
**fill** | Option<**bool**> | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. |  |[default to true]
**response_format** | Option<**String**> | The format of the data response in uppercase. It can be one of the following: JSON,CSV |  |[default to JSON]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## overview_v1_latest_marketcap_all_tick

> crate::models::GenericResponse overview_v1_latest_marketcap_all_tick(groups)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**groups** | Option<[**Vec<String>**](String.md)> | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR |  |[default to []]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## overview_v1_latest_marketcap_ftw_tick

> crate::models::GenericResponse overview_v1_latest_marketcap_ftw_tick(groups)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**groups** | Option<[**Vec<String>**](String.md)> | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR |  |[default to []]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

