#import "OAIOverviewApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIError.h"
#import "OAIGENERICRESPONSE.h"


@interface OAIOverviewApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIOverviewApi

NSString* kOAIOverviewApiErrorDomain = @"OAIOverviewApiErrorDomain";
NSInteger kOAIOverviewApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// 
/// 
///  @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
///
///  @param limit The number of data points to return (optional, default to @30)
///
///  @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
///
///  @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to @1)
///
///  @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to @(YES))
///
///  @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to @"JSON")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) overviewV1HistoricalMarketcapAllAssetsDaysWithGroups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    responseFormat: (NSString*) responseFormat
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/overview/v1/historical/marketcap/all/assets/days"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (groups != nil) {
        queryParams[@"groups"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: groups format: @"csv"];
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (toTs != nil) {
        queryParams[@"to_ts"] = toTs;
    }
    if (aggregate != nil) {
        queryParams[@"aggregate"] = aggregate;
    }
    if (fill != nil) {
        queryParams[@"fill"] = [fill isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseFormat != nil) {
        queryParams[@"response_format"] = responseFormat;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGENERICRESPONSE*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGENERICRESPONSE*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
///
///  @param limit The number of data points to return (optional, default to @30)
///
///  @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
///
///  @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to @1)
///
///  @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to @(YES))
///
///  @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to @"JSON")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) overviewV1HistoricalMarketcapAllAssetsHoursWithGroups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    responseFormat: (NSString*) responseFormat
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/overview/v1/historical/marketcap/all/assets/hours"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (groups != nil) {
        queryParams[@"groups"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: groups format: @"csv"];
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (toTs != nil) {
        queryParams[@"to_ts"] = toTs;
    }
    if (aggregate != nil) {
        queryParams[@"aggregate"] = aggregate;
    }
    if (fill != nil) {
        queryParams[@"fill"] = [fill isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseFormat != nil) {
        queryParams[@"response_format"] = responseFormat;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGENERICRESPONSE*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGENERICRESPONSE*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
///
///  @param limit The number of data points to return (optional, default to @30)
///
///  @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
///
///  @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to @1)
///
///  @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to @(YES))
///
///  @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to @"JSON")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) overviewV1HistoricalMarketcapFtwAssetsDaysWithGroups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    responseFormat: (NSString*) responseFormat
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/overview/v1/historical/marketcap/ftw/assets/days"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (groups != nil) {
        queryParams[@"groups"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: groups format: @"csv"];
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (toTs != nil) {
        queryParams[@"to_ts"] = toTs;
    }
    if (aggregate != nil) {
        queryParams[@"aggregate"] = aggregate;
    }
    if (fill != nil) {
        queryParams[@"fill"] = [fill isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseFormat != nil) {
        queryParams[@"response_format"] = responseFormat;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGENERICRESPONSE*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGENERICRESPONSE*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
///
///  @param limit The number of data points to return (optional, default to @30)
///
///  @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
///
///  @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to @1)
///
///  @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to @(YES))
///
///  @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to @"JSON")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) overviewV1HistoricalMarketcapFtwAssetsHoursWithGroups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    responseFormat: (NSString*) responseFormat
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/overview/v1/historical/marketcap/ftw/assets/hours"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (groups != nil) {
        queryParams[@"groups"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: groups format: @"csv"];
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (toTs != nil) {
        queryParams[@"to_ts"] = toTs;
    }
    if (aggregate != nil) {
        queryParams[@"aggregate"] = aggregate;
    }
    if (fill != nil) {
        queryParams[@"fill"] = [fill isEqual:@(YES)] ? @"true" : @"false";
    }
    if (responseFormat != nil) {
        queryParams[@"response_format"] = responseFormat;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGENERICRESPONSE*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGENERICRESPONSE*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param groups When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional)
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) overviewV1LatestMarketcapAllTickWithGroups: (NSArray<NSString*>*) groups
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/overview/v1/latest/marketcap/all/tick"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (groups != nil) {
        queryParams[@"groups"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: groups format: @"csv"];
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGENERICRESPONSE*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGENERICRESPONSE*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param groups When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional)
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) overviewV1LatestMarketcapFtwTickWithGroups: (NSArray<NSString*>*) groups
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/overview/v1/latest/marketcap/ftw/tick"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (groups != nil) {
        queryParams[@"groups"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: groups format: @"csv"];
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGENERICRESPONSE*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGENERICRESPONSE*)data, error);
                                }
                            }];
}



@end
