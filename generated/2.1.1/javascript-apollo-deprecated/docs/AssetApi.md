# CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.AssetApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assetV1DataByAddress**](AssetApi.md#assetV1DataByAddress) | **GET** /asset/v1/data/by/address | 
[**assetV1DataById**](AssetApi.md#assetV1DataById) | **GET** /asset/v1/data/by/id | 
[**assetV1DataBySymbol**](AssetApi.md#assetV1DataBySymbol) | **GET** /asset/v1/data/by/symbol | 
[**assetV1TopList**](AssetApi.md#assetV1TopList) | **GET** /asset/v1/top/list | 



## assetV1DataByAddress

> GENERICRESPONSE assetV1DataByAddress(address, chainSymbol, opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.AssetApi();
let address = "address_example"; // String | 
let chainSymbol = "chainSymbol_example"; // String | 
let opts = {
  'groups': "''" // String | 
};
apiInstance.assetV1DataByAddress(address, chainSymbol, opts, (error, data, response) => {
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
 **address** | **String**|  | 
 **chainSymbol** | **String**|  | 
 **groups** | **String**|  | [optional] [default to &#39;&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## assetV1DataById

> GENERICRESPONSE assetV1DataById(assetId, opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.AssetApi();
let assetId = 56; // Number | The asset id you are interested in
let opts = {
  'groups': "''" // String | 
};
apiInstance.assetV1DataById(assetId, opts, (error, data, response) => {
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
 **assetId** | **Number**| The asset id you are interested in | 
 **groups** | **String**|  | [optional] [default to &#39;&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## assetV1DataBySymbol

> GENERICRESPONSE assetV1DataBySymbol(assetSymbol, opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.AssetApi();
let assetSymbol = "assetSymbol_example"; // String | The asset symbol you are interested in
let opts = {
  'groups': "''" // String | 
};
apiInstance.assetV1DataBySymbol(assetSymbol, opts, (error, data, response) => {
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
 **assetSymbol** | **String**| The asset symbol you are interested in | 
 **groups** | **String**|  | [optional] [default to &#39;&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## assetV1TopList

> GENERICRESPONSE assetV1TopList(opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.AssetApi();
let opts = {
  'page': 1, // Number | The page number for the request to get {page_size} coins at the time.
  'pageSize': 100, // Number | The number of items returned per page
  'assetType': "''", // String | The asset class/type
  'sortBy': "'CREATED_ON'", // String | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
  'sortDirection': "'DESC'", // String | Sort direction ( DESC,ASC )
  'groups': "''" // String | 
};
apiInstance.assetV1TopList(opts, (error, data, response) => {
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
 **page** | **Number**| The page number for the request to get {page_size} coins at the time. | [optional] [default to 1]
 **pageSize** | **Number**| The number of items returned per page | [optional] [default to 100]
 **assetType** | **String**| The asset class/type | [optional] [default to &#39;&#39;]
 **sortBy** | **String**| Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to &#39;CREATED_ON&#39;]
 **sortDirection** | **String**| Sort direction ( DESC,ASC ) | [optional] [default to &#39;DESC&#39;]
 **groups** | **String**|  | [optional] [default to &#39;&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

