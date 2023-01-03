# .FuturesApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**futuresV1HistoricalDays**](FuturesApi.md#futuresV1HistoricalDays) | **GET** /futures/v1/historical/days | 
[**futuresV1HistoricalFundingRateDays**](FuturesApi.md#futuresV1HistoricalFundingRateDays) | **GET** /futures/v1/historical/funding-rate/days | 
[**futuresV1HistoricalFundingRateHours**](FuturesApi.md#futuresV1HistoricalFundingRateHours) | **GET** /futures/v1/historical/funding-rate/hours | 
[**futuresV1HistoricalFundingRateMessages**](FuturesApi.md#futuresV1HistoricalFundingRateMessages) | **GET** /futures/v1/historical/funding-rate-messages | 
[**futuresV1HistoricalFundingRateMessagesHour**](FuturesApi.md#futuresV1HistoricalFundingRateMessagesHour) | **GET** /futures/v1/historical/funding-rate-messages/hour | 
[**futuresV1HistoricalFundingRateMinutes**](FuturesApi.md#futuresV1HistoricalFundingRateMinutes) | **GET** /futures/v1/historical/funding-rate/minutes | 
[**futuresV1HistoricalHours**](FuturesApi.md#futuresV1HistoricalHours) | **GET** /futures/v1/historical/hours | 
[**futuresV1HistoricalMinutes**](FuturesApi.md#futuresV1HistoricalMinutes) | **GET** /futures/v1/historical/minutes | 
[**futuresV1HistoricalOpenInterestDays**](FuturesApi.md#futuresV1HistoricalOpenInterestDays) | **GET** /futures/v1/historical/open-interest/days | 
[**futuresV1HistoricalOpenInterestHours**](FuturesApi.md#futuresV1HistoricalOpenInterestHours) | **GET** /futures/v1/historical/open-interest/hours | 
[**futuresV1HistoricalOpenInterestMessages**](FuturesApi.md#futuresV1HistoricalOpenInterestMessages) | **GET** /futures/v1/historical/open-interest-messages | 
[**futuresV1HistoricalOpenInterestMessagesHour**](FuturesApi.md#futuresV1HistoricalOpenInterestMessagesHour) | **GET** /futures/v1/historical/open-interest-messages/hour | 
[**futuresV1HistoricalOpenInterestMinutes**](FuturesApi.md#futuresV1HistoricalOpenInterestMinutes) | **GET** /futures/v1/historical/open-interest/minutes | 
[**futuresV1HistoricalTrades**](FuturesApi.md#futuresV1HistoricalTrades) | **GET** /futures/v1/historical/trades | 
[**futuresV1HistoricalTradesHour**](FuturesApi.md#futuresV1HistoricalTradesHour) | **GET** /futures/v1/historical/trades/hour | 
[**futuresV1LatestFundingRateTick**](FuturesApi.md#futuresV1LatestFundingRateTick) | **GET** /futures/v1/latest/funding-rate/tick | 
[**futuresV1LatestInstrumentMetadata**](FuturesApi.md#futuresV1LatestInstrumentMetadata) | **GET** /futures/v1/latest/instrument/metadata | 
[**futuresV1LatestOpenInterestTick**](FuturesApi.md#futuresV1LatestOpenInterestTick) | **GET** /futures/v1/latest/open-interest/tick | 
[**futuresV1LatestTick**](FuturesApi.md#futuresV1LatestTick) | **GET** /futures/v1/latest/tick | 
[**futuresV1Markets**](FuturesApi.md#futuresV1Markets) | **GET** /futures/v1/markets | 
[**futuresV1MarketsInstruments**](FuturesApi.md#futuresV1MarketsInstruments) | **GET** /futures/v1/markets/instruments | 
[**futuresV1MarketsInstrumentsUnmapped**](FuturesApi.md#futuresV1MarketsInstrumentsUnmapped) | **GET** /futures/v1/markets/instruments/unmapped | 
[**indexV1HistoricalDays**](FuturesApi.md#indexV1HistoricalDays) | **GET** /index/v1/historical/days | 
[**indexV1HistoricalHours**](FuturesApi.md#indexV1HistoricalHours) | **GET** /index/v1/historical/hours | 
[**indexV1HistoricalMessages**](FuturesApi.md#indexV1HistoricalMessages) | **GET** /index/v1/historical/messages | 
[**indexV1HistoricalMessagesHour**](FuturesApi.md#indexV1HistoricalMessagesHour) | **GET** /index/v1/historical/messages/hour | 
[**indexV1HistoricalMinutes**](FuturesApi.md#indexV1HistoricalMinutes) | **GET** /index/v1/historical/minutes | 
[**indexV1LatestInstrumentMetadata**](FuturesApi.md#indexV1LatestInstrumentMetadata) | **GET** /index/v1/latest/instrument/metadata | 
[**indexV1LatestTick**](FuturesApi.md#indexV1LatestTick) | **GET** /index/v1/latest/tick | 
[**indexV1Markets**](FuturesApi.md#indexV1Markets) | **GET** /index/v1/markets | 
[**indexV1MarketsInstruments**](FuturesApi.md#indexV1MarketsInstruments) | **GET** /index/v1/markets/instruments | 
[**indexV1MarketsInstrumentsUnmapped**](FuturesApi.md#indexV1MarketsInstrumentsUnmapped) | **GET** /index/v1/markets/instruments/unmapped | 


# **futuresV1HistoricalDays**
> GENERICRESPONSE futuresV1HistoricalDays()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalDaysRequest = {
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

apiInstance.futuresV1HistoricalDays(body).then((data:any) => {
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

# **futuresV1HistoricalFundingRateDays**
> GENERICRESPONSE futuresV1HistoricalFundingRateDays()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalFundingRateDaysRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // Array<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional)
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

apiInstance.futuresV1HistoricalFundingRateDays(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | (optional) defaults to undefined
 **limit** | [**number**] | The number of data points to return | (optional) defaults to 30
 **toTs** | [**number**] | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | (optional) defaults to undefined
 **aggregate** | [**number**] | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | (optional) defaults to 1
 **fill** | [**boolean**] | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'


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

# **futuresV1HistoricalFundingRateHours**
> GENERICRESPONSE futuresV1HistoricalFundingRateHours()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalFundingRateHoursRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // Array<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional)
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

apiInstance.futuresV1HistoricalFundingRateHours(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | (optional) defaults to undefined
 **limit** | [**number**] | The number of data points to return | (optional) defaults to 30
 **toTs** | [**number**] | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | (optional) defaults to undefined
 **aggregate** | [**number**] | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | (optional) defaults to 1
 **fill** | [**boolean**] | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'


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

# **futuresV1HistoricalFundingRateMessages**
> GENERICRESPONSE futuresV1HistoricalFundingRateMessages()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalFundingRateMessagesRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // number | Unix timestamp in seconds of the earliest funding rate message in the response (optional)
  afterTs: 0,
  // number | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional)
  lastCcseq: 0,
  // number | The maximum number of funding rate messages to return (optional)
  limit: 100,
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
  // 'JSON' | 'CSV' | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)
  responseFormat: "JSON",
  // boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional)
  return404OnEmptyResponse: false,
};

apiInstance.futuresV1HistoricalFundingRateMessages(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **afterTs** | [**number**] | Unix timestamp in seconds of the earliest funding rate message in the response | (optional) defaults to undefined
 **lastCcseq** | [**number**] | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | (optional) defaults to 0
 **limit** | [**number**] | The maximum number of funding rate messages to return | (optional) defaults to 100
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'
 **return404OnEmptyResponse** | [**boolean**] | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | (optional) defaults to undefined


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

# **futuresV1HistoricalFundingRateMessagesHour**
> GENERICRESPONSE futuresV1HistoricalFundingRateMessagesHour()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalFundingRateMessagesHourRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // number | Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. (optional)
  hourTs: 0,
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
  // 'JSON' | 'CSV' | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)
  responseFormat: "JSON",
  // boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional)
  return404OnEmptyResponse: false,
};

apiInstance.futuresV1HistoricalFundingRateMessagesHour(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **hourTs** | [**number**] | Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'
 **return404OnEmptyResponse** | [**boolean**] | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | (optional) defaults to undefined


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

# **futuresV1HistoricalFundingRateMinutes**
> GENERICRESPONSE futuresV1HistoricalFundingRateMinutes()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalFundingRateMinutesRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // Array<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional)
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

apiInstance.futuresV1HistoricalFundingRateMinutes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | (optional) defaults to undefined
 **limit** | [**number**] | The number of data points to return | (optional) defaults to 30
 **toTs** | [**number**] | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | (optional) defaults to undefined
 **aggregate** | [**number**] | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | (optional) defaults to 1
 **fill** | [**boolean**] | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'


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

# **futuresV1HistoricalHours**
> GENERICRESPONSE futuresV1HistoricalHours()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalHoursRequest = {
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

apiInstance.futuresV1HistoricalHours(body).then((data:any) => {
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

# **futuresV1HistoricalMinutes**
> GENERICRESPONSE futuresV1HistoricalMinutes()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalMinutesRequest = {
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

apiInstance.futuresV1HistoricalMinutes(body).then((data:any) => {
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

# **futuresV1HistoricalOpenInterestDays**
> GENERICRESPONSE futuresV1HistoricalOpenInterestDays()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalOpenInterestDaysRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // Array<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional)
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

apiInstance.futuresV1HistoricalOpenInterestDays(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | (optional) defaults to undefined
 **limit** | [**number**] | The number of data points to return | (optional) defaults to 30
 **toTs** | [**number**] | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | (optional) defaults to undefined
 **aggregate** | [**number**] | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | (optional) defaults to 1
 **fill** | [**boolean**] | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'


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

# **futuresV1HistoricalOpenInterestHours**
> GENERICRESPONSE futuresV1HistoricalOpenInterestHours()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalOpenInterestHoursRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // Array<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional)
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

apiInstance.futuresV1HistoricalOpenInterestHours(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | (optional) defaults to undefined
 **limit** | [**number**] | The number of data points to return | (optional) defaults to 30
 **toTs** | [**number**] | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | (optional) defaults to undefined
 **aggregate** | [**number**] | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | (optional) defaults to 1
 **fill** | [**boolean**] | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'


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

# **futuresV1HistoricalOpenInterestMessages**
> GENERICRESPONSE futuresV1HistoricalOpenInterestMessages()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalOpenInterestMessagesRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // number | Unix timestamp in seconds of the earliest open interest message in the response (optional)
  afterTs: 0,
  // number | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional)
  lastCcseq: 0,
  // number | The maximum number of open interest messages to return (optional)
  limit: 100,
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
  // 'JSON' | 'CSV' | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)
  responseFormat: "JSON",
  // boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional)
  return404OnEmptyResponse: false,
};

apiInstance.futuresV1HistoricalOpenInterestMessages(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **afterTs** | [**number**] | Unix timestamp in seconds of the earliest open interest message in the response | (optional) defaults to undefined
 **lastCcseq** | [**number**] | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | (optional) defaults to 0
 **limit** | [**number**] | The maximum number of open interest messages to return | (optional) defaults to 100
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'
 **return404OnEmptyResponse** | [**boolean**] | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | (optional) defaults to undefined


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

# **futuresV1HistoricalOpenInterestMessagesHour**
> GENERICRESPONSE futuresV1HistoricalOpenInterestMessagesHour()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalOpenInterestMessagesHourRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // number | Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. (optional)
  hourTs: 0,
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
  // 'JSON' | 'CSV' | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)
  responseFormat: "JSON",
  // boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional)
  return404OnEmptyResponse: false,
};

apiInstance.futuresV1HistoricalOpenInterestMessagesHour(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **hourTs** | [**number**] | Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'
 **return404OnEmptyResponse** | [**boolean**] | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | (optional) defaults to undefined


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

# **futuresV1HistoricalOpenInterestMinutes**
> GENERICRESPONSE futuresV1HistoricalOpenInterestMinutes()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalOpenInterestMinutesRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // Array<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional)
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

apiInstance.futuresV1HistoricalOpenInterestMinutes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | (optional) defaults to undefined
 **limit** | [**number**] | The number of data points to return | (optional) defaults to 30
 **toTs** | [**number**] | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | (optional) defaults to undefined
 **aggregate** | [**number**] | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | (optional) defaults to 1
 **fill** | [**boolean**] | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'


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

# **futuresV1HistoricalTrades**
> GENERICRESPONSE futuresV1HistoricalTrades()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalTradesRequest = {
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

apiInstance.futuresV1HistoricalTrades(body).then((data:any) => {
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

# **futuresV1HistoricalTradesHour**
> GENERICRESPONSE futuresV1HistoricalTradesHour()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1HistoricalTradesHourRequest = {
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

apiInstance.futuresV1HistoricalTradesHour(body).then((data:any) => {
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

# **futuresV1LatestFundingRateTick**
> GENERICRESPONSE futuresV1LatestFundingRateTick()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1LatestFundingRateTickRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // Array<string> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  instruments: [
    "instruments_example",
  ],
  // Array<string> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
  groups: [],
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
};

apiInstance.futuresV1LatestFundingRateTick(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instruments** | **Array&lt;string&gt;** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'


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

# **futuresV1LatestInstrumentMetadata**
> GENERICRESPONSE futuresV1LatestInstrumentMetadata()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1LatestInstrumentMetadataRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // Array<string> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  instruments: [
    "instruments_example",
  ],
  // Array<string> | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional)
  groups: [],
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
};

apiInstance.futuresV1LatestInstrumentMetadata(body).then((data:any) => {
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

# **futuresV1LatestOpenInterestTick**
> GENERICRESPONSE futuresV1LatestOpenInterestTick()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1LatestOpenInterestTickRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // Array<string> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  instruments: [
    "instruments_example",
  ],
  // Array<string> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
  groups: [],
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
};

apiInstance.futuresV1LatestOpenInterestTick(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instruments** | **Array&lt;string&gt;** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'


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

# **futuresV1LatestTick**
> GENERICRESPONSE futuresV1LatestTick()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1LatestTickRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // Array<string> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  instruments: [
    "instruments_example",
  ],
  // Array<string> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
  groups: [],
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
};

apiInstance.futuresV1LatestTick(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instruments** | **Array&lt;string&gt;** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'


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

# **futuresV1Markets**
> GENERICRESPONSE futuresV1Markets()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1MarketsRequest = {
  // string | The exchange to obtain data from (optional)
  market: "",
};

apiInstance.futuresV1Markets(body).then((data:any) => {
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

# **futuresV1MarketsInstruments**
> GENERICRESPONSE futuresV1MarketsInstruments()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1MarketsInstrumentsRequest = {
  // string | The exchange to obtain data from (optional)
  market: "",
  // string | The mapped instrument to retrieve on a specific market. (optional)
  instrument: "",
  // Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)
  instrumentStatus: [],
};

apiInstance.futuresV1MarketsInstruments(body).then((data:any) => {
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

# **futuresV1MarketsInstrumentsUnmapped**
> GENERICRESPONSE futuresV1MarketsInstrumentsUnmapped()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiFuturesV1MarketsInstrumentsUnmappedRequest = {
  // string | The exchange to obtain data from (optional)
  market: "",
  // string | The unmapped instrument to retrieve on a specific market. (optional)
  instrument: "",
  // Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)
  instrumentStatus: [],
};

apiInstance.futuresV1MarketsInstrumentsUnmapped(body).then((data:any) => {
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

# **indexV1HistoricalDays**
> GENERICRESPONSE indexV1HistoricalDays()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiIndexV1HistoricalDaysRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // Array<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
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

apiInstance.indexV1HistoricalDays(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | (optional) defaults to undefined
 **limit** | [**number**] | The number of data points to return | (optional) defaults to 30
 **toTs** | [**number**] | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | (optional) defaults to undefined
 **aggregate** | [**number**] | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | (optional) defaults to 1
 **fill** | [**boolean**] | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'


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

# **indexV1HistoricalHours**
> GENERICRESPONSE indexV1HistoricalHours()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiIndexV1HistoricalHoursRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // Array<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
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

apiInstance.indexV1HistoricalHours(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | (optional) defaults to undefined
 **limit** | [**number**] | The number of data points to return | (optional) defaults to 30
 **toTs** | [**number**] | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | (optional) defaults to undefined
 **aggregate** | [**number**] | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | (optional) defaults to 1
 **fill** | [**boolean**] | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'


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

# **indexV1HistoricalMessages**
> GENERICRESPONSE indexV1HistoricalMessages()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiIndexV1HistoricalMessagesRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // number | Unix timestamp in seconds of the earliest index message in the response (optional)
  afterTs: 0,
  // number | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional)
  lastCcseq: 0,
  // number | The maximum number of index messages to return (optional)
  limit: 100,
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
  // 'JSON' | 'CSV' | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)
  responseFormat: "JSON",
  // boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional)
  return404OnEmptyResponse: false,
};

apiInstance.indexV1HistoricalMessages(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **afterTs** | [**number**] | Unix timestamp in seconds of the earliest index message in the response | (optional) defaults to undefined
 **lastCcseq** | [**number**] | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | (optional) defaults to 0
 **limit** | [**number**] | The maximum number of index messages to return | (optional) defaults to 100
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'
 **return404OnEmptyResponse** | [**boolean**] | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | (optional) defaults to undefined


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

# **indexV1HistoricalMessagesHour**
> GENERICRESPONSE indexV1HistoricalMessagesHour()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiIndexV1HistoricalMessagesHourRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // number | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. (optional)
  hourTs: 0,
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
  // 'JSON' | 'CSV' | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)
  responseFormat: "JSON",
  // boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional)
  return404OnEmptyResponse: false,
};

apiInstance.indexV1HistoricalMessagesHour(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **hourTs** | [**number**] | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'
 **return404OnEmptyResponse** | [**boolean**] | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | (optional) defaults to undefined


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

# **indexV1HistoricalMinutes**
> GENERICRESPONSE indexV1HistoricalMinutes()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiIndexV1HistoricalMinutesRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
  instrument: "instrument_example",
  // Array<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
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

apiInstance.indexV1HistoricalMinutes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instrument** | [**string**] | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | (optional) defaults to undefined
 **limit** | [**number**] | The number of data points to return | (optional) defaults to 30
 **toTs** | [**number**] | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | (optional) defaults to undefined
 **aggregate** | [**number**] | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | (optional) defaults to 1
 **fill** | [**boolean**] | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'
 **responseFormat** | [**&#39;JSON&#39; | &#39;CSV&#39;**]**Array<&#39;JSON&#39; &#124; &#39;CSV&#39;>** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | (optional) defaults to 'JSON'


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

# **indexV1LatestInstrumentMetadata**
> GENERICRESPONSE indexV1LatestInstrumentMetadata()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiIndexV1LatestInstrumentMetadataRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // Array<string> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  instruments: [
    "instruments_example",
  ],
  // Array<string> | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional)
  groups: [],
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
};

apiInstance.indexV1LatestInstrumentMetadata(body).then((data:any) => {
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

# **indexV1LatestTick**
> GENERICRESPONSE indexV1LatestTick()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiIndexV1LatestTickRequest = {
  // string | The exchange to obtain data from
  market: "market_example",
  // Array<string> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
  instruments: [
    "instruments_example",
  ],
  // Array<string> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
  groups: [],
  // 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST' | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)
  mappingPriority: "CHECK_MAPPED_FIRST",
};

apiInstance.indexV1LatestTick(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | [**string**] | The exchange to obtain data from | defaults to undefined
 **instruments** | **Array&lt;string&gt;** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | defaults to undefined
 **groups** | **Array&lt;string&gt;** | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | (optional) defaults to undefined
 **mappingPriority** | [**&#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;**]**Array<&#39;CHECK_MAPPED_FIRST&#39; &#124; &#39;CHECK_UNMAPPED_FIRST&#39;>** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | (optional) defaults to 'CHECK_MAPPED_FIRST'


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

# **indexV1Markets**
> GENERICRESPONSE indexV1Markets()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiIndexV1MarketsRequest = {
  // string | The exchange to obtain data from (optional)
  market: "",
};

apiInstance.indexV1Markets(body).then((data:any) => {
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

# **indexV1MarketsInstruments**
> GENERICRESPONSE indexV1MarketsInstruments()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiIndexV1MarketsInstrumentsRequest = {
  // string | The exchange to obtain data from (optional)
  market: "",
  // string | The mapped instrument to retrieve on a specific market. (optional)
  instrument: "",
  // Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)
  instrumentStatus: [],
};

apiInstance.indexV1MarketsInstruments(body).then((data:any) => {
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

# **indexV1MarketsInstrumentsUnmapped**
> GENERICRESPONSE indexV1MarketsInstrumentsUnmapped()


### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .FuturesApi(configuration);

let body:.FuturesApiIndexV1MarketsInstrumentsUnmappedRequest = {
  // string | The exchange to obtain data from (optional)
  market: "",
  // string | The unmapped instrument to retrieve on a specific market. (optional)
  instrument: "",
  // Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)
  instrumentStatus: [],
};

apiInstance.indexV1MarketsInstrumentsUnmapped(body).then((data:any) => {
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


