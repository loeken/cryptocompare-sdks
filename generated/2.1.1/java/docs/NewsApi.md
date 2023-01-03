# NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**newsV1ArticleList**](NewsApi.md#newsV1ArticleList) | **GET** /news/v1/article/list |  |
| [**newsV1CategoryList**](NewsApi.md#newsV1CategoryList) | **GET** /news/v1/category/list |  |
| [**newsV1SourceList**](NewsApi.md#newsV1SourceList) | **GET** /news/v1/source/list |  |


<a name="newsV1ArticleList"></a>
# **newsV1ArticleList**
> GENERICRESPONSE newsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NewsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://data-api.cryptocompare.com");

    NewsApi apiInstance = new NewsApi(defaultClient);
    List<String> sourceIds = Arrays.asList(); // List<String> | Get articles from specific sources; either by their ids or keys
    String lang = "EN"; // String | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
    List<String> categories = Arrays.asList(); // List<String> | News article categories to return
    List<String> excludeCategories = Arrays.asList(); // List<String> | News article categories to exclude from results
    Integer toTs = -1; // Integer | Articles published on or before this timestamp
    try {
      GENERICRESPONSE result = apiInstance.newsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#newsV1ArticleList");
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
| **sourceIds** | [**List&lt;String&gt;**](String.md)| Get articles from specific sources; either by their ids or keys | [optional] |
| **lang** | **String**| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to EN] [enum: EN, ES, PT, ] |
| **categories** | [**List&lt;String&gt;**](String.md)| News article categories to return | [optional] [enum: 1INCH, AAVE, ADA, ALGO, ALTCOIN, ASIA, ATOM, AVAX, AXS, BAL, BAT, BCH, BLOCKCHAIN, BTC, BUSINESS, COMMODITY, COMP, CRV, DASH, DOGE, DOT, ENJ, ETC, ETH, EXCHANGE, FIAT, FIL, FTM, ICO, KNC, LINK, LRC, LTC, LUNA, LUNC, MANA, MARKET, MATIC, MINING, MKR, REGULATION, REN, SAND, SHIB, SNX, SOL, SPONSORED, SUSHI, TECHNOLOGY, TRADING, TRX, UMA, UNI, USDT, WALLET, XLM, XMR, XRP, XTZ, YFI, ZEC, ZRX, ] |
| **excludeCategories** | [**List&lt;String&gt;**](String.md)| News article categories to exclude from results | [optional] [enum: 1INCH, AAVE, ADA, ALGO, ALTCOIN, ASIA, ATOM, AVAX, AXS, BAL, BAT, BCH, BLOCKCHAIN, BTC, BUSINESS, COMMODITY, COMP, CRV, DASH, DOGE, DOT, ENJ, ETC, ETH, EXCHANGE, FIAT, FIL, FTM, ICO, KNC, LINK, LRC, LTC, LUNA, LUNC, MANA, MARKET, MATIC, MINING, MKR, REGULATION, REN, SAND, SHIB, SNX, SOL, SPONSORED, SUSHI, TECHNOLOGY, TRADING, TRX, UMA, UNI, USDT, WALLET, XLM, XMR, XRP, XTZ, YFI, ZEC, ZRX, ] |
| **toTs** | **Integer**| Articles published on or before this timestamp | [optional] [default to -1] |

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

<a name="newsV1CategoryList"></a>
# **newsV1CategoryList**
> GENERICRESPONSE newsV1CategoryList()



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NewsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://data-api.cryptocompare.com");

    NewsApi apiInstance = new NewsApi(defaultClient);
    try {
      GENERICRESPONSE result = apiInstance.newsV1CategoryList();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#newsV1CategoryList");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
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

<a name="newsV1SourceList"></a>
# **newsV1SourceList**
> GENERICRESPONSE newsV1SourceList(lang, type, status)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.NewsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://data-api.cryptocompare.com");

    NewsApi apiInstance = new NewsApi(defaultClient);
    String lang = "EN"; // String | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
    String type = "RSS"; // String | RSS, API, TWITTER
    String status = "ACTIVE"; // String | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
    try {
      GENERICRESPONSE result = apiInstance.newsV1SourceList(lang, type, status);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling NewsApi#newsV1SourceList");
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
| **lang** | **String**| The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to EN] [enum: EN, ES, PT, ] |
| **type** | **String**| RSS, API, TWITTER | [optional] [default to RSS] [enum: RSS, API, TWITTER, ] |
| **status** | **String**| The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to ACTIVE] [enum: ACTIVE, INACTIVE, ] |

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

