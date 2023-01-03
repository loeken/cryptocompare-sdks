# AssetApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**assetV1DataByAddress**](AssetApi.md#assetV1DataByAddress) | **GET** /asset/v1/data/by/address |  |
| [**assetV1DataById**](AssetApi.md#assetV1DataById) | **GET** /asset/v1/data/by/id |  |
| [**assetV1DataBySymbol**](AssetApi.md#assetV1DataBySymbol) | **GET** /asset/v1/data/by/symbol |  |
| [**assetV1TopList**](AssetApi.md#assetV1TopList) | **GET** /asset/v1/top/list |  |


<a name="assetV1DataByAddress"></a>
# **assetV1DataByAddress**
> GENERICRESPONSE assetV1DataByAddress(address, chainSymbol, groups)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AssetApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://data-api.cryptocompare.com");

    AssetApi apiInstance = new AssetApi(defaultClient);
    String address = "address_example"; // String | 
    String chainSymbol = "chainSymbol_example"; // String | 
    String groups = ""; // String | 
    try {
      GENERICRESPONSE result = apiInstance.assetV1DataByAddress(address, chainSymbol, groups);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AssetApi#assetV1DataByAddress");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **address** | **String**|  | |
| **chainSymbol** | **String**|  | |
| **groups** | **String**|  | [optional] [default to ] |

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

<a name="assetV1DataById"></a>
# **assetV1DataById**
> GENERICRESPONSE assetV1DataById(assetId, groups)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AssetApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://data-api.cryptocompare.com");

    AssetApi apiInstance = new AssetApi(defaultClient);
    Integer assetId = 56; // Integer | The asset id you are interested in
    String groups = ""; // String | 
    try {
      GENERICRESPONSE result = apiInstance.assetV1DataById(assetId, groups);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AssetApi#assetV1DataById");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **assetId** | **Integer**| The asset id you are interested in | |
| **groups** | **String**|  | [optional] [default to ] |

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

<a name="assetV1DataBySymbol"></a>
# **assetV1DataBySymbol**
> GENERICRESPONSE assetV1DataBySymbol(assetSymbol, groups)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AssetApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://data-api.cryptocompare.com");

    AssetApi apiInstance = new AssetApi(defaultClient);
    String assetSymbol = "assetSymbol_example"; // String | The asset symbol you are interested in
    String groups = ""; // String | 
    try {
      GENERICRESPONSE result = apiInstance.assetV1DataBySymbol(assetSymbol, groups);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AssetApi#assetV1DataBySymbol");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **assetSymbol** | **String**| The asset symbol you are interested in | |
| **groups** | **String**|  | [optional] [default to ] |

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

<a name="assetV1TopList"></a>
# **assetV1TopList**
> GENERICRESPONSE assetV1TopList(page, pageSize, assetType, sortBy, sortDirection, groups)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AssetApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://data-api.cryptocompare.com");

    AssetApi apiInstance = new AssetApi(defaultClient);
    Integer page = 1; // Integer | The page number for the request to get {page_size} coins at the time.
    Integer pageSize = 100; // Integer | The number of items returned per page
    String assetType = ""; // String | The asset class/type
    String sortBy = "CREATED_ON"; // String | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
    String sortDirection = "DESC"; // String | Sort direction ( DESC,ASC )
    String groups = ""; // String | 
    try {
      GENERICRESPONSE result = apiInstance.assetV1TopList(page, pageSize, assetType, sortBy, sortDirection, groups);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AssetApi#assetV1TopList");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **page** | **Integer**| The page number for the request to get {page_size} coins at the time. | [optional] [default to 1] |
| **pageSize** | **Integer**| The number of items returned per page | [optional] [default to 100] |
| **assetType** | **String**| The asset class/type | [optional] [default to ] |
| **sortBy** | **String**| Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to CREATED_ON] [enum: CREATED_ON, UPDATED_ON, SYMBOL] |
| **sortDirection** | **String**| Sort direction ( DESC,ASC ) | [optional] [default to DESC] [enum: DESC, ASC] |
| **groups** | **String**|  | [optional] [default to ] |

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

