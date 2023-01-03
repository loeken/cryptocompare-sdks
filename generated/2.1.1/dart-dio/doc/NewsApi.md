# openapi.api.NewsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**newsV1ArticleList**](NewsApi.md#newsv1articlelist) | **GET** /news/v1/article/list | 
[**newsV1CategoryList**](NewsApi.md#newsv1categorylist) | **GET** /news/v1/category/list | 
[**newsV1SourceList**](NewsApi.md#newsv1sourcelist) | **GET** /news/v1/source/list | 


# **newsV1ArticleList**
> GENERICRESPONSE newsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getNewsApi();
final BuiltList<String> sourceIds = ; // BuiltList<String> | Get articles from specific sources; either by their ids or keys
final String lang = lang_example; // String | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
final BuiltList<String> categories = ; // BuiltList<String> | News article categories to return
final BuiltList<String> excludeCategories = ; // BuiltList<String> | News article categories to exclude from results
final int toTs = 56; // int | Articles published on or before this timestamp

try {
    final response = api.newsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs);
    print(response);
} catch on DioError (e) {
    print('Exception when calling NewsApi->newsV1ArticleList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceIds** | [**BuiltList&lt;String&gt;**](String.md)| Get articles from specific sources; either by their ids or keys | [optional] [default to ListBuilder()]
 **lang** | **String**| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to 'EN']
 **categories** | [**BuiltList&lt;String&gt;**](String.md)| News article categories to return | [optional] [default to ListBuilder()]
 **excludeCategories** | [**BuiltList&lt;String&gt;**](String.md)| News article categories to exclude from results | [optional] [default to ListBuilder()]
 **toTs** | **int**| Articles published on or before this timestamp | [optional] [default to -1]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newsV1CategoryList**
> GENERICRESPONSE newsV1CategoryList()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getNewsApi();

try {
    final response = api.newsV1CategoryList();
    print(response);
} catch on DioError (e) {
    print('Exception when calling NewsApi->newsV1CategoryList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newsV1SourceList**
> GENERICRESPONSE newsV1SourceList(lang, type, status)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getNewsApi();
final String lang = lang_example; // String | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
final String type = type_example; // String | RSS, API, TWITTER
final String status = status_example; // String | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE

try {
    final response = api.newsV1SourceList(lang, type, status);
    print(response);
} catch on DioError (e) {
    print('Exception when calling NewsApi->newsV1SourceList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | **String**| The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to 'EN']
 **type** | **String**| RSS, API, TWITTER | [optional] [default to 'RSS']
 **status** | **String**| The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to 'ACTIVE']

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

