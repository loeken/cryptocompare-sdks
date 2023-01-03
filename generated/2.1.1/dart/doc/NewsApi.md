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

final api_instance = NewsApi();
final sourceIds = []; // List<String> | Get articles from specific sources; either by their ids or keys
final lang = lang_example; // String | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
final categories = []; // List<String> | News article categories to return
final excludeCategories = []; // List<String> | News article categories to exclude from results
final toTs = 56; // int | Articles published on or before this timestamp

try {
    final result = api_instance.newsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->newsV1ArticleList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceIds** | [**List<String>**](String.md)| Get articles from specific sources; either by their ids or keys | [optional] [default to const []]
 **lang** | **String**| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to 'EN']
 **categories** | [**List<String>**](String.md)| News article categories to return | [optional] [default to const []]
 **excludeCategories** | [**List<String>**](String.md)| News article categories to exclude from results | [optional] [default to const []]
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

final api_instance = NewsApi();

try {
    final result = api_instance.newsV1CategoryList();
    print(result);
} catch (e) {
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

final api_instance = NewsApi();
final lang = lang_example; // String | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
final type = type_example; // String | RSS, API, TWITTER
final status = status_example; // String | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE

try {
    final result = api_instance.newsV1SourceList(lang, type, status);
    print(result);
} catch (e) {
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

