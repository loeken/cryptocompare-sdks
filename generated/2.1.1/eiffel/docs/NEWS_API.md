# NEWS_API

All URIs are relative to *https://data-api.cryptocompare.com*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**news_v1_article_list**](NEWS_API.md#news_v1_article_list) | **Get** /news/v1/article/list | 
[**news_v1_category_list**](NEWS_API.md#news_v1_category_list) | **Get** /news/v1/category/list | 
[**news_v1_source_list**](NEWS_API.md#news_v1_source_list) | **Get** /news/v1/source/list | 


# **news_v1_article_list**
> news_v1_article_list (source_ids:  detachable LIST [STRING_32] ; lang:  detachable STRING_32 ; categories:  detachable LIST [STRING_32] ; exclude_categories:  detachable LIST [STRING_32] ; to_ts:  detachable INTEGER_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_ids** | [**LIST [STRING_32]**](STRING_32.md)| Get articles from specific sources; either by their ids or keys | [optional] [default to [&quot;&quot;]]
 **lang** | **STRING_32**| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to EN]
 **categories** | [**LIST [STRING_32]**](STRING_32.md)| News article categories to return | [optional] [default to [&quot;&quot;]]
 **exclude_categories** | [**LIST [STRING_32]**](STRING_32.md)| News article categories to exclude from results | [optional] [default to [&quot;&quot;]]
 **to_ts** | **INTEGER_32**| Articles published on or before this timestamp | [optional] [default to -1]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **news_v1_category_list**
> news_v1_category_list : detachable GENERIC_RESPONSE





### Parameters
This endpoint does not need any parameter.

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **news_v1_source_list**
> news_v1_source_list (lang:  detachable STRING_32 ; type:  detachable STRING_32 ; status:  detachable STRING_32 ): detachable GENERIC_RESPONSE





### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | **STRING_32**| The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to EN]
 **type** | **STRING_32**| RSS, API, TWITTER | [optional] [default to RSS]
 **status** | **STRING_32**| The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to ACTIVE]

### Return type

[**GENERIC_RESPONSE**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

