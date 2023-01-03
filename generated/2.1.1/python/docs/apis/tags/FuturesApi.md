<a name="__pageTop"></a>
# openapi_client.apis.tags.futures_api.FuturesApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**futures_v1_historical_days**](#futures_v1_historical_days) | **get** /futures/v1/historical/days | 
[**futures_v1_historical_funding_rate_days**](#futures_v1_historical_funding_rate_days) | **get** /futures/v1/historical/funding-rate/days | 
[**futures_v1_historical_funding_rate_hours**](#futures_v1_historical_funding_rate_hours) | **get** /futures/v1/historical/funding-rate/hours | 
[**futures_v1_historical_funding_rate_messages**](#futures_v1_historical_funding_rate_messages) | **get** /futures/v1/historical/funding-rate-messages | 
[**futures_v1_historical_funding_rate_messages_hour**](#futures_v1_historical_funding_rate_messages_hour) | **get** /futures/v1/historical/funding-rate-messages/hour | 
[**futures_v1_historical_funding_rate_minutes**](#futures_v1_historical_funding_rate_minutes) | **get** /futures/v1/historical/funding-rate/minutes | 
[**futures_v1_historical_hours**](#futures_v1_historical_hours) | **get** /futures/v1/historical/hours | 
[**futures_v1_historical_minutes**](#futures_v1_historical_minutes) | **get** /futures/v1/historical/minutes | 
[**futures_v1_historical_open_interest_days**](#futures_v1_historical_open_interest_days) | **get** /futures/v1/historical/open-interest/days | 
[**futures_v1_historical_open_interest_hours**](#futures_v1_historical_open_interest_hours) | **get** /futures/v1/historical/open-interest/hours | 
[**futures_v1_historical_open_interest_messages**](#futures_v1_historical_open_interest_messages) | **get** /futures/v1/historical/open-interest-messages | 
[**futures_v1_historical_open_interest_messages_hour**](#futures_v1_historical_open_interest_messages_hour) | **get** /futures/v1/historical/open-interest-messages/hour | 
[**futures_v1_historical_open_interest_minutes**](#futures_v1_historical_open_interest_minutes) | **get** /futures/v1/historical/open-interest/minutes | 
[**futures_v1_historical_trades**](#futures_v1_historical_trades) | **get** /futures/v1/historical/trades | 
[**futures_v1_historical_trades_hour**](#futures_v1_historical_trades_hour) | **get** /futures/v1/historical/trades/hour | 
[**futures_v1_latest_funding_rate_tick**](#futures_v1_latest_funding_rate_tick) | **get** /futures/v1/latest/funding-rate/tick | 
[**futures_v1_latest_instrument_metadata**](#futures_v1_latest_instrument_metadata) | **get** /futures/v1/latest/instrument/metadata | 
[**futures_v1_latest_open_interest_tick**](#futures_v1_latest_open_interest_tick) | **get** /futures/v1/latest/open-interest/tick | 
[**futures_v1_latest_tick**](#futures_v1_latest_tick) | **get** /futures/v1/latest/tick | 
[**futures_v1_markets**](#futures_v1_markets) | **get** /futures/v1/markets | 
[**futures_v1_markets_instruments**](#futures_v1_markets_instruments) | **get** /futures/v1/markets/instruments | 
[**futures_v1_markets_instruments_unmapped**](#futures_v1_markets_instruments_unmapped) | **get** /futures/v1/markets/instruments/unmapped | 
[**index_v1_historical_days**](#index_v1_historical_days) | **get** /index/v1/historical/days | 
[**index_v1_historical_hours**](#index_v1_historical_hours) | **get** /index/v1/historical/hours | 
[**index_v1_historical_messages**](#index_v1_historical_messages) | **get** /index/v1/historical/messages | 
[**index_v1_historical_messages_hour**](#index_v1_historical_messages_hour) | **get** /index/v1/historical/messages/hour | 
[**index_v1_historical_minutes**](#index_v1_historical_minutes) | **get** /index/v1/historical/minutes | 
[**index_v1_latest_instrument_metadata**](#index_v1_latest_instrument_metadata) | **get** /index/v1/latest/instrument/metadata | 
[**index_v1_latest_tick**](#index_v1_latest_tick) | **get** /index/v1/latest/tick | 
[**index_v1_markets**](#index_v1_markets) | **get** /index/v1/markets | 
[**index_v1_markets_instruments**](#index_v1_markets_instruments) | **get** /index/v1/markets/instruments | 
[**index_v1_markets_instruments_unmapped**](#index_v1_markets_instruments_unmapped) | **get** /index/v1/markets/instruments/unmapped | 

# **futures_v1_historical_days**
<a name="futures_v1_historical_days"></a>
> GENERICRESPONSE futures_v1_historical_days(marketinstrument)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_days(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_days: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.futures_v1_historical_days(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_days: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 30

# ToTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# AggregateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 1

# FillSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_days.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_days.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_days.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_days.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_days.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_days.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_days.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_days.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_days.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_days.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_days.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_days.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_days.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_days.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_days.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_days.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_days.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_days.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_days.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_days.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_funding_rate_days**
<a name="futures_v1_historical_funding_rate_days"></a>
> GENERICRESPONSE futures_v1_historical_funding_rate_days(marketinstrument)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_days(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_days: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_days(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_days: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 30

# ToTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# AggregateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 1

# FillSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_funding_rate_days.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_funding_rate_days.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_funding_rate_days.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_funding_rate_days.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_funding_rate_days.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_funding_rate_days.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_funding_rate_days.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_funding_rate_days.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_funding_rate_days.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_funding_rate_days.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_funding_rate_days.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_funding_rate_days.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_days.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_days.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_days.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_days.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_days.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_days.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_days.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_days.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_funding_rate_hours**
<a name="futures_v1_historical_funding_rate_hours"></a>
> GENERICRESPONSE futures_v1_historical_funding_rate_hours(marketinstrument)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_hours(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_hours: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_hours(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_hours: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 30

# ToTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# AggregateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 1

# FillSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_funding_rate_hours.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_funding_rate_hours.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_funding_rate_hours.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_funding_rate_hours.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_funding_rate_hours.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_funding_rate_hours.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_funding_rate_hours.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_funding_rate_hours.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_funding_rate_hours.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_funding_rate_hours.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_funding_rate_hours.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_funding_rate_hours.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_hours.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_hours.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_hours.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_hours.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_hours.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_hours.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_hours.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_hours.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_funding_rate_messages**
<a name="futures_v1_historical_funding_rate_messages"></a>
> GENERICRESPONSE futures_v1_historical_funding_rate_messages(marketinstrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):
```python
import openapi_client
from openapi_client.apis.tags import futures_api
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

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_messages(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_messages: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'after_ts': 0,
        'last_ccseq': 0,
        'limit': 100,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
        'return_404_on_empty_response': False,
    }
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_messages(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_messages: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
after_ts | AfterTsSchema | | optional
last_ccseq | LastCcseqSchema | | optional
limit | LimitSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional
return_404_on_empty_response | Return404OnEmptyResponseSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# AfterTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# LastCcseqSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 0

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 100

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

# Return404OnEmptyResponseSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_funding_rate_messages.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_funding_rate_messages.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_funding_rate_messages.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_funding_rate_messages.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_funding_rate_messages.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_funding_rate_messages.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_funding_rate_messages.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_funding_rate_messages.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_funding_rate_messages.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_funding_rate_messages.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_funding_rate_messages.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_funding_rate_messages.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

[api_key_header](../../../README.md#api_key_header), [api_key_query](../../../README.md#api_key_query)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_funding_rate_messages_hour**
<a name="futures_v1_historical_funding_rate_messages_hour"></a>
> GENERICRESPONSE futures_v1_historical_funding_rate_messages_hour(marketinstrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):
```python
import openapi_client
from openapi_client.apis.tags import futures_api
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

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_messages_hour(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_messages_hour: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'hour_ts': 0,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
        'return_404_on_empty_response': False,
    }
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_messages_hour(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_messages_hour: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
hour_ts | HourTsSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional
return_404_on_empty_response | Return404OnEmptyResponseSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# HourTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

# Return404OnEmptyResponseSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_funding_rate_messages_hour.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_funding_rate_messages_hour.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_funding_rate_messages_hour.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_funding_rate_messages_hour.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_funding_rate_messages_hour.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_funding_rate_messages_hour.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_funding_rate_messages_hour.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_funding_rate_messages_hour.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_funding_rate_messages_hour.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_funding_rate_messages_hour.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_funding_rate_messages_hour.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_funding_rate_messages_hour.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages_hour.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages_hour.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages_hour.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages_hour.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages_hour.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages_hour.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages_hour.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_messages_hour.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

[api_key_header](../../../README.md#api_key_header), [api_key_query](../../../README.md#api_key_query)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_funding_rate_minutes**
<a name="futures_v1_historical_funding_rate_minutes"></a>
> GENERICRESPONSE futures_v1_historical_funding_rate_minutes(marketinstrument)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_minutes(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_minutes: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.futures_v1_historical_funding_rate_minutes(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_funding_rate_minutes: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 30

# ToTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# AggregateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 1

# FillSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_funding_rate_minutes.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_funding_rate_minutes.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_funding_rate_minutes.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_funding_rate_minutes.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_funding_rate_minutes.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_funding_rate_minutes.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_funding_rate_minutes.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_funding_rate_minutes.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_funding_rate_minutes.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_funding_rate_minutes.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_funding_rate_minutes.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_funding_rate_minutes.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_minutes.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_minutes.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_minutes.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_minutes.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_minutes.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_minutes.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_minutes.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_funding_rate_minutes.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_hours**
<a name="futures_v1_historical_hours"></a>
> GENERICRESPONSE futures_v1_historical_hours(marketinstrument)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_hours(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_hours: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.futures_v1_historical_hours(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_hours: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 30

# ToTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# AggregateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 1

# FillSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_hours.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_hours.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_hours.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_hours.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_hours.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_hours.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_hours.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_hours.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_hours.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_hours.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_hours.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_hours.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_hours.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_hours.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_hours.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_hours.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_hours.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_hours.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_hours.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_hours.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_minutes**
<a name="futures_v1_historical_minutes"></a>
> GENERICRESPONSE futures_v1_historical_minutes(marketinstrument)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_minutes(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_minutes: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.futures_v1_historical_minutes(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_minutes: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 30

# ToTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# AggregateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 1

# FillSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_minutes.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_minutes.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_minutes.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_minutes.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_minutes.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_minutes.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_minutes.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_minutes.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_minutes.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_minutes.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_minutes.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_minutes.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_minutes.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_minutes.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_minutes.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_minutes.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_minutes.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_minutes.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_minutes.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_minutes.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_open_interest_days**
<a name="futures_v1_historical_open_interest_days"></a>
> GENERICRESPONSE futures_v1_historical_open_interest_days(marketinstrument)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_open_interest_days(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_days: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.futures_v1_historical_open_interest_days(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_days: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 30

# ToTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# AggregateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 1

# FillSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_open_interest_days.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_open_interest_days.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_open_interest_days.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_open_interest_days.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_open_interest_days.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_open_interest_days.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_open_interest_days.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_open_interest_days.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_open_interest_days.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_open_interest_days.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_open_interest_days.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_open_interest_days.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_days.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_days.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_days.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_days.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_days.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_days.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_days.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_days.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_open_interest_hours**
<a name="futures_v1_historical_open_interest_hours"></a>
> GENERICRESPONSE futures_v1_historical_open_interest_hours(marketinstrument)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_open_interest_hours(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_hours: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.futures_v1_historical_open_interest_hours(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_hours: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 30

# ToTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# AggregateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 1

# FillSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_open_interest_hours.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_open_interest_hours.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_open_interest_hours.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_open_interest_hours.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_open_interest_hours.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_open_interest_hours.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_open_interest_hours.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_open_interest_hours.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_open_interest_hours.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_open_interest_hours.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_open_interest_hours.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_open_interest_hours.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_hours.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_hours.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_hours.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_hours.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_hours.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_hours.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_hours.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_hours.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_open_interest_messages**
<a name="futures_v1_historical_open_interest_messages"></a>
> GENERICRESPONSE futures_v1_historical_open_interest_messages(marketinstrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):
```python
import openapi_client
from openapi_client.apis.tags import futures_api
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

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_open_interest_messages(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_messages: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'after_ts': 0,
        'last_ccseq': 0,
        'limit': 100,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
        'return_404_on_empty_response': False,
    }
    try:
        api_response = api_instance.futures_v1_historical_open_interest_messages(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_messages: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
after_ts | AfterTsSchema | | optional
last_ccseq | LastCcseqSchema | | optional
limit | LimitSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional
return_404_on_empty_response | Return404OnEmptyResponseSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# AfterTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# LastCcseqSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 0

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 100

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

# Return404OnEmptyResponseSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_open_interest_messages.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_open_interest_messages.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_open_interest_messages.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_open_interest_messages.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_open_interest_messages.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_open_interest_messages.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_open_interest_messages.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_open_interest_messages.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_open_interest_messages.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_open_interest_messages.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_open_interest_messages.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_open_interest_messages.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

[api_key_header](../../../README.md#api_key_header), [api_key_query](../../../README.md#api_key_query)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_open_interest_messages_hour**
<a name="futures_v1_historical_open_interest_messages_hour"></a>
> GENERICRESPONSE futures_v1_historical_open_interest_messages_hour(marketinstrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):
```python
import openapi_client
from openapi_client.apis.tags import futures_api
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

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_open_interest_messages_hour(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_messages_hour: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'hour_ts': 0,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
        'return_404_on_empty_response': False,
    }
    try:
        api_response = api_instance.futures_v1_historical_open_interest_messages_hour(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_messages_hour: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
hour_ts | HourTsSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional
return_404_on_empty_response | Return404OnEmptyResponseSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# HourTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

# Return404OnEmptyResponseSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_open_interest_messages_hour.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_open_interest_messages_hour.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_open_interest_messages_hour.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_open_interest_messages_hour.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_open_interest_messages_hour.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_open_interest_messages_hour.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_open_interest_messages_hour.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_open_interest_messages_hour.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_open_interest_messages_hour.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_open_interest_messages_hour.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_open_interest_messages_hour.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_open_interest_messages_hour.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages_hour.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages_hour.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages_hour.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages_hour.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages_hour.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages_hour.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages_hour.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_messages_hour.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

[api_key_header](../../../README.md#api_key_header), [api_key_query](../../../README.md#api_key_query)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_open_interest_minutes**
<a name="futures_v1_historical_open_interest_minutes"></a>
> GENERICRESPONSE futures_v1_historical_open_interest_minutes(marketinstrument)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_open_interest_minutes(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_minutes: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.futures_v1_historical_open_interest_minutes(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_open_interest_minutes: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 30

# ToTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# AggregateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 1

# FillSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_open_interest_minutes.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_open_interest_minutes.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_open_interest_minutes.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_open_interest_minutes.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_open_interest_minutes.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_open_interest_minutes.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_open_interest_minutes.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_open_interest_minutes.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_open_interest_minutes.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_open_interest_minutes.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_open_interest_minutes.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_open_interest_minutes.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_minutes.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_minutes.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_minutes.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_minutes.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_minutes.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_minutes.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_minutes.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_open_interest_minutes.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_trades**
<a name="futures_v1_historical_trades"></a>
> GENERICRESPONSE futures_v1_historical_trades(marketinstrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):
```python
import openapi_client
from openapi_client.apis.tags import futures_api
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

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_trades(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_trades: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'after_ts': 0,
        'last_ccseq': 0,
        'limit': 100,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
        'return_404_on_empty_response': False,
    }
    try:
        api_response = api_instance.futures_v1_historical_trades(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_trades: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
after_ts | AfterTsSchema | | optional
last_ccseq | LastCcseqSchema | | optional
limit | LimitSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional
return_404_on_empty_response | Return404OnEmptyResponseSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# AfterTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# LastCcseqSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 0

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 100

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

# Return404OnEmptyResponseSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_trades.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_trades.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_trades.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_trades.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_trades.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_trades.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_trades.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_trades.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_trades.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_trades.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_trades.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_trades.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

[api_key_header](../../../README.md#api_key_header), [api_key_query](../../../README.md#api_key_query)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_historical_trades_hour**
<a name="futures_v1_historical_trades_hour"></a>
> GENERICRESPONSE futures_v1_historical_trades_hour(marketinstrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):
```python
import openapi_client
from openapi_client.apis.tags import futures_api
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

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.futures_v1_historical_trades_hour(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_trades_hour: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'hour_ts': 0,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
        'return_404_on_empty_response': False,
    }
    try:
        api_response = api_instance.futures_v1_historical_trades_hour(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_historical_trades_hour: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
hour_ts | HourTsSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional
return_404_on_empty_response | Return404OnEmptyResponseSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# HourTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

# Return404OnEmptyResponseSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_historical_trades_hour.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_historical_trades_hour.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_historical_trades_hour.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_historical_trades_hour.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_historical_trades_hour.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_historical_trades_hour.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_historical_trades_hour.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_historical_trades_hour.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_historical_trades_hour.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_historical_trades_hour.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_historical_trades_hour.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_historical_trades_hour.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades_hour.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades_hour.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades_hour.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades_hour.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades_hour.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades_hour.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades_hour.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_historical_trades_hour.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

[api_key_header](../../../README.md#api_key_header), [api_key_query](../../../README.md#api_key_query)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_latest_funding_rate_tick**
<a name="futures_v1_latest_funding_rate_tick"></a>
> GENERICRESPONSE futures_v1_latest_funding_rate_tick(marketinstruments)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instruments': [
        "instruments_example"
    ],
    }
    try:
        api_response = api_instance.futures_v1_latest_funding_rate_tick(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_funding_rate_tick: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instruments': [
        "instruments_example"
    ],
        'groups': [],
        'mapping_priority': "CHECK_MAPPED_FIRST",
    }
    try:
        api_response = api_instance.futures_v1_latest_funding_rate_tick(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_funding_rate_tick: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instruments | InstrumentsSchema | | 
groups | GroupsSchema | | optional
mapping_priority | MappingPrioritySchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_latest_funding_rate_tick.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_latest_funding_rate_tick.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_latest_funding_rate_tick.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_latest_funding_rate_tick.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_latest_funding_rate_tick.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_latest_funding_rate_tick.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_latest_funding_rate_tick.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_latest_funding_rate_tick.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_latest_funding_rate_tick.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_latest_funding_rate_tick.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_latest_funding_rate_tick.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_latest_funding_rate_tick.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_funding_rate_tick.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_funding_rate_tick.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_funding_rate_tick.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_funding_rate_tick.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_funding_rate_tick.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_funding_rate_tick.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_funding_rate_tick.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_funding_rate_tick.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_latest_instrument_metadata**
<a name="futures_v1_latest_instrument_metadata"></a>
> GENERICRESPONSE futures_v1_latest_instrument_metadata(marketinstruments)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instruments': [
        "instruments_example"
    ],
    }
    try:
        api_response = api_instance.futures_v1_latest_instrument_metadata(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_instrument_metadata: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instruments': [
        "instruments_example"
    ],
        'groups': [],
        'mapping_priority': "CHECK_MAPPED_FIRST",
    }
    try:
        api_response = api_instance.futures_v1_latest_instrument_metadata(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_instrument_metadata: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instruments | InstrumentsSchema | | 
groups | GroupsSchema | | optional
mapping_priority | MappingPrioritySchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_latest_instrument_metadata.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_latest_instrument_metadata.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_latest_instrument_metadata.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_latest_instrument_metadata.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_latest_instrument_metadata.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_latest_instrument_metadata.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_latest_instrument_metadata.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_latest_instrument_metadata.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_latest_instrument_metadata.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_latest_instrument_metadata.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_latest_instrument_metadata.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_latest_instrument_metadata.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_instrument_metadata.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_instrument_metadata.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_instrument_metadata.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_instrument_metadata.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_instrument_metadata.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_instrument_metadata.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_instrument_metadata.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_instrument_metadata.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_latest_open_interest_tick**
<a name="futures_v1_latest_open_interest_tick"></a>
> GENERICRESPONSE futures_v1_latest_open_interest_tick(marketinstruments)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instruments': [
        "instruments_example"
    ],
    }
    try:
        api_response = api_instance.futures_v1_latest_open_interest_tick(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_open_interest_tick: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instruments': [
        "instruments_example"
    ],
        'groups': [],
        'mapping_priority': "CHECK_MAPPED_FIRST",
    }
    try:
        api_response = api_instance.futures_v1_latest_open_interest_tick(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_open_interest_tick: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instruments | InstrumentsSchema | | 
groups | GroupsSchema | | optional
mapping_priority | MappingPrioritySchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_latest_open_interest_tick.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_latest_open_interest_tick.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_latest_open_interest_tick.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_latest_open_interest_tick.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_latest_open_interest_tick.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_latest_open_interest_tick.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_latest_open_interest_tick.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_latest_open_interest_tick.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_latest_open_interest_tick.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_latest_open_interest_tick.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_latest_open_interest_tick.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_latest_open_interest_tick.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_open_interest_tick.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_open_interest_tick.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_open_interest_tick.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_open_interest_tick.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_open_interest_tick.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_open_interest_tick.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_open_interest_tick.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_open_interest_tick.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_latest_tick**
<a name="futures_v1_latest_tick"></a>
> GENERICRESPONSE futures_v1_latest_tick(marketinstruments)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instruments': [
        "instruments_example"
    ],
    }
    try:
        api_response = api_instance.futures_v1_latest_tick(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_tick: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instruments': [
        "instruments_example"
    ],
        'groups': [],
        'mapping_priority': "CHECK_MAPPED_FIRST",
    }
    try:
        api_response = api_instance.futures_v1_latest_tick(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_latest_tick: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instruments | InstrumentsSchema | | 
groups | GroupsSchema | | optional
mapping_priority | MappingPrioritySchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_latest_tick.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_latest_tick.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_latest_tick.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_latest_tick.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_latest_tick.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_latest_tick.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_latest_tick.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_latest_tick.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_latest_tick.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_latest_tick.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_latest_tick.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_latest_tick.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_tick.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_tick.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_tick.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_tick.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_tick.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_tick.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_tick.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_latest_tick.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_markets**
<a name="futures_v1_markets"></a>
> GENERICRESPONSE futures_v1_markets()



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only optional values
    query_params = {
        'market': "",
    }
    try:
        api_response = api_instance.futures_v1_markets(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_markets: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_markets.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_markets.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_markets.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_markets.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_markets.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_markets.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_markets.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_markets.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_markets.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_markets.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_markets.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_markets.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_markets_instruments**
<a name="futures_v1_markets_instruments"></a>
> GENERICRESPONSE futures_v1_markets_instruments()



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only optional values
    query_params = {
        'market': "",
        'instrument': "",
        'instrument_status': [],
    }
    try:
        api_response = api_instance.futures_v1_markets_instruments(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_markets_instruments: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | optional
instrument | InstrumentSchema | | optional
instrument_status | InstrumentStatusSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

# InstrumentStatusSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | must be one of ["ACTIVE", "IGNORED", "RETIRED", "EXPIRED", ] 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_markets_instruments.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_markets_instruments.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_markets_instruments.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_markets_instruments.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_markets_instruments.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_markets_instruments.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_markets_instruments.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_markets_instruments.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_markets_instruments.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_markets_instruments.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_markets_instruments.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_markets_instruments.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **futures_v1_markets_instruments_unmapped**
<a name="futures_v1_markets_instruments_unmapped"></a>
> GENERICRESPONSE futures_v1_markets_instruments_unmapped()



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only optional values
    query_params = {
        'market': "",
        'instrument': "",
        'instrument_status': [],
    }
    try:
        api_response = api_instance.futures_v1_markets_instruments_unmapped(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->futures_v1_markets_instruments_unmapped: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | optional
instrument | InstrumentSchema | | optional
instrument_status | InstrumentStatusSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

# InstrumentStatusSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | must be one of ["ACTIVE", "IGNORED", "RETIRED", "EXPIRED", ] 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#futures_v1_markets_instruments_unmapped.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#futures_v1_markets_instruments_unmapped.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#futures_v1_markets_instruments_unmapped.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#futures_v1_markets_instruments_unmapped.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#futures_v1_markets_instruments_unmapped.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#futures_v1_markets_instruments_unmapped.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#futures_v1_markets_instruments_unmapped.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#futures_v1_markets_instruments_unmapped.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#futures_v1_markets_instruments_unmapped.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#futures_v1_markets_instruments_unmapped.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### futures_v1_markets_instruments_unmapped.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### futures_v1_markets_instruments_unmapped.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments_unmapped.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments_unmapped.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments_unmapped.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments_unmapped.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments_unmapped.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments_unmapped.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments_unmapped.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### futures_v1_markets_instruments_unmapped.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **index_v1_historical_days**
<a name="index_v1_historical_days"></a>
> GENERICRESPONSE index_v1_historical_days(marketinstrument)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.index_v1_historical_days(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_days: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.index_v1_historical_days(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_days: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 30

# ToTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# AggregateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 1

# FillSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#index_v1_historical_days.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#index_v1_historical_days.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#index_v1_historical_days.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#index_v1_historical_days.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#index_v1_historical_days.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#index_v1_historical_days.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#index_v1_historical_days.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#index_v1_historical_days.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#index_v1_historical_days.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#index_v1_historical_days.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### index_v1_historical_days.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### index_v1_historical_days.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_days.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_days.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_days.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_days.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_days.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_days.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_days.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_days.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **index_v1_historical_hours**
<a name="index_v1_historical_hours"></a>
> GENERICRESPONSE index_v1_historical_hours(marketinstrument)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.index_v1_historical_hours(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_hours: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.index_v1_historical_hours(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_hours: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 30

# ToTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# AggregateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 1

# FillSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#index_v1_historical_hours.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#index_v1_historical_hours.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#index_v1_historical_hours.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#index_v1_historical_hours.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#index_v1_historical_hours.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#index_v1_historical_hours.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#index_v1_historical_hours.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#index_v1_historical_hours.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#index_v1_historical_hours.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#index_v1_historical_hours.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### index_v1_historical_hours.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### index_v1_historical_hours.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_hours.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_hours.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_hours.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_hours.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_hours.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_hours.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_hours.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_hours.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **index_v1_historical_messages**
<a name="index_v1_historical_messages"></a>
> GENERICRESPONSE index_v1_historical_messages(marketinstrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):
```python
import openapi_client
from openapi_client.apis.tags import futures_api
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

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.index_v1_historical_messages(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_messages: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'after_ts': 0,
        'last_ccseq': 0,
        'limit': 100,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
        'return_404_on_empty_response': False,
    }
    try:
        api_response = api_instance.index_v1_historical_messages(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_messages: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
after_ts | AfterTsSchema | | optional
last_ccseq | LastCcseqSchema | | optional
limit | LimitSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional
return_404_on_empty_response | Return404OnEmptyResponseSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# AfterTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# LastCcseqSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 0

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 100

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

# Return404OnEmptyResponseSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#index_v1_historical_messages.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#index_v1_historical_messages.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#index_v1_historical_messages.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#index_v1_historical_messages.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#index_v1_historical_messages.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#index_v1_historical_messages.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#index_v1_historical_messages.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#index_v1_historical_messages.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#index_v1_historical_messages.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#index_v1_historical_messages.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### index_v1_historical_messages.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### index_v1_historical_messages.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

[api_key_header](../../../README.md#api_key_header), [api_key_query](../../../README.md#api_key_query)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **index_v1_historical_messages_hour**
<a name="index_v1_historical_messages_hour"></a>
> GENERICRESPONSE index_v1_historical_messages_hour(marketinstrument)



### Example

* Api Key Authentication (api_key_header):
* Api Key Authentication (api_key_query):
```python
import openapi_client
from openapi_client.apis.tags import futures_api
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

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.index_v1_historical_messages_hour(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_messages_hour: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'hour_ts': 0,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
        'return_404_on_empty_response': False,
    }
    try:
        api_response = api_instance.index_v1_historical_messages_hour(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_messages_hour: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
hour_ts | HourTsSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional
return_404_on_empty_response | Return404OnEmptyResponseSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# HourTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

# Return404OnEmptyResponseSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of False

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#index_v1_historical_messages_hour.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#index_v1_historical_messages_hour.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#index_v1_historical_messages_hour.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#index_v1_historical_messages_hour.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#index_v1_historical_messages_hour.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#index_v1_historical_messages_hour.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#index_v1_historical_messages_hour.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#index_v1_historical_messages_hour.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#index_v1_historical_messages_hour.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#index_v1_historical_messages_hour.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### index_v1_historical_messages_hour.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### index_v1_historical_messages_hour.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages_hour.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages_hour.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages_hour.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages_hour.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages_hour.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages_hour.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages_hour.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_messages_hour.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

[api_key_header](../../../README.md#api_key_header), [api_key_query](../../../README.md#api_key_query)

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **index_v1_historical_minutes**
<a name="index_v1_historical_minutes"></a>
> GENERICRESPONSE index_v1_historical_minutes(marketinstrument)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
    }
    try:
        api_response = api_instance.index_v1_historical_minutes(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_minutes: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instrument': "instrument_example",
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'mapping_priority': "CHECK_MAPPED_FIRST",
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.index_v1_historical_minutes(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_historical_minutes: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instrument | InstrumentSchema | | 
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
mapping_priority | MappingPrioritySchema | | optional
response_format | ResponseFormatSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# LimitSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 30

# ToTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# AggregateSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 1

# FillSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
bool,  | BoolClass,  |  | if omitted the server will use the default value of True

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#index_v1_historical_minutes.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#index_v1_historical_minutes.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#index_v1_historical_minutes.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#index_v1_historical_minutes.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#index_v1_historical_minutes.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#index_v1_historical_minutes.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#index_v1_historical_minutes.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#index_v1_historical_minutes.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#index_v1_historical_minutes.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#index_v1_historical_minutes.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### index_v1_historical_minutes.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### index_v1_historical_minutes.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_minutes.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_minutes.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_minutes.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_minutes.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_minutes.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_minutes.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_minutes.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_historical_minutes.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **index_v1_latest_instrument_metadata**
<a name="index_v1_latest_instrument_metadata"></a>
> GENERICRESPONSE index_v1_latest_instrument_metadata(marketinstruments)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instruments': [
        "instruments_example"
    ],
    }
    try:
        api_response = api_instance.index_v1_latest_instrument_metadata(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_latest_instrument_metadata: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instruments': [
        "instruments_example"
    ],
        'groups': [],
        'mapping_priority': "CHECK_MAPPED_FIRST",
    }
    try:
        api_response = api_instance.index_v1_latest_instrument_metadata(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_latest_instrument_metadata: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instruments | InstrumentsSchema | | 
groups | GroupsSchema | | optional
mapping_priority | MappingPrioritySchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#index_v1_latest_instrument_metadata.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#index_v1_latest_instrument_metadata.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#index_v1_latest_instrument_metadata.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#index_v1_latest_instrument_metadata.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#index_v1_latest_instrument_metadata.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#index_v1_latest_instrument_metadata.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#index_v1_latest_instrument_metadata.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#index_v1_latest_instrument_metadata.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#index_v1_latest_instrument_metadata.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#index_v1_latest_instrument_metadata.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### index_v1_latest_instrument_metadata.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### index_v1_latest_instrument_metadata.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_instrument_metadata.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_instrument_metadata.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_instrument_metadata.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_instrument_metadata.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_instrument_metadata.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_instrument_metadata.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_instrument_metadata.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_instrument_metadata.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **index_v1_latest_tick**
<a name="index_v1_latest_tick"></a>
> GENERICRESPONSE index_v1_latest_tick(marketinstruments)



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'market': "market_example",
        'instruments': [
        "instruments_example"
    ],
    }
    try:
        api_response = api_instance.index_v1_latest_tick(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_latest_tick: %s\n" % e)

    # example passing only optional values
    query_params = {
        'market': "market_example",
        'instruments': [
        "instruments_example"
    ],
        'groups': [],
        'mapping_priority': "CHECK_MAPPED_FIRST",
    }
    try:
        api_response = api_instance.index_v1_latest_tick(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_latest_tick: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | 
instruments | InstrumentsSchema | | 
groups | GroupsSchema | | optional
mapping_priority | MappingPrioritySchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# InstrumentsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# MappingPrioritySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CHECK_MAPPED_FIRST", "CHECK_UNMAPPED_FIRST", ] if omitted the server will use the default value of "CHECK_MAPPED_FIRST"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#index_v1_latest_tick.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#index_v1_latest_tick.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#index_v1_latest_tick.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#index_v1_latest_tick.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#index_v1_latest_tick.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#index_v1_latest_tick.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#index_v1_latest_tick.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#index_v1_latest_tick.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#index_v1_latest_tick.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#index_v1_latest_tick.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### index_v1_latest_tick.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### index_v1_latest_tick.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_tick.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_tick.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_tick.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_tick.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_tick.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_tick.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_tick.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_latest_tick.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **index_v1_markets**
<a name="index_v1_markets"></a>
> GENERICRESPONSE index_v1_markets()



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only optional values
    query_params = {
        'market': "",
    }
    try:
        api_response = api_instance.index_v1_markets(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_markets: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#index_v1_markets.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#index_v1_markets.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#index_v1_markets.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#index_v1_markets.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#index_v1_markets.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#index_v1_markets.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#index_v1_markets.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#index_v1_markets.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#index_v1_markets.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#index_v1_markets.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### index_v1_markets.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### index_v1_markets.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **index_v1_markets_instruments**
<a name="index_v1_markets_instruments"></a>
> GENERICRESPONSE index_v1_markets_instruments()



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only optional values
    query_params = {
        'market': "",
        'instrument': "",
        'instrument_status': [],
    }
    try:
        api_response = api_instance.index_v1_markets_instruments(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_markets_instruments: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | optional
instrument | InstrumentSchema | | optional
instrument_status | InstrumentStatusSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

# InstrumentStatusSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | must be one of ["ACTIVE", "IGNORED", "RETIRED", "EXPIRED", ] 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#index_v1_markets_instruments.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#index_v1_markets_instruments.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#index_v1_markets_instruments.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#index_v1_markets_instruments.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#index_v1_markets_instruments.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#index_v1_markets_instruments.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#index_v1_markets_instruments.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#index_v1_markets_instruments.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#index_v1_markets_instruments.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#index_v1_markets_instruments.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### index_v1_markets_instruments.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### index_v1_markets_instruments.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **index_v1_markets_instruments_unmapped**
<a name="index_v1_markets_instruments_unmapped"></a>
> GENERICRESPONSE index_v1_markets_instruments_unmapped()



### Example

```python
import openapi_client
from openapi_client.apis.tags import futures_api
from openapi_client.model.genericresponse import GENERICRESPONSE
from openapi_client.model.error import Error
from pprint import pprint
# Defining the host is optional and defaults to https://data-api.cryptocompare.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://data-api.cryptocompare.com"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = futures_api.FuturesApi(api_client)

    # example passing only optional values
    query_params = {
        'market': "",
        'instrument': "",
        'instrument_status': [],
    }
    try:
        api_response = api_instance.index_v1_markets_instruments_unmapped(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling FuturesApi->index_v1_markets_instruments_unmapped: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
market | MarketSchema | | optional
instrument | InstrumentSchema | | optional
instrument_status | InstrumentStatusSchema | | optional


# MarketSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

# InstrumentSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

# InstrumentStatusSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | must be one of ["ACTIVE", "IGNORED", "RETIRED", "EXPIRED", ] 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#index_v1_markets_instruments_unmapped.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#index_v1_markets_instruments_unmapped.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#index_v1_markets_instruments_unmapped.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#index_v1_markets_instruments_unmapped.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#index_v1_markets_instruments_unmapped.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#index_v1_markets_instruments_unmapped.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#index_v1_markets_instruments_unmapped.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#index_v1_markets_instruments_unmapped.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#index_v1_markets_instruments_unmapped.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#index_v1_markets_instruments_unmapped.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### index_v1_markets_instruments_unmapped.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### index_v1_markets_instruments_unmapped.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments_unmapped.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments_unmapped.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments_unmapped.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments_unmapped.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments_unmapped.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments_unmapped.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments_unmapped.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### index_v1_markets_instruments_unmapped.ApiResponseFor503
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor503ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor503ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

