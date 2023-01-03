# OAIAssetApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assetV1DataByAddress**](OAIAssetApi.md#assetv1databyaddress) | **GET** /asset/v1/data/by/address | 
[**assetV1DataById**](OAIAssetApi.md#assetv1databyid) | **GET** /asset/v1/data/by/id | 
[**assetV1DataBySymbol**](OAIAssetApi.md#assetv1databysymbol) | **GET** /asset/v1/data/by/symbol | 
[**assetV1TopList**](OAIAssetApi.md#assetv1toplist) | **GET** /asset/v1/top/list | 


# **assetV1DataByAddress**
```objc
-(NSURLSessionTask*) assetV1DataByAddressWithAddress: (NSString*) address
    chainSymbol: (NSString*) chainSymbol
    groups: (NSString*) groups
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* address = @"address_example"; // 
NSString* chainSymbol = @"chainSymbol_example"; // 
NSString* groups = @""; //  (optional) (default to @"")

OAIAssetApi*apiInstance = [[OAIAssetApi alloc] init];

[apiInstance assetV1DataByAddressWithAddress:address
              chainSymbol:chainSymbol
              groups:groups
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAssetApi->assetV1DataByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***|  | 
 **chainSymbol** | **NSString***|  | 
 **groups** | **NSString***|  | [optional] [default to @&quot;&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assetV1DataById**
```objc
-(NSURLSessionTask*) assetV1DataByIdWithAssetId: (NSNumber*) assetId
    groups: (NSString*) groups
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSNumber* assetId = @56; // The asset id you are interested in
NSString* groups = @""; //  (optional) (default to @"")

OAIAssetApi*apiInstance = [[OAIAssetApi alloc] init];

[apiInstance assetV1DataByIdWithAssetId:assetId
              groups:groups
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAssetApi->assetV1DataById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **NSNumber***| The asset id you are interested in | 
 **groups** | **NSString***|  | [optional] [default to @&quot;&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assetV1DataBySymbol**
```objc
-(NSURLSessionTask*) assetV1DataBySymbolWithAssetSymbol: (NSString*) assetSymbol
    groups: (NSString*) groups
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSString* assetSymbol = @"assetSymbol_example"; // The asset symbol you are interested in
NSString* groups = @""; //  (optional) (default to @"")

OAIAssetApi*apiInstance = [[OAIAssetApi alloc] init];

[apiInstance assetV1DataBySymbolWithAssetSymbol:assetSymbol
              groups:groups
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAssetApi->assetV1DataBySymbol: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetSymbol** | **NSString***| The asset symbol you are interested in | 
 **groups** | **NSString***|  | [optional] [default to @&quot;&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assetV1TopList**
```objc
-(NSURLSessionTask*) assetV1TopListWithPage: (NSNumber*) page
    pageSize: (NSNumber*) pageSize
    assetType: (NSString*) assetType
    sortBy: (NSString*) sortBy
    sortDirection: (NSString*) sortDirection
    groups: (NSString*) groups
        completionHandler: (void (^)(OAIGENERICRESPONSE* output, NSError* error)) handler;
```



### Example
```objc

NSNumber* page = @1; // The page number for the request to get {page_size} coins at the time. (optional) (default to @1)
NSNumber* pageSize = @100; // The number of items returned per page (optional) (default to @100)
NSString* assetType = @""; // The asset class/type (optional) (default to @"")
NSString* sortBy = @"CREATED_ON"; // Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) (optional) (default to @"CREATED_ON")
NSString* sortDirection = @"DESC"; // Sort direction ( DESC,ASC ) (optional) (default to @"DESC")
NSString* groups = @""; //  (optional) (default to @"")

OAIAssetApi*apiInstance = [[OAIAssetApi alloc] init];

[apiInstance assetV1TopListWithPage:page
              pageSize:pageSize
              assetType:assetType
              sortBy:sortBy
              sortDirection:sortDirection
              groups:groups
          completionHandler: ^(OAIGENERICRESPONSE* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIAssetApi->assetV1TopList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **NSNumber***| The page number for the request to get {page_size} coins at the time. | [optional] [default to @1]
 **pageSize** | **NSNumber***| The number of items returned per page | [optional] [default to @100]
 **assetType** | **NSString***| The asset class/type | [optional] [default to @&quot;&quot;]
 **sortBy** | **NSString***| Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to @&quot;CREATED_ON&quot;]
 **sortDirection** | **NSString***| Sort direction ( DESC,ASC ) | [optional] [default to @&quot;DESC&quot;]
 **groups** | **NSString***|  | [optional] [default to @&quot;&quot;]

### Return type

[**OAIGENERICRESPONSE***](OAIGENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

