# OverviewApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OverviewV1HistoricalMarketcapAllAssetsDays**](OverviewApi.md#OverviewV1HistoricalMarketcapAllAssetsDays) | **GET** /overview/v1/historical/marketcap/all/assets/days | 
[**OverviewV1HistoricalMarketcapAllAssetsHours**](OverviewApi.md#OverviewV1HistoricalMarketcapAllAssetsHours) | **GET** /overview/v1/historical/marketcap/all/assets/hours | 
[**OverviewV1HistoricalMarketcapFtwAssetsDays**](OverviewApi.md#OverviewV1HistoricalMarketcapFtwAssetsDays) | **GET** /overview/v1/historical/marketcap/ftw/assets/days | 
[**OverviewV1HistoricalMarketcapFtwAssetsHours**](OverviewApi.md#OverviewV1HistoricalMarketcapFtwAssetsHours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours | 
[**OverviewV1LatestMarketcapAllTick**](OverviewApi.md#OverviewV1LatestMarketcapAllTick) | **GET** /overview/v1/latest/marketcap/all/tick | 
[**OverviewV1LatestMarketcapFtwTick**](OverviewApi.md#OverviewV1LatestMarketcapFtwTick) | **GET** /overview/v1/latest/marketcap/ftw/tick | 


# **OverviewV1HistoricalMarketcapAllAssetsDays**
> GENERICRESPONSE OverviewV1HistoricalMarketcapAllAssetsDays(groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_groups <- c("inner_example") # array[character] | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- OverviewApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OverviewV1HistoricalMarketcapAllAssetsDays(groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$OverviewV1HistoricalMarketcapAllAssetsDays(groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | list( **character** )| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **response_format** | Enum [JSON, CSV] | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

# **OverviewV1HistoricalMarketcapAllAssetsHours**
> GENERICRESPONSE OverviewV1HistoricalMarketcapAllAssetsHours(groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_groups <- c("inner_example") # array[character] | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- OverviewApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OverviewV1HistoricalMarketcapAllAssetsHours(groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$OverviewV1HistoricalMarketcapAllAssetsHours(groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | list( **character** )| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **response_format** | Enum [JSON, CSV] | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

# **OverviewV1HistoricalMarketcapFtwAssetsDays**
> GENERICRESPONSE OverviewV1HistoricalMarketcapFtwAssetsDays(groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_groups <- c("inner_example") # array[character] | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- OverviewApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OverviewV1HistoricalMarketcapFtwAssetsDays(groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$OverviewV1HistoricalMarketcapFtwAssetsDays(groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | list( **character** )| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **response_format** | Enum [JSON, CSV] | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

# **OverviewV1HistoricalMarketcapFtwAssetsHours**
> GENERICRESPONSE OverviewV1HistoricalMarketcapFtwAssetsHours(groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_groups <- c("inner_example") # array[character] | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- OverviewApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OverviewV1HistoricalMarketcapFtwAssetsHours(groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$OverviewV1HistoricalMarketcapFtwAssetsHours(groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | list( **character** )| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **response_format** | Enum [JSON, CSV] | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

# **OverviewV1LatestMarketcapAllTick**
> GENERICRESPONSE OverviewV1LatestMarketcapAllTick(groups = [])



### Example
```R
library(openapi)

# prepare function argument(s)
var_groups <- c("inner_example") # array[character] | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (Optional)

api_instance <- OverviewApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OverviewV1LatestMarketcapAllTick(groups = var_groupsdata_file = "result.txt")
result <- api_instance$OverviewV1LatestMarketcapAllTick(groups = var_groups)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | list( **character** )| When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] [default to []]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

# **OverviewV1LatestMarketcapFtwTick**
> GENERICRESPONSE OverviewV1LatestMarketcapFtwTick(groups = [])



### Example
```R
library(openapi)

# prepare function argument(s)
var_groups <- c("inner_example") # array[character] | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (Optional)

api_instance <- OverviewApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$OverviewV1LatestMarketcapFtwTick(groups = var_groupsdata_file = "result.txt")
result <- api_instance$OverviewV1LatestMarketcapFtwTick(groups = var_groups)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | list( **character** )| When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] [default to []]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

