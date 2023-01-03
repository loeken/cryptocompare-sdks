# \NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**NewsV1ArticleList**](NewsApi.md#NewsV1ArticleList) | **Get** /news/v1/article/list | 
[**NewsV1CategoryList**](NewsApi.md#NewsV1CategoryList) | **Get** /news/v1/category/list | 
[**NewsV1SourceList**](NewsApi.md#NewsV1SourceList) | **Get** /news/v1/source/list | 



## NewsV1ArticleList

> GENERICRESPONSE NewsV1ArticleList(ctx).SourceIds(sourceIds).Lang(lang).Categories(categories).ExcludeCategories(excludeCategories).ToTs(toTs).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    sourceIds := []string{"Inner_example"} // []string | Get articles from specific sources; either by their ids or keys (optional) (default to [""])
    lang := "lang_example" // string | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional) (default to "EN")
    categories := []string{"Categories_example"} // []string | News article categories to return (optional) (default to [""])
    excludeCategories := []string{"ExcludeCategories_example"} // []string | News article categories to exclude from results (optional) (default to [""])
    toTs := int32(56) // int32 | Articles published on or before this timestamp (optional) (default to -1)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.NewsApi.NewsV1ArticleList(context.Background()).SourceIds(sourceIds).Lang(lang).Categories(categories).ExcludeCategories(excludeCategories).ToTs(toTs).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `NewsApi.NewsV1ArticleList``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `NewsV1ArticleList`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `NewsApi.NewsV1ArticleList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiNewsV1ArticleListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceIds** | **[]string** | Get articles from specific sources; either by their ids or keys | [default to [&quot;&quot;]]
 **lang** | **string** | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [default to &quot;EN&quot;]
 **categories** | **[]string** | News article categories to return | [default to [&quot;&quot;]]
 **excludeCategories** | **[]string** | News article categories to exclude from results | [default to [&quot;&quot;]]
 **toTs** | **int32** | Articles published on or before this timestamp | [default to -1]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## NewsV1CategoryList

> GENERICRESPONSE NewsV1CategoryList(ctx).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.NewsApi.NewsV1CategoryList(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `NewsApi.NewsV1CategoryList``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `NewsV1CategoryList`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `NewsApi.NewsV1CategoryList`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiNewsV1CategoryListRequest struct via the builder pattern


### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## NewsV1SourceList

> GENERICRESPONSE NewsV1SourceList(ctx).Lang(lang).Type_(type_).Status(status).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    lang := "lang_example" // string | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional) (default to "EN")
    type_ := "type__example" // string | RSS, API, TWITTER (optional) (default to "RSS")
    status := "status_example" // string | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE (optional) (default to "ACTIVE")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.NewsApi.NewsV1SourceList(context.Background()).Lang(lang).Type_(type_).Status(status).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `NewsApi.NewsV1SourceList``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `NewsV1SourceList`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `NewsApi.NewsV1SourceList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiNewsV1SourceListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | **string** | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [default to &quot;EN&quot;]
 **type_** | **string** | RSS, API, TWITTER | [default to &quot;RSS&quot;]
 **status** | **string** | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [default to &quot;ACTIVE&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

