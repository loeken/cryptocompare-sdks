# Org.OpenAPITools.Api.SpotApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**SpotV1HistoricalDays**](SpotApi.md#spotv1historicaldays) | **GET** /spot/v1/historical/days |  |
| [**SpotV1HistoricalHours**](SpotApi.md#spotv1historicalhours) | **GET** /spot/v1/historical/hours |  |
| [**SpotV1HistoricalMinutes**](SpotApi.md#spotv1historicalminutes) | **GET** /spot/v1/historical/minutes |  |
| [**SpotV1HistoricalOrderbookL2SnapshotMinute**](SpotApi.md#spotv1historicalorderbookl2snapshotminute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute |  |
| [**SpotV1HistoricalTrades**](SpotApi.md#spotv1historicaltrades) | **GET** /spot/v1/historical/trades |  |
| [**SpotV1HistoricalTradesHour**](SpotApi.md#spotv1historicaltradeshour) | **GET** /spot/v1/historical/trades/hour |  |
| [**SpotV1LatestInstrumentMetadata**](SpotApi.md#spotv1latestinstrumentmetadata) | **GET** /spot/v1/latest/instrument/metadata |  |
| [**SpotV1LatestTick**](SpotApi.md#spotv1latesttick) | **GET** /spot/v1/latest/tick |  |
| [**SpotV1Markets**](SpotApi.md#spotv1markets) | **GET** /spot/v1/markets |  |
| [**SpotV1MarketsInstruments**](SpotApi.md#spotv1marketsinstruments) | **GET** /spot/v1/markets/instruments |  |
| [**SpotV1MarketsInstrumentsUnmapped**](SpotApi.md#spotv1marketsinstrumentsunmapped) | **GET** /spot/v1/markets/instruments/unmapped |  |

<a name="spotv1historicaldays"></a>
# **SpotV1HistoricalDays**
> SPOTINSTRUMENTHISTODATARESPONSE SpotV1HistoricalDays (string market, string instrument, List<string> groups = null, int? limit = null, int? toTs = null, int? aggregate = null, bool? fill = null, string mappingPriority = null, string responseFormat = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SpotV1HistoricalDaysExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new SpotApi(config);
            var market = "market_example";  // string | The exchange to obtain data from
            var instrument = "instrument_example";  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
            var groups = new List<string>(); // List<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional) 
            var limit = 30;  // int? | The number of data points to return (optional)  (default to 30)
            var toTs = 56;  // int? | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional) 
            var aggregate = 1;  // int? | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional)  (default to 1)
            var fill = true;  // bool? | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional)  (default to true)
            var mappingPriority = "CHECK_MAPPED_FIRST";  // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)  (default to CHECK_MAPPED_FIRST)
            var responseFormat = "JSON";  // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)  (default to JSON)

            try
            {
                SPOTINSTRUMENTHISTODATARESPONSE result = apiInstance.SpotV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SpotApi.SpotV1HistoricalDays: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SpotV1HistoricalDaysWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<SPOTINSTRUMENTHISTODATARESPONSE> response = apiInstance.SpotV1HistoricalDaysWithHttpInfo(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SpotApi.SpotV1HistoricalDaysWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **market** | **string** | The exchange to obtain data from |  |
| **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**List&lt;string&gt;**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional]  |
| **limit** | **int?** | The number of data points to return | [optional] [default to 30] |
| **toTs** | **int?** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]  |
| **aggregate** | **int?** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1] |
| **fill** | **bool?** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true] |
| **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] |
| **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] |

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="spotv1historicalhours"></a>
# **SpotV1HistoricalHours**
> SPOTINSTRUMENTHISTODATARESPONSE SpotV1HistoricalHours (string market, string instrument, List<string> groups = null, int? limit = null, int? toTs = null, int? aggregate = null, bool? fill = null, string mappingPriority = null, string responseFormat = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SpotV1HistoricalHoursExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new SpotApi(config);
            var market = "market_example";  // string | The exchange to obtain data from
            var instrument = "instrument_example";  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
            var groups = new List<string>(); // List<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional) 
            var limit = 30;  // int? | The number of data points to return (optional)  (default to 30)
            var toTs = 56;  // int? | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional) 
            var aggregate = 1;  // int? | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional)  (default to 1)
            var fill = true;  // bool? | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional)  (default to true)
            var mappingPriority = "CHECK_MAPPED_FIRST";  // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)  (default to CHECK_MAPPED_FIRST)
            var responseFormat = "JSON";  // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)  (default to JSON)

            try
            {
                SPOTINSTRUMENTHISTODATARESPONSE result = apiInstance.SpotV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SpotApi.SpotV1HistoricalHours: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SpotV1HistoricalHoursWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<SPOTINSTRUMENTHISTODATARESPONSE> response = apiInstance.SpotV1HistoricalHoursWithHttpInfo(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SpotApi.SpotV1HistoricalHoursWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **market** | **string** | The exchange to obtain data from |  |
| **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**List&lt;string&gt;**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional]  |
| **limit** | **int?** | The number of data points to return | [optional] [default to 30] |
| **toTs** | **int?** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]  |
| **aggregate** | **int?** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1] |
| **fill** | **bool?** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true] |
| **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] |
| **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] |

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="spotv1historicalminutes"></a>
# **SpotV1HistoricalMinutes**
> SPOTINSTRUMENTHISTODATARESPONSE SpotV1HistoricalMinutes (string market, string instrument, List<string> groups = null, int? limit = null, int? toTs = null, int? aggregate = null, bool? fill = null, string mappingPriority = null, string responseFormat = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SpotV1HistoricalMinutesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new SpotApi(config);
            var market = "market_example";  // string | The exchange to obtain data from
            var instrument = "instrument_example";  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
            var groups = new List<string>(); // List<string> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional) 
            var limit = 30;  // int? | The number of data points to return (optional)  (default to 30)
            var toTs = 56;  // int? | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional) 
            var aggregate = 1;  // int? | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional)  (default to 1)
            var fill = true;  // bool? | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional)  (default to true)
            var mappingPriority = "CHECK_MAPPED_FIRST";  // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)  (default to CHECK_MAPPED_FIRST)
            var responseFormat = "JSON";  // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)  (default to JSON)

            try
            {
                SPOTINSTRUMENTHISTODATARESPONSE result = apiInstance.SpotV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SpotApi.SpotV1HistoricalMinutes: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SpotV1HistoricalMinutesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<SPOTINSTRUMENTHISTODATARESPONSE> response = apiInstance.SpotV1HistoricalMinutesWithHttpInfo(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SpotApi.SpotV1HistoricalMinutesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **market** | **string** | The exchange to obtain data from |  |
| **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**List&lt;string&gt;**](string.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional]  |
| **limit** | **int?** | The number of data points to return | [optional] [default to 30] |
| **toTs** | **int?** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional]  |
| **aggregate** | **int?** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1] |
| **fill** | **bool?** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true] |
| **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] |
| **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] |

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="spotv1historicalorderbookl2snapshotminute"></a>
# **SpotV1HistoricalOrderbookL2SnapshotMinute**
> GENERICRESPONSE SpotV1HistoricalOrderbookL2SnapshotMinute (string market, string instrument, int minuteTs, int? depth = null, string mappingPriority = null, string responseFormat = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SpotV1HistoricalOrderbookL2SnapshotMinuteExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            // Configure API key authorization: api_key_header
            config.AddApiKey("authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("authorization", "Bearer");
            // Configure API key authorization: api_key_query
            config.AddApiKey("api_key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api_key", "Bearer");

            var apiInstance = new SpotApi(config);
            var market = "market_example";  // string | The exchange to obtain data from
            var instrument = "instrument_example";  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
            var minuteTs = 56;  // int | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
            var depth = 50;  // int? | The number of top bids and asks to return. (optional)  (default to 50)
            var mappingPriority = "CHECK_MAPPED_FIRST";  // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)  (default to CHECK_MAPPED_FIRST)
            var responseFormat = "JSON";  // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)  (default to JSON)

            try
            {
                GENERICRESPONSE result = apiInstance.SpotV1HistoricalOrderbookL2SnapshotMinute(market, instrument, minuteTs, depth, mappingPriority, responseFormat);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SpotApi.SpotV1HistoricalOrderbookL2SnapshotMinute: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SpotV1HistoricalOrderbookL2SnapshotMinuteWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<GENERICRESPONSE> response = apiInstance.SpotV1HistoricalOrderbookL2SnapshotMinuteWithHttpInfo(market, instrument, minuteTs, depth, mappingPriority, responseFormat);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SpotApi.SpotV1HistoricalOrderbookL2SnapshotMinuteWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **market** | **string** | The exchange to obtain data from |  |
| **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **minuteTs** | **int** | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. |  |
| **depth** | **int?** | The number of top bids and asks to return. | [optional] [default to 50] |
| **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] |
| **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="spotv1historicaltrades"></a>
# **SpotV1HistoricalTrades**
> SPOTINSTRUMENTTRADERESPONSE SpotV1HistoricalTrades (string market, string instrument, int? afterTs = null, int? lastCcseq = null, int? limit = null, string mappingPriority = null, string responseFormat = null, bool? return404OnEmptyResponse = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SpotV1HistoricalTradesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            // Configure API key authorization: api_key_header
            config.AddApiKey("authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("authorization", "Bearer");
            // Configure API key authorization: api_key_query
            config.AddApiKey("api_key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api_key", "Bearer");

            var apiInstance = new SpotApi(config);
            var market = "market_example";  // string | The exchange to obtain data from
            var instrument = "instrument_example";  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
            var afterTs = 56;  // int? | Unix timestamp in seconds of the earliest trade in the response. (optional) 
            var lastCcseq = 0;  // int? | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional)  (default to 0)
            var limit = 100;  // int? | The maximum number of trades to return (optional)  (default to 100)
            var mappingPriority = "CHECK_MAPPED_FIRST";  // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)  (default to CHECK_MAPPED_FIRST)
            var responseFormat = "JSON";  // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)  (default to JSON)
            var return404OnEmptyResponse = false;  // bool? | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional)  (default to false)

            try
            {
                SPOTINSTRUMENTTRADERESPONSE result = apiInstance.SpotV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SpotApi.SpotV1HistoricalTrades: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SpotV1HistoricalTradesWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<SPOTINSTRUMENTTRADERESPONSE> response = apiInstance.SpotV1HistoricalTradesWithHttpInfo(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SpotApi.SpotV1HistoricalTradesWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **market** | **string** | The exchange to obtain data from |  |
| **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **afterTs** | **int?** | Unix timestamp in seconds of the earliest trade in the response. | [optional]  |
| **lastCcseq** | **int?** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0] |
| **limit** | **int?** | The maximum number of trades to return | [optional] [default to 100] |
| **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] |
| **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] |
| **return404OnEmptyResponse** | **bool?** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false] |

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="spotv1historicaltradeshour"></a>
# **SpotV1HistoricalTradesHour**
> SPOTINSTRUMENTTRADERESPONSE SpotV1HistoricalTradesHour (string market, string instrument, int? hourTs = null, string mappingPriority = null, string responseFormat = null, bool? return404OnEmptyResponse = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SpotV1HistoricalTradesHourExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            // Configure API key authorization: api_key_header
            config.AddApiKey("authorization", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("authorization", "Bearer");
            // Configure API key authorization: api_key_query
            config.AddApiKey("api_key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.AddApiKeyPrefix("api_key", "Bearer");

            var apiInstance = new SpotApi(config);
            var market = "market_example";  // string | The exchange to obtain data from
            var instrument = "instrument_example";  // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
            var hourTs = 56;  // int? | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. (optional) 
            var mappingPriority = "CHECK_MAPPED_FIRST";  // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)  (default to CHECK_MAPPED_FIRST)
            var responseFormat = "JSON";  // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional)  (default to JSON)
            var return404OnEmptyResponse = false;  // bool? | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional)  (default to false)

            try
            {
                SPOTINSTRUMENTTRADERESPONSE result = apiInstance.SpotV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SpotApi.SpotV1HistoricalTradesHour: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SpotV1HistoricalTradesHourWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<SPOTINSTRUMENTTRADERESPONSE> response = apiInstance.SpotV1HistoricalTradesHourWithHttpInfo(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SpotApi.SpotV1HistoricalTradesHourWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **market** | **string** | The exchange to obtain data from |  |
| **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **hourTs** | **int?** | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional]  |
| **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] |
| **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to JSON] |
| **return404OnEmptyResponse** | **bool?** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false] |

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="spotv1latestinstrumentmetadata"></a>
# **SpotV1LatestInstrumentMetadata**
> SPOTINSTRUMENTMETADATARESPONSE SpotV1LatestInstrumentMetadata (string market, List<string> instruments, List<string> groups = null, string mappingPriority = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SpotV1LatestInstrumentMetadataExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new SpotApi(config);
            var market = coinbase;  // string | The exchange to obtain data from
            var instruments = new List<string>(); // List<string> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
            var groups = new List<string>(); // List<string> | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional) 
            var mappingPriority = "CHECK_MAPPED_FIRST";  // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)  (default to CHECK_MAPPED_FIRST)

            try
            {
                SPOTINSTRUMENTMETADATARESPONSE result = apiInstance.SpotV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SpotApi.SpotV1LatestInstrumentMetadata: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SpotV1LatestInstrumentMetadataWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<SPOTINSTRUMENTMETADATARESPONSE> response = apiInstance.SpotV1LatestInstrumentMetadataWithHttpInfo(market, instruments, groups, mappingPriority);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SpotApi.SpotV1LatestInstrumentMetadataWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **market** | **string** | The exchange to obtain data from |  |
| **instruments** | [**List&lt;string&gt;**](string.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**List&lt;string&gt;**](string.md) | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional]  |
| **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] |

### Return type

[**SPOTINSTRUMENTMETADATARESPONSE**](SPOTINSTRUMENTMETADATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="spotv1latesttick"></a>
# **SpotV1LatestTick**
> SPOTINSTRUMENTMARKETDATARESPONSE SpotV1LatestTick (string market, List<string> instruments, List<string> groups = null, string mappingPriority = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SpotV1LatestTickExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new SpotApi(config);
            var market = "market_example";  // string | The exchange to obtain data from
            var instruments = new List<string>(); // List<string> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
            var groups = new List<string>(); // List<string> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional) 
            var mappingPriority = "CHECK_MAPPED_FIRST";  // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional)  (default to CHECK_MAPPED_FIRST)

            try
            {
                SPOTINSTRUMENTMARKETDATARESPONSE result = apiInstance.SpotV1LatestTick(market, instruments, groups, mappingPriority);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SpotApi.SpotV1LatestTick: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SpotV1LatestTickWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<SPOTINSTRUMENTMARKETDATARESPONSE> response = apiInstance.SpotV1LatestTickWithHttpInfo(market, instruments, groups, mappingPriority);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SpotApi.SpotV1LatestTickWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **market** | **string** | The exchange to obtain data from |  |
| **instruments** | [**List&lt;string&gt;**](string.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**List&lt;string&gt;**](string.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional]  |
| **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to CHECK_MAPPED_FIRST] |

### Return type

[**SPOTINSTRUMENTMARKETDATARESPONSE**](SPOTINSTRUMENTMARKETDATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="spotv1markets"></a>
# **SpotV1Markets**
> GENERICRESPONSE SpotV1Markets (string market = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SpotV1MarketsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new SpotApi(config);
            var market = "\"\"";  // string | The exchange to obtain data from (optional)  (default to "")

            try
            {
                GENERICRESPONSE result = apiInstance.SpotV1Markets(market);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SpotApi.SpotV1Markets: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SpotV1MarketsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<GENERICRESPONSE> response = apiInstance.SpotV1MarketsWithHttpInfo(market);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SpotApi.SpotV1MarketsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **market** | **string** | The exchange to obtain data from | [optional] [default to &quot;&quot;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="spotv1marketsinstruments"></a>
# **SpotV1MarketsInstruments**
> GENERICRESPONSE SpotV1MarketsInstruments (string market = null, string instrument = null, List<string> instrumentStatus = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SpotV1MarketsInstrumentsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new SpotApi(config);
            var market = "\"\"";  // string | The exchange to obtain data from (optional)  (default to "")
            var instrument = "\"\"";  // string | The mapped instrument to retrieve on a specific market. (optional)  (default to "")
            var instrumentStatus = new List<string>(); // List<string> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional) 

            try
            {
                GENERICRESPONSE result = apiInstance.SpotV1MarketsInstruments(market, instrument, instrumentStatus);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SpotApi.SpotV1MarketsInstruments: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SpotV1MarketsInstrumentsWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<GENERICRESPONSE> response = apiInstance.SpotV1MarketsInstrumentsWithHttpInfo(market, instrument, instrumentStatus);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SpotApi.SpotV1MarketsInstrumentsWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **market** | **string** | The exchange to obtain data from | [optional] [default to &quot;&quot;] |
| **instrument** | **string** | The mapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;] |
| **instrumentStatus** | [**List&lt;string&gt;**](string.md) | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional]  |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="spotv1marketsinstrumentsunmapped"></a>
# **SpotV1MarketsInstrumentsUnmapped**
> GENERICRESPONSE SpotV1MarketsInstrumentsUnmapped (string market = null, string instrument = null, List<string> instrumentStatus = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class SpotV1MarketsInstrumentsUnmappedExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://data-api.cryptocompare.com";
            var apiInstance = new SpotApi(config);
            var market = "\"\"";  // string | The exchange to obtain data from (optional)  (default to "")
            var instrument = "\"\"";  // string | The unmapped instrument to retrieve on a specific market. (optional)  (default to "")
            var instrumentStatus = new List<string>(); // List<string> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional) 

            try
            {
                GENERICRESPONSE result = apiInstance.SpotV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SpotApi.SpotV1MarketsInstrumentsUnmapped: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SpotV1MarketsInstrumentsUnmappedWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    ApiResponse<GENERICRESPONSE> response = apiInstance.SpotV1MarketsInstrumentsUnmappedWithHttpInfo(market, instrument, instrumentStatus);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SpotApi.SpotV1MarketsInstrumentsUnmappedWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **market** | **string** | The exchange to obtain data from | [optional] [default to &quot;&quot;] |
| **instrument** | **string** | The unmapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;] |
| **instrumentStatus** | [**List&lt;string&gt;**](string.md) | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional]  |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success response from the API. |  -  |
| **400** | The 400 error occurs when some of the data sent is malformed. |  -  |
| **401** | The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **403** | The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication. |  -  |
| **404** | The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid |  -  |
| **405** | The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported. |  -  |
| **429** | The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits. |  -  |
| **500** | The 500 error occurs our API is up but does not know how to / can&#39;t handle the request. |  -  |
| **502** | The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer. |  -  |
| **503** | The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

