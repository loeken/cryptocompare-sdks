# NewsAPI

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**NewsAPI_newsV1ArticleList**](NewsAPI.md#NewsAPI_newsV1ArticleList) | **GET** /news/v1/article/list | 
[**NewsAPI_newsV1CategoryList**](NewsAPI.md#NewsAPI_newsV1CategoryList) | **GET** /news/v1/category/list | 
[**NewsAPI_newsV1SourceList**](NewsAPI.md#NewsAPI_newsV1SourceList) | **GET** /news/v1/source/list | 


# **NewsAPI_newsV1ArticleList**
```c
generic_response_t* NewsAPI_newsV1ArticleList(apiClient_t *apiClient, list_t * source_ids, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_lang_e lang, list_t * categories, list_t * exclude_categories, int to_ts);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**source_ids** | **[list_t](char.md) \*** | Get articles from specific sources; either by their ids or keys | [optional] 
**lang** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1ArticleList_lang_e** | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to &#39;EN&#39;]
**categories** | **[list_t](char.md) \*** | News article categories to return | [optional] 
**exclude_categories** | **[list_t](char.md) \*** | News article categories to exclude from results | [optional] 
**to_ts** | **int** | Articles published on or before this timestamp | [optional] [default to -1]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **NewsAPI_newsV1CategoryList**
```c
generic_response_t* NewsAPI_newsV1CategoryList(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **NewsAPI_newsV1SourceList**
```c
generic_response_t* NewsAPI_newsV1SourceList(apiClient_t *apiClient, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_lang_e lang, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_type_e type, cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_status_e status);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**lang** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_lang_e** | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to &#39;EN&#39;]
**type** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_type_e** | RSS, API, TWITTER | [optional] [default to &#39;RSS&#39;]
**status** | **cryptocompare_market_index_reference_data_news_and_overview_metrcis_api_for_the_cryptocurrency_industry_newsV1SourceList_status_e** | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to &#39;ACTIVE&#39;]

### Return type

[generic_response_t](generic_response.md) *


### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

