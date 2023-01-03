# \AssetApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AssetV1DataByAddress**](AssetApi.md#AssetV1DataByAddress) | **Get** /asset/v1/data/by/address | 
[**AssetV1DataById**](AssetApi.md#AssetV1DataById) | **Get** /asset/v1/data/by/id | 
[**AssetV1DataBySymbol**](AssetApi.md#AssetV1DataBySymbol) | **Get** /asset/v1/data/by/symbol | 
[**AssetV1TopList**](AssetApi.md#AssetV1TopList) | **Get** /asset/v1/top/list | 



## AssetV1DataByAddress

> GENERICRESPONSE AssetV1DataByAddress(ctx).Address(address).ChainSymbol(chainSymbol).Groups(groups).Execute()



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
    address := "address_example" // string | 
    chainSymbol := "chainSymbol_example" // string | 
    groups := "groups_example" // string |  (optional) (default to "")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.AssetApi.AssetV1DataByAddress(context.Background()).Address(address).ChainSymbol(chainSymbol).Groups(groups).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AssetApi.AssetV1DataByAddress``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `AssetV1DataByAddress`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `AssetApi.AssetV1DataByAddress`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAssetV1DataByAddressRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **string** |  | 
 **chainSymbol** | **string** |  | 
 **groups** | **string** |  | [default to &quot;&quot;]

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


## AssetV1DataById

> GENERICRESPONSE AssetV1DataById(ctx).AssetId(assetId).Groups(groups).Execute()



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
    assetId := int32(56) // int32 | The asset id you are interested in
    groups := "groups_example" // string |  (optional) (default to "")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.AssetApi.AssetV1DataById(context.Background()).AssetId(assetId).Groups(groups).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AssetApi.AssetV1DataById``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `AssetV1DataById`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `AssetApi.AssetV1DataById`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAssetV1DataByIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **int32** | The asset id you are interested in | 
 **groups** | **string** |  | [default to &quot;&quot;]

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


## AssetV1DataBySymbol

> GENERICRESPONSE AssetV1DataBySymbol(ctx).AssetSymbol(assetSymbol).Groups(groups).Execute()



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
    assetSymbol := "assetSymbol_example" // string | The asset symbol you are interested in
    groups := "groups_example" // string |  (optional) (default to "")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.AssetApi.AssetV1DataBySymbol(context.Background()).AssetSymbol(assetSymbol).Groups(groups).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AssetApi.AssetV1DataBySymbol``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `AssetV1DataBySymbol`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `AssetApi.AssetV1DataBySymbol`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAssetV1DataBySymbolRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetSymbol** | **string** | The asset symbol you are interested in | 
 **groups** | **string** |  | [default to &quot;&quot;]

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


## AssetV1TopList

> GENERICRESPONSE AssetV1TopList(ctx).Page(page).PageSize(pageSize).AssetType(assetType).SortBy(sortBy).SortDirection(sortDirection).Groups(groups).Execute()



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
    page := int32(56) // int32 | The page number for the request to get {page_size} coins at the time. (optional) (default to 1)
    pageSize := int32(56) // int32 | The number of items returned per page (optional) (default to 100)
    assetType := "assetType_example" // string | The asset class/type (optional) (default to "")
    sortBy := "sortBy_example" // string | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) (optional) (default to "CREATED_ON")
    sortDirection := "sortDirection_example" // string | Sort direction ( DESC,ASC ) (optional) (default to "DESC")
    groups := "groups_example" // string |  (optional) (default to "")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.AssetApi.AssetV1TopList(context.Background()).Page(page).PageSize(pageSize).AssetType(assetType).SortBy(sortBy).SortDirection(sortDirection).Groups(groups).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `AssetApi.AssetV1TopList``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `AssetV1TopList`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `AssetApi.AssetV1TopList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAssetV1TopListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | The page number for the request to get {page_size} coins at the time. | [default to 1]
 **pageSize** | **int32** | The number of items returned per page | [default to 100]
 **assetType** | **string** | The asset class/type | [default to &quot;&quot;]
 **sortBy** | **string** | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [default to &quot;CREATED_ON&quot;]
 **sortDirection** | **string** | Sort direction ( DESC,ASC ) | [default to &quot;DESC&quot;]
 **groups** | **string** |  | [default to &quot;&quot;]

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

