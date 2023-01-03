#import "OAIAssetApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIError.h"
#import "OAIGENERICRESPONSE.h"


@interface OAIAssetApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIAssetApi

NSString* kOAIAssetApiErrorDomain = @"OAIAssetApiErrorDomain";
NSInteger kOAIAssetApiMissingParamErrorCode = 234513;

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
///  @param address  
///
///  @param chainSymbol  
///
///  @param groups  (optional, default to @"")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) assetV1DataByAddressWithAddress: (NSString*) address
    chainSymbol: (NSString*) chainSymbol
    groups: (NSString*) groups
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kOAIAssetApiErrorDomain code:kOAIAssetApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'chainSymbol' is set
    if (chainSymbol == nil) {
        NSParameterAssert(chainSymbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"chainSymbol"] };
            NSError* error = [NSError errorWithDomain:kOAIAssetApiErrorDomain code:kOAIAssetApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/asset/v1/data/by/address"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (chainSymbol != nil) {
        queryParams[@"chain_symbol"] = chainSymbol;
    }
    if (groups != nil) {
        queryParams[@"groups"] = groups;
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
///  @param assetId The asset id you are interested in 
///
///  @param groups  (optional, default to @"")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) assetV1DataByIdWithAssetId: (NSNumber*) assetId
    groups: (NSString*) groups
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    // verify the required parameter 'assetId' is set
    if (assetId == nil) {
        NSParameterAssert(assetId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assetId"] };
            NSError* error = [NSError errorWithDomain:kOAIAssetApiErrorDomain code:kOAIAssetApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/asset/v1/data/by/id"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (assetId != nil) {
        queryParams[@"asset_id"] = assetId;
    }
    if (groups != nil) {
        queryParams[@"groups"] = groups;
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
///  @param assetSymbol The asset symbol you are interested in 
///
///  @param groups  (optional, default to @"")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) assetV1DataBySymbolWithAssetSymbol: (NSString*) assetSymbol
    groups: (NSString*) groups
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    // verify the required parameter 'assetSymbol' is set
    if (assetSymbol == nil) {
        NSParameterAssert(assetSymbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"assetSymbol"] };
            NSError* error = [NSError errorWithDomain:kOAIAssetApiErrorDomain code:kOAIAssetApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/asset/v1/data/by/symbol"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (assetSymbol != nil) {
        queryParams[@"asset_symbol"] = assetSymbol;
    }
    if (groups != nil) {
        queryParams[@"groups"] = groups;
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
///  @param page The page number for the request to get {page_size} coins at the time. (optional, default to @1)
///
///  @param pageSize The number of items returned per page (optional, default to @100)
///
///  @param assetType The asset class/type (optional, default to @"")
///
///  @param sortBy Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) (optional, default to @"CREATED_ON")
///
///  @param sortDirection Sort direction ( DESC,ASC ) (optional, default to @"DESC")
///
///  @param groups  (optional, default to @"")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) assetV1TopListWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    assetType: (NSString*) assetType
    sortBy: (NSString*) sortBy
    sortDirection: (NSString*) sortDirection
    groups: (NSString*) groups
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/asset/v1/top/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (pageSize != nil) {
        queryParams[@"page_size"] = pageSize;
    }
    if (assetType != nil) {
        queryParams[@"asset_type"] = assetType;
    }
    if (sortBy != nil) {
        queryParams[@"sort_by"] = sortBy;
    }
    if (sortDirection != nil) {
        queryParams[@"sort_direction"] = sortDirection;
    }
    if (groups != nil) {
        queryParams[@"groups"] = groups;
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
