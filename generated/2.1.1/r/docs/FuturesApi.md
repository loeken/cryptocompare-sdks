# FuturesApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FuturesV1HistoricalDays**](FuturesApi.md#FuturesV1HistoricalDays) | **GET** /futures/v1/historical/days | 
[**FuturesV1HistoricalFundingRateDays**](FuturesApi.md#FuturesV1HistoricalFundingRateDays) | **GET** /futures/v1/historical/funding-rate/days | 
[**FuturesV1HistoricalFundingRateHours**](FuturesApi.md#FuturesV1HistoricalFundingRateHours) | **GET** /futures/v1/historical/funding-rate/hours | 
[**FuturesV1HistoricalFundingRateMessages**](FuturesApi.md#FuturesV1HistoricalFundingRateMessages) | **GET** /futures/v1/historical/funding-rate-messages | 
[**FuturesV1HistoricalFundingRateMessagesHour**](FuturesApi.md#FuturesV1HistoricalFundingRateMessagesHour) | **GET** /futures/v1/historical/funding-rate-messages/hour | 
[**FuturesV1HistoricalFundingRateMinutes**](FuturesApi.md#FuturesV1HistoricalFundingRateMinutes) | **GET** /futures/v1/historical/funding-rate/minutes | 
[**FuturesV1HistoricalHours**](FuturesApi.md#FuturesV1HistoricalHours) | **GET** /futures/v1/historical/hours | 
[**FuturesV1HistoricalMinutes**](FuturesApi.md#FuturesV1HistoricalMinutes) | **GET** /futures/v1/historical/minutes | 
[**FuturesV1HistoricalOpenInterestDays**](FuturesApi.md#FuturesV1HistoricalOpenInterestDays) | **GET** /futures/v1/historical/open-interest/days | 
[**FuturesV1HistoricalOpenInterestHours**](FuturesApi.md#FuturesV1HistoricalOpenInterestHours) | **GET** /futures/v1/historical/open-interest/hours | 
[**FuturesV1HistoricalOpenInterestMessages**](FuturesApi.md#FuturesV1HistoricalOpenInterestMessages) | **GET** /futures/v1/historical/open-interest-messages | 
[**FuturesV1HistoricalOpenInterestMessagesHour**](FuturesApi.md#FuturesV1HistoricalOpenInterestMessagesHour) | **GET** /futures/v1/historical/open-interest-messages/hour | 
[**FuturesV1HistoricalOpenInterestMinutes**](FuturesApi.md#FuturesV1HistoricalOpenInterestMinutes) | **GET** /futures/v1/historical/open-interest/minutes | 
[**FuturesV1HistoricalTrades**](FuturesApi.md#FuturesV1HistoricalTrades) | **GET** /futures/v1/historical/trades | 
[**FuturesV1HistoricalTradesHour**](FuturesApi.md#FuturesV1HistoricalTradesHour) | **GET** /futures/v1/historical/trades/hour | 
[**FuturesV1LatestFundingRateTick**](FuturesApi.md#FuturesV1LatestFundingRateTick) | **GET** /futures/v1/latest/funding-rate/tick | 
[**FuturesV1LatestInstrumentMetadata**](FuturesApi.md#FuturesV1LatestInstrumentMetadata) | **GET** /futures/v1/latest/instrument/metadata | 
[**FuturesV1LatestOpenInterestTick**](FuturesApi.md#FuturesV1LatestOpenInterestTick) | **GET** /futures/v1/latest/open-interest/tick | 
[**FuturesV1LatestTick**](FuturesApi.md#FuturesV1LatestTick) | **GET** /futures/v1/latest/tick | 
[**FuturesV1Markets**](FuturesApi.md#FuturesV1Markets) | **GET** /futures/v1/markets | 
[**FuturesV1MarketsInstruments**](FuturesApi.md#FuturesV1MarketsInstruments) | **GET** /futures/v1/markets/instruments | 
[**FuturesV1MarketsInstrumentsUnmapped**](FuturesApi.md#FuturesV1MarketsInstrumentsUnmapped) | **GET** /futures/v1/markets/instruments/unmapped | 
[**IndexV1HistoricalDays**](FuturesApi.md#IndexV1HistoricalDays) | **GET** /index/v1/historical/days | 
[**IndexV1HistoricalHours**](FuturesApi.md#IndexV1HistoricalHours) | **GET** /index/v1/historical/hours | 
[**IndexV1HistoricalMessages**](FuturesApi.md#IndexV1HistoricalMessages) | **GET** /index/v1/historical/messages | 
[**IndexV1HistoricalMessagesHour**](FuturesApi.md#IndexV1HistoricalMessagesHour) | **GET** /index/v1/historical/messages/hour | 
[**IndexV1HistoricalMinutes**](FuturesApi.md#IndexV1HistoricalMinutes) | **GET** /index/v1/historical/minutes | 
[**IndexV1LatestInstrumentMetadata**](FuturesApi.md#IndexV1LatestInstrumentMetadata) | **GET** /index/v1/latest/instrument/metadata | 
[**IndexV1LatestTick**](FuturesApi.md#IndexV1LatestTick) | **GET** /index/v1/latest/tick | 
[**IndexV1Markets**](FuturesApi.md#IndexV1Markets) | **GET** /index/v1/markets | 
[**IndexV1MarketsInstruments**](FuturesApi.md#IndexV1MarketsInstruments) | **GET** /index/v1/markets/instruments | 
[**IndexV1MarketsInstrumentsUnmapped**](FuturesApi.md#IndexV1MarketsInstrumentsUnmapped) | **GET** /index/v1/markets/instruments/unmapped | 


# **FuturesV1HistoricalDays**
> GENERICRESPONSE FuturesV1HistoricalDays(market, instrument, groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalDays(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalDays(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
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

# **FuturesV1HistoricalFundingRateDays**
> GENERICRESPONSE FuturesV1HistoricalFundingRateDays(market, instrument, groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalFundingRateDays(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalFundingRateDays(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
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

# **FuturesV1HistoricalFundingRateHours**
> GENERICRESPONSE FuturesV1HistoricalFundingRateHours(market, instrument, groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalFundingRateHours(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalFundingRateHours(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
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

# **FuturesV1HistoricalFundingRateMessages**
> GENERICRESPONSE FuturesV1HistoricalFundingRateMessages(market, instrument, after_ts = var.after_ts, last_ccseq = 0, limit = 100, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON", return_404_on_empty_response = FALSE)



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_after_ts <- 56 # integer | Unix timestamp in seconds of the earliest funding rate message in the response (Optional)
var_last_ccseq <- 0 # integer | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (Optional)
var_limit <- 100 # integer | The maximum number of funding rate messages to return (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)
var_return_404_on_empty_response <- FALSE # character | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (Optional)

api_instance <- FuturesApi$new()
# Configure API key authorization: api_key_header
api_instance$api_client$api_keys["authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: api_key_query
# api_instance$api_client$api_keys["api_key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalFundingRateMessages(var_market, var_instrument, after_ts = var_after_ts, last_ccseq = var_last_ccseq, limit = var_limit, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_responsedata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalFundingRateMessages(var_market, var_instrument, after_ts = var_after_ts, last_ccseq = var_last_ccseq, limit = var_limit, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_response)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **after_ts** | **integer**| Unix timestamp in seconds of the earliest funding rate message in the response | [optional] 
 **last_ccseq** | **integer**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **integer**| The maximum number of funding rate messages to return | [optional] [default to 100]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **response_format** | Enum [JSON, CSV] | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]
 **return_404_on_empty_response** | **character**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to FALSE]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

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

# **FuturesV1HistoricalFundingRateMessagesHour**
> GENERICRESPONSE FuturesV1HistoricalFundingRateMessagesHour(market, instrument, hour_ts = var.hour_ts, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON", return_404_on_empty_response = FALSE)



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_hour_ts <- 56 # integer | Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)
var_return_404_on_empty_response <- FALSE # character | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (Optional)

api_instance <- FuturesApi$new()
# Configure API key authorization: api_key_header
api_instance$api_client$api_keys["authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: api_key_query
# api_instance$api_client$api_keys["api_key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalFundingRateMessagesHour(var_market, var_instrument, hour_ts = var_hour_ts, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_responsedata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalFundingRateMessagesHour(var_market, var_instrument, hour_ts = var_hour_ts, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_response)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hour_ts** | **integer**| Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. | [optional] 
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **response_format** | Enum [JSON, CSV] | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]
 **return_404_on_empty_response** | **character**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to FALSE]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

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

# **FuturesV1HistoricalFundingRateMinutes**
> GENERICRESPONSE FuturesV1HistoricalFundingRateMinutes(market, instrument, groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalFundingRateMinutes(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalFundingRateMinutes(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
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

# **FuturesV1HistoricalHours**
> GENERICRESPONSE FuturesV1HistoricalHours(market, instrument, groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalHours(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalHours(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
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

# **FuturesV1HistoricalMinutes**
> GENERICRESPONSE FuturesV1HistoricalMinutes(market, instrument, groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalMinutes(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalMinutes(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
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

# **FuturesV1HistoricalOpenInterestDays**
> GENERICRESPONSE FuturesV1HistoricalOpenInterestDays(market, instrument, groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalOpenInterestDays(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalOpenInterestDays(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
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

# **FuturesV1HistoricalOpenInterestHours**
> GENERICRESPONSE FuturesV1HistoricalOpenInterestHours(market, instrument, groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalOpenInterestHours(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalOpenInterestHours(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
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

# **FuturesV1HistoricalOpenInterestMessages**
> GENERICRESPONSE FuturesV1HistoricalOpenInterestMessages(market, instrument, after_ts = var.after_ts, last_ccseq = 0, limit = 100, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON", return_404_on_empty_response = FALSE)



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_after_ts <- 56 # integer | Unix timestamp in seconds of the earliest open interest message in the response (Optional)
var_last_ccseq <- 0 # integer | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (Optional)
var_limit <- 100 # integer | The maximum number of open interest messages to return (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)
var_return_404_on_empty_response <- FALSE # character | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (Optional)

api_instance <- FuturesApi$new()
# Configure API key authorization: api_key_header
api_instance$api_client$api_keys["authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: api_key_query
# api_instance$api_client$api_keys["api_key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalOpenInterestMessages(var_market, var_instrument, after_ts = var_after_ts, last_ccseq = var_last_ccseq, limit = var_limit, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_responsedata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalOpenInterestMessages(var_market, var_instrument, after_ts = var_after_ts, last_ccseq = var_last_ccseq, limit = var_limit, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_response)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **after_ts** | **integer**| Unix timestamp in seconds of the earliest open interest message in the response | [optional] 
 **last_ccseq** | **integer**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **integer**| The maximum number of open interest messages to return | [optional] [default to 100]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **response_format** | Enum [JSON, CSV] | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]
 **return_404_on_empty_response** | **character**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to FALSE]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

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

# **FuturesV1HistoricalOpenInterestMessagesHour**
> GENERICRESPONSE FuturesV1HistoricalOpenInterestMessagesHour(market, instrument, hour_ts = var.hour_ts, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON", return_404_on_empty_response = FALSE)



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_hour_ts <- 56 # integer | Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)
var_return_404_on_empty_response <- FALSE # character | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (Optional)

api_instance <- FuturesApi$new()
# Configure API key authorization: api_key_header
api_instance$api_client$api_keys["authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: api_key_query
# api_instance$api_client$api_keys["api_key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalOpenInterestMessagesHour(var_market, var_instrument, hour_ts = var_hour_ts, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_responsedata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalOpenInterestMessagesHour(var_market, var_instrument, hour_ts = var_hour_ts, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_response)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hour_ts** | **integer**| Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. | [optional] 
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **response_format** | Enum [JSON, CSV] | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]
 **return_404_on_empty_response** | **character**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to FALSE]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

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

# **FuturesV1HistoricalOpenInterestMinutes**
> GENERICRESPONSE FuturesV1HistoricalOpenInterestMinutes(market, instrument, groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalOpenInterestMinutes(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalOpenInterestMinutes(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
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

# **FuturesV1HistoricalTrades**
> GENERICRESPONSE FuturesV1HistoricalTrades(market, instrument, after_ts = var.after_ts, last_ccseq = 0, limit = 100, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON", return_404_on_empty_response = FALSE)



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_after_ts <- 56 # integer | Unix timestamp in seconds of the earliest trade in the response. (Optional)
var_last_ccseq <- 0 # integer | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (Optional)
var_limit <- 100 # integer | The maximum number of trades to return (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)
var_return_404_on_empty_response <- FALSE # character | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (Optional)

api_instance <- FuturesApi$new()
# Configure API key authorization: api_key_header
api_instance$api_client$api_keys["authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: api_key_query
# api_instance$api_client$api_keys["api_key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalTrades(var_market, var_instrument, after_ts = var_after_ts, last_ccseq = var_last_ccseq, limit = var_limit, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_responsedata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalTrades(var_market, var_instrument, after_ts = var_after_ts, last_ccseq = var_last_ccseq, limit = var_limit, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_response)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **after_ts** | **integer**| Unix timestamp in seconds of the earliest trade in the response. | [optional] 
 **last_ccseq** | **integer**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **integer**| The maximum number of trades to return | [optional] [default to 100]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **response_format** | Enum [JSON, CSV] | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]
 **return_404_on_empty_response** | **character**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to FALSE]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

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

# **FuturesV1HistoricalTradesHour**
> GENERICRESPONSE FuturesV1HistoricalTradesHour(market, instrument, hour_ts = var.hour_ts, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON", return_404_on_empty_response = FALSE)



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_hour_ts <- 56 # integer | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)
var_return_404_on_empty_response <- FALSE # character | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (Optional)

api_instance <- FuturesApi$new()
# Configure API key authorization: api_key_header
api_instance$api_client$api_keys["authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: api_key_query
# api_instance$api_client$api_keys["api_key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1HistoricalTradesHour(var_market, var_instrument, hour_ts = var_hour_ts, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_responsedata_file = "result.txt")
result <- api_instance$FuturesV1HistoricalTradesHour(var_market, var_instrument, hour_ts = var_hour_ts, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_response)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hour_ts** | **integer**| Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional] 
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **response_format** | Enum [JSON, CSV] | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]
 **return_404_on_empty_response** | **character**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to FALSE]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

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

# **FuturesV1LatestFundingRateTick**
> GENERICRESPONSE FuturesV1LatestFundingRateTick(market, instruments, groups = [], mapping_priority = "CHECK_MAPPED_FIRST")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instruments <- c("inner_example") # array[character] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1LatestFundingRateTick(var_market, var_instruments, groups = var_groups, mapping_priority = var_mapping_prioritydata_file = "result.txt")
result <- api_instance$FuturesV1LatestFundingRateTick(var_market, var_instruments, groups = var_groups, mapping_priority = var_mapping_priority)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instruments** | list( **character** )| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to []]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]

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

# **FuturesV1LatestInstrumentMetadata**
> GENERICRESPONSE FuturesV1LatestInstrumentMetadata(market, instruments, groups = [], mapping_priority = "CHECK_MAPPED_FIRST")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instruments <- c("inner_example") # array[character] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1LatestInstrumentMetadata(var_market, var_instruments, groups = var_groups, mapping_priority = var_mapping_prioritydata_file = "result.txt")
result <- api_instance$FuturesV1LatestInstrumentMetadata(var_market, var_instruments, groups = var_groups, mapping_priority = var_mapping_priority)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instruments** | list( **character** )| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] [default to []]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]

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

# **FuturesV1LatestOpenInterestTick**
> GENERICRESPONSE FuturesV1LatestOpenInterestTick(market, instruments, groups = [], mapping_priority = "CHECK_MAPPED_FIRST")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instruments <- c("inner_example") # array[character] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1LatestOpenInterestTick(var_market, var_instruments, groups = var_groups, mapping_priority = var_mapping_prioritydata_file = "result.txt")
result <- api_instance$FuturesV1LatestOpenInterestTick(var_market, var_instruments, groups = var_groups, mapping_priority = var_mapping_priority)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instruments** | list( **character** )| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to []]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]

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

# **FuturesV1LatestTick**
> GENERICRESPONSE FuturesV1LatestTick(market, instruments, groups = [], mapping_priority = "CHECK_MAPPED_FIRST")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instruments <- c("inner_example") # array[character] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1LatestTick(var_market, var_instruments, groups = var_groups, mapping_priority = var_mapping_prioritydata_file = "result.txt")
result <- api_instance$FuturesV1LatestTick(var_market, var_instruments, groups = var_groups, mapping_priority = var_mapping_priority)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instruments** | list( **character** )| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to []]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]

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

# **FuturesV1Markets**
> GENERICRESPONSE FuturesV1Markets(market = "")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "" # character | The exchange to obtain data from (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1Markets(market = var_marketdata_file = "result.txt")
result <- api_instance$FuturesV1Markets(market = var_market)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | [optional] [default to &quot;&quot;]

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

# **FuturesV1MarketsInstruments**
> GENERICRESPONSE FuturesV1MarketsInstruments(market = "", instrument = "", instrument_status = [])



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "" # character | The exchange to obtain data from (Optional)
var_instrument <- "" # character | The mapped instrument to retrieve on a specific market. (Optional)
var_instrument_status <- c("ACTIVE") # array[character] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1MarketsInstruments(market = var_market, instrument = var_instrument, instrument_status = var_instrument_statusdata_file = "result.txt")
result <- api_instance$FuturesV1MarketsInstruments(market = var_market, instrument = var_instrument, instrument_status = var_instrument_status)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **instrument** | **character**| The mapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **instrument_status** | Enum [ACTIVE, IGNORED, RETIRED, EXPIRED] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to []]

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

# **FuturesV1MarketsInstrumentsUnmapped**
> GENERICRESPONSE FuturesV1MarketsInstrumentsUnmapped(market = "", instrument = "", instrument_status = [])



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "" # character | The exchange to obtain data from (Optional)
var_instrument <- "" # character | The unmapped instrument to retrieve on a specific market. (Optional)
var_instrument_status <- c("ACTIVE") # array[character] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$FuturesV1MarketsInstrumentsUnmapped(market = var_market, instrument = var_instrument, instrument_status = var_instrument_statusdata_file = "result.txt")
result <- api_instance$FuturesV1MarketsInstrumentsUnmapped(market = var_market, instrument = var_instrument, instrument_status = var_instrument_status)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **instrument** | **character**| The unmapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **instrument_status** | Enum [ACTIVE, IGNORED, RETIRED, EXPIRED] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to []]

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

# **IndexV1HistoricalDays**
> GENERICRESPONSE IndexV1HistoricalDays(market, instrument, groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$IndexV1HistoricalDays(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$IndexV1HistoricalDays(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
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

# **IndexV1HistoricalHours**
> GENERICRESPONSE IndexV1HistoricalHours(market, instrument, groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$IndexV1HistoricalHours(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$IndexV1HistoricalHours(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
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

# **IndexV1HistoricalMessages**
> GENERICRESPONSE IndexV1HistoricalMessages(market, instrument, after_ts = var.after_ts, last_ccseq = 0, limit = 100, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON", return_404_on_empty_response = FALSE)



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_after_ts <- 56 # integer | Unix timestamp in seconds of the earliest index message in the response (Optional)
var_last_ccseq <- 0 # integer | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (Optional)
var_limit <- 100 # integer | The maximum number of index messages to return (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)
var_return_404_on_empty_response <- FALSE # character | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (Optional)

api_instance <- FuturesApi$new()
# Configure API key authorization: api_key_header
api_instance$api_client$api_keys["authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: api_key_query
# api_instance$api_client$api_keys["api_key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$IndexV1HistoricalMessages(var_market, var_instrument, after_ts = var_after_ts, last_ccseq = var_last_ccseq, limit = var_limit, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_responsedata_file = "result.txt")
result <- api_instance$IndexV1HistoricalMessages(var_market, var_instrument, after_ts = var_after_ts, last_ccseq = var_last_ccseq, limit = var_limit, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_response)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **after_ts** | **integer**| Unix timestamp in seconds of the earliest index message in the response | [optional] 
 **last_ccseq** | **integer**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **integer**| The maximum number of index messages to return | [optional] [default to 100]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **response_format** | Enum [JSON, CSV] | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]
 **return_404_on_empty_response** | **character**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to FALSE]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

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

# **IndexV1HistoricalMessagesHour**
> GENERICRESPONSE IndexV1HistoricalMessagesHour(market, instrument, hour_ts = var.hour_ts, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON", return_404_on_empty_response = FALSE)



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_hour_ts <- 56 # integer | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)
var_return_404_on_empty_response <- FALSE # character | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (Optional)

api_instance <- FuturesApi$new()
# Configure API key authorization: api_key_header
api_instance$api_client$api_keys["authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: api_key_query
# api_instance$api_client$api_keys["api_key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$IndexV1HistoricalMessagesHour(var_market, var_instrument, hour_ts = var_hour_ts, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_responsedata_file = "result.txt")
result <- api_instance$IndexV1HistoricalMessagesHour(var_market, var_instrument, hour_ts = var_hour_ts, mapping_priority = var_mapping_priority, response_format = var_response_format, return_404_on_empty_response = var_return_404_on_empty_response)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hour_ts** | **integer**| Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | [optional] 
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **response_format** | Enum [JSON, CSV] | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]
 **return_404_on_empty_response** | **character**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to FALSE]

### Return type

[**GENERICRESPONSE**](GENERIC_RESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

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

# **IndexV1HistoricalMinutes**
> GENERICRESPONSE IndexV1HistoricalMinutes(market, instrument, groups = [], limit = 30, to_ts = var.to_ts, aggregate = 1, fill = TRUE, mapping_priority = "CHECK_MAPPED_FIRST", response_format = "JSON")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instrument <- "instrument_example" # character | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (Optional)
var_limit <- 30 # integer | The number of data points to return (Optional)
var_to_ts <- 56 # integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (Optional)
var_aggregate <- 1 # integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (Optional)
var_fill <- TRUE # character | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)
var_response_format <- "JSON" # character | The format of the data response in uppercase. It can be one of the following: JSON,CSV (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$IndexV1HistoricalMinutes(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_formatdata_file = "result.txt")
result <- api_instance$IndexV1HistoricalMinutes(var_market, var_instrument, groups = var_groups, limit = var_limit, to_ts = var_to_ts, aggregate = var_aggregate, fill = var_fill, mapping_priority = var_mapping_priority, response_format = var_response_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instrument** | **character**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] [default to []]
 **limit** | **integer**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **integer**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **integer**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **character**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to TRUE]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
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

# **IndexV1LatestInstrumentMetadata**
> GENERICRESPONSE IndexV1LatestInstrumentMetadata(market, instruments, groups = [], mapping_priority = "CHECK_MAPPED_FIRST")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instruments <- c("inner_example") # array[character] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$IndexV1LatestInstrumentMetadata(var_market, var_instruments, groups = var_groups, mapping_priority = var_mapping_prioritydata_file = "result.txt")
result <- api_instance$IndexV1LatestInstrumentMetadata(var_market, var_instruments, groups = var_groups, mapping_priority = var_mapping_priority)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instruments** | list( **character** )| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] [default to []]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]

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

# **IndexV1LatestTick**
> GENERICRESPONSE IndexV1LatestTick(market, instruments, groups = [], mapping_priority = "CHECK_MAPPED_FIRST")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "market_example" # character | The exchange to obtain data from
var_instruments <- c("inner_example") # array[character] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
var_groups <- c("inner_example") # array[character] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (Optional)
var_mapping_priority <- "CHECK_MAPPED_FIRST" # character | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$IndexV1LatestTick(var_market, var_instruments, groups = var_groups, mapping_priority = var_mapping_prioritydata_file = "result.txt")
result <- api_instance$IndexV1LatestTick(var_market, var_instruments, groups = var_groups, mapping_priority = var_mapping_priority)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | 
 **instruments** | list( **character** )| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | list( **character** )| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to []]
 **mapping_priority** | Enum [CHECK_MAPPED_FIRST, CHECK_UNMAPPED_FIRST] | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]

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

# **IndexV1Markets**
> GENERICRESPONSE IndexV1Markets(market = "")



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "" # character | The exchange to obtain data from (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$IndexV1Markets(market = var_marketdata_file = "result.txt")
result <- api_instance$IndexV1Markets(market = var_market)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | [optional] [default to &quot;&quot;]

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

# **IndexV1MarketsInstruments**
> GENERICRESPONSE IndexV1MarketsInstruments(market = "", instrument = "", instrument_status = [])



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "" # character | The exchange to obtain data from (Optional)
var_instrument <- "" # character | The mapped instrument to retrieve on a specific market. (Optional)
var_instrument_status <- c("ACTIVE") # array[character] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$IndexV1MarketsInstruments(market = var_market, instrument = var_instrument, instrument_status = var_instrument_statusdata_file = "result.txt")
result <- api_instance$IndexV1MarketsInstruments(market = var_market, instrument = var_instrument, instrument_status = var_instrument_status)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **instrument** | **character**| The mapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **instrument_status** | Enum [ACTIVE, IGNORED, RETIRED, EXPIRED] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to []]

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

# **IndexV1MarketsInstrumentsUnmapped**
> GENERICRESPONSE IndexV1MarketsInstrumentsUnmapped(market = "", instrument = "", instrument_status = [])



### Example
```R
library(openapi)

# prepare function argument(s)
var_market <- "" # character | The exchange to obtain data from (Optional)
var_instrument <- "" # character | The unmapped instrument to retrieve on a specific market. (Optional)
var_instrument_status <- c("ACTIVE") # array[character] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (Optional)

api_instance <- FuturesApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$IndexV1MarketsInstrumentsUnmapped(market = var_market, instrument = var_instrument, instrument_status = var_instrument_statusdata_file = "result.txt")
result <- api_instance$IndexV1MarketsInstrumentsUnmapped(market = var_market, instrument = var_instrument, instrument_status = var_instrument_status)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **character**| The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **instrument** | **character**| The unmapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **instrument_status** | Enum [ACTIVE, IGNORED, RETIRED, EXPIRED] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to []]

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

