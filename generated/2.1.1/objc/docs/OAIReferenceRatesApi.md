# OAIReferenceRatesApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**indexCcV1HistoricalDays**](OAIReferenceRatesApi.md#indexccv1historicaldays) | **GET** /index/cc/v1/historical/days | 
[**indexCcV1HistoricalHours**](OAIReferenceRatesApi.md#indexccv1historicalhours) | **GET** /index/cc/v1/historical/hours | 
[**indexCcV1HistoricalMessages**](OAIReferenceRatesApi.md#indexccv1historicalmessages) | **GET** /index/cc/v1/historical/messages | 
[**indexCcV1HistoricalMessagesHour**](OAIReferenceRatesApi.md#indexccv1historicalmessageshour) | **GET** /index/cc/v1/historical/messages/hour | 
[**indexCcV1HistoricalMinutes**](OAIReferenceRatesApi.md#indexccv1historicalminutes) | **GET** /index/cc/v1/historical/minutes | 
[**indexCcV1LatestInstrumentMetadata**](OAIReferenceRatesApi.md#indexccv1latestinstrumentmetadata) | **GET** /index/cc/v1/latest/instrument/metadata | 
[**indexCcV1LatestTick**](OAIReferenceRatesApi.md#indexccv1latesttick) | **GET** /index/cc/v1/latest/tick | 
[**indexCcV1Markets**](OAIReferenceRatesApi.md#indexccv1markets) | **GET** /index/cc/v1/markets | 
[**indexCcV1MarketsInstruments**](OAIReferenceRatesApi.md#indexccv1marketsinstruments) | **GET** /index/cc/v1/markets/instruments | 
[**indexCcV1MarketsInstrumentsUnmapped**](OAIReferenceRatesApi.md#indexccv1marketsinstrumentsunmapped) | **GET** /index/cc/v1/markets/instruments/unmapped | 


# **indexCcV1HistoricalDays**
```objc
-(NSURLSessionTask*) indexCcV1HistoricalDaysWithMarket: (NSString*) market
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

OAIReferenceRatesApi*apiInstance = [[OAIReferenceRatesApi alloc] init];

[apiInstance indexCcV1HistoricalDaysWithMarket:market
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
                            NSLog(@"Error calling OAIReferenceRatesApi->indexCcV1HistoricalDays: %@", error);
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

# **indexCcV1HistoricalHours**
```objc
-(NSURLSessionTask*) indexCcV1HistoricalHoursWithMarket: (NSString*) market
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

OAIReferenceRatesApi*apiInstance = [[OAIReferenceRatesApi alloc] init];

[apiInstance indexCcV1HistoricalHoursWithMarket:market
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
                            NSLog(@"Error calling OAIReferenceRatesApi->indexCcV1HistoricalHours: %@", error);
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

# **indexCcV1HistoricalMessages**
```objc
-(NSURLSessionTask*) indexCcV1HistoricalMessagesWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    afterTs: (NSNumber*) afterTs
    lastCcseq: (NSNumber*) lastCcseq
    mappingPriority: (NSString*) mappingPriority
    limit: (NSNumber*) limit
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
NSString* mappingPriority = @"CHECK_MAPPED_FIRST"; // The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to @"CHECK_MAPPED_FIRST")
NSNumber* limit = @100; // The maximum number of index messages to return (optional) (default to @100)
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
NSNumber* return404OnEmptyResponse = @(NO); // If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to @(NO))

OAIReferenceRatesApi*apiInstance = [[OAIReferenceRatesApi alloc] init];

[apiInstance indexCcV1HistoricalMessagesWithMarket:market
              instrument:instrument
              afterTs:afterTs
              lastCcseq:lastCcseq
              mappingPriority:mappingPriority
              limit:limit
              responseFormat:responseFormat
              return404OnEmptyResponse:return404OnEmptyResponse
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReferenceRatesApi->indexCcV1HistoricalMessages: %@", error);
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
 **mappingPriority** | **NSString***| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to @&quot;CHECK_MAPPED_FIRST&quot;]
 **limit** | **NSNumber***| The maximum number of index messages to return | [optional] [default to @100]
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

# **indexCcV1HistoricalMessagesHour**
```objc
-(NSURLSessionTask*) indexCcV1HistoricalMessagesHourWithMarket: (NSString*) market
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

OAIReferenceRatesApi*apiInstance = [[OAIReferenceRatesApi alloc] init];

[apiInstance indexCcV1HistoricalMessagesHourWithMarket:market
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
                            NSLog(@"Error calling OAIReferenceRatesApi->indexCcV1HistoricalMessagesHour: %@", error);
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

# **indexCcV1HistoricalMinutes**
```objc
-(NSURLSessionTask*) indexCcV1HistoricalMinutesWithMarket: (NSString*) market
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

OAIReferenceRatesApi*apiInstance = [[OAIReferenceRatesApi alloc] init];

[apiInstance indexCcV1HistoricalMinutesWithMarket:market
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
                            NSLog(@"Error calling OAIReferenceRatesApi->indexCcV1HistoricalMinutes: %@", error);
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

# **indexCcV1LatestInstrumentMetadata**
```objc
-(NSURLSessionTask*) indexCcV1LatestInstrumentMetadataWithMarket: (NSString*) market
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

OAIReferenceRatesApi*apiInstance = [[OAIReferenceRatesApi alloc] init];

[apiInstance indexCcV1LatestInstrumentMetadataWithMarket:market
              instruments:instruments
              groups:groups
              mappingPriority:mappingPriority
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReferenceRatesApi->indexCcV1LatestInstrumentMetadata: %@", error);
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

# **indexCcV1LatestTick**
```objc
-(NSURLSessionTask*) indexCcV1LatestTickWithMarket: (NSString*) market
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

OAIReferenceRatesApi*apiInstance = [[OAIReferenceRatesApi alloc] init];

[apiInstance indexCcV1LatestTickWithMarket:market
              instruments:instruments
              groups:groups
              mappingPriority:mappingPriority
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReferenceRatesApi->indexCcV1LatestTick: %@", error);
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

# **indexCcV1Markets**
```objc
-(NSURLSessionTask*) indexCcV1MarketsWithMarket: (NSString*) market
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @""; // The exchange to obtain data from (optional) (default to @"")

OAIReferenceRatesApi*apiInstance = [[OAIReferenceRatesApi alloc] init];

[apiInstance indexCcV1MarketsWithMarket:market
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReferenceRatesApi->indexCcV1Markets: %@", error);
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

# **indexCcV1MarketsInstruments**
```objc
-(NSURLSessionTask*) indexCcV1MarketsInstrumentsWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    instrumentStatus: (NSArray<NSString*>*) instrumentStatus
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @""; // The exchange to obtain data from (optional) (default to @"")
NSString* instrument = @""; // The mapped instrument to retrieve on a specific market. (optional) (default to @"")
NSArray<NSString*>* instrumentStatus = @[@"instrumentStatus_example"]; // The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

OAIReferenceRatesApi*apiInstance = [[OAIReferenceRatesApi alloc] init];

[apiInstance indexCcV1MarketsInstrumentsWithMarket:market
              instrument:instrument
              instrumentStatus:instrumentStatus
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReferenceRatesApi->indexCcV1MarketsInstruments: %@", error);
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

# **indexCcV1MarketsInstrumentsUnmapped**
```objc
-(NSURLSessionTask*) indexCcV1MarketsInstrumentsUnmappedWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    instrumentStatus: (NSArray<NSString*>*) instrumentStatus
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* market = @""; // The exchange to obtain data from (optional) (default to @"")
NSString* instrument = @""; // The unmapped instrument to retrieve on a specific market. (optional) (default to @"")
NSArray<NSString*>* instrumentStatus = @[@"instrumentStatus_example"]; // The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

OAIReferenceRatesApi*apiInstance = [[OAIReferenceRatesApi alloc] init];

[apiInstance indexCcV1MarketsInstrumentsUnmappedWithMarket:market
              instrument:instrument
              instrumentStatus:instrumentStatus
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIReferenceRatesApi->indexCcV1MarketsInstrumentsUnmapped: %@", error);
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

