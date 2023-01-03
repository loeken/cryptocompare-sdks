# OAIFuturesApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**futuresV1HistoricalDays**](OAIFuturesApi.md#futuresv1historicaldays) | **GET** /futures/v1/historical/days | 
[**futuresV1HistoricalFundingRateDays**](OAIFuturesApi.md#futuresv1historicalfundingratedays) | **GET** /futures/v1/historical/funding-rate/days | 
[**futuresV1HistoricalFundingRateHours**](OAIFuturesApi.md#futuresv1historicalfundingratehours) | **GET** /futures/v1/historical/funding-rate/hours | 
[**futuresV1HistoricalFundingRateMessages**](OAIFuturesApi.md#futuresv1historicalfundingratemessages) | **GET** /futures/v1/historical/funding-rate-messages | 
[**futuresV1HistoricalFundingRateMessagesHour**](OAIFuturesApi.md#futuresv1historicalfundingratemessageshour) | **GET** /futures/v1/historical/funding-rate-messages/hour | 
[**futuresV1HistoricalFundingRateMinutes**](OAIFuturesApi.md#futuresv1historicalfundingrateminutes) | **GET** /futures/v1/historical/funding-rate/minutes | 
[**futuresV1HistoricalHours**](OAIFuturesApi.md#futuresv1historicalhours) | **GET** /futures/v1/historical/hours | 
[**futuresV1HistoricalMinutes**](OAIFuturesApi.md#futuresv1historicalminutes) | **GET** /futures/v1/historical/minutes | 
[**futuresV1HistoricalOpenInterestDays**](OAIFuturesApi.md#futuresv1historicalopeninterestdays) | **GET** /futures/v1/historical/open-interest/days | 
[**futuresV1HistoricalOpenInterestHours**](OAIFuturesApi.md#futuresv1historicalopeninteresthours) | **GET** /futures/v1/historical/open-interest/hours | 
[**futuresV1HistoricalOpenInterestMessages**](OAIFuturesApi.md#futuresv1historicalopeninterestmessages) | **GET** /futures/v1/historical/open-interest-messages | 
[**futuresV1HistoricalOpenInterestMessagesHour**](OAIFuturesApi.md#futuresv1historicalopeninterestmessageshour) | **GET** /futures/v1/historical/open-interest-messages/hour | 
[**futuresV1HistoricalOpenInterestMinutes**](OAIFuturesApi.md#futuresv1historicalopeninterestminutes) | **GET** /futures/v1/historical/open-interest/minutes | 
[**futuresV1HistoricalTrades**](OAIFuturesApi.md#futuresv1historicaltrades) | **GET** /futures/v1/historical/trades | 
[**futuresV1HistoricalTradesHour**](OAIFuturesApi.md#futuresv1historicaltradeshour) | **GET** /futures/v1/historical/trades/hour | 
[**futuresV1LatestFundingRateTick**](OAIFuturesApi.md#futuresv1latestfundingratetick) | **GET** /futures/v1/latest/funding-rate/tick | 
[**futuresV1LatestInstrumentMetadata**](OAIFuturesApi.md#futuresv1latestinstrumentmetadata) | **GET** /futures/v1/latest/instrument/metadata | 
[**futuresV1LatestOpenInterestTick**](OAIFuturesApi.md#futuresv1latestopeninteresttick) | **GET** /futures/v1/latest/open-interest/tick | 
[**futuresV1LatestTick**](OAIFuturesApi.md#futuresv1latesttick) | **GET** /futures/v1/latest/tick | 
[**futuresV1Markets**](OAIFuturesApi.md#futuresv1markets) | **GET** /futures/v1/markets | 
[**futuresV1MarketsInstruments**](OAIFuturesApi.md#futuresv1marketsinstruments) | **GET** /futures/v1/markets/instruments | 
[**futuresV1MarketsInstrumentsUnmapped**](OAIFuturesApi.md#futuresv1marketsinstrumentsunmapped) | **GET** /futures/v1/markets/instruments/unmapped | 
[**indexV1HistoricalDays**](OAIFuturesApi.md#indexv1historicaldays) | **GET** /index/v1/historical/days | 
[**indexV1HistoricalHours**](OAIFuturesApi.md#indexv1historicalhours) | **GET** /index/v1/historical/hours | 
[**indexV1HistoricalMessages**](OAIFuturesApi.md#indexv1historicalmessages) | **GET** /index/v1/historical/messages | 
[**indexV1HistoricalMessagesHour**](OAIFuturesApi.md#indexv1historicalmessageshour) | **GET** /index/v1/historical/messages/hour | 
[**indexV1HistoricalMinutes**](OAIFuturesApi.md#indexv1historicalminutes) | **GET** /index/v1/historical/minutes | 
[**indexV1LatestInstrumentMetadata**](OAIFuturesApi.md#indexv1latestinstrumentmetadata) | **GET** /index/v1/latest/instrument/metadata | 
[**indexV1LatestTick**](OAIFuturesApi.md#indexv1latesttick) | **GET** /index/v1/latest/tick | 
[**indexV1Markets**](OAIFuturesApi.md#indexv1markets) | **GET** /index/v1/markets | 
[**indexV1MarketsInstruments**](OAIFuturesApi.md#indexv1marketsinstruments) | **GET** /index/v1/markets/instruments | 
[**indexV1MarketsInstrumentsUnmapped**](OAIFuturesApi.md#indexv1marketsinstrumentsunmapped) | **GET** /index/v1/markets/instruments/unmapped | 


# **futuresV1HistoricalDays**
```objc
-(NSURLSessionTask*) futuresV1HistoricalDaysWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
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

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalDaysWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalDays: %@", error);
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

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalFundingRateDays**
```objc
-(NSURLSessionTask*) futuresV1HistoricalFundingRateDaysWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalFundingRateDaysWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalFundingRateDays: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalFundingRateHours**
```objc
-(NSURLSessionTask*) futuresV1HistoricalFundingRateHoursWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalFundingRateHoursWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalFundingRateHours: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalFundingRateMessages**
```objc
-(NSURLSessionTask*) futuresV1HistoricalFundingRateMessagesWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    afterTs: (NSNumber*) afterTs
    lastCcseq: (NSNumber*) lastCcseq
    limit: (NSNumber*) limit
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    return404OnEmptyResponse: (NSNumber*) return404OnEmptyResponse
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
NSNumber* afterTs = @56; // Unix timestamp in seconds of the earliest funding rate message in the response (optional)
NSNumber* lastCcseq = @0; // The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to @0)
NSNumber* limit = @100; // The maximum number of funding rate messages to return (optional) (default to @100)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
NSNumber* return404OnEmptyResponse = @(NO); // If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to @(NO))

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalFundingRateMessagesWithMarket:market
              instrument:instrument
              afterTs:afterTs
              lastCcseq:lastCcseq
              limit:limit
              mappingPriority:mappingPriority
              responseFormat:responseFormat
              return404OnEmptyResponse:return404OnEmptyResponse
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalFundingRateMessages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **afterTs** | **NSNumber***| Unix timestamp in seconds of the earliest funding rate message in the response | [optional] 
 **lastCcseq** | **NSNumber***| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to @0]
 **limit** | **NSNumber***| The maximum number of funding rate messages to return | [optional] [default to @100]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]
 **return404OnEmptyResponse** | **NSNumber***| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to @(NO)]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalFundingRateMessagesHour**
```objc
-(NSURLSessionTask*) futuresV1HistoricalFundingRateMessagesHourWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    hourTs: (NSNumber*) hourTs
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    return404OnEmptyResponse: (NSNumber*) return404OnEmptyResponse
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
NSNumber* hourTs = @56; // Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. (optional)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
NSNumber* return404OnEmptyResponse = @(NO); // If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to @(NO))

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalFundingRateMessagesHourWithMarket:market
              instrument:instrument
              hourTs:hourTs
              mappingPriority:mappingPriority
              responseFormat:responseFormat
              return404OnEmptyResponse:return404OnEmptyResponse
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalFundingRateMessagesHour: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hourTs** | **NSNumber***| Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. | [optional] 
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]
 **return404OnEmptyResponse** | **NSNumber***| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to @(NO)]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalFundingRateMinutes**
```objc
-(NSURLSessionTask*) futuresV1HistoricalFundingRateMinutesWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalFundingRateMinutesWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalFundingRateMinutes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalHours**
```objc
-(NSURLSessionTask*) futuresV1HistoricalHoursWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
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

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalHoursWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalHours: %@", error);
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

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalMinutes**
```objc
-(NSURLSessionTask*) futuresV1HistoricalMinutesWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
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

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalMinutesWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalMinutes: %@", error);
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

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalOpenInterestDays**
```objc
-(NSURLSessionTask*) futuresV1HistoricalOpenInterestDaysWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalOpenInterestDaysWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalOpenInterestDays: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalOpenInterestHours**
```objc
-(NSURLSessionTask*) futuresV1HistoricalOpenInterestHoursWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalOpenInterestHoursWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalOpenInterestHours: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalOpenInterestMessages**
```objc
-(NSURLSessionTask*) futuresV1HistoricalOpenInterestMessagesWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    afterTs: (NSNumber*) afterTs
    lastCcseq: (NSNumber*) lastCcseq
    limit: (NSNumber*) limit
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    return404OnEmptyResponse: (NSNumber*) return404OnEmptyResponse
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
NSNumber* afterTs = @56; // Unix timestamp in seconds of the earliest open interest message in the response (optional)
NSNumber* lastCcseq = @0; // The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to @0)
NSNumber* limit = @100; // The maximum number of open interest messages to return (optional) (default to @100)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
NSNumber* return404OnEmptyResponse = @(NO); // If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to @(NO))

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalOpenInterestMessagesWithMarket:market
              instrument:instrument
              afterTs:afterTs
              lastCcseq:lastCcseq
              limit:limit
              mappingPriority:mappingPriority
              responseFormat:responseFormat
              return404OnEmptyResponse:return404OnEmptyResponse
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalOpenInterestMessages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **afterTs** | **NSNumber***| Unix timestamp in seconds of the earliest open interest message in the response | [optional] 
 **lastCcseq** | **NSNumber***| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to @0]
 **limit** | **NSNumber***| The maximum number of open interest messages to return | [optional] [default to @100]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]
 **return404OnEmptyResponse** | **NSNumber***| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to @(NO)]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalOpenInterestMessagesHour**
```objc
-(NSURLSessionTask*) futuresV1HistoricalOpenInterestMessagesHourWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    hourTs: (NSNumber*) hourTs
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    return404OnEmptyResponse: (NSNumber*) return404OnEmptyResponse
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
NSNumber* hourTs = @56; // Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. (optional)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
NSNumber* return404OnEmptyResponse = @(NO); // If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to @(NO))

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalOpenInterestMessagesHourWithMarket:market
              instrument:instrument
              hourTs:hourTs
              mappingPriority:mappingPriority
              responseFormat:responseFormat
              return404OnEmptyResponse:return404OnEmptyResponse
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalOpenInterestMessagesHour: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hourTs** | **NSNumber***| Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. | [optional] 
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]
 **return404OnEmptyResponse** | **NSNumber***| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to @(NO)]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalOpenInterestMinutes**
```objc
-(NSURLSessionTask*) futuresV1HistoricalOpenInterestMinutesWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalOpenInterestMinutesWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalOpenInterestMinutes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalTrades**
```objc
-(NSURLSessionTask*) futuresV1HistoricalTradesWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    afterTs: (NSNumber*) afterTs
    lastCcseq: (NSNumber*) lastCcseq
    limit: (NSNumber*) limit
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    return404OnEmptyResponse: (NSNumber*) return404OnEmptyResponse
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
NSNumber* afterTs = @56; // Unix timestamp in seconds of the earliest trade in the response. (optional)
NSNumber* lastCcseq = @0; // The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to @0)
NSNumber* limit = @100; // The maximum number of trades to return (optional) (default to @100)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
NSNumber* return404OnEmptyResponse = @(NO); // If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to @(NO))

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalTradesWithMarket:market
              instrument:instrument
              afterTs:afterTs
              lastCcseq:lastCcseq
              limit:limit
              mappingPriority:mappingPriority
              responseFormat:responseFormat
              return404OnEmptyResponse:return404OnEmptyResponse
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalTrades: %@", error);
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

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalTradesHour**
```objc
-(NSURLSessionTask*) futuresV1HistoricalTradesHourWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    hourTs: (NSNumber*) hourTs
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    return404OnEmptyResponse: (NSNumber*) return404OnEmptyResponse
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
NSNumber* hourTs = @56; // Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. (optional)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
NSNumber* return404OnEmptyResponse = @(NO); // If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to @(NO))

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1HistoricalTradesHourWithMarket:market
              instrument:instrument
              hourTs:hourTs
              mappingPriority:mappingPriority
              responseFormat:responseFormat
              return404OnEmptyResponse:return404OnEmptyResponse
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1HistoricalTradesHour: %@", error);
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

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1LatestFundingRateTick**
```objc
-(NSURLSessionTask*) futuresV1LatestFundingRateTickWithMarket: (NSString*) market
    instruments: (NSArray<NSString*>*) instruments
    groups: (NSArray<NSString*>*) groups
    mappingPriority: (NSString*) mappingPriority
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSArray<NSString*>* instruments = @[@"instruments_example"]; // A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1LatestFundingRateTickWithMarket:market
              instruments:instruments
              groups:groups
              mappingPriority:mappingPriority
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1LatestFundingRateTick: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instruments** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1LatestInstrumentMetadata**
```objc
-(NSURLSessionTask*) futuresV1LatestInstrumentMetadataWithMarket: (NSString*) market
    instruments: (NSArray<NSString*>*) instruments
    groups: (NSArray<NSString*>*) groups
    mappingPriority: (NSString*) mappingPriority
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSArray<NSString*>* instruments = @[@"instruments_example"]; // A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1LatestInstrumentMetadataWithMarket:market
              instruments:instruments
              groups:groups
              mappingPriority:mappingPriority
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1LatestInstrumentMetadata: %@", error);
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

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1LatestOpenInterestTick**
```objc
-(NSURLSessionTask*) futuresV1LatestOpenInterestTickWithMarket: (NSString*) market
    instruments: (NSArray<NSString*>*) instruments
    groups: (NSArray<NSString*>*) groups
    mappingPriority: (NSString*) mappingPriority
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSArray<NSString*>* instruments = @[@"instruments_example"]; // A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1LatestOpenInterestTickWithMarket:market
              instruments:instruments
              groups:groups
              mappingPriority:mappingPriority
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1LatestOpenInterestTick: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instruments** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1LatestTick**
```objc
-(NSURLSessionTask*) futuresV1LatestTickWithMarket: (NSString*) market
    instruments: (NSArray<NSString*>*) instruments
    groups: (NSArray<NSString*>*) groups
    mappingPriority: (NSString*) mappingPriority
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSArray<NSString*>* instruments = @[@"instruments_example"]; // A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1LatestTickWithMarket:market
              instruments:instruments
              groups:groups
              mappingPriority:mappingPriority
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1LatestTick: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instruments** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1Markets**
```objc
-(NSURLSessionTask*) futuresV1MarketsWithMarket: (NSString*) market
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @""; // The exchange to obtain data from (optional) (default to @"")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1MarketsWithMarket:market
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1Markets: %@", error);
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

# **futuresV1MarketsInstruments**
```objc
-(NSURLSessionTask*) futuresV1MarketsInstrumentsWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    instrumentStatus: (NSArray<NSString*>*) instrumentStatus
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @""; // The exchange to obtain data from (optional) (default to @"")
NSString* instrument = @""; // The mapped instrument to retrieve on a specific market. (optional) (default to @"")
NSArray<NSString*>* instrumentStatus = @[@"instrumentStatus_example"]; // The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1MarketsInstrumentsWithMarket:market
              instrument:instrument
              instrumentStatus:instrumentStatus
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1MarketsInstruments: %@", error);
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

# **futuresV1MarketsInstrumentsUnmapped**
```objc
-(NSURLSessionTask*) futuresV1MarketsInstrumentsUnmappedWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    instrumentStatus: (NSArray<NSString*>*) instrumentStatus
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @""; // The exchange to obtain data from (optional) (default to @"")
NSString* instrument = @""; // The unmapped instrument to retrieve on a specific market. (optional) (default to @"")
NSArray<NSString*>* instrumentStatus = @[@"instrumentStatus_example"]; // The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance futuresV1MarketsInstrumentsUnmappedWithMarket:market
              instrument:instrument
              instrumentStatus:instrumentStatus
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->futuresV1MarketsInstrumentsUnmapped: %@", error);
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

# **indexV1HistoricalDays**
```objc
-(NSURLSessionTask*) indexV1HistoricalDaysWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance indexV1HistoricalDaysWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->indexV1HistoricalDays: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1HistoricalHours**
```objc
-(NSURLSessionTask*) indexV1HistoricalHoursWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance indexV1HistoricalHoursWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->indexV1HistoricalHours: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1HistoricalMessages**
```objc
-(NSURLSessionTask*) indexV1HistoricalMessagesWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    afterTs: (NSNumber*) afterTs
    lastCcseq: (NSNumber*) lastCcseq
    limit: (NSNumber*) limit
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    return404OnEmptyResponse: (NSNumber*) return404OnEmptyResponse
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
NSNumber* afterTs = @56; // Unix timestamp in seconds of the earliest index message in the response (optional)
NSNumber* lastCcseq = @0; // The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to @0)
NSNumber* limit = @100; // The maximum number of index messages to return (optional) (default to @100)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
NSNumber* return404OnEmptyResponse = @(NO); // If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to @(NO))

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance indexV1HistoricalMessagesWithMarket:market
              instrument:instrument
              afterTs:afterTs
              lastCcseq:lastCcseq
              limit:limit
              mappingPriority:mappingPriority
              responseFormat:responseFormat
              return404OnEmptyResponse:return404OnEmptyResponse
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->indexV1HistoricalMessages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **afterTs** | **NSNumber***| Unix timestamp in seconds of the earliest index message in the response | [optional] 
 **lastCcseq** | **NSNumber***| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to @0]
 **limit** | **NSNumber***| The maximum number of index messages to return | [optional] [default to @100]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]
 **return404OnEmptyResponse** | **NSNumber***| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to @(NO)]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1HistoricalMessagesHour**
```objc
-(NSURLSessionTask*) indexV1HistoricalMessagesHourWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    hourTs: (NSNumber*) hourTs
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    return404OnEmptyResponse: (NSNumber*) return404OnEmptyResponse
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
NSNumber* hourTs = @56; // Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. (optional)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
NSNumber* return404OnEmptyResponse = @(NO); // If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to @(NO))

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance indexV1HistoricalMessagesHourWithMarket:market
              instrument:instrument
              hourTs:hourTs
              mappingPriority:mappingPriority
              responseFormat:responseFormat
              return404OnEmptyResponse:return404OnEmptyResponse
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->indexV1HistoricalMessagesHour: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hourTs** | **NSNumber***| Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | [optional] 
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]
 **return404OnEmptyResponse** | **NSNumber***| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to @(NO)]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1HistoricalMinutes**
```objc
-(NSURLSessionTask*) indexV1HistoricalMinutesWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSString* instrument = @"instrument_example"; // The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance indexV1HistoricalMinutesWithMarket:market
              instrument:instrument
              groups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              mappingPriority:mappingPriority
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->indexV1HistoricalMinutes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instrument** | **NSString***| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1LatestInstrumentMetadata**
```objc
-(NSURLSessionTask*) indexV1LatestInstrumentMetadataWithMarket: (NSString*) market
    instruments: (NSArray<NSString*>*) instruments
    groups: (NSArray<NSString*>*) groups
    mappingPriority: (NSString*) mappingPriority
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSArray<NSString*>* instruments = @[@"instruments_example"]; // A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance indexV1LatestInstrumentMetadataWithMarket:market
              instruments:instruments
              groups:groups
              mappingPriority:mappingPriority
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->indexV1LatestInstrumentMetadata: %@", error);
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

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1LatestTick**
```objc
-(NSURLSessionTask*) indexV1LatestTickWithMarket: (NSString*) market
    instruments: (NSArray<NSString*>*) instruments
    groups: (NSArray<NSString*>*) groups
    mappingPriority: (NSString*) mappingPriority
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @"market_example"; // The exchange to obtain data from
NSArray<NSString*>* instruments = @[@"instruments_example"]; // A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance indexV1LatestTickWithMarket:market
              instruments:instruments
              groups:groups
              mappingPriority:mappingPriority
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->indexV1LatestTick: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **NSString***| The exchange to obtain data from | 
 **instruments** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1Markets**
```objc
-(NSURLSessionTask*) indexV1MarketsWithMarket: (NSString*) market
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @""; // The exchange to obtain data from (optional) (default to @"")

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance indexV1MarketsWithMarket:market
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->indexV1Markets: %@", error);
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

# **indexV1MarketsInstruments**
```objc
-(NSURLSessionTask*) indexV1MarketsInstrumentsWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    instrumentStatus: (NSArray<NSString*>*) instrumentStatus
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @""; // The exchange to obtain data from (optional) (default to @"")
NSString* instrument = @""; // The mapped instrument to retrieve on a specific market. (optional) (default to @"")
NSArray<NSString*>* instrumentStatus = @[@"instrumentStatus_example"]; // The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance indexV1MarketsInstrumentsWithMarket:market
              instrument:instrument
              instrumentStatus:instrumentStatus
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->indexV1MarketsInstruments: %@", error);
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

# **indexV1MarketsInstrumentsUnmapped**
```objc
-(NSURLSessionTask*) indexV1MarketsInstrumentsUnmappedWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    instrumentStatus: (NSArray<NSString*>*) instrumentStatus
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @""; // The exchange to obtain data from (optional) (default to @"")
NSString* instrument = @""; // The unmapped instrument to retrieve on a specific market. (optional) (default to @"")
NSArray<NSString*>* instrumentStatus = @[@"instrumentStatus_example"]; // The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

OAIFuturesApi*apiInstance = [[OAIFuturesApi alloc] init];

[apiInstance indexV1MarketsInstrumentsUnmappedWithMarket:market
              instrument:instrument
              instrumentStatus:instrumentStatus
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIFuturesApi->indexV1MarketsInstrumentsUnmapped: %@", error);
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

