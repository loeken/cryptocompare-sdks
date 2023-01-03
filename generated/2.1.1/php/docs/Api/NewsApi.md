# OpenAPI\Client\NewsApi

All URIs are relative to https://data-api.cryptocompare.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**newsV1ArticleList()**](NewsApi.md#newsV1ArticleList) | **GET** /news/v1/article/list |  |
| [**newsV1CategoryList()**](NewsApi.md#newsV1CategoryList) | **GET** /news/v1/category/list |  |
| [**newsV1SourceList()**](NewsApi.md#newsV1SourceList) | **GET** /news/v1/source/list |  |


## `newsV1ArticleList()`

```php
newsV1ArticleList($source_ids, $lang, $categories, $exclude_categories, $to_ts): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$source_ids = array('source_ids_example'); // string[] | Get articles from specific sources; either by their ids or keys
$lang = 'EN'; // string | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
$categories = array('categories_example'); // string[] | News article categories to return
$exclude_categories = array('exclude_categories_example'); // string[] | News article categories to exclude from results
$to_ts = -1; // int | Articles published on or before this timestamp

try {
    $result = $apiInstance->newsV1ArticleList($source_ids, $lang, $categories, $exclude_categories, $to_ts);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->newsV1ArticleList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **source_ids** | [**string[]**](../Model/string.md)| Get articles from specific sources; either by their ids or keys | [optional] |
| **lang** | **string**| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to &#39;EN&#39;] |
| **categories** | [**string[]**](../Model/string.md)| News article categories to return | [optional] |
| **exclude_categories** | [**string[]**](../Model/string.md)| News article categories to exclude from results | [optional] |
| **to_ts** | **int**| Articles published on or before this timestamp | [optional] [default to -1] |

### Return type

[**\OpenAPI\Client\Model\GENERICRESPONSE**](../Model/GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `newsV1CategoryList()`

```php
newsV1CategoryList(): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->newsV1CategoryList();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->newsV1CategoryList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\GENERICRESPONSE**](../Model/GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `newsV1SourceList()`

```php
newsV1SourceList($lang, $type, $status): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\NewsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$lang = 'EN'; // string | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
$type = 'RSS'; // string | RSS, API, TWITTER
$status = 'ACTIVE'; // string | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE

try {
    $result = $apiInstance->newsV1SourceList($lang, $type, $status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling NewsApi->newsV1SourceList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **lang** | **string**| The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to &#39;EN&#39;] |
| **type** | **string**| RSS, API, TWITTER | [optional] [default to &#39;RSS&#39;] |
| **status** | **string**| The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to &#39;ACTIVE&#39;] |

### Return type

[**\OpenAPI\Client\Model\GENERICRESPONSE**](../Model/GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
