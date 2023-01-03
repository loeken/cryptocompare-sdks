<a name="__pageTop"></a>
# openapi_client.apis.tags.news_api.NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**news_v1_article_list**](#news_v1_article_list) | **get** /news/v1/article/list | 
[**news_v1_category_list**](#news_v1_category_list) | **get** /news/v1/category/list | 
[**news_v1_source_list**](#news_v1_source_list) | **get** /news/v1/source/list | 

# **news_v1_article_list**
<a name="news_v1_article_list"></a>
> GENERICRESPONSE news_v1_article_list()



### Example

```python
import openapi_client
from openapi_client.apis.tags import news_api
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
    api_instance = news_api.NewsApi(api_client)

    # example passing only optional values
    query_params = {
        'source_ids': [""],
        'lang': "EN",
        'categories': [""],
        'exclude_categories': [""],
        'to_ts': -1,
    }
    try:
        api_response = api_instance.news_v1_article_list(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling NewsApi->news_v1_article_list: %s\n" % e)
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
source_ids | SourceIdsSchema | | optional
lang | LangSchema | | optional
categories | CategoriesSchema | | optional
exclude_categories | ExcludeCategoriesSchema | | optional
to_ts | ToTsSchema | | optional


# SourceIdsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# LangSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["EN", "ES", "PT", "", ] if omitted the server will use the default value of "EN"

# CategoriesSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | must be one of ["1INCH", "AAVE", "ADA", "ALGO", "ALTCOIN", "ASIA", "ATOM", "AVAX", "AXS", "BAL", "BAT", "BCH", "BLOCKCHAIN", "BTC", "BUSINESS", "COMMODITY", "COMP", "CRV", "DASH", "DOGE", "DOT", "ENJ", "ETC", "ETH", "EXCHANGE", "FIAT", "FIL", "FTM", "ICO", "KNC", "LINK", "LRC", "LTC", "LUNA", "LUNC", "MANA", "MARKET", "MATIC", "MINING", "MKR", "REGULATION", "REN", "SAND", "SHIB", "SNX", "SOL", "SPONSORED", "SUSHI", "TECHNOLOGY", "TRADING", "TRX", "UMA", "UNI", "USDT", "WALLET", "XLM", "XMR", "XRP", "XTZ", "YFI", "ZEC", "ZRX", "", ] 

# ExcludeCategoriesSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | must be one of ["1INCH", "AAVE", "ADA", "ALGO", "ALTCOIN", "ASIA", "ATOM", "AVAX", "AXS", "BAL", "BAT", "BCH", "BLOCKCHAIN", "BTC", "BUSINESS", "COMMODITY", "COMP", "CRV", "DASH", "DOGE", "DOT", "ENJ", "ETC", "ETH", "EXCHANGE", "FIAT", "FIL", "FTM", "ICO", "KNC", "LINK", "LRC", "LTC", "LUNA", "LUNC", "MANA", "MARKET", "MATIC", "MINING", "MKR", "REGULATION", "REN", "SAND", "SHIB", "SNX", "SOL", "SPONSORED", "SUSHI", "TECHNOLOGY", "TRADING", "TRX", "UMA", "UNI", "USDT", "WALLET", "XLM", "XMR", "XRP", "XTZ", "YFI", "ZEC", "ZRX", "", ] 

# ToTsSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
decimal.Decimal, int,  | decimal.Decimal,  |  | if omitted the server will use the default value of -1

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#news_v1_article_list.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#news_v1_article_list.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#news_v1_article_list.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#news_v1_article_list.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#news_v1_article_list.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#news_v1_article_list.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#news_v1_article_list.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#news_v1_article_list.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#news_v1_article_list.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#news_v1_article_list.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### news_v1_article_list.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### news_v1_article_list.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_article_list.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_article_list.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_article_list.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_article_list.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_article_list.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_article_list.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_article_list.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_article_list.ApiResponseFor503
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

# **news_v1_category_list**
<a name="news_v1_category_list"></a>
> GENERICRESPONSE news_v1_category_list()



### Example

```python
import openapi_client
from openapi_client.apis.tags import news_api
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
    api_instance = news_api.NewsApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        api_response = api_instance.news_v1_category_list()
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling NewsApi->news_v1_category_list: %s\n" % e)
```
### Parameters
This endpoint does not need any parameter.

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#news_v1_category_list.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#news_v1_category_list.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#news_v1_category_list.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#news_v1_category_list.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#news_v1_category_list.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#news_v1_category_list.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#news_v1_category_list.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#news_v1_category_list.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#news_v1_category_list.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#news_v1_category_list.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### news_v1_category_list.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### news_v1_category_list.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_category_list.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_category_list.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_category_list.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_category_list.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_category_list.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_category_list.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_category_list.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_category_list.ApiResponseFor503
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

# **news_v1_source_list**
<a name="news_v1_source_list"></a>
> GENERICRESPONSE news_v1_source_list()



### Example

```python
import openapi_client
from openapi_client.apis.tags import news_api
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
    api_instance = news_api.NewsApi(api_client)

    # example passing only optional values
    query_params = {
        'lang': "EN",
        'type': "RSS",
        'status': "ACTIVE",
    }
    try:
        api_response = api_instance.news_v1_source_list(
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling NewsApi->news_v1_source_list: %s\n" % e)
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
lang | LangSchema | | optional
type | TypeSchema | | optional
status | StatusSchema | | optional


# LangSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["EN", "ES", "PT", "", ] if omitted the server will use the default value of "EN"

# TypeSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["RSS", "API", "TWITTER", "", ] if omitted the server will use the default value of "RSS"

# StatusSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["ACTIVE", "INACTIVE", "", ] if omitted the server will use the default value of "ACTIVE"

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#news_v1_source_list.ApiResponseFor200) | Success response from the API.
400 | [ApiResponseFor400](#news_v1_source_list.ApiResponseFor400) | The 400 error occurs when some of the data sent is malformed.
401 | [ApiResponseFor401](#news_v1_source_list.ApiResponseFor401) | The 401 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
403 | [ApiResponseFor403](#news_v1_source_list.ApiResponseFor403) | The 403 error occurs when you don&#x27;t use a valid API Key on an endpoint that requires authetication.
404 | [ApiResponseFor404](#news_v1_source_list.ApiResponseFor404) | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid
405 | [ApiResponseFor405](#news_v1_source_list.ApiResponseFor405) | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.
429 | [ApiResponseFor429](#news_v1_source_list.ApiResponseFor429) | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.
500 | [ApiResponseFor500](#news_v1_source_list.ApiResponseFor500) | The 500 error occurs our API is up but does not know how to / can&#x27;t handle the request.
502 | [ApiResponseFor502](#news_v1_source_list.ApiResponseFor502) | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.
503 | [ApiResponseFor503](#news_v1_source_list.ApiResponseFor503) | The 503 error occurs when there is an issue with one of our data sources and we can&#x27;t even return a partial answer.

#### news_v1_source_list.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**GENERICRESPONSE**](../../models/GENERICRESPONSE.md) |  | 


#### news_v1_source_list.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_source_list.ApiResponseFor401
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor401ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor401ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_source_list.ApiResponseFor403
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor403ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor403ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_source_list.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor404ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor404ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_source_list.ApiResponseFor405
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor405ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor405ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_source_list.ApiResponseFor429
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor429ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor429ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_source_list.ApiResponseFor500
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor500ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor500ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_source_list.ApiResponseFor502
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor502ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor502ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### news_v1_source_list.ApiResponseFor503
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

