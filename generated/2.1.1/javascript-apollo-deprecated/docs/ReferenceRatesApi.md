# CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ReferenceRatesApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**indexCcV1HistoricalDays**](ReferenceRatesApi.md#indexCcV1HistoricalDays) | **GET** /index/cc/v1/historical/days | 
[**indexCcV1HistoricalHours**](ReferenceRatesApi.md#indexCcV1HistoricalHours) | **GET** /index/cc/v1/historical/hours | 
[**indexCcV1HistoricalMessages**](ReferenceRatesApi.md#indexCcV1HistoricalMessages) | **GET** /index/cc/v1/historical/messages | 
[**indexCcV1HistoricalMessagesHour**](ReferenceRatesApi.md#indexCcV1HistoricalMessagesHour) | **GET** /index/cc/v1/historical/messages/hour | 
[**indexCcV1HistoricalMinutes**](ReferenceRatesApi.md#indexCcV1HistoricalMinutes) | **GET** /index/cc/v1/historical/minutes | 
[**indexCcV1LatestInstrumentMetadata**](ReferenceRatesApi.md#indexCcV1LatestInstrumentMetadata) | **GET** /index/cc/v1/latest/instrument/metadata | 
[**indexCcV1LatestTick**](ReferenceRatesApi.md#indexCcV1LatestTick) | **GET** /index/cc/v1/latest/tick | 
[**indexCcV1Markets**](ReferenceRatesApi.md#indexCcV1Markets) | **GET** /index/cc/v1/markets | 
[**indexCcV1MarketsInstruments**](ReferenceRatesApi.md#indexCcV1MarketsInstruments) | **GET** /index/cc/v1/markets/instruments | 
[**indexCcV1MarketsInstrumentsUnmapped**](ReferenceRatesApi.md#indexCcV1MarketsInstrumentsUnmapped) | **GET** /index/cc/v1/markets/instruments/unmapped | 



## indexCcV1HistoricalDays

> GENERICRESPONSE indexCcV1HistoricalDays(market, instrument, opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ReferenceRatesApi();
let market = "market_example"; // String | The exchange to obtain data from
let instrument = "instrument_example"; // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let opts = {
  'groups': ["null"], // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
  'limit': 30, // Number | The number of data points to return
  'toTs': 56, // Number | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  'aggregate': 1, // Number | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  'fill': true, // Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  'mappingPriority': "'CHECK_MAPPED_FIRST'", // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  'responseFormat': "'JSON'" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
};
apiInstance.indexCcV1HistoricalDays(market, instrument, opts, (error, data, response) => {
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
 **market** | **String**| The exchange to obtain data from | 
 **instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**[String]**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **limit** | **Number**| The number of data points to return | [optional] [default to 30]
 **toTs** | **Number**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Number**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indexCcV1HistoricalHours

> GENERICRESPONSE indexCcV1HistoricalHours(market, instrument, opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ReferenceRatesApi();
let market = "market_example"; // String | The exchange to obtain data from
let instrument = "instrument_example"; // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let opts = {
  'groups': ["null"], // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
  'limit': 30, // Number | The number of data points to return
  'toTs': 56, // Number | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  'aggregate': 1, // Number | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  'fill': true, // Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  'mappingPriority': "'CHECK_MAPPED_FIRST'", // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  'responseFormat': "'JSON'" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
};
apiInstance.indexCcV1HistoricalHours(market, instrument, opts, (error, data, response) => {
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
 **market** | **String**| The exchange to obtain data from | 
 **instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**[String]**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **limit** | **Number**| The number of data points to return | [optional] [default to 30]
 **toTs** | **Number**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Number**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indexCcV1HistoricalMessages

> GENERICRESPONSE indexCcV1HistoricalMessages(market, instrument, opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';
let defaultClient = CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ApiClient.instance;
// Configure API key authorization: api_key_header
let api_key_header = defaultClient.authentications['api_key_header'];
api_key_header.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key_header.apiKeyPrefix = 'Token';
// Configure API key authorization: api_key_query
let api_key_query = defaultClient.authentications['api_key_query'];
api_key_query.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key_query.apiKeyPrefix = 'Token';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ReferenceRatesApi();
let market = "market_example"; // String | The exchange to obtain data from
let instrument = "instrument_example"; // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let opts = {
  'afterTs': 56, // Number | Unix timestamp in seconds of the earliest index message in the response
  'lastCcseq': 0, // Number | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
  'mappingPriority': "'CHECK_MAPPED_FIRST'", // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  'limit': 100, // Number | The maximum number of index messages to return
  'responseFormat': "'JSON'", // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
  'return404OnEmptyResponse': false // Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
};
apiInstance.indexCcV1HistoricalMessages(market, instrument, opts, (error, data, response) => {
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
 **market** | **String**| The exchange to obtain data from | 
 **instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **afterTs** | **Number**| Unix timestamp in seconds of the earliest index message in the response | [optional] 
 **lastCcseq** | **Number**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **limit** | **Number**| The maximum number of index messages to return | [optional] [default to 100]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
 **return404OnEmptyResponse** | **Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indexCcV1HistoricalMessagesHour

> GENERICRESPONSE indexCcV1HistoricalMessagesHour(market, instrument, opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';
let defaultClient = CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ApiClient.instance;
// Configure API key authorization: api_key_header
let api_key_header = defaultClient.authentications['api_key_header'];
api_key_header.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key_header.apiKeyPrefix = 'Token';
// Configure API key authorization: api_key_query
let api_key_query = defaultClient.authentications['api_key_query'];
api_key_query.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key_query.apiKeyPrefix = 'Token';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ReferenceRatesApi();
let market = "market_example"; // String | The exchange to obtain data from
let instrument = "instrument_example"; // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let opts = {
  'hourTs': 56, // Number | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
  'mappingPriority': "'CHECK_MAPPED_FIRST'", // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  'responseFormat': "'JSON'", // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
  'return404OnEmptyResponse': false // Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
};
apiInstance.indexCcV1HistoricalMessagesHour(market, instrument, opts, (error, data, response) => {
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
 **market** | **String**| The exchange to obtain data from | 
 **instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hourTs** | **Number**| Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | [optional] 
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
 **return404OnEmptyResponse** | **Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indexCcV1HistoricalMinutes

> GENERICRESPONSE indexCcV1HistoricalMinutes(market, instrument, opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ReferenceRatesApi();
let market = "market_example"; // String | The exchange to obtain data from
let instrument = "instrument_example"; // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let opts = {
  'groups': ["null"], // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
  'limit': 30, // Number | The number of data points to return
  'toTs': 56, // Number | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  'aggregate': 1, // Number | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  'fill': true, // Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  'mappingPriority': "'CHECK_MAPPED_FIRST'", // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  'responseFormat': "'JSON'" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
};
apiInstance.indexCcV1HistoricalMinutes(market, instrument, opts, (error, data, response) => {
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
 **market** | **String**| The exchange to obtain data from | 
 **instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**[String]**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **limit** | **Number**| The number of data points to return | [optional] [default to 30]
 **toTs** | **Number**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Number**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indexCcV1LatestInstrumentMetadata

> GENERICRESPONSE indexCcV1LatestInstrumentMetadata(market, instruments, opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ReferenceRatesApi();
let market = "market_example"; // String | The exchange to obtain data from
let instruments = ["null"]; // [String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
let opts = {
  'groups': ["null"], // [String] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
  'mappingPriority': "'CHECK_MAPPED_FIRST'" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
};
apiInstance.indexCcV1LatestInstrumentMetadata(market, instruments, opts, (error, data, response) => {
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
 **market** | **String**| The exchange to obtain data from | 
 **instruments** | [**[String]**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**[String]**](String.md)| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] 
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indexCcV1LatestTick

> GENERICRESPONSE indexCcV1LatestTick(market, instruments, opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ReferenceRatesApi();
let market = "market_example"; // String | The exchange to obtain data from
let instruments = ["null"]; // [String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
let opts = {
  'groups': ["null"], // [String] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
  'mappingPriority': "'CHECK_MAPPED_FIRST'" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
};
apiInstance.indexCcV1LatestTick(market, instruments, opts, (error, data, response) => {
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
 **market** | **String**| The exchange to obtain data from | 
 **instruments** | [**[String]**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**[String]**](String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indexCcV1Markets

> GENERICRESPONSE indexCcV1Markets(opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ReferenceRatesApi();
let opts = {
  'market': "''" // String | The exchange to obtain data from
};
apiInstance.indexCcV1Markets(opts, (error, data, response) => {
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
 **market** | **String**| The exchange to obtain data from | [optional] [default to &#39;&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indexCcV1MarketsInstruments

> GENERICRESPONSE indexCcV1MarketsInstruments(opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ReferenceRatesApi();
let opts = {
  'market': "''", // String | The exchange to obtain data from
  'instrument': "''", // String | The mapped instrument to retrieve on a specific market.
  'instrumentStatus': ["null"] // [String] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
};
apiInstance.indexCcV1MarketsInstruments(opts, (error, data, response) => {
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
 **market** | **String**| The exchange to obtain data from | [optional] [default to &#39;&#39;]
 **instrument** | **String**| The mapped instrument to retrieve on a specific market. | [optional] [default to &#39;&#39;]
 **instrumentStatus** | [**[String]**](String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## indexCcV1MarketsInstrumentsUnmapped

> GENERICRESPONSE indexCcV1MarketsInstrumentsUnmapped(opts)



### Example

```javascript
import CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry from 'crypto_compare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry';

let apiInstance = new CryptoCompareMarketIndexReferenceDataNewsAndOverviewMetrcisApiForTheCryptocurrencyIndustry.ReferenceRatesApi();
let opts = {
  'market': "''", // String | The exchange to obtain data from
  'instrument': "''", // String | The unmapped instrument to retrieve on a specific market.
  'instrumentStatus': ["null"] // [String] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
};
apiInstance.indexCcV1MarketsInstrumentsUnmapped(opts, (error, data, response) => {
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
 **market** | **String**| The exchange to obtain data from | [optional] [default to &#39;&#39;]
 **instrument** | **String**| The unmapped instrument to retrieve on a specific market. | [optional] [default to &#39;&#39;]
 **instrumentStatus** | [**[String]**](String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

