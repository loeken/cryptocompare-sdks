# Org.OpenAPITools.Api.AssetApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AssetV1DataByAddress**](AssetApi.md#assetv1databyaddress) | **GET** /asset/v1/data/by/address |  |
| [**AssetV1DataById**](AssetApi.md#assetv1databyid) | **GET** /asset/v1/data/by/id |  |
| [**AssetV1DataBySymbol**](AssetApi.md#assetv1databysymbol) | **GET** /asset/v1/data/by/symbol |  |
| [**AssetV1TopList**](AssetApi.md#assetv1toplist) | **GET** /asset/v1/top/list |  |

<a name="assetv1databyaddress"></a>
# **AssetV1DataByAddress**
> GENERICRESPONSE AssetV1DataByAddress (string address, string chainSymbol, string groups = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class AssetV1DataByAddressExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new AssetApi(config);
            var address = "address_example";  // string | 
            var chainSymbol = "chainSymbol_example";  // string | 
            var groups = "\"\"";  // string |  (optional)  (default to "")

            try
            {
                GENERICRESPONSE result = apiInstance.AssetV1DataByAddress(address, chainSymbol, groups);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AssetApi.AssetV1DataByAddress: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AssetV1DataByAddressWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<GENERICRESPONSE> response = apiInstance.AssetV1DataByAddressWithHttpInfo(address, chainSymbol, groups);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AssetApi.AssetV1DataByAddressWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **address** | **string** |  |  |
| **chainSymbol** | **string** |  |  |
| **groups** | **string** |  | [optional] [default to &quot;&quot;] |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="assetv1databyid"></a>
# **AssetV1DataById**
> GENERICRESPONSE AssetV1DataById (int assetId, string groups = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class AssetV1DataByIdExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new AssetApi(config);
            var assetId = 56;  // int | The asset id you are interested in
            var groups = "\"\"";  // string |  (optional)  (default to "")

            try
            {
                GENERICRESPONSE result = apiInstance.AssetV1DataById(assetId, groups);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AssetApi.AssetV1DataById: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AssetV1DataByIdWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<GENERICRESPONSE> response = apiInstance.AssetV1DataByIdWithHttpInfo(assetId, groups);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AssetApi.AssetV1DataByIdWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **assetId** | **int** | The asset id you are interested in |  |
| **groups** | **string** |  | [optional] [default to &quot;&quot;] |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="assetv1databysymbol"></a>
# **AssetV1DataBySymbol**
> GENERICRESPONSE AssetV1DataBySymbol (string assetSymbol, string groups = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class AssetV1DataBySymbolExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new AssetApi(config);
            var assetSymbol = "assetSymbol_example";  // string | The asset symbol you are interested in
            var groups = "\"\"";  // string |  (optional)  (default to "")

            try
            {
                GENERICRESPONSE result = apiInstance.AssetV1DataBySymbol(assetSymbol, groups);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AssetApi.AssetV1DataBySymbol: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AssetV1DataBySymbolWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<GENERICRESPONSE> response = apiInstance.AssetV1DataBySymbolWithHttpInfo(assetSymbol, groups);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AssetApi.AssetV1DataBySymbolWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **assetSymbol** | **string** | The asset symbol you are interested in |  |
| **groups** | **string** |  | [optional] [default to &quot;&quot;] |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="assetv1toplist"></a>
# **AssetV1TopList**
> GENERICRESPONSE AssetV1TopList (int? page = null, int? pageSize = null, string assetType = null, string sortBy = null, string sortDirection = null, string groups = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class AssetV1TopListExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new AssetApi(config);
            var page = 1;  // int? | The page number for the request to get {page_size} coins at the time. (optional)  (default to 1)
            var pageSize = 100;  // int? | The number of items returned per page (optional)  (default to 100)
            var assetType = "\"\"";  // string | The asset class/type (optional)  (default to "")
            var sortBy = "CREATED_ON";  // string | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) (optional)  (default to CREATED_ON)
            var sortDirection = "DESC";  // string | Sort direction ( DESC,ASC ) (optional)  (default to DESC)
            var groups = "\"\"";  // string |  (optional)  (default to "")

            try
            {
                GENERICRESPONSE result = apiInstance.AssetV1TopList(page, pageSize, assetType, sortBy, sortDirection, groups);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling AssetApi.AssetV1TopList: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the AssetV1TopListWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<GENERICRESPONSE> response = apiInstance.AssetV1TopListWithHttpInfo(page, pageSize, assetType, sortBy, sortDirection, groups);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling AssetApi.AssetV1TopListWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **page** | **int?** | The page number for the request to get {page_size} coins at the time. | [optional] [default to 1] |
| **pageSize** | **int?** | The number of items returned per page | [optional] [default to 100] |
| **assetType** | **string** | The asset class/type | [optional] [default to &quot;&quot;] |
| **sortBy** | **string** | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to CREATED_ON] |
| **sortDirection** | **string** | Sort direction ( DESC,ASC ) | [optional] [default to DESC] |
| **groups** | **string** |  | [optional] [default to &quot;&quot;] |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

