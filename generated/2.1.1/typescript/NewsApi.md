# .NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**newsV1ArticleList**](NewsApi.md#newsV1ArticleList) | **GET** /news/v1/article/list | 
[**newsV1CategoryList**](NewsApi.md#newsV1CategoryList) | **GET** /news/v1/category/list | 
[**newsV1SourceList**](NewsApi.md#newsV1SourceList) | **GET** /news/v1/source/list | 


# **newsV1ArticleList**
> GENERICRESPONSE newsV1ArticleList()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiNewsV1ArticleListRequest = {
  // Array<string> | Get articles from specific sources; either by their ids or keys (optional)
  sourceIds: [""],
  // 'EN' | 'ES' | 'PT' | '' | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional)
  lang: "EN",
  // Array<'1INCH' | 'AAVE' | 'ADA' | 'ALGO' | 'ALTCOIN' | 'ASIA' | 'ATOM' | 'AVAX' | 'AXS' | 'BAL' | 'BAT' | 'BCH' | 'BLOCKCHAIN' | 'BTC' | 'BUSINESS' | 'COMMODITY' | 'COMP' | 'CRV' | 'DASH' | 'DOGE' | 'DOT' | 'ENJ' | 'ETC' | 'ETH' | 'EXCHANGE' | 'FIAT' | 'FIL' | 'FTM' | 'ICO' | 'KNC' | 'LINK' | 'LRC' | 'LTC' | 'LUNA' | 'LUNC' | 'MANA' | 'MARKET' | 'MATIC' | 'MINING' | 'MKR' | 'REGULATION' | 'REN' | 'SAND' | 'SHIB' | 'SNX' | 'SOL' | 'SPONSORED' | 'SUSHI' | 'TECHNOLOGY' | 'TRADING' | 'TRX' | 'UMA' | 'UNI' | 'USDT' | 'WALLET' | 'XLM' | 'XMR' | 'XRP' | 'XTZ' | 'YFI' | 'ZEC' | 'ZRX' | ''> | News article categories to return (optional)
  categories: [""],
  // Array<'1INCH' | 'AAVE' | 'ADA' | 'ALGO' | 'ALTCOIN' | 'ASIA' | 'ATOM' | 'AVAX' | 'AXS' | 'BAL' | 'BAT' | 'BCH' | 'BLOCKCHAIN' | 'BTC' | 'BUSINESS' | 'COMMODITY' | 'COMP' | 'CRV' | 'DASH' | 'DOGE' | 'DOT' | 'ENJ' | 'ETC' | 'ETH' | 'EXCHANGE' | 'FIAT' | 'FIL' | 'FTM' | 'ICO' | 'KNC' | 'LINK' | 'LRC' | 'LTC' | 'LUNA' | 'LUNC' | 'MANA' | 'MARKET' | 'MATIC' | 'MINING' | 'MKR' | 'REGULATION' | 'REN' | 'SAND' | 'SHIB' | 'SNX' | 'SOL' | 'SPONSORED' | 'SUSHI' | 'TECHNOLOGY' | 'TRADING' | 'TRX' | 'UMA' | 'UNI' | 'USDT' | 'WALLET' | 'XLM' | 'XMR' | 'XRP' | 'XTZ' | 'YFI' | 'ZEC' | 'ZRX' | ''> | News article categories to exclude from results (optional)
  excludeCategories: [""],
  // number | Articles published on or before this timestamp (optional)
  toTs: -1,
};

apiInstance.newsV1ArticleList(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceIds** | **Array&lt;string&gt;** | Get articles from specific sources; either by their ids or keys | (optional) defaults to undefined
 **lang** | [**&#39;EN&#39; | &#39;ES&#39; | &#39;PT&#39; | &#39;&#39;**]**Array<&#39;EN&#39; &#124; &#39;ES&#39; &#124; &#39;PT&#39; &#124; &#39;&#39;>** | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | (optional) defaults to 'EN'
 **categories** | **Array<&#39;1INCH&#39; &#124; &#39;AAVE&#39; &#124; &#39;ADA&#39; &#124; &#39;ALGO&#39; &#124; &#39;ALTCOIN&#39; &#124; &#39;ASIA&#39; &#124; &#39;ATOM&#39; &#124; &#39;AVAX&#39; &#124; &#39;AXS&#39; &#124; &#39;BAL&#39; &#124; &#39;BAT&#39; &#124; &#39;BCH&#39; &#124; &#39;BLOCKCHAIN&#39; &#124; &#39;BTC&#39; &#124; &#39;BUSINESS&#39; &#124; &#39;COMMODITY&#39; &#124; &#39;COMP&#39; &#124; &#39;CRV&#39; &#124; &#39;DASH&#39; &#124; &#39;DOGE&#39; &#124; &#39;DOT&#39; &#124; &#39;ENJ&#39; &#124; &#39;ETC&#39; &#124; &#39;ETH&#39; &#124; &#39;EXCHANGE&#39; &#124; &#39;FIAT&#39; &#124; &#39;FIL&#39; &#124; &#39;FTM&#39; &#124; &#39;ICO&#39; &#124; &#39;KNC&#39; &#124; &#39;LINK&#39; &#124; &#39;LRC&#39; &#124; &#39;LTC&#39; &#124; &#39;LUNA&#39; &#124; &#39;LUNC&#39; &#124; &#39;MANA&#39; &#124; &#39;MARKET&#39; &#124; &#39;MATIC&#39; &#124; &#39;MINING&#39; &#124; &#39;MKR&#39; &#124; &#39;REGULATION&#39; &#124; &#39;REN&#39; &#124; &#39;SAND&#39; &#124; &#39;SHIB&#39; &#124; &#39;SNX&#39; &#124; &#39;SOL&#39; &#124; &#39;SPONSORED&#39; &#124; &#39;SUSHI&#39; &#124; &#39;TECHNOLOGY&#39; &#124; &#39;TRADING&#39; &#124; &#39;TRX&#39; &#124; &#39;UMA&#39; &#124; &#39;UNI&#39; &#124; &#39;USDT&#39; &#124; &#39;WALLET&#39; &#124; &#39;XLM&#39; &#124; &#39;XMR&#39; &#124; &#39;XRP&#39; &#124; &#39;XTZ&#39; &#124; &#39;YFI&#39; &#124; &#39;ZEC&#39; &#124; &#39;ZRX&#39; &#124; &#39;&#39;>** | News article categories to return | (optional) defaults to undefined
 **excludeCategories** | **Array<&#39;1INCH&#39; &#124; &#39;AAVE&#39; &#124; &#39;ADA&#39; &#124; &#39;ALGO&#39; &#124; &#39;ALTCOIN&#39; &#124; &#39;ASIA&#39; &#124; &#39;ATOM&#39; &#124; &#39;AVAX&#39; &#124; &#39;AXS&#39; &#124; &#39;BAL&#39; &#124; &#39;BAT&#39; &#124; &#39;BCH&#39; &#124; &#39;BLOCKCHAIN&#39; &#124; &#39;BTC&#39; &#124; &#39;BUSINESS&#39; &#124; &#39;COMMODITY&#39; &#124; &#39;COMP&#39; &#124; &#39;CRV&#39; &#124; &#39;DASH&#39; &#124; &#39;DOGE&#39; &#124; &#39;DOT&#39; &#124; &#39;ENJ&#39; &#124; &#39;ETC&#39; &#124; &#39;ETH&#39; &#124; &#39;EXCHANGE&#39; &#124; &#39;FIAT&#39; &#124; &#39;FIL&#39; &#124; &#39;FTM&#39; &#124; &#39;ICO&#39; &#124; &#39;KNC&#39; &#124; &#39;LINK&#39; &#124; &#39;LRC&#39; &#124; &#39;LTC&#39; &#124; &#39;LUNA&#39; &#124; &#39;LUNC&#39; &#124; &#39;MANA&#39; &#124; &#39;MARKET&#39; &#124; &#39;MATIC&#39; &#124; &#39;MINING&#39; &#124; &#39;MKR&#39; &#124; &#39;REGULATION&#39; &#124; &#39;REN&#39; &#124; &#39;SAND&#39; &#124; &#39;SHIB&#39; &#124; &#39;SNX&#39; &#124; &#39;SOL&#39; &#124; &#39;SPONSORED&#39; &#124; &#39;SUSHI&#39; &#124; &#39;TECHNOLOGY&#39; &#124; &#39;TRADING&#39; &#124; &#39;TRX&#39; &#124; &#39;UMA&#39; &#124; &#39;UNI&#39; &#124; &#39;USDT&#39; &#124; &#39;WALLET&#39; &#124; &#39;XLM&#39; &#124; &#39;XMR&#39; &#124; &#39;XRP&#39; &#124; &#39;XTZ&#39; &#124; &#39;YFI&#39; &#124; &#39;ZEC&#39; &#124; &#39;ZRX&#39; &#124; &#39;&#39;>** | News article categories to exclude from results | (optional) defaults to undefined
 **toTs** | [**number**] | Articles published on or before this timestamp | (optional) defaults to -1


### Return type

**GENERICRESPONSE**

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

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **newsV1CategoryList**
> GENERICRESPONSE newsV1CategoryList()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:any = {};

apiInstance.newsV1CategoryList(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters
This endpoint does not need any parameter.


### Return type

**GENERICRESPONSE**

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

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **newsV1SourceList**
> GENERICRESPONSE newsV1SourceList()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .NewsApi(configuration);

let body:.NewsApiNewsV1SourceListRequest = {
  // 'EN' | 'ES' | 'PT' | '' | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional)
  lang: "EN",
  // 'RSS' | 'API' | 'TWITTER' | '' | RSS, API, TWITTER (optional)
  type: "RSS",
  // 'ACTIVE' | 'INACTIVE' | '' | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE (optional)
  status: "ACTIVE",
};

apiInstance.newsV1SourceList(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | [**&#39;EN&#39; | &#39;ES&#39; | &#39;PT&#39; | &#39;&#39;**]**Array<&#39;EN&#39; &#124; &#39;ES&#39; &#124; &#39;PT&#39; &#124; &#39;&#39;>** | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | (optional) defaults to 'EN'
 **type** | [**&#39;RSS&#39; | &#39;API&#39; | &#39;TWITTER&#39; | &#39;&#39;**]**Array<&#39;RSS&#39; &#124; &#39;API&#39; &#124; &#39;TWITTER&#39; &#124; &#39;&#39;>** | RSS, API, TWITTER | (optional) defaults to 'RSS'
 **status** | [**&#39;ACTIVE&#39; | &#39;INACTIVE&#39; | &#39;&#39;**]**Array<&#39;ACTIVE&#39; &#124; &#39;INACTIVE&#39; &#124; &#39;&#39;>** | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | (optional) defaults to 'ACTIVE'


### Return type

**GENERICRESPONSE**

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

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


