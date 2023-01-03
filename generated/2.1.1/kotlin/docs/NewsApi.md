# NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**newsV1ArticleList**](NewsApi.md#newsV1ArticleList) | **GET** /news/v1/article/list | 
[**newsV1CategoryList**](NewsApi.md#newsV1CategoryList) | **GET** /news/v1/category/list | 
[**newsV1SourceList**](NewsApi.md#newsV1SourceList) | **GET** /news/v1/source/list | 


<a name="newsV1ArticleList"></a>
# **newsV1ArticleList**
> GENERICRESPONSE newsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NewsApi()
val sourceIds : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | Get articles from specific sources; either by their ids or keys
val lang : kotlin.String = lang_example // kotlin.String | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
val categories : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | News article categories to return
val excludeCategories : kotlin.collections.List<kotlin.String> =  // kotlin.collections.List<kotlin.String> | News article categories to exclude from results
val toTs : kotlin.Int = 56 // kotlin.Int | Articles published on or before this timestamp
try {
    val result : GENERICRESPONSE = apiInstance.newsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NewsApi#newsV1ArticleList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NewsApi#newsV1ArticleList")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceIds** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| Get articles from specific sources; either by their ids or keys | [optional] [default to arrayListOf(&quot;&quot;)]
 **lang** | **kotlin.String**| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to EN] [enum: EN, ES, PT, ]
 **categories** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| News article categories to return | [optional] [default to arrayListOf()] [enum: 1INCH, AAVE, ADA, ALGO, ALTCOIN, ASIA, ATOM, AVAX, AXS, BAL, BAT, BCH, BLOCKCHAIN, BTC, BUSINESS, COMMODITY, COMP, CRV, DASH, DOGE, DOT, ENJ, ETC, ETH, EXCHANGE, FIAT, FIL, FTM, ICO, KNC, LINK, LRC, LTC, LUNA, LUNC, MANA, MARKET, MATIC, MINING, MKR, REGULATION, REN, SAND, SHIB, SNX, SOL, SPONSORED, SUSHI, TECHNOLOGY, TRADING, TRX, UMA, UNI, USDT, WALLET, XLM, XMR, XRP, XTZ, YFI, ZEC, ZRX, ]
 **excludeCategories** | [**kotlin.collections.List&lt;kotlin.String&gt;**](kotlin.String.md)| News article categories to exclude from results | [optional] [default to arrayListOf()] [enum: 1INCH, AAVE, ADA, ALGO, ALTCOIN, ASIA, ATOM, AVAX, AXS, BAL, BAT, BCH, BLOCKCHAIN, BTC, BUSINESS, COMMODITY, COMP, CRV, DASH, DOGE, DOT, ENJ, ETC, ETH, EXCHANGE, FIAT, FIL, FTM, ICO, KNC, LINK, LRC, LTC, LUNA, LUNC, MANA, MARKET, MATIC, MINING, MKR, REGULATION, REN, SAND, SHIB, SNX, SOL, SPONSORED, SUSHI, TECHNOLOGY, TRADING, TRX, UMA, UNI, USDT, WALLET, XLM, XMR, XRP, XTZ, YFI, ZEC, ZRX, ]
 **toTs** | **kotlin.Int**| Articles published on or before this timestamp | [optional] [default to -1]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="newsV1CategoryList"></a>
# **newsV1CategoryList**
> GENERICRESPONSE newsV1CategoryList()



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NewsApi()
try {
    val result : GENERICRESPONSE = apiInstance.newsV1CategoryList()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NewsApi#newsV1CategoryList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NewsApi#newsV1CategoryList")
    e.printStackTrace()
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

<a name="newsV1SourceList"></a>
# **newsV1SourceList**
> GENERICRESPONSE newsV1SourceList(lang, type, status)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = NewsApi()
val lang : kotlin.String = lang_example // kotlin.String | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
val type : kotlin.String = type_example // kotlin.String | RSS, API, TWITTER
val status : kotlin.String = status_example // kotlin.String | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
try {
    val result : GENERICRESPONSE = apiInstance.newsV1SourceList(lang, type, status)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling NewsApi#newsV1SourceList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling NewsApi#newsV1SourceList")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | **kotlin.String**| The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to EN] [enum: EN, ES, PT, ]
 **type** | **kotlin.String**| RSS, API, TWITTER | [optional] [default to RSS] [enum: RSS, API, TWITTER, ]
 **status** | **kotlin.String**| The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to ACTIVE] [enum: ACTIVE, INACTIVE, ]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

