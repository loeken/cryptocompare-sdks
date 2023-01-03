# .SpotApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spotV1HistoricalDays**](SpotApi.md#spotV1HistoricalDays) | **GET** /spot/v1/historical/days | 
[**spotV1HistoricalHours**](SpotApi.md#spotV1HistoricalHours) | **GET** /spot/v1/historical/hours | 
[**spotV1HistoricalMinutes**](SpotApi.md#spotV1HistoricalMinutes) | **GET** /spot/v1/historical/minutes | 
[**spotV1HistoricalOrderbookL2SnapshotMinute**](SpotApi.md#spotV1HistoricalOrderbookL2SnapshotMinute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
[**spotV1HistoricalTrades**](SpotApi.md#spotV1HistoricalTrades) | **GET** /spot/v1/historical/trades | 
[**spotV1HistoricalTradesHour**](SpotApi.md#spotV1HistoricalTradesHour) | **GET** /spot/v1/historical/trades/hour | 
[**spotV1LatestInstrumentMetadata**](SpotApi.md#spotV1LatestInstrumentMetadata) | **GET** /spot/v1/latest/instrument/metadata | 
[**spotV1LatestTick**](SpotApi.md#spotV1LatestTick) | **GET** /spot/v1/latest/tick | 
[**spotV1Markets**](SpotApi.md#spotV1Markets) | **GET** /spot/v1/markets | 
[**spotV1MarketsInstruments**](SpotApi.md#spotV1MarketsInstruments) | **GET** /spot/v1/markets/instruments | 
[**spotV1MarketsInstrumentsUnmapped**](SpotApi.md#spotV1MarketsInstrumentsUnmapped) | **GET** /spot/v1/markets/instruments/unmapped | 


# **spotV1HistoricalDays**
> SPOTINSTRUMENTHISTODATARESPONSE spotV1HistoricalDays()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .SpotApi(configuration);

let body:.SpotApiSpotV1HistoricalDaysRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // Array<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional)
  groups: [],
  // number | The number of data points to return (optional)
  limit: 30,
  // number | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
  toTs: 1,
  // number | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional)
  aggregate: 1,
  // boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional)
  fill: true,
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
  // 'JSON' | 'CSV' | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)
  responseFormat: "JSON",
};

apiInstance.spotV1HistoricalDays(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | (optional) defaults to undefined
 **limit** | [**number**] | The number of data points to return | (optional) defaults to 30
 **toTs** | [**number**] | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | (optional) defaults to undefined
 **aggregate** | [**number**] | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | (optional) defaults to 1
 **fill** | [**boolean**] | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'


### Return type

**SPOTINSTRUMENTHISTODATARESPONSE**

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

# **spotV1HistoricalHours**
> SPOTINSTRUMENTHISTODATARESPONSE spotV1HistoricalHours()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .SpotApi(configuration);

let body:.SpotApiSpotV1HistoricalHoursRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // Array<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional)
  groups: [],
  // number | The number of data points to return (optional)
  limit: 30,
  // number | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
  toTs: 1,
  // number | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional)
  aggregate: 1,
  // boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional)
  fill: true,
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
  // 'JSON' | 'CSV' | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)
  responseFormat: "JSON",
};

apiInstance.spotV1HistoricalHours(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | (optional) defaults to undefined
 **limit** | [**number**] | The number of data points to return | (optional) defaults to 30
 **toTs** | [**number**] | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | (optional) defaults to undefined
 **aggregate** | [**number**] | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | (optional) defaults to 1
 **fill** | [**boolean**] | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'


### Return type

**SPOTINSTRUMENTHISTODATARESPONSE**

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

# **spotV1HistoricalMinutes**
> SPOTINSTRUMENTHISTODATARESPONSE spotV1HistoricalMinutes()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .SpotApi(configuration);

let body:.SpotApiSpotV1HistoricalMinutesRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // Array<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional)
  groups: [],
  // number | The number of data points to return (optional)
  limit: 30,
  // number | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
  toTs: 1,
  // number | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional)
  aggregate: 1,
  // boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional)
  fill: true,
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
  // 'JSON' | 'CSV' | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)
  responseFormat: "JSON",
};

apiInstance.spotV1HistoricalMinutes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | (optional) defaults to undefined
 **limit** | [**number**] | The number of data points to return | (optional) defaults to 30
 **toTs** | [**number**] | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | (optional) defaults to undefined
 **aggregate** | [**number**] | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | (optional) defaults to 1
 **fill** | [**boolean**] | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'


### Return type

**SPOTINSTRUMENTHISTODATARESPONSE**

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

# **spotV1HistoricalOrderbookL2SnapshotMinute**
> GENERICRESPONSE spotV1HistoricalOrderbookL2SnapshotMinute()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .SpotApi(configuration);

let body:.SpotApiSpotV1HistoricalOrderbookL2SnapshotMinuteRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // number | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
  minuteTs: 1,
  // number | The number of top bids and asks to return. (optional)
  depth: 50,
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
  // 'JSON' | 'CSV' | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)
  responseFormat: "JSON",
};

apiInstance.spotV1HistoricalOrderbookL2SnapshotMinute(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **minuteTs** | [**number**] | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. | defaults to undefined
 **depth** | [**number**] | The number of top bids and asks to return. | (optional) defaults to 50
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'


### Return type

**GENERICRESPONSE**

### Authorization

[api_key_header](README.md#api_key_header), [api_key_query](README.md#api_key_query)

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

# **spotV1HistoricalTrades**
> SPOTINSTRUMENTTRADERESPONSE spotV1HistoricalTrades()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .SpotApi(configuration);

let body:.SpotApiSpotV1HistoricalTradesRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // number | Unix timestamp in seconds of the earliest trade in the response. (optional)
  afterTs: 0,
  // number | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional)
  lastCcseq: 0,
  // number | The maximum number of trades to return (optional)
  limit: 100,
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
  // 'JSON' | 'CSV' | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)
  responseFormat: "JSON",
  // boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional)
  return404OnEmptyResponse: false,
};

apiInstance.spotV1HistoricalTrades(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **afterTs** | [**number**] | Unix timestamp in seconds of the earliest trade in the response. | (optional) defaults to undefined
 **lastCcseq** | [**number**] | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | (optional) defaults to 0
 **limit** | [**number**] | The maximum number of trades to return | (optional) defaults to 100
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'
 **return404OnEmptyResponse** | [**boolean**] | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | (optional) defaults to undefined


### Return type

**SPOTINSTRUMENTTRADERESPONSE**

### Authorization

[api_key_header](README.md#api_key_header), [api_key_query](README.md#api_key_query)

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

# **spotV1HistoricalTradesHour**
> SPOTINSTRUMENTTRADERESPONSE spotV1HistoricalTradesHour()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .SpotApi(configuration);

let body:.SpotApiSpotV1HistoricalTradesHourRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // number | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. (optional)
  hourTs: 0,
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
  // 'JSON' | 'CSV' | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)
  responseFormat: "JSON",
  // boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional)
  return404OnEmptyResponse: false,
};

apiInstance.spotV1HistoricalTradesHour(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **hourTs** | [**number**] | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'
 **return404OnEmptyResponse** | [**boolean**] | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | (optional) defaults to undefined


### Return type

**SPOTINSTRUMENTTRADERESPONSE**

### Authorization

[api_key_header](README.md#api_key_header), [api_key_query](README.md#api_key_query)

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

# **spotV1LatestInstrumentMetadata**
> SPOTINSTRUMENTMETADATARESPONSE spotV1LatestInstrumentMetadata()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .SpotApi(configuration);

let body:.SpotApiSpotV1LatestInstrumentMetadataRequest = {
  // string | The exchange to obtain data from
  market: "coinbase",
  // Array<string> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  instruments: ["BTC-USD","ETH-USD"],
  // Array<string> | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional)
  groups: [],
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
};

apiInstance.spotV1LatestInstrumentMetadata(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instruments** | **Array&lt;string&gt;** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'


### Return type

**SPOTINSTRUMENTMETADATARESPONSE**

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

# **spotV1LatestTick**
> SPOTINSTRUMENTMARKETDATARESPONSE spotV1LatestTick()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .SpotApi(configuration);

let body:.SpotApiSpotV1LatestTickRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // Array<string> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  instruments: [
    "instruments_example",
  ],
  // Array<string> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
  groups: [],
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
};

apiInstance.spotV1LatestTick(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instruments** | **Array&lt;string&gt;** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'


### Return type

**SPOTINSTRUMENTMARKETDATARESPONSE**

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

# **spotV1Markets**
> GENERICRESPONSE spotV1Markets()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .SpotApi(configuration);

let body:.SpotApiSpotV1MarketsRequest = {
  // string | The exchange to obtain data from (optional)
  market: "",
};

apiInstance.spotV1Markets(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | (optional) defaults to ''


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

# **spotV1MarketsInstruments**
> GENERICRESPONSE spotV1MarketsInstruments()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .SpotApi(configuration);

let body:.SpotApiSpotV1MarketsInstrumentsRequest = {
  // string | The exchange to obtain data from (optional)
  market: "",
  // string | The mapped instrument to retrieve on a specific market. (optional)
  instrument: "",
  // Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)
  instrumentStatus: ["ACTIVE","IGNORED","RETIRED","EXPIRED"],
};

apiInstance.spotV1MarketsInstruments(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | (optional) defaults to ''
 **instrument** | [**string**] | The mapped instrument to retrieve on a specific market. | (optional) defaults to ''
 **instrumentStatus** | **Array<&#39;ACTIVE&#39; &#124; &#39;IGNORED&#39; &#124; &#39;RETIRED&#39; &#124; &#39;EXPIRED&#39;>** | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | (optional) defaults to undefined


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

# **spotV1MarketsInstrumentsUnmapped**
> GENERICRESPONSE spotV1MarketsInstrumentsUnmapped()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .SpotApi(configuration);

let body:.SpotApiSpotV1MarketsInstrumentsUnmappedRequest = {
  // string | The exchange to obtain data from (optional)
  market: "",
  // string | The unmapped instrument to retrieve on a specific market. (optional)
  instrument: "",
  // Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)
  instrumentStatus: ["ACTIVE","IGNORED","RETIRED","EXPIRED"],
};

apiInstance.spotV1MarketsInstrumentsUnmapped(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | (optional) defaults to ''
 **instrument** | [**string**] | The unmapped instrument to retrieve on a specific market. | (optional) defaults to ''
 **instrumentStatus** | **Array<&#39;ACTIVE&#39; &#124; &#39;IGNORED&#39; &#124; &#39;RETIRED&#39; &#124; &#39;EXPIRED&#39;>** | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | (optional) defaults to undefined


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


