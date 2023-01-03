# CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.OverviewApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**overviewV1HistoricalMarketcapAllAssetsDays**](OverviewApi.md#overviewV1HistoricalMarketcapAllAssetsDays) | **GET** /overview/v1/historical/marketcap/all/assets/days | 
[**overviewV1HistoricalMarketcapAllAssetsHours**](OverviewApi.md#overviewV1HistoricalMarketcapAllAssetsHours) | **GET** /overview/v1/historical/marketcap/all/assets/hours | 
[**overviewV1HistoricalMarketcapFtwAssetsDays**](OverviewApi.md#overviewV1HistoricalMarketcapFtwAssetsDays) | **GET** /overview/v1/historical/marketcap/ftw/assets/days | 
[**overviewV1HistoricalMarketcapFtwAssetsHours**](OverviewApi.md#overviewV1HistoricalMarketcapFtwAssetsHours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours | 
[**overviewV1LatestMarketcapAllTick**](OverviewApi.md#overviewV1LatestMarketcapAllTick) | **GET** /overview/v1/latest/marketcap/all/tick | 
[**overviewV1LatestMarketcapFtwTick**](OverviewApi.md#overviewV1LatestMarketcapFtwTick) | **GET** /overview/v1/latest/marketcap/ftw/tick | 



## overviewV1HistoricalMarketcapAllAssetsDays

> GENERICRESPONSE overviewV1HistoricalMarketcapAllAssetsDays(opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.OverviewApi();
let opts = {
  'groups': ["null"], // [String] | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
  'limit': 30, // Number | The number of data points to return
  'toTs': 56, // Number | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  'aggregate': 1, // Number | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  'fill': true, // Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  'responseFormat': "'JSON'" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
};
apiInstance.overviewV1HistoricalMarketcapAllAssetsDays(opts, (error, data, response) => {
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
 **groups** | [**[String]**](String.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **Number**| The number of data points to return | [optional] [default to 30]
 **toTs** | **Number**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Number**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## overviewV1HistoricalMarketcapAllAssetsHours

> GENERICRESPONSE overviewV1HistoricalMarketcapAllAssetsHours(opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.OverviewApi();
let opts = {
  'groups': ["null"], // [String] | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
  'limit': 30, // Number | The number of data points to return
  'toTs': 56, // Number | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  'aggregate': 1, // Number | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  'fill': true, // Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  'responseFormat': "'JSON'" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
};
apiInstance.overviewV1HistoricalMarketcapAllAssetsHours(opts, (error, data, response) => {
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
 **groups** | [**[String]**](String.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **Number**| The number of data points to return | [optional] [default to 30]
 **toTs** | **Number**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Number**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## overviewV1HistoricalMarketcapFtwAssetsDays

> GENERICRESPONSE overviewV1HistoricalMarketcapFtwAssetsDays(opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.OverviewApi();
let opts = {
  'groups': ["null"], // [String] | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
  'limit': 30, // Number | The number of data points to return
  'toTs': 56, // Number | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  'aggregate': 1, // Number | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  'fill': true, // Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  'responseFormat': "'JSON'" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
};
apiInstance.overviewV1HistoricalMarketcapFtwAssetsDays(opts, (error, data, response) => {
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
 **groups** | [**[String]**](String.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **Number**| The number of data points to return | [optional] [default to 30]
 **toTs** | **Number**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Number**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## overviewV1HistoricalMarketcapFtwAssetsHours

> GENERICRESPONSE overviewV1HistoricalMarketcapFtwAssetsHours(opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.OverviewApi();
let opts = {
  'groups': ["null"], // [String] | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
  'limit': 30, // Number | The number of data points to return
  'toTs': 56, // Number | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  'aggregate': 1, // Number | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  'fill': true, // Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  'responseFormat': "'JSON'" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
};
apiInstance.overviewV1HistoricalMarketcapFtwAssetsHours(opts, (error, data, response) => {
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
 **groups** | [**[String]**](String.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **Number**| The number of data points to return | [optional] [default to 30]
 **toTs** | **Number**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Number**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## overviewV1LatestMarketcapAllTick

> GENERICRESPONSE overviewV1LatestMarketcapAllTick(opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.OverviewApi();
let opts = {
  'groups': ["null"] // [String] | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
};
apiInstance.overviewV1LatestMarketcapAllTick(opts, (error, data, response) => {
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
 **groups** | [**[String]**](String.md)| When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## overviewV1LatestMarketcapFtwTick

> GENERICRESPONSE overviewV1LatestMarketcapFtwTick(opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.OverviewApi();
let opts = {
  'groups': ["null"] // [String] | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
};
apiInstance.overviewV1LatestMarketcapFtwTick(opts, (error, data, response) => {
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
 **groups** | [**[String]**](String.md)| When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

