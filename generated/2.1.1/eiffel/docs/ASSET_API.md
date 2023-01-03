# ASSET_API

All URIs are relative to *https://data-api.cryptocompare.com*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**asset_v1_data_by_address**](ASSET_API.md#asset_v1_data_by_address) | **Get** /asset/v1/data/by/address | 
[**asset_v1_data_by_id**](ASSET_API.md#asset_v1_data_by_id) | **Get** /asset/v1/data/by/id | 
[**asset_v1_data_by_symbol**](ASSET_API.md#asset_v1_data_by_symbol) | **Get** /asset/v1/data/by/symbol | 
[**asset_v1_top_list**](ASSET_API.md#asset_v1_top_list) | **Get** /asset/v1/top/list | 


# **asset_v1_data_by_address**
> asset_v1_data_by_address (address: STRING_32 ; chain_symbol: STRING_32 ; groups:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **STRING_32**|  | [default to null]
 **chain_symbol** | **STRING_32**|  | [default to null]
 **groups** | **STRING_32**|  | [optional] [default to ]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **asset_v1_data_by_id**
> asset_v1_data_by_id (asset_id: INTEGER_32 ; groups:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **INTEGER_32**| The asset id you are interested in | [default to null]
 **groups** | **STRING_32**|  | [optional] [default to ]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **asset_v1_data_by_symbol**
> asset_v1_data_by_symbol (asset_symbol: STRING_32 ; groups:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_symbol** | **STRING_32**| The asset symbol you are interested in | [default to null]
 **groups** | **STRING_32**|  | [optional] [default to ]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **asset_v1_top_list**
> asset_v1_top_list (page:  detachable INTEGER_32 ; page_size:  detachable INTEGER_32 ; asset_type:  detachable STRING_32 ; sort_by:  detachable STRING_32 ; sort_direction:  detachable STRING_32 ; groups:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **INTEGER_32**| The page number for the request to get {page_size} coins at the time. | [optional] [default to 1]
 **page_size** | **INTEGER_32**| The number of items returned per page | [optional] [default to 100]
 **asset_type** | **STRING_32**| The asset class/type | [optional] [default to ]
 **sort_by** | **STRING_32**| Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to CREATED_ON]
 **sort_direction** | **STRING_32**| Sort direction ( DESC,ASC ) | [optional] [default to DESC]
 **groups** | **STRING_32**|  | [optional] [default to ]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

