# openapi_client.NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**news_v1_article_list**](NewsApi.md#news_v1_article_list) | **GET** /news/v1/article/list | 
[**news_v1_category_list**](NewsApi.md#news_v1_category_list) | **GET** /news/v1/category/list | 
[**news_v1_source_list**](NewsApi.md#news_v1_source_list) | **GET** /news/v1/source/list | 


# **news_v1_article_list**
> GENERICRESPONSE news_v1_article_list()



### Example


```python
import time
import openapi_client
from openapi_client.api import news_api
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
    api_instance = news_api.NewsApi(api_client)
    source_ids = [""] # [str] | Get articles from specific sources; either by their ids or keys (optional) if omitted the server will use the default value of [""]
    lang = "EN" # str | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional) if omitted the server will use the default value of "EN"
    categories = [""] # [str] | News article categories to return (optional) if omitted the server will use the default value of [""]
    exclude_categories = [""] # [str] | News article categories to exclude from results (optional) if omitted the server will use the default value of [""]
    to_ts = -1 # int | Articles published on or before this timestamp (optional) if omitted the server will use the default value of -1

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.news_v1_article_list(source_ids=source_ids, lang=lang, categories=categories, exclude_categories=exclude_categories, to_ts=to_ts)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling NewsApi->news_v1_article_list: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_ids** | **[str]**| Get articles from specific sources; either by their ids or keys | [optional] if omitted the server will use the default value of [""]
 **lang** | **str**| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] if omitted the server will use the default value of "EN"
 **categories** | **[str]**| News article categories to return | [optional] if omitted the server will use the default value of [""]
 **exclude_categories** | **[str]**| News article categories to exclude from results | [optional] if omitted the server will use the default value of [""]
 **to_ts** | **int**| Articles published on or before this timestamp | [optional] if omitted the server will use the default value of -1

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

# **news_v1_category_list**
> GENERICRESPONSE news_v1_category_list()



### Example


```python
import time
import openapi_client
from openapi_client.api import news_api
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

# **news_v1_source_list**
> GENERICRESPONSE news_v1_source_list()



### Example


```python
import time
import openapi_client
from openapi_client.api import news_api
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
    api_instance = news_api.NewsApi(api_client)
    lang = "EN" # str | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional) if omitted the server will use the default value of "EN"
    type = "RSS" # str | RSS, API, TWITTER (optional) if omitted the server will use the default value of "RSS"
    status = "ACTIVE" # str | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE (optional) if omitted the server will use the default value of "ACTIVE"

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.news_v1_source_list(lang=lang, type=type, status=status)
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling NewsApi->news_v1_source_list: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | **str**| The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] if omitted the server will use the default value of "EN"
 **type** | **str**| RSS, API, TWITTER | [optional] if omitted the server will use the default value of "RSS"
 **status** | **str**| The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] if omitted the server will use the default value of "ACTIVE"

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

