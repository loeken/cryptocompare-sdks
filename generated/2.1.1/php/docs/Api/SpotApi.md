# OpenAPI\Client\SpotApi

All URIs are relative to https://data-api.cryptocompare.com, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**spotV1HistoricalDays()**](SpotApi.md#spotV1HistoricalDays) | **GET** /spot/v1/historical/days |  |
| [**spotV1HistoricalHours()**](SpotApi.md#spotV1HistoricalHours) | **GET** /spot/v1/historical/hours |  |
| [**spotV1HistoricalMinutes()**](SpotApi.md#spotV1HistoricalMinutes) | **GET** /spot/v1/historical/minutes |  |
| [**spotV1HistoricalOrderbookL2SnapshotMinute()**](SpotApi.md#spotV1HistoricalOrderbookL2SnapshotMinute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute |  |
| [**spotV1HistoricalTrades()**](SpotApi.md#spotV1HistoricalTrades) | **GET** /spot/v1/historical/trades |  |
| [**spotV1HistoricalTradesHour()**](SpotApi.md#spotV1HistoricalTradesHour) | **GET** /spot/v1/historical/trades/hour |  |
| [**spotV1LatestInstrumentMetadata()**](SpotApi.md#spotV1LatestInstrumentMetadata) | **GET** /spot/v1/latest/instrument/metadata |  |
| [**spotV1LatestTick()**](SpotApi.md#spotV1LatestTick) | **GET** /spot/v1/latest/tick |  |
| [**spotV1Markets()**](SpotApi.md#spotV1Markets) | **GET** /spot/v1/markets |  |
| [**spotV1MarketsInstruments()**](SpotApi.md#spotV1MarketsInstruments) | **GET** /spot/v1/markets/instruments |  |
| [**spotV1MarketsInstrumentsUnmapped()**](SpotApi.md#spotV1MarketsInstrumentsUnmapped) | **GET** /spot/v1/markets/instruments/unmapped |  |


## `spotV1HistoricalDays()`

```php
spotV1HistoricalDays($market, $instrument, $groups, $limit, $to_ts, $aggregate, $fill, $mapping_priority, $response_format): \OpenAPI\Client\Model\SPOTINSTRUMENTHISTODATARESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SpotApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$market = 'market_example'; // string | The exchange to obtain data from
$instrument = 'instrument_example'; // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
$groups = array('groups_example'); // string[] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
$limit = 30; // int | The number of data points to return
$to_ts = 56; // int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
$aggregate = 1; // int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
$fill = true; // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
$mapping_priority = 'CHECK_MAPPED_FIRST'; // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
$response_format = 'JSON'; // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

try {
    $result = $apiInstance->spotV1HistoricalDays($market, $instrument, $groups, $limit, $to_ts, $aggregate, $fill, $mapping_priority, $response_format);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SpotApi->spotV1HistoricalDays: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **market** | **string**| The exchange to obtain data from | |
| **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**string[]**](../Model/string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] |
| **limit** | **int**| The number of data points to return | [optional] [default to 30] |
| **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1] |
| **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true] |
| **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;] |

### Return type

[**\OpenAPI\Client\Model\SPOTINSTRUMENTHISTODATARESPONSE**](../Model/SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `spotV1HistoricalHours()`

```php
spotV1HistoricalHours($market, $instrument, $groups, $limit, $to_ts, $aggregate, $fill, $mapping_priority, $response_format): \OpenAPI\Client\Model\SPOTINSTRUMENTHISTODATARESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SpotApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$market = 'market_example'; // string | The exchange to obtain data from
$instrument = 'instrument_example'; // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
$groups = array('groups_example'); // string[] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
$limit = 30; // int | The number of data points to return
$to_ts = 56; // int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
$aggregate = 1; // int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
$fill = true; // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
$mapping_priority = 'CHECK_MAPPED_FIRST'; // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
$response_format = 'JSON'; // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

try {
    $result = $apiInstance->spotV1HistoricalHours($market, $instrument, $groups, $limit, $to_ts, $aggregate, $fill, $mapping_priority, $response_format);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SpotApi->spotV1HistoricalHours: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **market** | **string**| The exchange to obtain data from | |
| **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**string[]**](../Model/string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] |
| **limit** | **int**| The number of data points to return | [optional] [default to 30] |
| **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1] |
| **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true] |
| **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;] |

### Return type

[**\OpenAPI\Client\Model\SPOTINSTRUMENTHISTODATARESPONSE**](../Model/SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `spotV1HistoricalMinutes()`

```php
spotV1HistoricalMinutes($market, $instrument, $groups, $limit, $to_ts, $aggregate, $fill, $mapping_priority, $response_format): \OpenAPI\Client\Model\SPOTINSTRUMENTHISTODATARESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SpotApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$market = 'market_example'; // string | The exchange to obtain data from
$instrument = 'instrument_example'; // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
$groups = array('groups_example'); // string[] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
$limit = 30; // int | The number of data points to return
$to_ts = 56; // int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
$aggregate = 1; // int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
$fill = true; // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
$mapping_priority = 'CHECK_MAPPED_FIRST'; // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
$response_format = 'JSON'; // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

try {
    $result = $apiInstance->spotV1HistoricalMinutes($market, $instrument, $groups, $limit, $to_ts, $aggregate, $fill, $mapping_priority, $response_format);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SpotApi->spotV1HistoricalMinutes: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **market** | **string**| The exchange to obtain data from | |
| **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**string[]**](../Model/string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] |
| **limit** | **int**| The number of data points to return | [optional] [default to 30] |
| **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1] |
| **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true] |
| **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;] |

### Return type

[**\OpenAPI\Client\Model\SPOTINSTRUMENTHISTODATARESPONSE**](../Model/SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `spotV1HistoricalOrderbookL2SnapshotMinute()`

```php
spotV1HistoricalOrderbookL2SnapshotMinute($market, $instrument, $minute_ts, $depth, $mapping_priority, $response_format): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: api_key_header
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');

// Configure API key authorization: api_key_query
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api_key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api_key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\SpotApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$market = 'market_example'; // string | The exchange to obtain data from
$instrument = 'instrument_example'; // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
$minute_ts = 56; // int | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
$depth = 50; // int | The number of top bids and asks to return.
$mapping_priority = 'CHECK_MAPPED_FIRST'; // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
$response_format = 'JSON'; // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

try {
    $result = $apiInstance->spotV1HistoricalOrderbookL2SnapshotMinute($market, $instrument, $minute_ts, $depth, $mapping_priority, $response_format);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SpotApi->spotV1HistoricalOrderbookL2SnapshotMinute: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **market** | **string**| The exchange to obtain data from | |
| **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **minute_ts** | **int**| Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. | |
| **depth** | **int**| The number of top bids and asks to return. | [optional] [default to 50] |
| **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;] |

### Return type

[**\OpenAPI\Client\Model\GENERICRESPONSE**](../Model/GENERICRESPONSE.md)

### Authorization

[api_key_header](../../README.md#api_key_header), [api_key_query](../../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `spotV1HistoricalTrades()`

```php
spotV1HistoricalTrades($market, $instrument, $after_ts, $last_ccseq, $limit, $mapping_priority, $response_format, $return_404_on_empty_response): \OpenAPI\Client\Model\SPOTINSTRUMENTTRADERESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: api_key_header
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');

// Configure API key authorization: api_key_query
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api_key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api_key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\SpotApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$market = 'market_example'; // string | The exchange to obtain data from
$instrument = 'instrument_example'; // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
$after_ts = 56; // int | Unix timestamp in seconds of the earliest trade in the response.
$last_ccseq = 0; // int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
$limit = 100; // int | The maximum number of trades to return
$mapping_priority = 'CHECK_MAPPED_FIRST'; // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
$response_format = 'JSON'; // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV
$return_404_on_empty_response = false; // bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.

try {
    $result = $apiInstance->spotV1HistoricalTrades($market, $instrument, $after_ts, $last_ccseq, $limit, $mapping_priority, $response_format, $return_404_on_empty_response);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SpotApi->spotV1HistoricalTrades: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **market** | **string**| The exchange to obtain data from | |
| **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **after_ts** | **int**| Unix timestamp in seconds of the earliest trade in the response. | [optional] |
| **last_ccseq** | **int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0] |
| **limit** | **int**| The maximum number of trades to return | [optional] [default to 100] |
| **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;] |
| **return_404_on_empty_response** | **bool**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false] |

### Return type

[**\OpenAPI\Client\Model\SPOTINSTRUMENTTRADERESPONSE**](../Model/SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../../README.md#api_key_header), [api_key_query](../../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `spotV1HistoricalTradesHour()`

```php
spotV1HistoricalTradesHour($market, $instrument, $hour_ts, $mapping_priority, $response_format, $return_404_on_empty_response): \OpenAPI\Client\Model\SPOTINSTRUMENTTRADERESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: api_key_header
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('authorization', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('authorization', 'Bearer');

// Configure API key authorization: api_key_query
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api_key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api_key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\SpotApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$market = 'market_example'; // string | The exchange to obtain data from
$instrument = 'instrument_example'; // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
$hour_ts = 56; // int | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
$mapping_priority = 'CHECK_MAPPED_FIRST'; // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
$response_format = 'JSON'; // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV
$return_404_on_empty_response = false; // bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.

try {
    $result = $apiInstance->spotV1HistoricalTradesHour($market, $instrument, $hour_ts, $mapping_priority, $response_format, $return_404_on_empty_response);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SpotApi->spotV1HistoricalTradesHour: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **market** | **string**| The exchange to obtain data from | |
| **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | |
| **hour_ts** | **int**| Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional] |
| **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;] |
| **return_404_on_empty_response** | **bool**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false] |

### Return type

[**\OpenAPI\Client\Model\SPOTINSTRUMENTTRADERESPONSE**](../Model/SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../../README.md#api_key_header), [api_key_query](../../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `spotV1LatestInstrumentMetadata()`

```php
spotV1LatestInstrumentMetadata($market, $instruments, $groups, $mapping_priority): \OpenAPI\Client\Model\SPOTINSTRUMENTMETADATARESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SpotApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$market = coinbase; // string | The exchange to obtain data from
$instruments = ["BTC-USD","ETH-USD"]; // string[] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
$groups = array('groups_example'); // string[] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
$mapping_priority = 'CHECK_MAPPED_FIRST'; // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

try {
    $result = $apiInstance->spotV1LatestInstrumentMetadata($market, $instruments, $groups, $mapping_priority);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SpotApi->spotV1LatestInstrumentMetadata: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **market** | **string**| The exchange to obtain data from | |
| **instruments** | [**string[]**](../Model/string.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**string[]**](../Model/string.md)| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] |
| **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;] |

### Return type

[**\OpenAPI\Client\Model\SPOTINSTRUMENTMETADATARESPONSE**](../Model/SPOTINSTRUMENTMETADATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `spotV1LatestTick()`

```php
spotV1LatestTick($market, $instruments, $groups, $mapping_priority): \OpenAPI\Client\Model\SPOTINSTRUMENTMARKETDATARESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SpotApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$market = 'market_example'; // string | The exchange to obtain data from
$instruments = array('instruments_example'); // string[] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
$groups = array('groups_example'); // string[] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
$mapping_priority = 'CHECK_MAPPED_FIRST'; // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

try {
    $result = $apiInstance->spotV1LatestTick($market, $instruments, $groups, $mapping_priority);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SpotApi->spotV1LatestTick: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **market** | **string**| The exchange to obtain data from | |
| **instruments** | [**string[]**](../Model/string.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | |
| **groups** | [**string[]**](../Model/string.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] |
| **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;] |

### Return type

[**\OpenAPI\Client\Model\SPOTINSTRUMENTMARKETDATARESPONSE**](../Model/SPOTINSTRUMENTMARKETDATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `spotV1Markets()`

```php
spotV1Markets($market): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SpotApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$market = ''; // string | The exchange to obtain data from

try {
    $result = $apiInstance->spotV1Markets($market);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SpotApi->spotV1Markets: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **market** | **string**| The exchange to obtain data from | [optional] [default to &#39;&#39;] |

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

## `spotV1MarketsInstruments()`

```php
spotV1MarketsInstruments($market, $instrument, $instrument_status): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SpotApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$market = ''; // string | The exchange to obtain data from
$instrument = ''; // string | The mapped instrument to retrieve on a specific market.
$instrument_status = array('instrument_status_example'); // string[] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED

try {
    $result = $apiInstance->spotV1MarketsInstruments($market, $instrument, $instrument_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SpotApi->spotV1MarketsInstruments: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **market** | **string**| The exchange to obtain data from | [optional] [default to &#39;&#39;] |
| **instrument** | **string**| The mapped instrument to retrieve on a specific market. | [optional] [default to &#39;&#39;] |
| **instrument_status** | [**string[]**](../Model/string.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] |

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

## `spotV1MarketsInstrumentsUnmapped()`

```php
spotV1MarketsInstrumentsUnmapped($market, $instrument, $instrument_status): \OpenAPI\Client\Model\GENERICRESPONSE
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SpotApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$market = ''; // string | The exchange to obtain data from
$instrument = ''; // string | The unmapped instrument to retrieve on a specific market.
$instrument_status = array('instrument_status_example'); // string[] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED

try {
    $result = $apiInstance->spotV1MarketsInstrumentsUnmapped($market, $instrument, $instrument_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SpotApi->spotV1MarketsInstrumentsUnmapped: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **market** | **string**| The exchange to obtain data from | [optional] [default to &#39;&#39;] |
| **instrument** | **string**| The unmapped instrument to retrieve on a specific market. | [optional] [default to &#39;&#39;] |
| **instrument_status** | [**string[]**](../Model/string.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] |

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
