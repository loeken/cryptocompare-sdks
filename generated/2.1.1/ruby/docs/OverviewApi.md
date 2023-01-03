# OpenapiClient::OverviewApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**overview_v1_historical_marketcap_all_assets_days**](OverviewApi.md#overview_v1_historical_marketcap_all_assets_days) | **GET** /overview/v1/historical/marketcap/all/assets/days |  |
| [**overview_v1_historical_marketcap_all_assets_hours**](OverviewApi.md#overview_v1_historical_marketcap_all_assets_hours) | **GET** /overview/v1/historical/marketcap/all/assets/hours |  |
| [**overview_v1_historical_marketcap_ftw_assets_days**](OverviewApi.md#overview_v1_historical_marketcap_ftw_assets_days) | **GET** /overview/v1/historical/marketcap/ftw/assets/days |  |
| [**overview_v1_historical_marketcap_ftw_assets_hours**](OverviewApi.md#overview_v1_historical_marketcap_ftw_assets_hours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours |  |
| [**overview_v1_latest_marketcap_all_tick**](OverviewApi.md#overview_v1_latest_marketcap_all_tick) | **GET** /overview/v1/latest/marketcap/all/tick |  |
| [**overview_v1_latest_marketcap_ftw_tick**](OverviewApi.md#overview_v1_latest_marketcap_ftw_tick) | **GET** /overview/v1/latest/marketcap/ftw/tick |  |


## overview_v1_historical_marketcap_all_assets_days

> <GENERICRESPONSE> overview_v1_historical_marketcap_all_assets_days(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::OverviewApi.new
opts = {
  groups: ['inner_example'], # Array<String> | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.overview_v1_historical_marketcap_all_assets_days(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OverviewApi->overview_v1_historical_marketcap_all_assets_days: #{e}"
end
```

#### Using the overview_v1_historical_marketcap_all_assets_days_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> overview_v1_historical_marketcap_all_assets_days_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.overview_v1_historical_marketcap_all_assets_days_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OverviewApi->overview_v1_historical_marketcap_all_assets_days_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## overview_v1_historical_marketcap_all_assets_hours

> <GENERICRESPONSE> overview_v1_historical_marketcap_all_assets_hours(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::OverviewApi.new
opts = {
  groups: ['inner_example'], # Array<String> | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.overview_v1_historical_marketcap_all_assets_hours(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OverviewApi->overview_v1_historical_marketcap_all_assets_hours: #{e}"
end
```

#### Using the overview_v1_historical_marketcap_all_assets_hours_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> overview_v1_historical_marketcap_all_assets_hours_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.overview_v1_historical_marketcap_all_assets_hours_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OverviewApi->overview_v1_historical_marketcap_all_assets_hours_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## overview_v1_historical_marketcap_ftw_assets_days

> <GENERICRESPONSE> overview_v1_historical_marketcap_ftw_assets_days(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::OverviewApi.new
opts = {
  groups: ['inner_example'], # Array<String> | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.overview_v1_historical_marketcap_ftw_assets_days(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OverviewApi->overview_v1_historical_marketcap_ftw_assets_days: #{e}"
end
```

#### Using the overview_v1_historical_marketcap_ftw_assets_days_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> overview_v1_historical_marketcap_ftw_assets_days_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.overview_v1_historical_marketcap_ftw_assets_days_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OverviewApi->overview_v1_historical_marketcap_ftw_assets_days_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## overview_v1_historical_marketcap_ftw_assets_hours

> <GENERICRESPONSE> overview_v1_historical_marketcap_ftw_assets_hours(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::OverviewApi.new
opts = {
  groups: ['inner_example'], # Array<String> | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.overview_v1_historical_marketcap_ftw_assets_hours(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OverviewApi->overview_v1_historical_marketcap_ftw_assets_hours: #{e}"
end
```

#### Using the overview_v1_historical_marketcap_ftw_assets_hours_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> overview_v1_historical_marketcap_ftw_assets_hours_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.overview_v1_historical_marketcap_ftw_assets_hours_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OverviewApi->overview_v1_historical_marketcap_ftw_assets_hours_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## overview_v1_latest_marketcap_all_tick

> <GENERICRESPONSE> overview_v1_latest_marketcap_all_tick(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::OverviewApi.new
opts = {
  groups: ['inner_example'] # Array<String> | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
}

begin
  
  result = api_instance.overview_v1_latest_marketcap_all_tick(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OverviewApi->overview_v1_latest_marketcap_all_tick: #{e}"
end
```

#### Using the overview_v1_latest_marketcap_all_tick_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> overview_v1_latest_marketcap_all_tick_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.overview_v1_latest_marketcap_all_tick_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OverviewApi->overview_v1_latest_marketcap_all_tick_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## overview_v1_latest_marketcap_ftw_tick

> <GENERICRESPONSE> overview_v1_latest_marketcap_ftw_tick(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::OverviewApi.new
opts = {
  groups: ['inner_example'] # Array<String> | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
}

begin
  
  result = api_instance.overview_v1_latest_marketcap_ftw_tick(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OverviewApi->overview_v1_latest_marketcap_ftw_tick: #{e}"
end
```

#### Using the overview_v1_latest_marketcap_ftw_tick_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> overview_v1_latest_marketcap_ftw_tick_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.overview_v1_latest_marketcap_ftw_tick_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OverviewApi->overview_v1_latest_marketcap_ftw_tick_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

