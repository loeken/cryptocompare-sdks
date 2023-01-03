#import "OAINewsApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIError.h"
#import "OAIGENERICRESPONSE.h"


@interface OAINewsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAINewsApi

NSString* kOAINewsApiErrorDomain = @"OAINewsApiErrorDomain";
NSInteger kOAINewsApiMissingParamErrorCode = 234513;

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
///  @param sourceIds Get articles from specific sources; either by their ids or keys (optional)
///
///  @param lang The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional, default to @"EN")
///
///  @param categories News article categories to return (optional)
///
///  @param excludeCategories News article categories to exclude from results (optional)
///
///  @param toTs Articles published on or before this timestamp (optional, default to @-1)
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) newsV1ArticleListWithSourceIds: (NSArray<NSString*>*) sourceIds
    lang: (NSString*) lang
    categories: (NSArray<NSString*>*) categories
    excludeCategories: (NSArray<NSString*>*) excludeCategories
    toTs: (NSNumber*) toTs
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/news/v1/article/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sourceIds != nil) {
        queryParams[@"source_ids"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: sourceIds format: @"csv"];
    }
    if (lang != nil) {
        queryParams[@"lang"] = lang;
    }
    if (categories != nil) {
        queryParams[@"categories"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: categories format: @"csv"];
    }
    if (excludeCategories != nil) {
        queryParams[@"exclude_categories"] = [[OAIQueryParamCollection alloc] initWithValuesAndFormat: excludeCategories format: @"csv"];
    }
    if (toTs != nil) {
        queryParams[@"to_ts"] = toTs;
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
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) newsV1CategoryListWithCompletionHandler: 
    (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/news/v1/category/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
///  @param lang The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional, default to @"EN")
///
///  @param type RSS, API, TWITTER (optional, default to @"RSS")
///
///  @param status The status for the  article source entry. Allowed values: ACTIVE, INACTIVE (optional, default to @"ACTIVE")
///
///  @returns OAIGENERICRESPONSE*
///
-(NSURLSessionTask*) newsV1SourceListWithLang: (NSString*) lang
    type: (NSString*) type
    status: (NSString*) status
    completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/news/v1/source/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (lang != nil) {
        queryParams[@"lang"] = lang;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
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
