# NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**newsV1ArticleList**](NewsApi.md#newsV1ArticleList) | **GET** /news/v1/article/list |  |
| [**newsV1CategoryList**](NewsApi.md#newsV1CategoryList) | **GET** /news/v1/category/list |  |
| [**newsV1SourceList**](NewsApi.md#newsV1SourceList) | **GET** /news/v1/source/list |  |


## Creating NewsApi

To initiate an instance of `NewsApi`, you can use micronaut's `ApplicationContext`:
```java
/* imports
import io.micronaut.runtime.Micronaut;
import io.micronaut.context.ApplicationContext;
import org.openapitools.api.NewsApi;
*/

ApplicationContext context = Micronaut.run(/* ... */);
PetApi apiInstance = context.getBean(NewsApi.class);
```

Or the `@Inject` annotation:
```java
@Singleton
class MyClass {
    @Inject
    NewsApi newsApi;

    /* ... use the injected variable */
}
```
Note that the class needs to be annotated with one of Micronaut's [scope annotations](https://docs.micronaut.io/latest/guide/#scopes) like `Singleton` in order to be processed.

More information can be found inside [Inversion of Control guide section](https://docs.micronaut.io/latest/guide/#ioc).

<a name="newsV1ArticleList"></a>
# **newsV1ArticleList**
```java
Mono<GENERICRESPONSE> NewsApi.newsV1ArticleList(sourceIdslangcategoriesexcludeCategoriestoTs)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **sourceIds** | [**List&lt;String&gt;**](String.md)| Get articles from specific sources; either by their ids or keys | [optional parameter] [default to ``] |
| **lang** | `String`| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional parameter] [default to `EN`] [enum: `EN`, `ES`, `PT`, ``] |
| **categories** | [**List&lt;String&gt;**](String.md)| News article categories to return | [optional parameter] [default to ``] [enum: `1INCH`, `AAVE`, `ADA`, `ALGO`, `ALTCOIN`, `ASIA`, `ATOM`, `AVAX`, `AXS`, `BAL`, `BAT`, `BCH`, `BLOCKCHAIN`, `BTC`, `BUSINESS`, `COMMODITY`, `COMP`, `CRV`, `DASH`, `DOGE`, `DOT`, `ENJ`, `ETC`, `ETH`, `EXCHANGE`, `FIAT`, `FIL`, `FTM`, `ICO`, `KNC`, `LINK`, `LRC`, `LTC`, `LUNA`, `LUNC`, `MANA`, `MARKET`, `MATIC`, `MINING`, `MKR`, `REGULATION`, `REN`, `SAND`, `SHIB`, `SNX`, `SOL`, `SPONSORED`, `SUSHI`, `TECHNOLOGY`, `TRADING`, `TRX`, `UMA`, `UNI`, `USDT`, `WALLET`, `XLM`, `XMR`, `XRP`, `XTZ`, `YFI`, `ZEC`, `ZRX`, ``] |
| **excludeCategories** | [**List&lt;String&gt;**](String.md)| News article categories to exclude from results | [optional parameter] [default to ``] [enum: `1INCH`, `AAVE`, `ADA`, `ALGO`, `ALTCOIN`, `ASIA`, `ATOM`, `AVAX`, `AXS`, `BAL`, `BAT`, `BCH`, `BLOCKCHAIN`, `BTC`, `BUSINESS`, `COMMODITY`, `COMP`, `CRV`, `DASH`, `DOGE`, `DOT`, `ENJ`, `ETC`, `ETH`, `EXCHANGE`, `FIAT`, `FIL`, `FTM`, `ICO`, `KNC`, `LINK`, `LRC`, `LTC`, `LUNA`, `LUNC`, `MANA`, `MARKET`, `MATIC`, `MINING`, `MKR`, `REGULATION`, `REN`, `SAND`, `SHIB`, `SNX`, `SOL`, `SPONSORED`, `SUSHI`, `TECHNOLOGY`, `TRADING`, `TRX`, `UMA`, `UNI`, `USDT`, `WALLET`, `XLM`, `XMR`, `XRP`, `XTZ`, `YFI`, `ZEC`, `ZRX`, ``] |
| **toTs** | `Integer`| Articles published on or before this timestamp | [optional parameter] [default to `-1`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="newsV1CategoryList"></a>
# **newsV1CategoryList**
```java
Mono<GENERICRESPONSE> NewsApi.newsV1CategoryList()
```





### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="newsV1SourceList"></a>
# **newsV1SourceList**
```java
Mono<GENERICRESPONSE> NewsApi.newsV1SourceList(langtypestatus)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **lang** | `String`| The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional parameter] [default to `EN`] [enum: `EN`, `ES`, `PT`, ``] |
| **type** | `String`| RSS, API, TWITTER | [optional parameter] [default to `RSS`] [enum: `RSS`, `API`, `TWITTER`, ``] |
| **status** | `String`| The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional parameter] [default to `ACTIVE`] [enum: `ACTIVE`, `INACTIVE`, ``] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

