<a name="__pageTop"></a>
# openapi_client.apis.tags.overview_api.OverviewApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**overview_v1_historical_marketcap_all_assets_days**](#overview_v1_historical_marketcap_all_assets_days) | **get** /overview/v1/historical/marketcap/all/assets/days | 
[**overview_v1_historical_marketcap_all_assets_hours**](#overview_v1_historical_marketcap_all_assets_hours) | **get** /overview/v1/historical/marketcap/all/assets/hours | 
[**overview_v1_historical_marketcap_ftw_assets_days**](#overview_v1_historical_marketcap_ftw_assets_days) | **get** /overview/v1/historical/marketcap/ftw/assets/days | 
[**overview_v1_historical_marketcap_ftw_assets_hours**](#overview_v1_historical_marketcap_ftw_assets_hours) | **get** /overview/v1/historical/marketcap/ftw/assets/hours | 
[**overview_v1_latest_marketcap_all_tick**](#overview_v1_latest_marketcap_all_tick) | **get** /overview/v1/latest/marketcap/all/tick | 
[**overview_v1_latest_marketcap_ftw_tick**](#overview_v1_latest_marketcap_ftw_tick) | **get** /overview/v1/latest/marketcap/ftw/tick | 

# **overview_v1_historical_marketcap_all_assets_days**
<a name="overview_v1_historical_marketcap_all_assets_days"></a>
> GENERICRESPONSE overview_v1_historical_marketcap_all_assets_days()



### Example

```python
import openapi_client
from openapi_client.apis.tags import overview_api
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
    api_instance = overview_api.OverviewApi(api_client)

    # example passing only optional values
    query_params = {
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.overview_v1_historical_marketcap_all_assets_days(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OverviewApi->overview_v1_historical_marketcap_all_assets_days: %s\n" % e)
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
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
response_format | ResponseFormatSchema | | optional


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

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#overview_v1_historical_marketcap_all_assets_days.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#overview_v1_historical_marketcap_all_assets_days.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#overview_v1_historical_marketcap_all_assets_days.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#overview_v1_historical_marketcap_all_assets_days.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#overview_v1_historical_marketcap_all_assets_days.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#overview_v1_historical_marketcap_all_assets_days.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#overview_v1_historical_marketcap_all_assets_days.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#overview_v1_historical_marketcap_all_assets_days.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#overview_v1_historical_marketcap_all_assets_days.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#overview_v1_historical_marketcap_all_assets_days.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### overview_v1_historical_marketcap_all_assets_days.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### overview_v1_historical_marketcap_all_assets_days.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_days.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_days.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_days.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_days.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_days.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_days.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_days.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_days.ApiResponseFor503
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

# **overview_v1_historical_marketcap_all_assets_hours**
<a name="overview_v1_historical_marketcap_all_assets_hours"></a>
> GENERICRESPONSE overview_v1_historical_marketcap_all_assets_hours()



### Example

```python
import openapi_client
from openapi_client.apis.tags import overview_api
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
    api_instance = overview_api.OverviewApi(api_client)

    # example passing only optional values
    query_params = {
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.overview_v1_historical_marketcap_all_assets_hours(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OverviewApi->overview_v1_historical_marketcap_all_assets_hours: %s\n" % e)
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
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
response_format | ResponseFormatSchema | | optional


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

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_all_assets_hours.ApiResponseFor503
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

# **overview_v1_historical_marketcap_ftw_assets_days**
<a name="overview_v1_historical_marketcap_ftw_assets_days"></a>
> GENERICRESPONSE overview_v1_historical_marketcap_ftw_assets_days()



### Example

```python
import openapi_client
from openapi_client.apis.tags import overview_api
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
    api_instance = overview_api.OverviewApi(api_client)

    # example passing only optional values
    query_params = {
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.overview_v1_historical_marketcap_ftw_assets_days(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OverviewApi->overview_v1_historical_marketcap_ftw_assets_days: %s\n" % e)
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
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
response_format | ResponseFormatSchema | | optional


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

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_days.ApiResponseFor503
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

# **overview_v1_historical_marketcap_ftw_assets_hours**
<a name="overview_v1_historical_marketcap_ftw_assets_hours"></a>
> GENERICRESPONSE overview_v1_historical_marketcap_ftw_assets_hours()



### Example

```python
import openapi_client
from openapi_client.apis.tags import overview_api
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
    api_instance = overview_api.OverviewApi(api_client)

    # example passing only optional values
    query_params = {
        'groups': [],
        'limit': 30,
        'to_ts': 1,
        'aggregate': 1,
        'fill': True,
        'response_format': "JSON",
    }
    try:
        api_response = api_instance.overview_v1_historical_marketcap_ftw_assets_hours(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OverviewApi->overview_v1_historical_marketcap_ftw_assets_hours: %s\n" % e)
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
groups | GroupsSchema | | optional
limit | LimitSchema | | optional
to_ts | ToTsSchema | | optional
aggregate | AggregateSchema | | optional
fill | FillSchema | | optional
response_format | ResponseFormatSchema | | optional


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

# ResponseFormatSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["JSON", "CSV", ] if omitted the server will use the default value of "JSON"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_historical_marketcap_ftw_assets_hours.ApiResponseFor503
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

# **overview_v1_latest_marketcap_all_tick**
<a name="overview_v1_latest_marketcap_all_tick"></a>
> GENERICRESPONSE overview_v1_latest_marketcap_all_tick()



### Example

```python
import openapi_client
from openapi_client.apis.tags import overview_api
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
    api_instance = overview_api.OverviewApi(api_client)

    # example passing only optional values
    query_params = {
        'groups': [],
    }
    try:
        api_response = api_instance.overview_v1_latest_marketcap_all_tick(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OverviewApi->overview_v1_latest_marketcap_all_tick: %s\n" % e)
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
groups | GroupsSchema | | optional


# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#overview_v1_latest_marketcap_all_tick.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#overview_v1_latest_marketcap_all_tick.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#overview_v1_latest_marketcap_all_tick.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#overview_v1_latest_marketcap_all_tick.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#overview_v1_latest_marketcap_all_tick.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#overview_v1_latest_marketcap_all_tick.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#overview_v1_latest_marketcap_all_tick.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#overview_v1_latest_marketcap_all_tick.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#overview_v1_latest_marketcap_all_tick.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#overview_v1_latest_marketcap_all_tick.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### overview_v1_latest_marketcap_all_tick.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### overview_v1_latest_marketcap_all_tick.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_all_tick.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_all_tick.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_all_tick.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_all_tick.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_all_tick.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_all_tick.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_all_tick.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_all_tick.ApiResponseFor503
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

# **overview_v1_latest_marketcap_ftw_tick**
<a name="overview_v1_latest_marketcap_ftw_tick"></a>
> GENERICRESPONSE overview_v1_latest_marketcap_ftw_tick()



### Example

```python
import openapi_client
from openapi_client.apis.tags import overview_api
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
    api_instance = overview_api.OverviewApi(api_client)

    # example passing only optional values
    query_params = {
        'groups': [],
    }
    try:
        api_response = api_instance.overview_v1_latest_marketcap_ftw_tick(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling OverviewApi->overview_v1_latest_marketcap_ftw_tick: %s\n" % e)
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
groups | GroupsSchema | | optional


# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#overview_v1_latest_marketcap_ftw_tick.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#overview_v1_latest_marketcap_ftw_tick.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#overview_v1_latest_marketcap_ftw_tick.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#overview_v1_latest_marketcap_ftw_tick.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#overview_v1_latest_marketcap_ftw_tick.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#overview_v1_latest_marketcap_ftw_tick.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#overview_v1_latest_marketcap_ftw_tick.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#overview_v1_latest_marketcap_ftw_tick.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#overview_v1_latest_marketcap_ftw_tick.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#overview_v1_latest_marketcap_ftw_tick.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### overview_v1_latest_marketcap_ftw_tick.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### overview_v1_latest_marketcap_ftw_tick.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_ftw_tick.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_ftw_tick.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_ftw_tick.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_ftw_tick.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_ftw_tick.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_ftw_tick.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_ftw_tick.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### overview_v1_latest_marketcap_ftw_tick.ApiResponseFor503
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

