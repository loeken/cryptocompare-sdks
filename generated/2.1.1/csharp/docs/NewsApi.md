# Org.OpenAPITools.Api.NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**NewsV1ArticleList**](NewsApi.md#newsv1articlelist) | **GET** /news/v1/article/list | 
[**NewsV1CategoryList**](NewsApi.md#newsv1categorylist) | **GET** /news/v1/category/list | 
[**NewsV1SourceList**](NewsApi.md#newsv1sourcelist) | **GET** /news/v1/source/list | 



## NewsV1ArticleList

> GENERICRESPONSE NewsV1ArticleList (List<string> sourceIds = null, string lang = null, List<string> categories = null, List<string> excludeCategories = null, int? toTs = null)



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class NewsV1ArticleListExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new NewsApi(Configuration.Default);
            var sourceIds = new List<string>(); // List<string> | Get articles from specific sources; either by their ids or keys (optional) 
            var lang = "EN";  // string | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional)  (default to EN)
            var categories = new List<string>(); // List<string> | News article categories to return (optional) 
            var excludeCategories = new List<string>(); // List<string> | News article categories to exclude from results (optional) 
            var toTs = -1;  // int? | Articles published on or before this timestamp (optional)  (default to -1)

            try
            {
                GENERICRESPONSE result = apiInstance.NewsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling NewsApi.NewsV1ArticleList: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceIds** | [**List&lt;string&gt;**](string.md)| Get articles from specific sources; either by their ids or keys | [optional] 
 **lang** | **string**| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to EN]
 **categories** | [**List&lt;string&gt;**](string.md)| News article categories to return | [optional] 
 **excludeCategories** | [**List&lt;string&gt;**](string.md)| News article categories to exclude from results | [optional] 
 **toTs** | **int?**| Articles published on or before this timestamp | [optional] [default to -1]

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## NewsV1CategoryList

> GENERICRESPONSE NewsV1CategoryList ()



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class NewsV1CategoryListExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new NewsApi(Configuration.Default);

            try
            {
                GENERICRESPONSE result = apiInstance.NewsV1CategoryList();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling NewsApi.NewsV1CategoryList: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## NewsV1SourceList

> GENERICRESPONSE NewsV1SourceList (string lang = null, string type = null, string status = null)



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class NewsV1SourceListExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new NewsApi(Configuration.Default);
            var lang = "EN";  // string | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional)  (default to EN)
            var type = "RSS";  // string | RSS, API, TWITTER (optional)  (default to RSS)
            var status = "ACTIVE";  // string | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE (optional)  (default to ACTIVE)

            try
            {
                GENERICRESPONSE result = apiInstance.NewsV1SourceList(lang, type, status);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling NewsApi.NewsV1SourceList: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | **string**| The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to EN]
 **type** | **string**| RSS, API, TWITTER | [optional] [default to RSS]
 **status** | **string**| The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to ACTIVE]

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

