# NewsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**newsV1ArticleList**](NewsApi.md#newsV1ArticleList) | **GET** /news/v1/article/list | 
[**newsV1CategoryList**](NewsApi.md#newsV1CategoryList) | **GET** /news/v1/category/list | 
[**newsV1SourceList**](NewsApi.md#newsV1SourceList) | **GET** /news/v1/source/list | 



## newsV1ArticleList



### Example

```bash
 newsV1ArticleList  Specify as:  source_ids="value1,value2,..."  lang=value  Specify as:  categories="value1,value2,..."  Specify as:  exclude_categories="value1,value2,..."  to_ts=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceIds** | [**array[string]**](string.md) | Get articles from specific sources; either by their ids or keys | [optional] [default to [&quot;&quot;]]
 **lang** | **string** | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to EN]
 **categories** | [**array[string]**](string.md) | News article categories to return | [optional] [default to [&quot;&quot;]]
 **excludeCategories** | [**array[string]**](string.md) | News article categories to exclude from results | [optional] [default to [&quot;&quot;]]
 **toTs** | **integer** | Articles published on or before this timestamp | [optional] [default to -1]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## newsV1CategoryList



### Example

```bash
 newsV1CategoryList
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## newsV1SourceList



### Example

```bash
 newsV1SourceList  lang=value  type=value  status=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | **string** | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to EN]
 **type** | **string** | RSS, API, TWITTER | [optional] [default to RSS]
 **status** | **string** | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to ACTIVE]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

