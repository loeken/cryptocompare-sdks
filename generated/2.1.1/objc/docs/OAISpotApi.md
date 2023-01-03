# OAISpotApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spotV1HistoricalDays**](OAISpotApi.md#spotv1historicaldays) | **GET** /spot/v1/historical/days | 
[**spotV1HistoricalHours**](OAISpotApi.md#spotv1historicalhours) | **GET** /spot/v1/historical/hours | 
[**spotV1HistoricalMinutes**](OAISpotApi.md#spotv1historicalminutes) | **GET** /spot/v1/historical/minutes | 
[**spotV1HistoricalOrderbookL2SnapshotMinute**](OAISpotApi.md#spotv1historicalorderbookl2snapshotminute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
[**spotV1HistoricalTrades**](OAISpotApi.md#spotv1historicaltrades) | **GET** /spot/v1/historical/trades | 
[**spotV1HistoricalTradesHour**](OAISpotApi.md#spotv1historicaltradeshour) | **GET** /spot/v1/historical/trades/hour | 
[**spotV1LatestInstrumentMetadata**](OAISpotApi.md#spotv1latestinstrumentmetadata) | **GET** /spot/v1/latest/instrument/metadata | 
[**spotV1LatestTick**](OAISpotApi.md#spotv1latesttick) | **GET** /spot/v1/latest/tick | 
[**spotV1Markets**](OAISpotApi.md#spotv1markets) | **GET** /spot/v1/markets | 
[**spotV1MarketsInstruments**](OAISpotApi.md#spotv1marketsinstruments) | **GET** /spot/v1/markets/instruments | 
[**spotV1MarketsInstrumentsUnmapped**](OAISpotApi.md#spotv1marketsinstrumentsunmapped) | **GET** /spot/v1/markets/instruments/unmapped | 


# **spotV1HistoricalDays**
```objc
-(NSURLSessionTask*) spotV1HistoricalDaysWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAISPOTINSTRUMENTHISTODATARESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAISpotApi*apiInstance = [[OAISpotApi alloc] init];

[apiInstance spotV1HistoricalDaysWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAISPOTINSTRUMENTHISTODATARESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISpotApi->spotV1HistoricalDays: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAISPOTINSTRUMENTHISTODATARESPONSE***](OAISPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1HistoricalHours**
```objc
-(NSURLSessionTask*) spotV1HistoricalHoursWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAISPOTINSTRUMENTHISTODATARESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAISpotApi*apiInstance = [[OAISpotApi alloc] init];

[apiInstance spotV1HistoricalHoursWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAISPOTINSTRUMENTHISTODATARESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISpotApi->spotV1HistoricalHours: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAISPOTINSTRUMENTHISTODATARESPONSE***](OAISPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1HistoricalMinutes**
```objc
-(NSURLSessionTask*) spotV1HistoricalMinutesWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAISPOTINSTRUMENTHISTODATARESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAISpotApi*apiInstance = [[OAISpotApi alloc] init];

[apiInstance spotV1HistoricalMinutesWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAISPOTINSTRUMENTHISTODATARESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISpotApi->spotV1HistoricalMinutes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAISPOTINSTRUMENTHISTODATARESPONSE***](OAISPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1HistoricalOrderbookL2SnapshotMinute**
```objc
-(NSURLSessionTask*) spotV1HistoricalOrderbookL2SnapshotMinuteWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    minuteTs: (NSNumber*) minuteTs
    depth: (NSNumber*) depth
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api_key_header)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"authorization"];

// Configure API key authorization: (authentication scheme: api_key_query)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api_key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api_key"];


NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSNumber* minuteTs = @56; // Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
NSNumber* depth = @50; // The number of top bids and asks to return. (optional) (default to @50)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAISpotApi*apiInstance = [[OAISpotApi alloc] init];

[apiInstance spotV1HistoricalOrderbookL2SnapshotMinuteWithMarket:market
              instrument:instrument
              minuteTs:minuteTs
              depth:depth
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISpotApi->spotV1HistoricalOrderbookL2SnapshotMinute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **minuteTs** | **NSNumber***| Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. | 
 **depth** | **NSNumber***| The number of top bids and asks to return. | [optional] [default to @50]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1HistoricalTrades**
```objc
-(NSURLSessionTask*) spotV1HistoricalTradesWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    afterTs: (NSNumber*) afterTs
    lastCcseq: (NSNumber*) lastCcseq
    limit: (NSNumber*) limit
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    return404OnEmptyResponse: (NSNumber*) return404OnEmptyResponse
        completionHandler: (void (^)(OAISPOTINSTRUMENTTRADERESPONSE* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api_key_header)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"authorization"];

// Configure API key authorization: (authentication scheme: api_key_query)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api_key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api_key"];


NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSNumber* afterTs = @56; // Unix timestamp in seconds of the earliest trade in the response. (optional)
NSNumber* lastCcseq = @0; // The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to @0)
NSNumber* limit = @100; // The maximum number of trades to return (optional) (default to @100)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
NSNumber* return404OnEmptyResponse = @(NO); // If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to @(NO))

OAISpotApi*apiInstance = [[OAISpotApi alloc] init];

[apiInstance spotV1HistoricalTradesWithMarket:market
              instrument:instrument
              afterTs:afterTs
              lastCcseq:lastCcseq
              limit:limit
              mappingPriority:mappingPriority
              responseFormat:responseFormat
              return404OnEmptyResponse:return404OnEmptyResponse
          completionHandler: ^(OAISPOTINSTRUMENTTRADERESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISpotApi->spotV1HistoricalTrades: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **afterTs** | **NSNumber***| Unix timestamp in seconds of the earliest trade in the response. | [optional] 
 **lastCcseq** | **NSNumber***| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to @0]
 **limit** | **NSNumber***| The maximum number of trades to return | [optional] [default to @100]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]
 **return404OnEmptyResponse** | **NSNumber***| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to @(NO)]

### Return type

[**OAISPOTINSTRUMENTTRADERESPONSE***](OAISPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1HistoricalTradesHour**
```objc
-(NSURLSessionTask*) spotV1HistoricalTradesHourWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    hourTs: (NSNumber*) hourTs
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    return404OnEmptyResponse: (NSNumber*) return404OnEmptyResponse
        completionHandler: (void (^)(OAISPOTINSTRUMENTTRADERESPONSE* output, NSError* error)) handler;
```



### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: api_key_header)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"authorization"];

// Configure API key authorization: (authentication scheme: api_key_query)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"api_key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"api_key"];


NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSNumber* hourTs = @56; // Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. (optional)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
NSNumber* return404OnEmptyResponse = @(NO); // If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to @(NO))

OAISpotApi*apiInstance = [[OAISpotApi alloc] init];

[apiInstance spotV1HistoricalTradesHourWithMarket:market
              instrument:instrument
              hourTs:hourTs
              mappingPriority:mappingPriority
              responseFormat:responseFormat
              return404OnEmptyResponse:return404OnEmptyResponse
          completionHandler: ^(OAISPOTINSTRUMENTTRADERESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISpotApi->spotV1HistoricalTradesHour: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hourTs** | **NSNumber***| Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional] 
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]
 **return404OnEmptyResponse** | **NSNumber***| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to @(NO)]

### Return type

[**OAISPOTINSTRUMENTTRADERESPONSE***](OAISPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1LatestInstrumentMetadata**
```objc
-(NSURLSessionTask*) spotV1LatestInstrumentMetadataWithMarket: (NSString*) market
    instruments: (NSArray<NSString*>*) instruments
    groups: (NSArray<NSString*>*) groups
    mappingPriority: (NSString*) mappingPriority
        completionHandler: (void (^)(OAISPOTINSTRUMENTMETADATARESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = coinbase; // The exchange to obtain data from
NSArray<NSString*>* instruments = ["BTC-USD","ETH-USD"]; // A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")

OAISpotApi*apiInstance = [[OAISpotApi alloc] init];

[apiInstance spotV1LatestInstrumentMetadataWithMarket:market
              instruments:instruments
              groups:groups
              mappingPriority:mappingPriority
          completionHandler: ^(OAISPOTINSTRUMENTMETADATARESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISpotApi->spotV1LatestInstrumentMetadata: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instruments** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] 
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]

### Return type

[**OAISPOTINSTRUMENTMETADATARESPONSE***](OAISPOTINSTRUMENTMETADATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1LatestTick**
```objc
-(NSURLSessionTask*) spotV1LatestTickWithMarket: (NSString*) market
    instruments: (NSArray<NSString*>*) instruments
    groups: (NSArray<NSString*>*) groups
    mappingPriority: (NSString*) mappingPriority
        completionHandler: (void (^)(OAISPOTINSTRUMENTMARKETDATARESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSArray<NSString*>* instruments = @[@"instruments_example"]; // A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")

OAISpotApi*apiInstance = [[OAISpotApi alloc] init];

[apiInstance spotV1LatestTickWithMarket:market
              instruments:instruments
              groups:groups
              mappingPriority:mappingPriority
          completionHandler: ^(OAISPOTINSTRUMENTMARKETDATARESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISpotApi->spotV1LatestTick: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instruments** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]

### Return type

[**OAISPOTINSTRUMENTMARKETDATARESPONSE***](OAISPOTINSTRUMENTMARKETDATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1Markets**
```objc
-(NSURLSessionTask*) spotV1MarketsWithMarket: (NSString*) market
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @""; // The exchange to obtain data from (optional) (default to @"")

OAISpotApi*apiInstance = [[OAISpotApi alloc] init];

[apiInstance spotV1MarketsWithMarket:market
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISpotApi->spotV1Markets: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | [optional] [default to @&quot;&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1MarketsInstruments**
```objc
-(NSURLSessionTask*) spotV1MarketsInstrumentsWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    instrumentStatus: (NSArray<NSString*>*) instrumentStatus
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @""; // The exchange to obtain data from (optional) (default to @"")
NSString* instrument = @""; // The mapped instrument to retrieve on a specific market. (optional) (default to @"")
NSArray<NSString*>* instrumentStatus = @[@"instrumentStatus_example"]; // The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

OAISpotApi*apiInstance = [[OAISpotApi alloc] init];

[apiInstance spotV1MarketsInstrumentsWithMarket:market
              instrument:instrument
              instrumentStatus:instrumentStatus
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISpotApi->spotV1MarketsInstruments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | [optional] [default to @&quot;&quot;]
 **instrument** | **NSString***| The mapped instrument to retrieve on a specific market. | [optional] [default to @&quot;&quot;]
 **instrumentStatus** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1MarketsInstrumentsUnmapped**
```objc
-(NSURLSessionTask*) spotV1MarketsInstrumentsUnmappedWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    instrumentStatus: (NSArray<NSString*>*) instrumentStatus
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @""; // The exchange to obtain data from (optional) (default to @"")
NSString* instrument = @""; // The unmapped instrument to retrieve on a specific market. (optional) (default to @"")
NSArray<NSString*>* instrumentStatus = @[@"instrumentStatus_example"]; // The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

OAISpotApi*apiInstance = [[OAISpotApi alloc] init];

[apiInstance spotV1MarketsInstrumentsUnmappedWithMarket:market
              instrument:instrument
              instrumentStatus:instrumentStatus
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAISpotApi->spotV1MarketsInstrumentsUnmapped: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | [optional] [default to @&quot;&quot;]
 **instrument** | **NSString***| The unmapped instrument to retrieve on a specific market. | [optional] [default to @&quot;&quot;]
 **instrumentStatus** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

