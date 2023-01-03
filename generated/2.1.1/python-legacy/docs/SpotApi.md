# openapi_client.SpotApi

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


# **spot_v1_historical_days**
> SPOTINSTRUMENTHISTODATARESPONSE spot_v1_historical_days(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)



### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SpotApi(api_client)
    market = 'market_example' # str | The exchange to obtain data from
instrument = 'instrument_example' # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
groups = [] # list[str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional) (default to [])
limit = 30 # int | The number of data points to return (optional) (default to 30)
to_ts = 56 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to True)
mapping_priority = 'CHECK_MAPPED_FIRST' # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to 'CHECK_MAPPED_FIRST')
response_format = 'JSON' # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to 'JSON')

    try:
        api_response = api_instance.spot_v1_historical_days(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_historical_days: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | 
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**list[str]**](str.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] [default to []]
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to True]
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

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

# **spot_v1_historical_hours**
> SPOTINSTRUMENTHISTODATARESPONSE spot_v1_historical_hours(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)



### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SpotApi(api_client)
    market = 'market_example' # str | The exchange to obtain data from
instrument = 'instrument_example' # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
groups = [] # list[str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional) (default to [])
limit = 30 # int | The number of data points to return (optional) (default to 30)
to_ts = 56 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to True)
mapping_priority = 'CHECK_MAPPED_FIRST' # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to 'CHECK_MAPPED_FIRST')
response_format = 'JSON' # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to 'JSON')

    try:
        api_response = api_instance.spot_v1_historical_hours(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_historical_hours: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | 
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**list[str]**](str.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] [default to []]
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to True]
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

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

# **spot_v1_historical_minutes**
> SPOTINSTRUMENTHISTODATARESPONSE spot_v1_historical_minutes(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)



### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SpotApi(api_client)
    market = 'market_example' # str | The exchange to obtain data from
instrument = 'instrument_example' # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
groups = [] # list[str] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional) (default to [])
limit = 30 # int | The number of data points to return (optional) (default to 30)
to_ts = 56 # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
aggregate = 1 # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
fill = True # bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to True)
mapping_priority = 'CHECK_MAPPED_FIRST' # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to 'CHECK_MAPPED_FIRST')
response_format = 'JSON' # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to 'JSON')

    try:
        api_response = api_instance.spot_v1_historical_minutes(market, instrument, groups=groups, limit=limit, to_ts=to_ts, aggregate=aggregate, fill=fill, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_historical_minutes: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | 
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**list[str]**](str.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] [default to []]
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to True]
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

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

# **spot_v1_historical_orderbook_l2_snapshot_minute**
> GENERICRESPONSE spot_v1_historical_orderbook_l2_snapshot_minute(market, instrument, minute_ts, depth=depth, mapping_priority=mapping_priority, response_format=response_format)



### Example

* Api Key Authentication (api_key_header):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
    api_instance = openapi_client.SpotApi(api_client)
    market = 'market_example' # str | The exchange to obtain data from
instrument = 'instrument_example' # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
minute_ts = 56 # int | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
depth = 50 # int | The number of top bids and asks to return. (optional) (default to 50)
mapping_priority = 'CHECK_MAPPED_FIRST' # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to 'CHECK_MAPPED_FIRST')
response_format = 'JSON' # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to 'JSON')

    try:
        api_response = api_instance.spot_v1_historical_orderbook_l2_snapshot_minute(market, instrument, minute_ts, depth=depth, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_historical_orderbook_l2_snapshot_minute: %s\n" % e)
```

* Api Key Authentication (api_key_query):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
    api_instance = openapi_client.SpotApi(api_client)
    market = 'market_example' # str | The exchange to obtain data from
instrument = 'instrument_example' # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
minute_ts = 56 # int | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
depth = 50 # int | The number of top bids and asks to return. (optional) (default to 50)
mapping_priority = 'CHECK_MAPPED_FIRST' # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to 'CHECK_MAPPED_FIRST')
response_format = 'JSON' # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to 'JSON')

    try:
        api_response = api_instance.spot_v1_historical_orderbook_l2_snapshot_minute(market, instrument, minute_ts, depth=depth, mapping_priority=mapping_priority, response_format=response_format)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_historical_orderbook_l2_snapshot_minute: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | 
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **minute_ts** | **int**| Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. | 
 **depth** | **int**| The number of top bids and asks to return. | [optional] [default to 50]
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

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

# **spot_v1_historical_trades**
> SPOTINSTRUMENTTRADERESPONSE spot_v1_historical_trades(market, instrument, after_ts=after_ts, last_ccseq=last_ccseq, limit=limit, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)



### Example

* Api Key Authentication (api_key_header):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
    api_instance = openapi_client.SpotApi(api_client)
    market = 'market_example' # str | The exchange to obtain data from
instrument = 'instrument_example' # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
after_ts = 56 # int | Unix timestamp in seconds of the earliest trade in the response. (optional)
last_ccseq = 0 # int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to 0)
limit = 100 # int | The maximum number of trades to return (optional) (default to 100)
mapping_priority = 'CHECK_MAPPED_FIRST' # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to 'CHECK_MAPPED_FIRST')
response_format = 'JSON' # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to 'JSON')
return_404_on_empty_response = False # bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to False)

    try:
        api_response = api_instance.spot_v1_historical_trades(market, instrument, after_ts=after_ts, last_ccseq=last_ccseq, limit=limit, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_historical_trades: %s\n" % e)
```

* Api Key Authentication (api_key_query):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
    api_instance = openapi_client.SpotApi(api_client)
    market = 'market_example' # str | The exchange to obtain data from
instrument = 'instrument_example' # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
after_ts = 56 # int | Unix timestamp in seconds of the earliest trade in the response. (optional)
last_ccseq = 0 # int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to 0)
limit = 100 # int | The maximum number of trades to return (optional) (default to 100)
mapping_priority = 'CHECK_MAPPED_FIRST' # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to 'CHECK_MAPPED_FIRST')
response_format = 'JSON' # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to 'JSON')
return_404_on_empty_response = False # bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to False)

    try:
        api_response = api_instance.spot_v1_historical_trades(market, instrument, after_ts=after_ts, last_ccseq=last_ccseq, limit=limit, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_historical_trades: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | 
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **after_ts** | **int**| Unix timestamp in seconds of the earliest trade in the response. | [optional] 
 **last_ccseq** | **int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **int**| The maximum number of trades to return | [optional] [default to 100]
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
 **return_404_on_empty_response** | **bool**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to False]

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

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

# **spot_v1_historical_trades_hour**
> SPOTINSTRUMENTTRADERESPONSE spot_v1_historical_trades_hour(market, instrument, hour_ts=hour_ts, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)



### Example

* Api Key Authentication (api_key_header):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
    api_instance = openapi_client.SpotApi(api_client)
    market = 'market_example' # str | The exchange to obtain data from
instrument = 'instrument_example' # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
hour_ts = 56 # int | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. (optional)
mapping_priority = 'CHECK_MAPPED_FIRST' # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to 'CHECK_MAPPED_FIRST')
response_format = 'JSON' # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to 'JSON')
return_404_on_empty_response = False # bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to False)

    try:
        api_response = api_instance.spot_v1_historical_trades_hour(market, instrument, hour_ts=hour_ts, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_historical_trades_hour: %s\n" % e)
```

* Api Key Authentication (api_key_query):
```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
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
    api_instance = openapi_client.SpotApi(api_client)
    market = 'market_example' # str | The exchange to obtain data from
instrument = 'instrument_example' # str | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
hour_ts = 56 # int | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. (optional)
mapping_priority = 'CHECK_MAPPED_FIRST' # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to 'CHECK_MAPPED_FIRST')
response_format = 'JSON' # str | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to 'JSON')
return_404_on_empty_response = False # bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to False)

    try:
        api_response = api_instance.spot_v1_historical_trades_hour(market, instrument, hour_ts=hour_ts, mapping_priority=mapping_priority, response_format=response_format, return_404_on_empty_response=return_404_on_empty_response)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_historical_trades_hour: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | 
 **instrument** | **str**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hour_ts** | **int**| Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional] 
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **str**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
 **return_404_on_empty_response** | **bool**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to False]

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

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

# **spot_v1_latest_instrument_metadata**
> SPOTINSTRUMENTMETADATARESPONSE spot_v1_latest_instrument_metadata(market, instruments, groups=groups, mapping_priority=mapping_priority)



### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SpotApi(api_client)
    market = 'coinbase' # str | The exchange to obtain data from
instruments = ['[\"BTC-USD\",\"ETH-USD\"]'] # list[str] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
groups = [] # list[str] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional) (default to [])
mapping_priority = 'CHECK_MAPPED_FIRST' # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to 'CHECK_MAPPED_FIRST')

    try:
        api_response = api_instance.spot_v1_latest_instrument_metadata(market, instruments, groups=groups, mapping_priority=mapping_priority)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_latest_instrument_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | 
 **instruments** | [**list[str]**](str.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**list[str]**](str.md)| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] [default to []]
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[**SPOTINSTRUMENTMETADATARESPONSE**](SPOTINSTRUMENTMETADATARESPONSE.md)

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

# **spot_v1_latest_tick**
> SPOTINSTRUMENTMARKETDATARESPONSE spot_v1_latest_tick(market, instruments, groups=groups, mapping_priority=mapping_priority)



### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SpotApi(api_client)
    market = 'market_example' # str | The exchange to obtain data from
instruments = ['instruments_example'] # list[str] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
groups = [] # list[str] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional) (default to [])
mapping_priority = 'CHECK_MAPPED_FIRST' # str | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to 'CHECK_MAPPED_FIRST')

    try:
        api_response = api_instance.spot_v1_latest_tick(market, instruments, groups=groups, mapping_priority=mapping_priority)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_latest_tick: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | 
 **instruments** | [**list[str]**](str.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**list[str]**](str.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] [default to []]
 **mapping_priority** | **str**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[**SPOTINSTRUMENTMARKETDATARESPONSE**](SPOTINSTRUMENTMARKETDATARESPONSE.md)

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

# **spot_v1_markets**
> GENERICRESPONSE spot_v1_markets(market=market)



### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SpotApi(api_client)
    market = '' # str | The exchange to obtain data from (optional) (default to '')

    try:
        api_response = api_instance.spot_v1_markets(market=market)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_markets: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | [optional] [default to &#39;&#39;]

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

# **spot_v1_markets_instruments**
> GENERICRESPONSE spot_v1_markets_instruments(market=market, instrument=instrument, instrument_status=instrument_status)



### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SpotApi(api_client)
    market = '' # str | The exchange to obtain data from (optional) (default to '')
instrument = '' # str | The mapped instrument to retrieve on a specific market. (optional) (default to '')
instrument_status = ["ACTIVE","IGNORED","RETIRED","EXPIRED"] # list[str] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional) (default to ["ACTIVE","IGNORED","RETIRED","EXPIRED"])

    try:
        api_response = api_instance.spot_v1_markets_instruments(market=market, instrument=instrument, instrument_status=instrument_status)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_markets_instruments: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | [optional] [default to &#39;&#39;]
 **instrument** | **str**| The mapped instrument to retrieve on a specific market. | [optional] [default to &#39;&#39;]
 **instrument_status** | [**list[str]**](str.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to [&quot;ACTIVE&quot;,&quot;IGNORED&quot;,&quot;RETIRED&quot;,&quot;EXPIRED&quot;]]

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

# **spot_v1_markets_instruments_unmapped**
> GENERICRESPONSE spot_v1_markets_instruments_unmapped(market=market, instrument=instrument, instrument_status=instrument_status)



### Example

```python
from __future__ import print_function
import time
import openapi_client
from openapi_client.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.SpotApi(api_client)
    market = '' # str | The exchange to obtain data from (optional) (default to '')
instrument = '' # str | The unmapped instrument to retrieve on a specific market. (optional) (default to '')
instrument_status = ["ACTIVE","IGNORED","RETIRED","EXPIRED"] # list[str] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional) (default to ["ACTIVE","IGNORED","RETIRED","EXPIRED"])

    try:
        api_response = api_instance.spot_v1_markets_instruments_unmapped(market=market, instrument=instrument, instrument_status=instrument_status)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling SpotApi->spot_v1_markets_instruments_unmapped: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **str**| The exchange to obtain data from | [optional] [default to &#39;&#39;]
 **instrument** | **str**| The unmapped instrument to retrieve on a specific market. | [optional] [default to &#39;&#39;]
 **instrument_status** | [**list[str]**](str.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] [default to [&quot;ACTIVE&quot;,&quot;IGNORED&quot;,&quot;RETIRED&quot;,&quot;EXPIRED&quot;]]

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

