# \NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**news_v1_article_list**](NewsApi.md#news_v1_article_list) | **GET** /news/v1/article/list | 
[**news_v1_category_list**](NewsApi.md#news_v1_category_list) | **GET** /news/v1/category/list | 
[**news_v1_source_list**](NewsApi.md#news_v1_source_list) | **GET** /news/v1/source/list | 



## news_v1_article_list

> crate::models::GenericResponse news_v1_article_list(source_ids, lang, categories, exclude_categories, to_ts)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**source_ids** | Option<[**Vec<String>**](String.md)> | Get articles from specific sources; either by their ids or keys |  |[default to [""]]
**lang** | Option<**String**> | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) |  |[default to EN]
**categories** | Option<[**Vec<String>**](String.md)> | News article categories to return |  |[default to [""]]
**exclude_categories** | Option<[**Vec<String>**](String.md)> | News article categories to exclude from results |  |[default to [""]]
**to_ts** | Option<**i32**> | Articles published on or before this timestamp |  |[default to -1]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## news_v1_category_list

> crate::models::GenericResponse news_v1_category_list()


### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## news_v1_source_list

> crate::models::GenericResponse news_v1_source_list(lang, r#type, status)


### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**lang** | Option<**String**> | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) |  |[default to EN]
**r#type** | Option<**String**> | RSS, API, TWITTER |  |[default to RSS]
**status** | Option<**String**> | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE |  |[default to ACTIVE]

### Return type

[**crate::models::GenericResponse**](GENERIC_RESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

