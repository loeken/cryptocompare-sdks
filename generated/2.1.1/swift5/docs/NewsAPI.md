# NewsAPI

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**newsV1ArticleList**](NewsAPI.md#newsv1articlelist) | **GET** /news/v1/article/list | 
[**newsV1CategoryList**](NewsAPI.md#newsv1categorylist) | **GET** /news/v1/category/list | 
[**newsV1SourceList**](NewsAPI.md#newsv1sourcelist) | **GET** /news/v1/source/list | 


# **newsV1ArticleList**
```swift
    open class func newsV1ArticleList(sourceIds: [String]? = nil, lang: Lang_newsV1ArticleList? = nil, categories: [Categories_newsV1ArticleList]? = nil, excludeCategories: [ExcludeCategories_newsV1ArticleList]? = nil, toTs: Int? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sourceIds = ["inner_example"] // [String] | Get articles from specific sources; either by their ids or keys (optional)
let lang = "lang_example" // String | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional) (default to .en)
let categories = ["categories_example"] // [String] | News article categories to return (optional)
let excludeCategories = ["excludeCategories_example"] // [String] | News article categories to exclude from results (optional)
let toTs = 987 // Int | Articles published on or before this timestamp (optional) (default to -1)

NewsAPI.newsV1ArticleList(sourceIds: sourceIds, lang: lang, categories: categories, excludeCategories: excludeCategories, toTs: toTs) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceIds** | [**[String]**](String.md) | Get articles from specific sources; either by their ids or keys | [optional] 
 **lang** | **String** | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to .en]
 **categories** | [**[String]**](String.md) | News article categories to return | [optional] 
 **excludeCategories** | [**[String]**](String.md) | News article categories to exclude from results | [optional] 
 **toTs** | **Int** | Articles published on or before this timestamp | [optional] [default to -1]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newsV1CategoryList**
```swift
    open class func newsV1CategoryList(completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


NewsAPI.newsV1CategoryList() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newsV1SourceList**
```swift
    open class func newsV1SourceList(lang: Lang_newsV1SourceList? = nil, type: ModelType_newsV1SourceList? = nil, status: Status_newsV1SourceList? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let lang = "lang_example" // String | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional) (default to .en)
let type = "type_example" // String | RSS, API, TWITTER (optional) (default to .rss)
let status = "status_example" // String | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE (optional) (default to .active)

NewsAPI.newsV1SourceList(lang: lang, type: type, status: status) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | **String** | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to .en]
 **type** | **String** | RSS, API, TWITTER | [optional] [default to .rss]
 **status** | **String** | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to .active]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

