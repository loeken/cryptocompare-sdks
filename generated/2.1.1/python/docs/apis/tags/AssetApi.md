<a name="__pageTop"></a>
# openapi_client.apis.tags.asset_api.AssetApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**asset_v1_data_by_address**](#asset_v1_data_by_address) | **get** /asset/v1/data/by/address | 
[**asset_v1_data_by_id**](#asset_v1_data_by_id) | **get** /asset/v1/data/by/id | 
[**asset_v1_data_by_symbol**](#asset_v1_data_by_symbol) | **get** /asset/v1/data/by/symbol | 
[**asset_v1_top_list**](#asset_v1_top_list) | **get** /asset/v1/top/list | 

# **asset_v1_data_by_address**
<a name="asset_v1_data_by_address"></a>
> GENERICRESPONSE asset_v1_data_by_address(addresschain_symbol)



### Example

```python
import openapi_client
from openapi_client.apis.tags import asset_api
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
    api_instance = asset_api.AssetApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'address': "address_example",
        'chain_symbol': "chain_symbol_example",
    }
    try:
        api_response = api_instance.asset_v1_data_by_address(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling AssetApi->asset_v1_data_by_address: %s\n" % e)

    # example passing only optional values
    query_params = {
        'address': "address_example",
        'chain_symbol': "chain_symbol_example",
        'groups': "",
    }
    try:
        api_response = api_instance.asset_v1_data_by_address(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling AssetApi->asset_v1_data_by_address: %s\n" % e)
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
address | AddressSchema | | 
chain_symbol | ChainSymbolSchema | | 
groups | GroupsSchema | | optional


# AddressSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# ChainSymbolSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#asset_v1_data_by_address.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#asset_v1_data_by_address.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#asset_v1_data_by_address.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#asset_v1_data_by_address.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#asset_v1_data_by_address.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#asset_v1_data_by_address.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#asset_v1_data_by_address.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#asset_v1_data_by_address.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#asset_v1_data_by_address.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#asset_v1_data_by_address.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### asset_v1_data_by_address.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### asset_v1_data_by_address.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_address.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_address.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_address.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_address.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_address.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_address.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_address.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_address.ApiResponseFor503
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

# **asset_v1_data_by_id**
<a name="asset_v1_data_by_id"></a>
> GENERICRESPONSE asset_v1_data_by_id(asset_id)



### Example

```python
import openapi_client
from openapi_client.apis.tags import asset_api
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
    api_instance = asset_api.AssetApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'asset_id': 1,
    }
    try:
        api_response = api_instance.asset_v1_data_by_id(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling AssetApi->asset_v1_data_by_id: %s\n" % e)

    # example passing only optional values
    query_params = {
        'asset_id': 1,
        'groups': "",
    }
    try:
        api_response = api_instance.asset_v1_data_by_id(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling AssetApi->asset_v1_data_by_id: %s\n" % e)
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
asset_id | AssetIdSchema | | 
groups | GroupsSchema | | optional


# AssetIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#asset_v1_data_by_id.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#asset_v1_data_by_id.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#asset_v1_data_by_id.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#asset_v1_data_by_id.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#asset_v1_data_by_id.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#asset_v1_data_by_id.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#asset_v1_data_by_id.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#asset_v1_data_by_id.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#asset_v1_data_by_id.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#asset_v1_data_by_id.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### asset_v1_data_by_id.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### asset_v1_data_by_id.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_id.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_id.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_id.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_id.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_id.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_id.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_id.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_id.ApiResponseFor503
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

# **asset_v1_data_by_symbol**
<a name="asset_v1_data_by_symbol"></a>
> GENERICRESPONSE asset_v1_data_by_symbol(asset_symbol)



### Example

```python
import openapi_client
from openapi_client.apis.tags import asset_api
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
    api_instance = asset_api.AssetApi(api_client)

    # example passing only required values which don't have defaults set
    query_params = {
        'asset_symbol': "asset_symbol_example",
    }
    try:
        api_response = api_instance.asset_v1_data_by_symbol(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling AssetApi->asset_v1_data_by_symbol: %s\n" % e)

    # example passing only optional values
    query_params = {
        'asset_symbol': "asset_symbol_example",
        'groups': "",
    }
    try:
        api_response = api_instance.asset_v1_data_by_symbol(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling AssetApi->asset_v1_data_by_symbol: %s\n" % e)
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
asset_symbol | AssetSymbolSchema | | 
groups | GroupsSchema | | optional


# AssetSymbolSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#asset_v1_data_by_symbol.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#asset_v1_data_by_symbol.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#asset_v1_data_by_symbol.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#asset_v1_data_by_symbol.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#asset_v1_data_by_symbol.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#asset_v1_data_by_symbol.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#asset_v1_data_by_symbol.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#asset_v1_data_by_symbol.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#asset_v1_data_by_symbol.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#asset_v1_data_by_symbol.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### asset_v1_data_by_symbol.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### asset_v1_data_by_symbol.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_symbol.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_symbol.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_symbol.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_symbol.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_symbol.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_symbol.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_symbol.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_data_by_symbol.ApiResponseFor503
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

# **asset_v1_top_list**
<a name="asset_v1_top_list"></a>
> GENERICRESPONSE asset_v1_top_list()



### Example

```python
import openapi_client
from openapi_client.apis.tags import asset_api
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
    api_instance = asset_api.AssetApi(api_client)

    # example passing only optional values
    query_params = {
        'page': 1,
        'page_size': 100,
        'asset_type': "",
        'sort_by': "CREATED_ON",
        'sort_direction': "DESC",
        'groups': "",
    }
    try:
        api_response = api_instance.asset_v1_top_list(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling AssetApi->asset_v1_top_list: %s\n" % e)
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
page | PageSchema | | optional
page_size | PageSizeSchema | | optional
asset_type | AssetTypeSchema | | optional
sort_by | SortBySchema | | optional
sort_direction | SortDirectionSchema | | optional
groups | GroupsSchema | | optional


# PageSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 1

# PageSizeSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of 100

# AssetTypeSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

# SortBySchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["CREATED_ON", "UPDATED_ON", "SYMBOL", ] if omitted the server will use the default value of "CREATED_ON"

# SortDirectionSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["DESC", "ASC", ] if omitted the server will use the default value of "DESC"

# GroupsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | if omitted the server will use the default value of ""

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#asset_v1_top_list.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#asset_v1_top_list.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#asset_v1_top_list.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#asset_v1_top_list.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#asset_v1_top_list.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#asset_v1_top_list.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#asset_v1_top_list.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#asset_v1_top_list.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#asset_v1_top_list.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#asset_v1_top_list.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### asset_v1_top_list.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### asset_v1_top_list.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_top_list.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_top_list.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_top_list.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_top_list.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_top_list.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_top_list.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_top_list.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### asset_v1_top_list.ApiResponseFor503
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

