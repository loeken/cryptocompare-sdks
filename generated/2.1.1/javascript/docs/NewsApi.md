# CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**newsV1ArticleList**](NewsApi.md#newsV1ArticleList) | **GET** /news/v1/article/list | 
[**newsV1CategoryList**](NewsApi.md#newsV1CategoryList) | **GET** /news/v1/category/list | 
[**newsV1SourceList**](NewsApi.md#newsV1SourceList) | **GET** /news/v1/source/list | 



## newsV1ArticleList

> GENERICRESPONSE newsV1ArticleList(opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.NewsApi();
let opts = {
  'sourceIds': ["null"], // [String] | Get articles from specific sources; either by their ids or keys
  'lang': "'EN'", // String | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
  'categories': ["null"], // [String] | News article categories to return
  'excludeCategories': ["null"], // [String] | News article categories to exclude from results
  'toTs': -1 // Number | Articles published on or before this timestamp
};
apiInstance.newsV1ArticleList(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceIds** | [**[String]**](String.md)| Get articles from specific sources; either by their ids or keys | [optional] 
 **lang** | **String**| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to &#39;EN&#39;]
 **categories** | [**[String]**](String.md)| News article categories to return | [optional] 
 **excludeCategories** | [**[String]**](String.md)| News article categories to exclude from results | [optional] 
 **toTs** | **Number**| Articles published on or before this timestamp | [optional] [default to -1]

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

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.NewsApi();
apiInstance.newsV1CategoryList((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

> GENERICRESPONSE newsV1SourceList(opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.NewsApi();
let opts = {
  'lang': "'EN'", // String | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
  'type': "'RSS'", // String | RSS, API, TWITTER
  'status': "'ACTIVE'" // String | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
};
apiInstance.newsV1SourceList(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | **String**| The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to &#39;EN&#39;]
 **type** | **String**| RSS, API, TWITTER | [optional] [default to &#39;RSS&#39;]
 **status** | **String**| The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to &#39;ACTIVE&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

