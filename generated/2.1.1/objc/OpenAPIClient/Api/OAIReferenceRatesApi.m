#import "OAIReferenceRatesApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIError.h"
#import "OAIGENERICRESPONSE.h"


@interface OAIReferenceRatesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIReferenceRatesApi

NSString* kOAIReferenceRatesApiErrorDomain = @"OAIReferenceRatesApiErrorDomain";
NSInteger kOAIReferenceRatesApiMissingParamErrorCode = 234513;

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
///  @param market The exchange to obtain data from 
///
///  @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. 
///
///  @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
///
///  @param limit The number of data points to return (optional, default to @30)
///
///  @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
///
///  @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to @1)
///
///  @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to @(YES))
///
///  @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to @"CHECK_MAPPED_FIRST")
///
///  @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to @"JSON")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) indexCcV1HistoricalDaysWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    // verify the required parameter 'market' is set
    if (market == nil) {
        NSParameterAssert(market);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"market"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'instrument' is set
    if (instrument == nil) {
        NSParameterAssert(instrument);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instrument"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/index/cc/v1/historical/days"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (market != nil) {
        queryParams[@"market"] = market;
    }
    if (instrument != nil) {
        queryParams[@"instrument"] = instrument;
    }
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
    if (mappingPriority != nil) {
        queryParams[@"mapping_priority"] = mappingPriority;
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
///  @param market The exchange to obtain data from 
///
///  @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. 
///
///  @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
///
///  @param limit The number of data points to return (optional, default to @30)
///
///  @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
///
///  @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to @1)
///
///  @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to @(YES))
///
///  @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to @"CHECK_MAPPED_FIRST")
///
///  @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to @"JSON")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) indexCcV1HistoricalHoursWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    // verify the required parameter 'market' is set
    if (market == nil) {
        NSParameterAssert(market);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"market"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'instrument' is set
    if (instrument == nil) {
        NSParameterAssert(instrument);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instrument"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/index/cc/v1/historical/hours"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (market != nil) {
        queryParams[@"market"] = market;
    }
    if (instrument != nil) {
        queryParams[@"instrument"] = instrument;
    }
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
    if (mappingPriority != nil) {
        queryParams[@"mapping_priority"] = mappingPriority;
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
///  @param market The exchange to obtain data from 
///
///  @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. 
///
///  @param afterTs Unix timestamp in seconds of the earliest index message in the response (optional)
///
///  @param lastCcseq The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional, default to @0)
///
///  @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to @"CHECK_MAPPED_FIRST")
///
///  @param limit The maximum number of index messages to return (optional, default to @100)
///
///  @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to @"JSON")
///
///  @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional, default to @(NO))
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) indexCcV1HistoricalMessagesWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    afterTs: (NSNumber*) afterTs
    lastCcseq: (NSNumber*) lastCcseq
    mappingPriority: (NSString*) mappingPriority
    limit: (NSNumber*) limit
    responseFormat: (NSString*) responseFormat
    return404OnEmptyResponse: (NSNumber*) return404OnEmptyResponse
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    // verify the required parameter 'market' is set
    if (market == nil) {
        NSParameterAssert(market);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"market"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'instrument' is set
    if (instrument == nil) {
        NSParameterAssert(instrument);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instrument"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/index/cc/v1/historical/messages"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (market != nil) {
        queryParams[@"market"] = market;
    }
    if (instrument != nil) {
        queryParams[@"instrument"] = instrument;
    }
    if (afterTs != nil) {
        queryParams[@"after_ts"] = afterTs;
    }
    if (lastCcseq != nil) {
        queryParams[@"last_ccseq"] = lastCcseq;
    }
    if (mappingPriority != nil) {
        queryParams[@"mapping_priority"] = mappingPriority;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (responseFormat != nil) {
        queryParams[@"response_format"] = responseFormat;
    }
    if (return404OnEmptyResponse != nil) {
        queryParams[@"return_404_on_empty_response"] = [return404OnEmptyResponse isEqual:@(YES)] ? @"true" : @"false";
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
    NSArray *authSettings = @[@"api_key_header", @"api_key_query"];

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
///  @param market The exchange to obtain data from 
///
///  @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. 
///
///  @param hourTs Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. (optional)
///
///  @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to @"CHECK_MAPPED_FIRST")
///
///  @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to @"JSON")
///
///  @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional, default to @(NO))
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) indexCcV1HistoricalMessagesHourWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    hourTs: (NSNumber*) hourTs
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    return404OnEmptyResponse: (NSNumber*) return404OnEmptyResponse
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    // verify the required parameter 'market' is set
    if (market == nil) {
        NSParameterAssert(market);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"market"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'instrument' is set
    if (instrument == nil) {
        NSParameterAssert(instrument);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instrument"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/index/cc/v1/historical/messages/hour"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (market != nil) {
        queryParams[@"market"] = market;
    }
    if (instrument != nil) {
        queryParams[@"instrument"] = instrument;
    }
    if (hourTs != nil) {
        queryParams[@"hour_ts"] = hourTs;
    }
    if (mappingPriority != nil) {
        queryParams[@"mapping_priority"] = mappingPriority;
    }
    if (responseFormat != nil) {
        queryParams[@"response_format"] = responseFormat;
    }
    if (return404OnEmptyResponse != nil) {
        queryParams[@"return_404_on_empty_response"] = [return404OnEmptyResponse isEqual:@(YES)] ? @"true" : @"false";
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
    NSArray *authSettings = @[@"api_key_header", @"api_key_query"];

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
///  @param market The exchange to obtain data from 
///
///  @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. 
///
///  @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
///
///  @param limit The number of data points to return (optional, default to @30)
///
///  @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
///
///  @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to @1)
///
///  @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to @(YES))
///
///  @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to @"CHECK_MAPPED_FIRST")
///
///  @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to @"JSON")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) indexCcV1HistoricalMinutesWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    groups: (NSArray<NSString*>*) groups
    limit: (NSNumber*) limit
    toTs: (NSNumber*) toTs
    aggregate: (NSNumber*) aggregate
    fill: (NSNumber*) fill
    mappingPriority: (NSString*) mappingPriority
    responseFormat: (NSString*) responseFormat
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    // verify the required parameter 'market' is set
    if (market == nil) {
        NSParameterAssert(market);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"market"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'instrument' is set
    if (instrument == nil) {
        NSParameterAssert(instrument);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instrument"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/index/cc/v1/historical/minutes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (market != nil) {
        queryParams[@"market"] = market;
    }
    if (instrument != nil) {
        queryParams[@"instrument"] = instrument;
    }
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
    if (mappingPriority != nil) {
        queryParams[@"mapping_priority"] = mappingPriority;
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
///  @param market The exchange to obtain data from 
///
///  @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. 
///
///  @param groups When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional)
///
///  @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to @"CHECK_MAPPED_FIRST")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) indexCcV1LatestInstrumentMetadataWithMarket: (NSString*) market
    instruments: (NSArray<NSString*>*) instruments
    groups: (NSArray<NSString*>*) groups
    mappingPriority: (NSString*) mappingPriority
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    // verify the required parameter 'market' is set
    if (market == nil) {
        NSParameterAssert(market);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"market"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'instruments' is set
    if (instruments == nil) {
        NSParameterAssert(instruments);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instruments"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/index/cc/v1/latest/instrument/metadata"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (market != nil) {
        queryParams[@"market"] = market;
    }
    if (instruments != nil) {
        queryParams[@"instruments"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: instruments format: @"csv"];
    }
    if (groups != nil) {
        queryParams[@"groups"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: groups format: @"csv"];
    }
    if (mappingPriority != nil) {
        queryParams[@"mapping_priority"] = mappingPriority;
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
///  @param market The exchange to obtain data from 
///
///  @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. 
///
///  @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
///
///  @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional, default to @"CHECK_MAPPED_FIRST")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) indexCcV1LatestTickWithMarket: (NSString*) market
    instruments: (NSArray<NSString*>*) instruments
    groups: (NSArray<NSString*>*) groups
    mappingPriority: (NSString*) mappingPriority
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    // verify the required parameter 'market' is set
    if (market == nil) {
        NSParameterAssert(market);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"market"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'instruments' is set
    if (instruments == nil) {
        NSParameterAssert(instruments);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instruments"] };
            NSError* error = [NSError errorWithDomain:kOAIReferenceRatesApiErrorDomain code:kOAIReferenceRatesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/index/cc/v1/latest/tick"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (market != nil) {
        queryParams[@"market"] = market;
    }
    if (instruments != nil) {
        queryParams[@"instruments"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: instruments format: @"csv"];
    }
    if (groups != nil) {
        queryParams[@"groups"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: groups format: @"csv"];
    }
    if (mappingPriority != nil) {
        queryParams[@"mapping_priority"] = mappingPriority;
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
///  @param market The exchange to obtain data from (optional, default to @"")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) indexCcV1MarketsWithMarket: (NSString*) market
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/index/cc/v1/markets"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (market != nil) {
        queryParams[@"market"] = market;
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
///  @param market The exchange to obtain data from (optional, default to @"")
///
///  @param instrument The mapped instrument to retrieve on a specific market. (optional, default to @"")
///
///  @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) indexCcV1MarketsInstrumentsWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    instrumentStatus: (NSArray<NSString*>*) instrumentStatus
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/index/cc/v1/markets/instruments"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (market != nil) {
        queryParams[@"market"] = market;
    }
    if (instrument != nil) {
        queryParams[@"instrument"] = instrument;
    }
    if (instrumentStatus != nil) {
        queryParams[@"instrument_status"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: instrumentStatus format: @"csv"];
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
///  @param market The exchange to obtain data from (optional, default to @"")
///
///  @param instrument The unmapped instrument to retrieve on a specific market. (optional, default to @"")
///
///  @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) indexCcV1MarketsInstrumentsUnmappedWithMarket: (NSString*) market
    instrument: (NSString*) instrument
    instrumentStatus: (NSArray<NSString*>*) instrumentStatus
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/index/cc/v1/markets/instruments/unmapped"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (market != nil) {
        queryParams[@"market"] = market;
    }
    if (instrument != nil) {
        queryParams[@"instrument"] = instrument;
    }
    if (instrumentStatus != nil) {
        queryParams[@"instrument_status"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: instrumentStatus format: @"csv"];
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
