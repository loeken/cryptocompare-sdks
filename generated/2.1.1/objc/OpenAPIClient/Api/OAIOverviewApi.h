#import <Foundation/Foundation.h>
#import "OAIError.h"
#import "OAIGENERICRESPONSE.h"
#import "OAIApi.h"

/**
* CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
* CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
*
* The version of the OpenAPI document: 2.1.1
* Contact: data@cryptocompare.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIOverviewApi: NSObject <OAIApi>

extern NSString* kOAIOverviewApiErrorDomain;
extern NSInteger kOAIOverviewApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// 
/// 
///
/// @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
/// @param limit The number of data points to return (optional) (default to @30)
/// @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
/// @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
/// @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
/// @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
/// 
///  code:200 message:"Success response from the API.",
///  code:400 message:"The 400 error occurs when some of the data sent is malformed.",
///  code:401 message:"The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.",
///  code:403 message:"The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.",
///  code:404 message:"The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid",
///  code:405 message:"The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.",
///  code:429 message:"The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.",
///  code:500 message:"The 500 error occurs our API is up but does not know how to / can't handle the request.",
///  code:502 message:"The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.",
///  code:503 message:"The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer."
///
/// @return OAIGENERICRESPONSE*
-(NSURLSessionTask*) overviewV1HistoricalMarketcapAllAssetsDaysWithGroups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    responseFormat: (NSString*) responseFormat
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;


/// 
/// 
///
/// @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
/// @param limit The number of data points to return (optional) (default to @30)
/// @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
/// @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
/// @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
/// @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
/// 
///  code:200 message:"Success response from the API.",
///  code:400 message:"The 400 error occurs when some of the data sent is malformed.",
///  code:401 message:"The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.",
///  code:403 message:"The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.",
///  code:404 message:"The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid",
///  code:405 message:"The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.",
///  code:429 message:"The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.",
///  code:500 message:"The 500 error occurs our API is up but does not know how to / can't handle the request.",
///  code:502 message:"The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.",
///  code:503 message:"The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer."
///
/// @return OAIGENERICRESPONSE*
-(NSURLSessionTask*) overviewV1HistoricalMarketcapAllAssetsHoursWithGroups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    responseFormat: (NSString*) responseFormat
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;


/// 
/// 
///
/// @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
/// @param limit The number of data points to return (optional) (default to @30)
/// @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
/// @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
/// @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
/// @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
/// 
///  code:200 message:"Success response from the API.",
///  code:400 message:"The 400 error occurs when some of the data sent is malformed.",
///  code:401 message:"The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.",
///  code:403 message:"The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.",
///  code:404 message:"The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid",
///  code:405 message:"The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.",
///  code:429 message:"The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.",
///  code:500 message:"The 500 error occurs our API is up but does not know how to / can't handle the request.",
///  code:502 message:"The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.",
///  code:503 message:"The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer."
///
/// @return OAIGENERICRESPONSE*
-(NSURLSessionTask*) overviewV1HistoricalMarketcapFtwAssetsDaysWithGroups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    responseFormat: (NSString*) responseFormat
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;


/// 
/// 
///
/// @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
/// @param limit The number of data points to return (optional) (default to @30)
/// @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
/// @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to @1)
/// @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to @(YES))
/// @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to @"JSON")
/// 
///  code:200 message:"Success response from the API.",
///  code:400 message:"The 400 error occurs when some of the data sent is malformed.",
///  code:401 message:"The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.",
///  code:403 message:"The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.",
///  code:404 message:"The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid",
///  code:405 message:"The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.",
///  code:429 message:"The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.",
///  code:500 message:"The 500 error occurs our API is up but does not know how to / can't handle the request.",
///  code:502 message:"The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.",
///  code:503 message:"The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer."
///
/// @return OAIGENERICRESPONSE*
-(NSURLSessionTask*) overviewV1HistoricalMarketcapFtwAssetsHoursWithGroups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    responseFormat: (NSString*) responseFormat
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;


/// 
/// 
///
/// @param groups When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional)
/// 
///  code:200 message:"Success response from the API.",
///  code:400 message:"The 400 error occurs when some of the data sent is malformed.",
///  code:401 message:"The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.",
///  code:403 message:"The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.",
///  code:404 message:"The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid",
///  code:405 message:"The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.",
///  code:429 message:"The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.",
///  code:500 message:"The 500 error occurs our API is up but does not know how to / can't handle the request.",
///  code:502 message:"The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.",
///  code:503 message:"The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer."
///
/// @return OAIGENERICRESPONSE*
-(NSURLSessionTask*) overviewV1LatestMarketcapAllTickWithGroups: (NSArray<NSString*>*) groups
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;


/// 
/// 
///
/// @param groups When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional)
/// 
///  code:200 message:"Success response from the API.",
///  code:400 message:"The 400 error occurs when some of the data sent is malformed.",
///  code:401 message:"The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.",
///  code:403 message:"The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.",
///  code:404 message:"The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid",
///  code:405 message:"The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.",
///  code:429 message:"The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.",
///  code:500 message:"The 500 error occurs our API is up but does not know how to / can't handle the request.",
///  code:502 message:"The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.",
///  code:503 message:"The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer."
///
/// @return OAIGENERICRESPONSE*
-(NSURLSessionTask*) overviewV1LatestMarketcapFtwTickWithGroups: (NSArray<NSString*>*) groups
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;



@end