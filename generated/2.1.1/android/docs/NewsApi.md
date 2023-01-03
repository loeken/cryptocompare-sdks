# NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**newsV1ArticleList**](NewsApi.md#newsV1ArticleList) | **GET** /news/v1/article/list | 
[**newsV1CategoryList**](NewsApi.md#newsV1CategoryList) | **GET** /news/v1/category/list | 
[**newsV1SourceList**](NewsApi.md#newsV1SourceList) | **GET** /news/v1/source/list | 



## newsV1ArticleList

> GENERICRESPONSE newsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs)



### Example

```java
// Import classes:
//import org.openapitools.client.api.NewsApi;

NewsApi apiInstance = new NewsApi();
List<String> sourceIds = [""]; // List<String> | Get articles from specific sources; either by their ids or keys
String lang = EN; // String | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
List<String> categories = [""]; // List<String> | News article categories to return
List<String> excludeCategories = [""]; // List<String> | News article categories to exclude from results
Integer toTs = -1; // Integer | Articles published on or before this timestamp
try {
    GENERICRESPONSE result = apiInstance.newsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#newsV1ArticleList");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceIds** | [**List&lt;String&gt;**](String.md)| Get articles from specific sources; either by their ids or keys | [optional] [default to [&quot;&quot;]]
 **lang** | **String**| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to EN] [enum: EN, ES, PT, ]
 **categories** | [**List&lt;String&gt;**](String.md)| News article categories to return | [optional] [default to [&quot;&quot;]] [enum: 1INCH, AAVE, ADA, ALGO, ALTCOIN, ASIA, ATOM, AVAX, AXS, BAL, BAT, BCH, BLOCKCHAIN, BTC, BUSINESS, COMMODITY, COMP, CRV, DASH, DOGE, DOT, ENJ, ETC, ETH, EXCHANGE, FIAT, FIL, FTM, ICO, KNC, LINK, LRC, LTC, LUNA, LUNC, MANA, MARKET, MATIC, MINING, MKR, REGULATION, REN, SAND, SHIB, SNX, SOL, SPONSORED, SUSHI, TECHNOLOGY, TRADING, TRX, UMA, UNI, USDT, WALLET, XLM, XMR, XRP, XTZ, YFI, ZEC, ZRX, ]
 **excludeCategories** | [**List&lt;String&gt;**](String.md)| News article categories to exclude from results | [optional] [default to [&quot;&quot;]] [enum: 1INCH, AAVE, ADA, ALGO, ALTCOIN, ASIA, ATOM, AVAX, AXS, BAL, BAT, BCH, BLOCKCHAIN, BTC, BUSINESS, COMMODITY, COMP, CRV, DASH, DOGE, DOT, ENJ, ETC, ETH, EXCHANGE, FIAT, FIL, FTM, ICO, KNC, LINK, LRC, LTC, LUNA, LUNC, MANA, MARKET, MATIC, MINING, MKR, REGULATION, REN, SAND, SHIB, SNX, SOL, SPONSORED, SUSHI, TECHNOLOGY, TRADING, TRX, UMA, UNI, USDT, WALLET, XLM, XMR, XRP, XTZ, YFI, ZEC, ZRX, ]
 **toTs** | **Integer**| Articles published on or before this timestamp | [optional] [default to -1]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## newsV1CategoryList

> GENERICRESPONSE newsV1CategoryList()



### Example

```java
// Import classes:
//import org.openapitools.client.api.NewsApi;

NewsApi apiInstance = new NewsApi();
try {
    GENERICRESPONSE result = apiInstance.newsV1CategoryList();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#newsV1CategoryList");
    e.printStackTrace();
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


## newsV1SourceList

> GENERICRESPONSE newsV1SourceList(lang, type, status)



### Example

```java
// Import classes:
//import org.openapitools.client.api.NewsApi;

NewsApi apiInstance = new NewsApi();
String lang = EN; // String | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
String type = RSS; // String | RSS, API, TWITTER
String status = ACTIVE; // String | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
try {
    GENERICRESPONSE result = apiInstance.newsV1SourceList(lang, type, status);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling NewsApi#newsV1SourceList");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | **String**| The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to EN] [enum: EN, ES, PT, ]
 **type** | **String**| RSS, API, TWITTER | [optional] [default to RSS] [enum: RSS, API, TWITTER, ]
 **status** | **String**| The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to ACTIVE] [enum: ACTIVE, INACTIVE, ]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

