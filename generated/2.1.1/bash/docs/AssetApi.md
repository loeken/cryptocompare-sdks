# AssetApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**assetV1DataByAddress**](AssetApi.md#assetV1DataByAddress) | **GET** /asset/v1/data/by/address | 
[**assetV1DataById**](AssetApi.md#assetV1DataById) | **GET** /asset/v1/data/by/id | 
[**assetV1DataBySymbol**](AssetApi.md#assetV1DataBySymbol) | **GET** /asset/v1/data/by/symbol | 
[**assetV1TopList**](AssetApi.md#assetV1TopList) | **GET** /asset/v1/top/list | 



## assetV1DataByAddress



### Example

```bash
 assetV1DataByAddress  address=value  chain_symbol=value  groups=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **string** |  | [default to null]
 **chainSymbol** | **string** |  | [default to null]
 **groups** | **string** |  | [optional] [default to ]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## assetV1DataById



### Example

```bash
 assetV1DataById  asset_id=value  groups=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetId** | **integer** | The asset id you are interested in | [default to null]
 **groups** | **string** |  | [optional] [default to ]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## assetV1DataBySymbol



### Example

```bash
 assetV1DataBySymbol  asset_symbol=value  groups=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetSymbol** | **string** | The asset symbol you are interested in | [default to null]
 **groups** | **string** |  | [optional] [default to ]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## assetV1TopList



### Example

```bash
 assetV1TopList  page=value  page_size=value  asset_type=value  sort_by=value  sort_direction=value  groups=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** | The page number for the request to get {page_size} coins at the time. | [optional] [default to 1]
 **pageSize** | **integer** | The number of items returned per page | [optional] [default to 100]
 **assetType** | **string** | The asset class/type | [optional] [default to ]
 **sortBy** | **string** | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to CREATED_ON]
 **sortDirection** | **string** | Sort direction ( DESC,ASC ) | [optional] [default to DESC]
 **groups** | **string** |  | [optional] [default to ]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

