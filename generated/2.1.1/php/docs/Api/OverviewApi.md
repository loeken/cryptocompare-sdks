# OpenAPI\Client\OverviewApi

All URIs are relative to https://data-api.cryptocompare.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**overviewV1HistoricalMarketcapAllAssetsDays()**](OverviewApi.md#overviewV1HistoricalMarketcapAllAssetsDays) | **GET** /overview/v1/historical/marketcap/all/assets/days |  |
| [**overviewV1HistoricalMarketcapAllAssetsHours()**](OverviewApi.md#overviewV1HistoricalMarketcapAllAssetsHours) | **GET** /overview/v1/historical/marketcap/all/assets/hours |  |
| [**overviewV1HistoricalMarketcapFtwAssetsDays()**](OverviewApi.md#overviewV1HistoricalMarketcapFtwAssetsDays) | **GET** /overview/v1/historical/marketcap/ftw/assets/days |  |
| [**overviewV1HistoricalMarketcapFtwAssetsHours()**](OverviewApi.md#overviewV1HistoricalMarketcapFtwAssetsHours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours |  |
| [**overviewV1LatestMarketcapAllTick()**](OverviewApi.md#overviewV1LatestMarketcapAllTick) | **GET** /overview/v1/latest/marketcap/all/tick |  |
| [**overviewV1LatestMarketcapFtwTick()**](OverviewApi.md#overviewV1LatestMarketcapFtwTick) | **GET** /overview/v1/latest/marketcap/ftw/tick |  |


## `overviewV1HistoricalMarketcapAllAssetsDays()`

```php
overviewV1HistoricalMarketcapAllAssetsDays($groups, $limit, $to_ts, $aggregate, $fill, $response_format): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\OverviewApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$groups = array('groups_example'); // string[] | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
$limit = 30; // int | The number of data points to return
$to_ts = 56; // int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
$aggregate = 1; // int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
$fill = true; // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
$response_format = 'JSON'; // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

try {
    $result = $apiInstance->overviewV1HistoricalMarketcapAllAssetsDays($groups, $limit, $to_ts, $aggregate, $fill, $response_format);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OverviewApi->overviewV1HistoricalMarketcapAllAssetsDays: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **groups** | [**string[]**](../Model/string.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] |
| **limit** | **int**| The number of data points to return | [optional] [default to 30] |
| **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1] |
| **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true] |
| **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;] |

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

## `overviewV1HistoricalMarketcapAllAssetsHours()`

```php
overviewV1HistoricalMarketcapAllAssetsHours($groups, $limit, $to_ts, $aggregate, $fill, $response_format): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\OverviewApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$groups = array('groups_example'); // string[] | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
$limit = 30; // int | The number of data points to return
$to_ts = 56; // int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
$aggregate = 1; // int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
$fill = true; // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
$response_format = 'JSON'; // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

try {
    $result = $apiInstance->overviewV1HistoricalMarketcapAllAssetsHours($groups, $limit, $to_ts, $aggregate, $fill, $response_format);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OverviewApi->overviewV1HistoricalMarketcapAllAssetsHours: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **groups** | [**string[]**](../Model/string.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] |
| **limit** | **int**| The number of data points to return | [optional] [default to 30] |
| **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1] |
| **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true] |
| **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;] |

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

## `overviewV1HistoricalMarketcapFtwAssetsDays()`

```php
overviewV1HistoricalMarketcapFtwAssetsDays($groups, $limit, $to_ts, $aggregate, $fill, $response_format): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\OverviewApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$groups = array('groups_example'); // string[] | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
$limit = 30; // int | The number of data points to return
$to_ts = 56; // int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
$aggregate = 1; // int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
$fill = true; // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
$response_format = 'JSON'; // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

try {
    $result = $apiInstance->overviewV1HistoricalMarketcapFtwAssetsDays($groups, $limit, $to_ts, $aggregate, $fill, $response_format);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OverviewApi->overviewV1HistoricalMarketcapFtwAssetsDays: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **groups** | [**string[]**](../Model/string.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] |
| **limit** | **int**| The number of data points to return | [optional] [default to 30] |
| **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1] |
| **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true] |
| **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;] |

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

## `overviewV1HistoricalMarketcapFtwAssetsHours()`

```php
overviewV1HistoricalMarketcapFtwAssetsHours($groups, $limit, $to_ts, $aggregate, $fill, $response_format): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\OverviewApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$groups = array('groups_example'); // string[] | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
$limit = 30; // int | The number of data points to return
$to_ts = 56; // int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
$aggregate = 1; // int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
$fill = true; // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
$response_format = 'JSON'; // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

try {
    $result = $apiInstance->overviewV1HistoricalMarketcapFtwAssetsHours($groups, $limit, $to_ts, $aggregate, $fill, $response_format);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OverviewApi->overviewV1HistoricalMarketcapFtwAssetsHours: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **groups** | [**string[]**](../Model/string.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] |
| **limit** | **int**| The number of data points to return | [optional] [default to 30] |
| **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1] |
| **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true] |
| **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;] |

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

## `overviewV1LatestMarketcapAllTick()`

```php
overviewV1LatestMarketcapAllTick($groups): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\OverviewApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$groups = array('groups_example'); // string[] | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR

try {
    $result = $apiInstance->overviewV1LatestMarketcapAllTick($groups);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OverviewApi->overviewV1LatestMarketcapAllTick: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **groups** | [**string[]**](../Model/string.md)| When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] |

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

## `overviewV1LatestMarketcapFtwTick()`

```php
overviewV1LatestMarketcapFtwTick($groups): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\OverviewApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$groups = array('groups_example'); // string[] | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR

try {
    $result = $apiInstance->overviewV1LatestMarketcapFtwTick($groups);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OverviewApi->overviewV1LatestMarketcapFtwTick: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **groups** | [**string[]**](../Model/string.md)| When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] |

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
