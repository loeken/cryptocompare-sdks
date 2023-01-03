# openapi_client.FuturesApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**futures_v1_historical_days**](FuturesApi.md#futures_v1_historical_days) | **GET** /futures/v1/historical/days | 
[**futures_v1_historical_funding_rate_days**](FuturesApi.md#futures_v1_historical_funding_rate_days) | **GET** /futures/v1/historical/funding-rate/days | 
[**futures_v1_historical_funding_rate_hours**](FuturesApi.md#futures_v1_historical_funding_rate_hours) | **GET** /futures/v1/historical/funding-rate/hours | 
[**futures_v1_historical_funding_rate_messages**](FuturesApi.md#futures_v1_historical_funding_rate_messages) | **GET** /futures/v1/historical/funding-rate-messages | 
[**futures_v1_historical_funding_rate_messages_hour**](FuturesApi.md#futures_v1_historical_funding_rate_messages_hour) | **GET** /futures/v1/historical/funding-rate-messages/hour | 
[**futures_v1_historical_funding_rate_minutes**](FuturesApi.md#futures_v1_historical_funding_rate_minutes) | **GET** /futures/v1/historical/funding-rate/minutes | 
[**futures_v1_historical_hours**](FuturesApi.md#futures_v1_historical_hours) | **GET** /futures/v1/historical/hours | 
[**futures_v1_historical_minutes**](FuturesApi.md#futures_v1_historical_minutes) | **GET** /futures/v1/historical/minutes | 
[**futures_v1_historical_open_interest_days**](FuturesApi.md#futures_v1_historical_open_interest_days) | **GET** /futures/v1/historical/open-interest/days | 
[**futures_v1_historical_open_interest_hours**](FuturesApi.md#futures_v1_historical_open_interest_hours) | **GET** /futures/v1/historical/open-interest/hours | 
[**futures_v1_historical_open_interest_messages**](FuturesApi.md#futures_v1_historical_open_interest_messages) | **GET** /futures/v1/historical/open-interest-messages | 
[**futures_v1_historical_open_interest_messages_hour**](FuturesApi.md#futures_v1_historical_open_interest_messages_hour) | **GET** /futures/v1/historical/open-interest-messages/hour | 
[**futures_v1_historical_open_interest_minutes**](FuturesApi.md#futures_v1_historical_open_interest_minutes) | **GET** /futures/v1/historical/open-interest/minutes | 
[**futures_v1_historical_trades**](FuturesApi.md#futures_v1_historical_trades) | **GET** /futures/v1/historical/trades | 
[**futures_v1_historical_trades_hour**](FuturesApi.md#futures_v1_historical_trades_hour) | **GET** /futures/v1/historical/trades/hour | 
[**futures_v1_latest_funding_rate_tick**](FuturesApi.md#futures_v1_latest_funding_rate_tick) | **GET** /futures/v1/latest/funding-rate/tick | 
[**futures_v1_latest_instrument_metadata**](FuturesApi.md#futures_v1_latest_instrument_metadata) | **GET** /futures/v1/latest/instrument/metadata | 
[**futures_v1_latest_open_interest_tick**](FuturesApi.md#futures_v1_latest_open_interest_tick) | **GET** /futures/v1/latest/open-interest/tick | 
[**futures_v1_latest_tick**](FuturesApi.md#futures_v1_latest_tick) | **GET** /futures/v1/latest/tick | 
[**futures_v1_markets**](FuturesApi.md#futures_v1_markets) | **GET** /futures/v1/markets | 
[**futures_v1_markets_instruments**](FuturesApi.md#futures_v1_markets_instruments) | **GET** /futures/v1/markets/instruments | 
[**futures_v1_markets_instruments_unmapped**](FuturesApi.md#futures_v1_markets_instruments_unmapped) | **GET** /futures/v1/markets/instruments/unmapped | 
[**index_v1_historical_days**](FuturesApi.md#index_v1_historical_days) | **GET** /index/v1/historical/days | 
[**index_v1_historical_hours**](FuturesApi.md#index_v1_historical_hours) | **GET** /index/v1/historical/hours | 
[**index_v1_historical_messages**](FuturesApi.md#index_v1_historical_messages) | **GET** /index/v1/historical/messages | 
[**index_v1_historical_messages_hour**](FuturesApi.md#index_v1_historical_messages_hour) | **GET** /index/v1/historical/messages/hour | 
[**index_v1_historical_minutes**](FuturesApi.md#index_v1_historical_minutes) | **GET** /index/v1/historical/minutes | 
[**index_v1_latest_instrument_metadata**](FuturesApi.md#index_v1_latest_instrument_metadata) | **GET** /index/v1/latest/instrument/metadata | 
[**index_v1_latest_tick**](FuturesApi.md#index_v1_latest_tick) | **GET** /index/v1/latest/tick | 
[**index_v1_markets**](FuturesApi.md#index_v1_markets) | **GET** /index/v1/markets | 
[**index_v1_markets_instruments**](FuturesApi.md#index_v1_markets_instruments) | **GET** /index/v1/markets/instruments | 
[**index_v1_markets_instruments_unmapped**](FuturesApi.md#index_v1_markets_instruments_unmapped) | **GET** /index/v1/markets/instruments/unmapped | 


# **futures_v1_historical_days**
> GENERICRESPONSE futures_v1_historical_days(market, instrument)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional) if omitted the server will use the default value of []
    limit = 30 # int | The number of data points to return (optional) if omitted the server will use the default value of 30
    to_ts = 1 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) if omitted the server will use the default value of 1
    fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) if omitted the server will use the default value of True
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_days(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_days: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_days(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_days: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] if omitted the server will use the default value of []
 **limit** | **int**| The number of data points to return | [optional] if omitted the server will use the default value of 30
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] if omitted the server will use the default value of 1
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] if omitted the server will use the default value of True
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_funding_rate_days**
> GENERICRESPONSE futures_v1_historical_funding_rate_days(market, instrument)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional) if omitted the server will use the default value of []
    limit = 30 # int | The number of data points to return (optional) if omitted the server will use the default value of 30
    to_ts = 1 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) if omitted the server will use the default value of 1
    fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) if omitted the server will use the default value of True
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_days(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_days: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_days(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_days: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] if omitted the server will use the default value of []
 **limit** | **int**| The number of data points to return | [optional] if omitted the server will use the default value of 30
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] if omitted the server will use the default value of 1
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] if omitted the server will use the default value of True
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_funding_rate_hours**
> GENERICRESPONSE futures_v1_historical_funding_rate_hours(market, instrument)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional) if omitted the server will use the default value of []
    limit = 30 # int | The number of data points to return (optional) if omitted the server will use the default value of 30
    to_ts = 1 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) if omitted the server will use the default value of 1
    fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) if omitted the server will use the default value of True
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_hours(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_hours: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_hours(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_hours: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] if omitted the server will use the default value of []
 **limit** | **int**| The number of data points to return | [optional] if omitted the server will use the default value of 30
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] if omitted the server will use the default value of 1
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] if omitted the server will use the default value of True
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_funding_rate_messages**
> GENERICRESPONSE futures_v1_historical_funding_rate_messages(market, instrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):

```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_header
configuration.api_key['api_key_header'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_header'] = 'Bearer'

# Configure API key authorization: api_key_query
configuration.api_key['api_key_query'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_query'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    after_ts = 0 # int | Unix timestamp in seconds of the earliest funding rate message in the response (optional)
    last_ccseq = 0 # int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) if omitted the server will use the default value of 0
    limit = 100 # int | The maximum number of funding rate messages to return (optional) if omitted the server will use the default value of 100
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"
    return_404_on_empty_response = False # bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) if omitted the server will use the default value of False

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_messages(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_messages: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_messages(market, instrument, after_ts=after_ts, last_ccseq=last_ccseq, limit=limit, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_messages: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **after_ts** | **int**| Unix timestamp in seconds of the earliest funding rate message in the response | [optional]
 **last_ccseq** | **int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] if omitted the server will use the default value of 0
 **limit** | **int**| The maximum number of funding rate messages to return | [optional] if omitted the server will use the default value of 100
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"
 **return_404_on_empty_response** | **bool**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] if omitted the server will use the default value of False

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_funding_rate_messages_hour**
> GENERICRESPONSE futures_v1_historical_funding_rate_messages_hour(market, instrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):

```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_header
configuration.api_key['api_key_header'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_header'] = 'Bearer'

# Configure API key authorization: api_key_query
configuration.api_key['api_key_query'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_query'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    hour_ts = 0 # int | Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. (optional)
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"
    return_404_on_empty_response = False # bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) if omitted the server will use the default value of False

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_messages_hour(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_messages_hour: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_messages_hour(market, instrument, hour_ts=hour_ts, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_messages_hour: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **hour_ts** | **int**| Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. | [optional]
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"
 **return_404_on_empty_response** | **bool**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] if omitted the server will use the default value of False

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_funding_rate_minutes**
> GENERICRESPONSE futures_v1_historical_funding_rate_minutes(market, instrument)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional) if omitted the server will use the default value of []
    limit = 30 # int | The number of data points to return (optional) if omitted the server will use the default value of 30
    to_ts = 1 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) if omitted the server will use the default value of 1
    fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) if omitted the server will use the default value of True
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_minutes(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_minutes: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_minutes(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_minutes: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] if omitted the server will use the default value of []
 **limit** | **int**| The number of data points to return | [optional] if omitted the server will use the default value of 30
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] if omitted the server will use the default value of 1
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] if omitted the server will use the default value of True
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_hours**
> GENERICRESPONSE futures_v1_historical_hours(market, instrument)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional) if omitted the server will use the default value of []
    limit = 30 # int | The number of data points to return (optional) if omitted the server will use the default value of 30
    to_ts = 1 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) if omitted the server will use the default value of 1
    fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) if omitted the server will use the default value of True
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_hours(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_hours: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_hours(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_hours: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] if omitted the server will use the default value of []
 **limit** | **int**| The number of data points to return | [optional] if omitted the server will use the default value of 30
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] if omitted the server will use the default value of 1
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] if omitted the server will use the default value of True
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_minutes**
> GENERICRESPONSE futures_v1_historical_minutes(market, instrument)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional) if omitted the server will use the default value of []
    limit = 30 # int | The number of data points to return (optional) if omitted the server will use the default value of 30
    to_ts = 1 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) if omitted the server will use the default value of 1
    fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) if omitted the server will use the default value of True
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_minutes(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_minutes: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_minutes(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_minutes: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] if omitted the server will use the default value of []
 **limit** | **int**| The number of data points to return | [optional] if omitted the server will use the default value of 30
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] if omitted the server will use the default value of 1
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] if omitted the server will use the default value of True
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_open_interest_days**
> GENERICRESPONSE futures_v1_historical_open_interest_days(market, instrument)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional) if omitted the server will use the default value of []
    limit = 30 # int | The number of data points to return (optional) if omitted the server will use the default value of 30
    to_ts = 1 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) if omitted the server will use the default value of 1
    fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) if omitted the server will use the default value of True
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_open_interest_days(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_days: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_open_interest_days(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_days: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] if omitted the server will use the default value of []
 **limit** | **int**| The number of data points to return | [optional] if omitted the server will use the default value of 30
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] if omitted the server will use the default value of 1
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] if omitted the server will use the default value of True
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_open_interest_hours**
> GENERICRESPONSE futures_v1_historical_open_interest_hours(market, instrument)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional) if omitted the server will use the default value of []
    limit = 30 # int | The number of data points to return (optional) if omitted the server will use the default value of 30
    to_ts = 1 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) if omitted the server will use the default value of 1
    fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) if omitted the server will use the default value of True
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_open_interest_hours(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_hours: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_open_interest_hours(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_hours: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] if omitted the server will use the default value of []
 **limit** | **int**| The number of data points to return | [optional] if omitted the server will use the default value of 30
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] if omitted the server will use the default value of 1
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] if omitted the server will use the default value of True
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_open_interest_messages**
> GENERICRESPONSE futures_v1_historical_open_interest_messages(market, instrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):

```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_header
configuration.api_key['api_key_header'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_header'] = 'Bearer'

# Configure API key authorization: api_key_query
configuration.api_key['api_key_query'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_query'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    after_ts = 0 # int | Unix timestamp in seconds of the earliest open interest message in the response (optional)
    last_ccseq = 0 # int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) if omitted the server will use the default value of 0
    limit = 100 # int | The maximum number of open interest messages to return (optional) if omitted the server will use the default value of 100
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"
    return_404_on_empty_response = False # bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) if omitted the server will use the default value of False

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_open_interest_messages(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_messages: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_open_interest_messages(market, instrument, after_ts=after_ts, last_ccseq=last_ccseq, limit=limit, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_messages: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **after_ts** | **int**| Unix timestamp in seconds of the earliest open interest message in the response | [optional]
 **last_ccseq** | **int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] if omitted the server will use the default value of 0
 **limit** | **int**| The maximum number of open interest messages to return | [optional] if omitted the server will use the default value of 100
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"
 **return_404_on_empty_response** | **bool**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] if omitted the server will use the default value of False

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_open_interest_messages_hour**
> GENERICRESPONSE futures_v1_historical_open_interest_messages_hour(market, instrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):

```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_header
configuration.api_key['api_key_header'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_header'] = 'Bearer'

# Configure API key authorization: api_key_query
configuration.api_key['api_key_query'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_query'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    hour_ts = 0 # int | Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. (optional)
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"
    return_404_on_empty_response = False # bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) if omitted the server will use the default value of False

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_open_interest_messages_hour(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_messages_hour: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_open_interest_messages_hour(market, instrument, hour_ts=hour_ts, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_messages_hour: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **hour_ts** | **int**| Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. | [optional]
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"
 **return_404_on_empty_response** | **bool**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] if omitted the server will use the default value of False

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_open_interest_minutes**
> GENERICRESPONSE futures_v1_historical_open_interest_minutes(market, instrument)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional) if omitted the server will use the default value of []
    limit = 30 # int | The number of data points to return (optional) if omitted the server will use the default value of 30
    to_ts = 1 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) if omitted the server will use the default value of 1
    fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) if omitted the server will use the default value of True
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_open_interest_minutes(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_minutes: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_open_interest_minutes(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_minutes: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] if omitted the server will use the default value of []
 **limit** | **int**| The number of data points to return | [optional] if omitted the server will use the default value of 30
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] if omitted the server will use the default value of 1
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] if omitted the server will use the default value of True
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_trades**
> GENERICRESPONSE futures_v1_historical_trades(market, instrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):

```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_header
configuration.api_key['api_key_header'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_header'] = 'Bearer'

# Configure API key authorization: api_key_query
configuration.api_key['api_key_query'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_query'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    after_ts = 0 # int | Unix timestamp in seconds of the earliest trade in the response. (optional)
    last_ccseq = 0 # int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) if omitted the server will use the default value of 0
    limit = 100 # int | The maximum number of trades to return (optional) if omitted the server will use the default value of 100
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"
    return_404_on_empty_response = False # bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) if omitted the server will use the default value of False

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_trades(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_trades: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_trades(market, instrument, after_ts=after_ts, last_ccseq=last_ccseq, limit=limit, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_trades: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **after_ts** | **int**| Unix timestamp in seconds of the earliest trade in the response. | [optional]
 **last_ccseq** | **int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] if omitted the server will use the default value of 0
 **limit** | **int**| The maximum number of trades to return | [optional] if omitted the server will use the default value of 100
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"
 **return_404_on_empty_response** | **bool**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] if omitted the server will use the default value of False

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_trades_hour**
> GENERICRESPONSE futures_v1_historical_trades_hour(market, instrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):

```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_header
configuration.api_key['api_key_header'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_header'] = 'Bearer'

# Configure API key authorization: api_key_query
configuration.api_key['api_key_query'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_query'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    hour_ts = 0 # int | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. (optional)
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"
    return_404_on_empty_response = False # bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) if omitted the server will use the default value of False

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_historical_trades_hour(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_trades_hour: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_historical_trades_hour(market, instrument, hour_ts=hour_ts, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_trades_hour: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **hour_ts** | **int**| Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional]
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"
 **return_404_on_empty_response** | **bool**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] if omitted the server will use the default value of False

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_latest_funding_rate_tick**
> GENERICRESPONSE futures_v1_latest_funding_rate_tick(market, instruments)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instruments = [
        "instruments_example",
    ] # [str] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional) if omitted the server will use the default value of []
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_latest_funding_rate_tick(market, instruments)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_funding_rate_tick: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_latest_funding_rate_tick(market, instruments, groups=groups, mapping_priority=mapping_priority)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_funding_rate_tick: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instruments** | **[str]**| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] if omitted the server will use the default value of []
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_latest_instrument_metadata**
> GENERICRESPONSE futures_v1_latest_instrument_metadata(market, instruments)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instruments = [
        "instruments_example",
    ] # [str] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional) if omitted the server will use the default value of []
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_latest_instrument_metadata(market, instruments)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_instrument_metadata: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_latest_instrument_metadata(market, instruments, groups=groups, mapping_priority=mapping_priority)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_instrument_metadata: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instruments** | **[str]**| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] if omitted the server will use the default value of []
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_latest_open_interest_tick**
> GENERICRESPONSE futures_v1_latest_open_interest_tick(market, instruments)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instruments = [
        "instruments_example",
    ] # [str] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional) if omitted the server will use the default value of []
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_latest_open_interest_tick(market, instruments)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_open_interest_tick: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_latest_open_interest_tick(market, instruments, groups=groups, mapping_priority=mapping_priority)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_open_interest_tick: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instruments** | **[str]**| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] if omitted the server will use the default value of []
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_latest_tick**
> GENERICRESPONSE futures_v1_latest_tick(market, instruments)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instruments = [
        "instruments_example",
    ] # [str] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional) if omitted the server will use the default value of []
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.futures_v1_latest_tick(market, instruments)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_tick: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_latest_tick(market, instruments, groups=groups, mapping_priority=mapping_priority)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_tick: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instruments** | **[str]**| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] if omitted the server will use the default value of []
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_markets**
> GENERICRESPONSE futures_v1_markets()



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "" # str | The exchange to obtain data from (optional) if omitted the server will use the default value of ""

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_markets(market=market)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_markets: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | [optional] if omitted the server will use the default value of ""

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_markets_instruments**
> GENERICRESPONSE futures_v1_markets_instruments()



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "" # str | The exchange to obtain data from (optional) if omitted the server will use the default value of ""
    instrument = "" # str | The mapped instrument to retrieve on a specific market. (optional) if omitted the server will use the default value of ""
    instrument_status = [] # [str] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional) if omitted the server will use the default value of []

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_markets_instruments(market=market, instrument=instrument, instrument_status=instrument_status)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_markets_instruments: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | [optional] if omitted the server will use the default value of ""
 **instrument** | **str**| The mapped instrument to retrieve on a specific market. | [optional] if omitted the server will use the default value of ""
 **instrument_status** | **[str]**| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] if omitted the server will use the default value of []

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_markets_instruments_unmapped**
> GENERICRESPONSE futures_v1_markets_instruments_unmapped()



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "" # str | The exchange to obtain data from (optional) if omitted the server will use the default value of ""
    instrument = "" # str | The unmapped instrument to retrieve on a specific market. (optional) if omitted the server will use the default value of ""
    instrument_status = [] # [str] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional) if omitted the server will use the default value of []

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.futures_v1_markets_instruments_unmapped(market=market, instrument=instrument, instrument_status=instrument_status)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_markets_instruments_unmapped: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | [optional] if omitted the server will use the default value of ""
 **instrument** | **str**| The unmapped instrument to retrieve on a specific market. | [optional] if omitted the server will use the default value of ""
 **instrument_status** | **[str]**| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] if omitted the server will use the default value of []

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_historical_days**
> GENERICRESPONSE index_v1_historical_days(market, instrument)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional) if omitted the server will use the default value of []
    limit = 30 # int | The number of data points to return (optional) if omitted the server will use the default value of 30
    to_ts = 1 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) if omitted the server will use the default value of 1
    fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) if omitted the server will use the default value of True
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.index_v1_historical_days(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_days: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.index_v1_historical_days(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_days: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] if omitted the server will use the default value of []
 **limit** | **int**| The number of data points to return | [optional] if omitted the server will use the default value of 30
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] if omitted the server will use the default value of 1
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] if omitted the server will use the default value of True
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_historical_hours**
> GENERICRESPONSE index_v1_historical_hours(market, instrument)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional) if omitted the server will use the default value of []
    limit = 30 # int | The number of data points to return (optional) if omitted the server will use the default value of 30
    to_ts = 1 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) if omitted the server will use the default value of 1
    fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) if omitted the server will use the default value of True
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.index_v1_historical_hours(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_hours: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.index_v1_historical_hours(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_hours: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] if omitted the server will use the default value of []
 **limit** | **int**| The number of data points to return | [optional] if omitted the server will use the default value of 30
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] if omitted the server will use the default value of 1
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] if omitted the server will use the default value of True
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_historical_messages**
> GENERICRESPONSE index_v1_historical_messages(market, instrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):

```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_header
configuration.api_key['api_key_header'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_header'] = 'Bearer'

# Configure API key authorization: api_key_query
configuration.api_key['api_key_query'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_query'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    after_ts = 0 # int | Unix timestamp in seconds of the earliest index message in the response (optional)
    last_ccseq = 0 # int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) if omitted the server will use the default value of 0
    limit = 100 # int | The maximum number of index messages to return (optional) if omitted the server will use the default value of 100
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"
    return_404_on_empty_response = False # bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) if omitted the server will use the default value of False

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.index_v1_historical_messages(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_messages: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.index_v1_historical_messages(market, instrument, after_ts=after_ts, last_ccseq=last_ccseq, limit=limit, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_messages: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **after_ts** | **int**| Unix timestamp in seconds of the earliest index message in the response | [optional]
 **last_ccseq** | **int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] if omitted the server will use the default value of 0
 **limit** | **int**| The maximum number of index messages to return | [optional] if omitted the server will use the default value of 100
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"
 **return_404_on_empty_response** | **bool**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] if omitted the server will use the default value of False

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_historical_messages_hour**
> GENERICRESPONSE index_v1_historical_messages_hour(market, instrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):

```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: api_key_header
configuration.api_key['api_key_header'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_header'] = 'Bearer'

# Configure API key authorization: api_key_query
configuration.api_key['api_key_query'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['api_key_query'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    hour_ts = 0 # int | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. (optional)
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"
    return_404_on_empty_response = False # bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) if omitted the server will use the default value of False

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.index_v1_historical_messages_hour(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_messages_hour: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.index_v1_historical_messages_hour(market, instrument, hour_ts=hour_ts, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_messages_hour: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **hour_ts** | **int**| Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | [optional]
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"
 **return_404_on_empty_response** | **bool**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] if omitted the server will use the default value of False

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_historical_minutes**
> GENERICRESPONSE index_v1_historical_minutes(market, instrument)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instrument = "instrument_example" # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional) if omitted the server will use the default value of []
    limit = 30 # int | The number of data points to return (optional) if omitted the server will use the default value of 30
    to_ts = 1 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) if omitted the server will use the default value of 1
    fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) if omitted the server will use the default value of True
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
    response_format = "JSON" # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) if omitted the server will use the default value of "JSON"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.index_v1_historical_minutes(market, instrument)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_minutes: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.index_v1_historical_minutes(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_minutes: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] if omitted the server will use the default value of []
 **limit** | **int**| The number of data points to return | [optional] if omitted the server will use the default value of 30
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] if omitted the server will use the default value of 1
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] if omitted the server will use the default value of True
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] if omitted the server will use the default value of "JSON"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_latest_instrument_metadata**
> GENERICRESPONSE index_v1_latest_instrument_metadata(market, instruments)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instruments = [
        "instruments_example",
    ] # [str] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional) if omitted the server will use the default value of []
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.index_v1_latest_instrument_metadata(market, instruments)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_latest_instrument_metadata: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.index_v1_latest_instrument_metadata(market, instruments, groups=groups, mapping_priority=mapping_priority)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_latest_instrument_metadata: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instruments** | **[str]**| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] if omitted the server will use the default value of []
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_latest_tick**
> GENERICRESPONSE index_v1_latest_tick(market, instruments)



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "market_example" # str | The exchange to obtain data from
    instruments = [
        "instruments_example",
    ] # [str] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
    groups = [] # [str] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional) if omitted the server will use the default value of []
    mapping_priority = "CHECK_MAPPED_FIRST" # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.index_v1_latest_tick(market, instruments)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_latest_tick: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.index_v1_latest_tick(market, instruments, groups=groups, mapping_priority=mapping_priority)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_latest_tick: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from |
 **instruments** | **[str]**| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |
 **groups** | **[str]**| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] if omitted the server will use the default value of []
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_markets**
> GENERICRESPONSE index_v1_markets()



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "" # str | The exchange to obtain data from (optional) if omitted the server will use the default value of ""

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.index_v1_markets(market=market)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_markets: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | [optional] if omitted the server will use the default value of ""

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_markets_instruments**
> GENERICRESPONSE index_v1_markets_instruments()



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "" # str | The exchange to obtain data from (optional) if omitted the server will use the default value of ""
    instrument = "" # str | The mapped instrument to retrieve on a specific market. (optional) if omitted the server will use the default value of ""
    instrument_status = [] # [str] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional) if omitted the server will use the default value of []

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.index_v1_markets_instruments(market=market, instrument=instrument, instrument_status=instrument_status)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_markets_instruments: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | [optional] if omitted the server will use the default value of ""
 **instrument** | **str**| The mapped instrument to retrieve on a specific market. | [optional] if omitted the server will use the default value of ""
 **instrument_status** | **[str]**| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] if omitted the server will use the default value of []

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_markets_instruments_unmapped**
> GENERICRESPONSE index_v1_markets_instruments_unmapped()



### Example


```python
import time
import openapi_client
from openapi_client.api import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)
    market = "" # str | The exchange to obtain data from (optional) if omitted the server will use the default value of ""
    instrument = "" # str | The unmapped instrument to retrieve on a specific market. (optional) if omitted the server will use the default value of ""
    instrument_status = [] # [str] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional) if omitted the server will use the default value of []

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.index_v1_markets_instruments_unmapped(market=market, instrument=instrument, instrument_status=instrument_status)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_markets_instruments_unmapped: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | [optional] if omitted the server will use the default value of ""
 **instrument** | **str**| The unmapped instrument to retrieve on a specific market. | [optional] if omitted the server will use the default value of ""
 **instrument_status** | **[str]**| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] if omitted the server will use the default value of []

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success response from the API. |  -  |
**400** | The 400 error occurs when some of the data sent is malformed. |  -  |
**401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
**404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
**405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
**429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
**500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
**502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
**503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

