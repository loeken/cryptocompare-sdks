# OpenAPI\Client\AssetApi

All URIs are relative to https://data-api.cryptocompare.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**assetV1DataByAddress()**](AssetApi.md#assetV1DataByAddress) | **GET** /asset/v1/data/by/address |  |
| [**assetV1DataById()**](AssetApi.md#assetV1DataById) | **GET** /asset/v1/data/by/id |  |
| [**assetV1DataBySymbol()**](AssetApi.md#assetV1DataBySymbol) | **GET** /asset/v1/data/by/symbol |  |
| [**assetV1TopList()**](AssetApi.md#assetV1TopList) | **GET** /asset/v1/top/list |  |


## `assetV1DataByAddress()`

```php
assetV1DataByAddress($address, $chain_symbol, $groups): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\AssetApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$address = 'address_example'; // string
$chain_symbol = 'chain_symbol_example'; // string
$groups = ''; // string

try {
    $result = $apiInstance->assetV1DataByAddress($address, $chain_symbol, $groups);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AssetApi->assetV1DataByAddress: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **address** | **string**|  | |
| **chain_symbol** | **string**|  | |
| **groups** | **string**|  | [optional] [default to &#39;&#39;] |

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

## `assetV1DataById()`

```php
assetV1DataById($asset_id, $groups): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\AssetApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$asset_id = 56; // int | The asset id you are interested in
$groups = ''; // string

try {
    $result = $apiInstance->assetV1DataById($asset_id, $groups);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AssetApi->assetV1DataById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **asset_id** | **int**| The asset id you are interested in | |
| **groups** | **string**|  | [optional] [default to &#39;&#39;] |

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

## `assetV1DataBySymbol()`

```php
assetV1DataBySymbol($asset_symbol, $groups): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\AssetApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$asset_symbol = 'asset_symbol_example'; // string | The asset symbol you are interested in
$groups = ''; // string

try {
    $result = $apiInstance->assetV1DataBySymbol($asset_symbol, $groups);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AssetApi->assetV1DataBySymbol: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **asset_symbol** | **string**| The asset symbol you are interested in | |
| **groups** | **string**|  | [optional] [default to &#39;&#39;] |

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

## `assetV1TopList()`

```php
assetV1TopList($page, $page_size, $asset_type, $sort_by, $sort_direction, $groups): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\AssetApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$page = 1; // int | The page number for the request to get {page_size} coins at the time.
$page_size = 100; // int | The number of items returned per page
$asset_type = ''; // string | The asset class/type
$sort_by = 'CREATED_ON'; // string | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
$sort_direction = 'DESC'; // string | Sort direction ( DESC,ASC )
$groups = ''; // string

try {
    $result = $apiInstance->assetV1TopList($page, $page_size, $asset_type, $sort_by, $sort_direction, $groups);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AssetApi->assetV1TopList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **page** | **int**| The page number for the request to get {page_size} coins at the time. | [optional] [default to 1] |
| **page_size** | **int**| The number of items returned per page | [optional] [default to 100] |
| **asset_type** | **string**| The asset class/type | [optional] [default to &#39;&#39;] |
| **sort_by** | **string**| Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to &#39;CREATED_ON&#39;] |
| **sort_direction** | **string**| Sort direction ( DESC,ASC ) | [optional] [default to &#39;DESC&#39;] |
| **groups** | **string**|  | [optional] [default to &#39;&#39;] |

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
