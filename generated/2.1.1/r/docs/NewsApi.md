# NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**NewsV1ArticleList**](NewsApi.md#NewsV1ArticleList) | **GET** /news/v1/article/list | 
[**NewsV1CategoryList**](NewsApi.md#NewsV1CategoryList) | **GET** /news/v1/category/list | 
[**NewsV1SourceList**](NewsApi.md#NewsV1SourceList) | **GET** /news/v1/source/list | 


# **NewsV1ArticleList**
> GENERICRESPONSE NewsV1ArticleList(source_ids = [""], lang = "EN", categories = [""], exclude_categories = [""], to_ts = -1)



### Example
```R
library(openapi)

# prepare function argument(s)
var_source_ids <- c("inner_example") # array[character] | Get articles from specific sources; either by their ids or keys (Optional)
var_lang <- "EN" # character | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) (Optional)
var_categories <- c("1INCH") # array[character] | News article categories to return (Optional)
var_exclude_categories <- c("1INCH") # array[character] | News article categories to exclude from results (Optional)
var_to_ts <- -1 # integer | Articles published on or before this timestamp (Optional)

api_instance <- NewsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$NewsV1ArticleList(source_ids = var_source_ids, lang = var_lang, categories = var_categories, exclude_categories = var_exclude_categories, to_ts = var_to_tsdata_file = "result.txt")
result <- api_instance$NewsV1ArticleList(source_ids = var_source_ids, lang = var_lang, categories = var_categories, exclude_categories = var_exclude_categories, to_ts = var_to_ts)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_ids** | list( **character** )| Get articles from specific sources; either by their ids or keys | [optional] [default to [&quot;&quot;]]
 **lang** | Enum [EN, ES, PT, ] | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to &quot;EN&quot;]
 **categories** | Enum [1INCH, AAVE, ADA, ALGO, ALTCOIN, ASIA, ATOM, AVAX, AXS, BAL, BAT, BCH, BLOCKCHAIN, BTC, BUSINESS, COMMODITY, COMP, CRV, DASH, DOGE, DOT, ENJ, ETC, ETH, EXCHANGE, FIAT, FIL, FTM, ICO, KNC, LINK, LRC, LTC, LUNA, LUNC, MANA, MARKET, MATIC, MINING, MKR, REGULATION, REN, SAND, SHIB, SNX, SOL, SPONSORED, SUSHI, TECHNOLOGY, TRADING, TRX, UMA, UNI, USDT, WALLET, XLM, XMR, XRP, XTZ, YFI, ZEC, ZRX, ] | News article categories to return | [optional] [default to [&quot;&quot;]]
 **exclude_categories** | Enum [1INCH, AAVE, ADA, ALGO, ALTCOIN, ASIA, ATOM, AVAX, AXS, BAL, BAT, BCH, BLOCKCHAIN, BTC, BUSINESS, COMMODITY, COMP, CRV, DASH, DOGE, DOT, ENJ, ETC, ETH, EXCHANGE, FIAT, FIL, FTM, ICO, KNC, LINK, LRC, LTC, LUNA, LUNC, MANA, MARKET, MATIC, MINING, MKR, REGULATION, REN, SAND, SHIB, SNX, SOL, SPONSORED, SUSHI, TECHNOLOGY, TRADING, TRX, UMA, UNI, USDT, WALLET, XLM, XMR, XRP, XTZ, YFI, ZEC, ZRX, ] | News article categories to exclude from results | [optional] [default to [&quot;&quot;]]
 **to_ts** | **integer**| Articles published on or before this timestamp | [optional] [default to -1]

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

# **NewsV1CategoryList**
> GENERICRESPONSE NewsV1CategoryList()



### Example
```R
library(openapi)


api_instance <- NewsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$NewsV1CategoryList(data_file = "result.txt")
result <- api_instance$NewsV1CategoryList()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

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

# **NewsV1SourceList**
> GENERICRESPONSE NewsV1SourceList(lang = "EN", type = "RSS", status = "ACTIVE")



### Example
```R
library(openapi)

# prepare function argument(s)
var_lang <- "EN" # character | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) (Optional)
var_type <- "RSS" # character | RSS, API, TWITTER (Optional)
var_status <- "ACTIVE" # character | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE (Optional)

api_instance <- NewsApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$NewsV1SourceList(lang = var_lang, type = var_type, status = var_statusdata_file = "result.txt")
result <- api_instance$NewsV1SourceList(lang = var_lang, type = var_type, status = var_status)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | Enum [EN, ES, PT, ] | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to &quot;EN&quot;]
 **type** | Enum [RSS, API, TWITTER, ] | RSS, API, TWITTER | [optional] [default to &quot;RSS&quot;]
 **status** | Enum [ACTIVE, INACTIVE, ] | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to &quot;ACTIVE&quot;]

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

