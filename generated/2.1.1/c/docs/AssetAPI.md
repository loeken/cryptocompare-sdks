# AssetAPI

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AssetAPI_assetV1DataByAddress**](AssetAPI.md#AssetAPI_assetV1DataByAddress) | **GET** /asset/v1/data/by/address | 
[**AssetAPI_assetV1DataById**](AssetAPI.md#AssetAPI_assetV1DataById) | **GET** /asset/v1/data/by/id | 
[**AssetAPI_assetV1DataBySymbol**](AssetAPI.md#AssetAPI_assetV1DataBySymbol) | **GET** /asset/v1/data/by/symbol | 
[**AssetAPI_assetV1TopList**](AssetAPI.md#AssetAPI_assetV1TopList) | **GET** /asset/v1/top/list | 


# **AssetAPI_assetV1DataByAddress**
```c
generic_response_t* AssetAPI_assetV1DataByAddress(apiClient_t *apiClient, char * address, char * chain_symbol, char * groups);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**address** | **char \*** |  | 
**chain_symbol** | **char \*** |  | 
**groups** | **char \*** |  | [optional] [default to &#39;&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **AssetAPI_assetV1DataById**
```c
generic_response_t* AssetAPI_assetV1DataById(apiClient_t *apiClient, int asset_id, char * groups);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**asset_id** | **int** | The asset id you are interested in | 
**groups** | **char \*** |  | [optional] [default to &#39;&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **AssetAPI_assetV1DataBySymbol**
```c
generic_response_t* AssetAPI_assetV1DataBySymbol(apiClient_t *apiClient, char * asset_symbol, char * groups);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**asset_symbol** | **char \*** | The asset symbol you are interested in | 
**groups** | **char \*** |  | [optional] [default to &#39;&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **AssetAPI_assetV1TopList**
```c
generic_response_t* AssetAPI_assetV1TopList(apiClient_t *apiClient, int page, int page_size, char * asset_type, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_by_e sort_by, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_direction_e sort_direction, char * groups);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**page** | **int** | The page number for the request to get {page_size} coins at the time. | [optional] [default to 1]
**page_size** | **int** | The number of items returned per page | [optional] [default to 100]
**asset_type** | **char \*** | The asset class/type | [optional] [default to &#39;&#39;]
**sort_by** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_by_e** | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to &#39;CREATED_ON&#39;]
**sort_direction** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_assetV1TopList_sort_direction_e** | Sort direction ( DESC,ASC ) | [optional] [default to &#39;DESC&#39;]
**groups** | **char \*** |  | [optional] [default to &#39;&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

