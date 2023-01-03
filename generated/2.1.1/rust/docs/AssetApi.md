# \AssetApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**asset_v1_data_by_address**](AssetApi.md#asset_v1_data_by_address) | **GET** /asset/v1/data/by/address | 
[**asset_v1_data_by_id**](AssetApi.md#asset_v1_data_by_id) | **GET** /asset/v1/data/by/id | 
[**asset_v1_data_by_symbol**](AssetApi.md#asset_v1_data_by_symbol) | **GET** /asset/v1/data/by/symbol | 
[**asset_v1_top_list**](AssetApi.md#asset_v1_top_list) | **GET** /asset/v1/top/list | 



## asset_v1_data_by_address

> crate::models::GenericResponse asset_v1_data_by_address(address, chain_symbol, groups)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**address** | **String** |  | [required] |
**chain_symbol** | **String** |  | [required] |
**groups** | Option<**String**> |  |  |[default to ]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## asset_v1_data_by_id

> crate::models::GenericResponse asset_v1_data_by_id(asset_id, groups)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**asset_id** | **i32** | The asset id you are interested in | [required] |
**groups** | Option<**String**> |  |  |[default to ]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## asset_v1_data_by_symbol

> crate::models::GenericResponse asset_v1_data_by_symbol(asset_symbol, groups)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**asset_symbol** | **String** | The asset symbol you are interested in | [required] |
**groups** | Option<**String**> |  |  |[default to ]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## asset_v1_top_list

> crate::models::GenericResponse asset_v1_top_list(page, page_size, asset_type, sort_by, sort_direction, groups)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**page** | Option<**i32**> | The page number for the request to get {page_size} coins at the time. |  |[default to 1]
**page_size** | Option<**i32**> | The number of items returned per page |  |[default to 100]
**asset_type** | Option<**String**> | The asset class/type |  |[default to ]
**sort_by** | Option<**String**> | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) |  |[default to CREATED_ON]
**sort_direction** | Option<**String**> | Sort direction ( DESC,ASC ) |  |[default to DESC]
**groups** | Option<**String**> |  |  |[default to ]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

