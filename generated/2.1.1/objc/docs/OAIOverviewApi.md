# OAIOverviewApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**overviewV1HistoricalMarketcapAllAssetsDays**](OAIOverviewApi.md#overviewv1historicalmarketcapallassetsdays) | **GET** /overview/v1/historical/marketcap/all/assets/days | 
[**overviewV1HistoricalMarketcapAllAssetsHours**](OAIOverviewApi.md#overviewv1historicalmarketcapallassetshours) | **GET** /overview/v1/historical/marketcap/all/assets/hours | 
[**overviewV1HistoricalMarketcapFtwAssetsDays**](OAIOverviewApi.md#overviewv1historicalmarketcapftwassetsdays) | **GET** /overview/v1/historical/marketcap/ftw/assets/days | 
[**overviewV1HistoricalMarketcapFtwAssetsHours**](OAIOverviewApi.md#overviewv1historicalmarketcapftwassetshours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours | 
[**overviewV1LatestMarketcapAllTick**](OAIOverviewApi.md#overviewv1latestmarketcapalltick) | **GET** /overview/v1/latest/marketcap/all/tick | 
[**overviewV1LatestMarketcapFtwTick**](OAIOverviewApi.md#overviewv1latestmarketcapftwtick) | **GET** /overview/v1/latest/marketcap/ftw/tick | 


# **overviewV1HistoricalMarketcapAllAssetsDays**
```objc
-(NSURLSessionTask*) overviewV1HistoricalMarketcapAllAssetsDaysWithGroups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAIOverviewApi*apiInstance = [[OAIOverviewApi alloc] init];

[apiInstance overviewV1HistoricalMarketcapAllAssetsDaysWithGroups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOverviewApi->overviewV1HistoricalMarketcapAllAssetsDays: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1HistoricalMarketcapAllAssetsHours**
```objc
-(NSURLSessionTask*) overviewV1HistoricalMarketcapAllAssetsHoursWithGroups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAIOverviewApi*apiInstance = [[OAIOverviewApi alloc] init];

[apiInstance overviewV1HistoricalMarketcapAllAssetsHoursWithGroups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOverviewApi->overviewV1HistoricalMarketcapAllAssetsHours: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1HistoricalMarketcapFtwAssetsDays**
```objc
-(NSURLSessionTask*) overviewV1HistoricalMarketcapFtwAssetsDaysWithGroups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAIOverviewApi*apiInstance = [[OAIOverviewApi alloc] init];

[apiInstance overviewV1HistoricalMarketcapFtwAssetsDaysWithGroups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOverviewApi->overviewV1HistoricalMarketcapFtwAssetsDays: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1HistoricalMarketcapFtwAssetsHours**
```objc
-(NSURLSessionTask*) overviewV1HistoricalMarketcapFtwAssetsHoursWithGroups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    responseFormat: (NSString*) responseFormat
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
NSNumber* limit = @30; // The number of data points to return (optional) (default to @30)
NSNumber* toTs = @56; // Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
NSNumber* aggregate = @1; // The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
NSNumber* fill = @(YES); // Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
NSString* responseFormat = @"JSON"; // The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")

OAIOverviewApi*apiInstance = [[OAIOverviewApi alloc] init];

[apiInstance overviewV1HistoricalMarketcapFtwAssetsHoursWithGroups:groups
              limit:limit
              toTs:toTs
              aggregate:aggregate
              fill:fill
              responseFormat:responseFormat
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOverviewApi->overviewV1HistoricalMarketcapFtwAssetsHours: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **NSNumber***| The number of data points to return | [optional] [default to @30]
 **toTs** | **NSNumber***| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **NSNumber***| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to @1]
 **fill** | **NSNumber***| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to @(YES)]
 **responseFormat** | **NSString***| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to @&quot;JSON&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1LatestMarketcapAllTick**
```objc
-(NSURLSessionTask*) overviewV1LatestMarketcapAllTickWithGroups: (NSArray<NSString*>*) groups
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional)

OAIOverviewApi*apiInstance = [[OAIOverviewApi alloc] init];

[apiInstance overviewV1LatestMarketcapAllTickWithGroups:groups
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOverviewApi->overviewV1LatestMarketcapAllTick: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] 

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1LatestMarketcapFtwTick**
```objc
-(NSURLSessionTask*) overviewV1LatestMarketcapFtwTickWithGroups: (NSArray<NSString*>*) groups
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSArray<NSString*>* groups = @[@"groups_example"]; // When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional)

OAIOverviewApi*apiInstance = [[OAIOverviewApi alloc] init];

[apiInstance overviewV1LatestMarketcapFtwTickWithGroups:groups
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOverviewApi->overviewV1LatestMarketcapFtwTick: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] 

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

