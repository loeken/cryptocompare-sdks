# AssetApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AssetV1DataByAddress**](AssetApi.md#AssetV1DataByAddress) | **GET** /asset/v1/data/by/address | 
[**AssetV1DataById**](AssetApi.md#AssetV1DataById) | **GET** /asset/v1/data/by/id | 
[**AssetV1DataBySymbol**](AssetApi.md#AssetV1DataBySymbol) | **GET** /asset/v1/data/by/symbol | 
[**AssetV1TopList**](AssetApi.md#AssetV1TopList) | **GET** /asset/v1/top/list | 


# **AssetV1DataByAddress**
> GENERICRESPONSE AssetV1DataByAddress(address, chain_symbol, groups = "")



### Example
```R
library(openapi)

# prepare function argument(s)
var_address <- "address_example" # character | 
var_chain_symbol <- "chain_symbol_example" # character | 
var_groups <- "" # character |  (Optional)

api_instance <- AssetApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AssetV1DataByAddress(var_address, var_chain_symbol, groups = var_groupsdata_file = "result.txt")
result <- api_instance$AssetV1DataByAddress(var_address, var_chain_symbol, groups = var_groups)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **character**|  | 
 **chain_symbol** | **character**|  | 
 **groups** | **character**|  | [optional] [default to &quot;&quot;]

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

# **AssetV1DataById**
> GENERICRESPONSE AssetV1DataById(asset_id, groups = "")



### Example
```R
library(openapi)

# prepare function argument(s)
var_asset_id <- 56 # integer | The asset id you are interested in
var_groups <- "" # character |  (Optional)

api_instance <- AssetApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AssetV1DataById(var_asset_id, groups = var_groupsdata_file = "result.txt")
result <- api_instance$AssetV1DataById(var_asset_id, groups = var_groups)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **integer**| The asset id you are interested in | 
 **groups** | **character**|  | [optional] [default to &quot;&quot;]

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

# **AssetV1DataBySymbol**
> GENERICRESPONSE AssetV1DataBySymbol(asset_symbol, groups = "")



### Example
```R
library(openapi)

# prepare function argument(s)
var_asset_symbol <- "asset_symbol_example" # character | The asset symbol you are interested in
var_groups <- "" # character |  (Optional)

api_instance <- AssetApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AssetV1DataBySymbol(var_asset_symbol, groups = var_groupsdata_file = "result.txt")
result <- api_instance$AssetV1DataBySymbol(var_asset_symbol, groups = var_groups)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_symbol** | **character**| The asset symbol you are interested in | 
 **groups** | **character**|  | [optional] [default to &quot;&quot;]

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

# **AssetV1TopList**
> GENERICRESPONSE AssetV1TopList(page = 1, page_size = 100, asset_type = "", sort_by = "CREATED_ON", sort_direction = "DESC", groups = "")



### Example
```R
library(openapi)

# prepare function argument(s)
var_page <- 1 # integer | The page number for the request to get {page_size} coins at the time. (Optional)
var_page_size <- 100 # integer | The number of items returned per page (Optional)
var_asset_type <- "" # character | The asset class/type (Optional)
var_sort_by <- "CREATED_ON" # character | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) (Optional)
var_sort_direction <- "DESC" # character | Sort direction ( DESC,ASC ) (Optional)
var_groups <- "" # character |  (Optional)

api_instance <- AssetApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AssetV1TopList(page = var_page, page_size = var_page_size, asset_type = var_asset_type, sort_by = var_sort_by, sort_direction = var_sort_direction, groups = var_groupsdata_file = "result.txt")
result <- api_instance$AssetV1TopList(page = var_page, page_size = var_page_size, asset_type = var_asset_type, sort_by = var_sort_by, sort_direction = var_sort_direction, groups = var_groups)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| The page number for the request to get {page_size} coins at the time. | [optional] [default to 1]
 **page_size** | **integer**| The number of items returned per page | [optional] [default to 100]
 **asset_type** | **character**| The asset class/type | [optional] [default to &quot;&quot;]
 **sort_by** | Enum [CREATED_ON, UPDATED_ON, SYMBOL] | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to &quot;CREATED_ON&quot;]
 **sort_direction** | Enum [DESC, ASC] | Sort direction ( DESC,ASC ) | [optional] [default to &quot;DESC&quot;]
 **groups** | **character**|  | [optional] [default to &quot;&quot;]

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

