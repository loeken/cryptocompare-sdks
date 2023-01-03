# OAINewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**newsV1ArticleList**](OAINewsApi.md#newsv1articlelist) | **GET** /news/v1/article/list | 
[**newsV1CategoryList**](OAINewsApi.md#newsv1categorylist) | **GET** /news/v1/category/list | 
[**newsV1SourceList**](OAINewsApi.md#newsv1sourcelist) | **GET** /news/v1/source/list | 


# **newsV1ArticleList**
```objc
-(NSURLSessionTask*) newsV1ArticleListWithSourceIds: (NSArray<NSString*>*) sourceIds
    lang: (NSString*) lang
    categories: (NSArray<NSString*>*) categories
    excludeCategories: (NSArray<NSString*>*) excludeCategories
    toTs: (NSNumber*) toTs
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSArray<NSString*>* sourceIds = @[@"sourceIds_example"]; // Get articles from specific sources; either by their ids or keys (optional)
NSString* lang = @"EN"; // The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional) (default to @"EN")
NSArray<NSString*>* categories = @[@"categories_example"]; // News article categories to return (optional)
NSArray<NSString*>* excludeCategories = @[@"excludeCategories_example"]; // News article categories to exclude from results (optional)
NSNumber* toTs = @-1; // Articles published on or before this timestamp (optional) (default to @-1)

OAINewsApi*apiInstance = [[OAINewsApi alloc] init];

[apiInstance newsV1ArticleListWithSourceIds:sourceIds
              lang:lang
              categories:categories
              excludeCategories:excludeCategories
              toTs:toTs
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINewsApi->newsV1ArticleList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceIds** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| Get articles from specific sources; either by their ids or keys | [optional] 
 **lang** | **NSString***| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to @&quot;EN&quot;]
 **categories** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| News article categories to return | [optional] 
 **excludeCategories** | [**NSArray&lt;NSString*&gt;***](NSString*.md)| News article categories to exclude from results | [optional] 
 **toTs** | **NSNumber***| Articles published on or before this timestamp | [optional] [default to @-1]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newsV1CategoryList**
```objc
-(NSURLSessionTask*) newsV1CategoryListWithCompletionHandler: 
        (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc


OAINewsApi*apiInstance = [[OAINewsApi alloc] init];

[apiInstance newsV1CategoryListWithCompletionHandler: 
          ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINewsApi->newsV1CategoryList: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newsV1SourceList**
```objc
-(NSURLSessionTask*) newsV1SourceListWithLang: (NSString*) lang
    type: (NSString*) type
    status: (NSString*) status
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* lang = @"EN"; // The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional) (default to @"EN")
NSString* type = @"RSS"; // RSS, API, TWITTER (optional) (default to @"RSS")
NSString* status = @"ACTIVE"; // The status for the  article source entry. Allowed values: ACTIVE, INACTIVE (optional) (default to @"ACTIVE")

OAINewsApi*apiInstance = [[OAINewsApi alloc] init];

[apiInstance newsV1SourceListWithLang:lang
              type:type
              status:status
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINewsApi->newsV1SourceList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | **NSString***| The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to @&quot;EN&quot;]
 **type** | **NSString***| RSS, API, TWITTER | [optional] [default to @&quot;RSS&quot;]
 **status** | **NSString***| The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to @&quot;ACTIVE&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

