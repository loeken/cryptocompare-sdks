# AssetAPI

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assetV1DataByAddress**](AssetAPI.md#assetv1databyaddress) | **GET** /asset/v1/data/by/address | 
[**assetV1DataById**](AssetAPI.md#assetv1databyid) | **GET** /asset/v1/data/by/id | 
[**assetV1DataBySymbol**](AssetAPI.md#assetv1databysymbol) | **GET** /asset/v1/data/by/symbol | 
[**assetV1TopList**](AssetAPI.md#assetv1toplist) | **GET** /asset/v1/top/list | 


# **assetV1DataByAddress**
```swift
    open class func assetV1DataByAddress(address: String, chainSymbol: String, groups: String? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let address = "address_example" // String | 
let chainSymbol = "chainSymbol_example" // String | 
let groups = "groups_example" // String |  (optional) (default to "")

AssetAPI.assetV1DataByAddress(address: address, chainSymbol: chainSymbol, groups: groups) { (response, error) in
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
 **address** | **String** |  | 
 **chainSymbol** | **String** |  | 
 **groups** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assetV1DataById**
```swift
    open class func assetV1DataById(assetId: Int, groups: String? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let assetId = 987 // Int | The asset id you are interested in
let groups = "groups_example" // String |  (optional) (default to "")

AssetAPI.assetV1DataById(assetId: assetId, groups: groups) { (response, error) in
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
 **assetId** | **Int** | The asset id you are interested in | 
 **groups** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assetV1DataBySymbol**
```swift
    open class func assetV1DataBySymbol(assetSymbol: String, groups: String? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let assetSymbol = "assetSymbol_example" // String | The asset symbol you are interested in
let groups = "groups_example" // String |  (optional) (default to "")

AssetAPI.assetV1DataBySymbol(assetSymbol: assetSymbol, groups: groups) { (response, error) in
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
 **assetSymbol** | **String** | The asset symbol you are interested in | 
 **groups** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assetV1TopList**
```swift
    open class func assetV1TopList(page: Int? = nil, pageSize: Int? = nil, assetType: String? = nil, sortBy: SortBy_assetV1TopList? = nil, sortDirection: SortDirection_assetV1TopList? = nil, groups: String? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let page = 987 // Int | The page number for the request to get {page_size} coins at the time. (optional) (default to 1)
let pageSize = 987 // Int | The number of items returned per page (optional) (default to 100)
let assetType = "assetType_example" // String | The asset class/type (optional) (default to "")
let sortBy = "sortBy_example" // String | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) (optional) (default to .createdOn)
let sortDirection = "sortDirection_example" // String | Sort direction ( DESC,ASC ) (optional) (default to .desc)
let groups = "groups_example" // String |  (optional) (default to "")

AssetAPI.assetV1TopList(page: page, pageSize: pageSize, assetType: assetType, sortBy: sortBy, sortDirection: sortDirection, groups: groups) { (response, error) in
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
 **page** | **Int** | The page number for the request to get {page_size} coins at the time. | [optional] [default to 1]
 **pageSize** | **Int** | The number of items returned per page | [optional] [default to 100]
 **assetType** | **String** | The asset class/type | [optional] [default to &quot;&quot;]
 **sortBy** | **String** | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to .createdOn]
 **sortDirection** | **String** | Sort direction ( DESC,ASC ) | [optional] [default to .desc]
 **groups** | **String** |  | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

