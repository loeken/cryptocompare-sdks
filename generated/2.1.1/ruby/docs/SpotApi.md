# OpenapiClient::SpotApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**spot_v1_historical_days**](SpotApi.md#spot_v1_historical_days) | **GET** /spot/v1/historical/days |  |
| [**spot_v1_historical_hours**](SpotApi.md#spot_v1_historical_hours) | **GET** /spot/v1/historical/hours |  |
| [**spot_v1_historical_minutes**](SpotApi.md#spot_v1_historical_minutes) | **GET** /spot/v1/historical/minutes |  |
| [**spot_v1_historical_orderbook_l2_snapshot_minute**](SpotApi.md#spot_v1_historical_orderbook_l2_snapshot_minute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute |  |
| [**spot_v1_historical_trades**](SpotApi.md#spot_v1_historical_trades) | **GET** /spot/v1/historical/trades |  |
| [**spot_v1_historical_trades_hour**](SpotApi.md#spot_v1_historical_trades_hour) | **GET** /spot/v1/historical/trades/hour |  |
| [**spot_v1_latest_instrument_metadata**](SpotApi.md#spot_v1_latest_instrument_metadata) | **GET** /spot/v1/latest/instrument/metadata |  |
| [**spot_v1_latest_tick**](SpotApi.md#spot_v1_latest_tick) | **GET** /spot/v1/latest/tick |  |
| [**spot_v1_markets**](SpotApi.md#spot_v1_markets) | **GET** /spot/v1/markets |  |
| [**spot_v1_markets_instruments**](SpotApi.md#spot_v1_markets_instruments) | **GET** /spot/v1/markets/instruments |  |
| [**spot_v1_markets_instruments_unmapped**](SpotApi.md#spot_v1_markets_instruments_unmapped) | **GET** /spot/v1/markets/instruments/unmapped |  |


## spot_v1_historical_days

> <SPOTINSTRUMENTHISTODATARESPONSE> spot_v1_historical_days(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SpotApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.spot_v1_historical_days(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_historical_days: #{e}"
end
```

#### Using the spot_v1_historical_days_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SPOTINSTRUMENTHISTODATARESPONSE>, Integer, Hash)> spot_v1_historical_days_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.spot_v1_historical_days_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SPOTINSTRUMENTHISTODATARESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_historical_days_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## spot_v1_historical_hours

> <SPOTINSTRUMENTHISTODATARESPONSE> spot_v1_historical_hours(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SpotApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.spot_v1_historical_hours(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_historical_hours: #{e}"
end
```

#### Using the spot_v1_historical_hours_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SPOTINSTRUMENTHISTODATARESPONSE>, Integer, Hash)> spot_v1_historical_hours_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.spot_v1_historical_hours_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SPOTINSTRUMENTHISTODATARESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_historical_hours_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## spot_v1_historical_minutes

> <SPOTINSTRUMENTHISTODATARESPONSE> spot_v1_historical_minutes(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SpotApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.spot_v1_historical_minutes(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_historical_minutes: #{e}"
end
```

#### Using the spot_v1_historical_minutes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SPOTINSTRUMENTHISTODATARESPONSE>, Integer, Hash)> spot_v1_historical_minutes_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.spot_v1_historical_minutes_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SPOTINSTRUMENTHISTODATARESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_historical_minutes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## spot_v1_historical_orderbook_l2_snapshot_minute

> <GENERICRESPONSE> spot_v1_historical_orderbook_l2_snapshot_minute(market, instrument, minute_ts, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'
end

api_instance = OpenapiClient::SpotApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
minute_ts = 56 # Integer | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
opts = {
  depth: 56, # Integer | The number of top bids and asks to return.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.spot_v1_historical_orderbook_l2_snapshot_minute(market, instrument, minute_ts, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_historical_orderbook_l2_snapshot_minute: #{e}"
end
```

#### Using the spot_v1_historical_orderbook_l2_snapshot_minute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> spot_v1_historical_orderbook_l2_snapshot_minute_with_http_info(market, instrument, minute_ts, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.spot_v1_historical_orderbook_l2_snapshot_minute_with_http_info(market, instrument, minute_ts, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_historical_orderbook_l2_snapshot_minute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **minute_ts** | **Integer** | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. |  |
| **depth** | **Integer** | The number of top bids and asks to return. | [optional][default to 50] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## spot_v1_historical_trades

> <SPOTINSTRUMENTTRADERESPONSE> spot_v1_historical_trades(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'
end

api_instance = OpenapiClient::SpotApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  after_ts: 56, # Integer | Unix timestamp in seconds of the earliest trade in the response.
  last_ccseq: 56, # Integer | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
  limit: 56, # Integer | The maximum number of trades to return
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON', # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
  return_404_on_empty_response: true # Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
}

begin
  
  result = api_instance.spot_v1_historical_trades(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_historical_trades: #{e}"
end
```

#### Using the spot_v1_historical_trades_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SPOTINSTRUMENTTRADERESPONSE>, Integer, Hash)> spot_v1_historical_trades_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.spot_v1_historical_trades_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SPOTINSTRUMENTTRADERESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_historical_trades_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **after_ts** | **Integer** | Unix timestamp in seconds of the earliest trade in the response. | [optional] |
| **last_ccseq** | **Integer** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of trades to return | [optional][default to 100] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |
| **return_404_on_empty_response** | **Boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional][default to false] |

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## spot_v1_historical_trades_hour

> <SPOTINSTRUMENTTRADERESPONSE> spot_v1_historical_trades_hour(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'

  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'
end

api_instance = OpenapiClient::SpotApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  hour_ts: 56, # Integer | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON', # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
  return_404_on_empty_response: true # Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
}

begin
  
  result = api_instance.spot_v1_historical_trades_hour(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_historical_trades_hour: #{e}"
end
```

#### Using the spot_v1_historical_trades_hour_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SPOTINSTRUMENTTRADERESPONSE>, Integer, Hash)> spot_v1_historical_trades_hour_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.spot_v1_historical_trades_hour_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SPOTINSTRUMENTTRADERESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_historical_trades_hour_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **hour_ts** | **Integer** | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |
| **return_404_on_empty_response** | **Boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional][default to false] |

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## spot_v1_latest_instrument_metadata

> <SPOTINSTRUMENTMETADATARESPONSE> spot_v1_latest_instrument_metadata(market, instruments, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SpotApi.new
market = 'coinbase' # String | The exchange to obtain data from
instruments = ['inner_example'] # Array<String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
  mapping_priority: 'CHECK_MAPPED_FIRST' # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
}

begin
  
  result = api_instance.spot_v1_latest_instrument_metadata(market, instruments, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_latest_instrument_metadata: #{e}"
end
```

#### Using the spot_v1_latest_instrument_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SPOTINSTRUMENTMETADATARESPONSE>, Integer, Hash)> spot_v1_latest_instrument_metadata_with_http_info(market, instruments, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.spot_v1_latest_instrument_metadata_with_http_info(market, instruments, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SPOTINSTRUMENTMETADATARESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_latest_instrument_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instruments** | [**Array&lt;String&gt;**](String.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |

### Return type

[**SPOTINSTRUMENTMETADATARESPONSE**](SPOTINSTRUMENTMETADATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## spot_v1_latest_tick

> <SPOTINSTRUMENTMARKETDATARESPONSE> spot_v1_latest_tick(market, instruments, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SpotApi.new
market = 'market_example' # String | The exchange to obtain data from
instruments = ['inner_example'] # Array<String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
  mapping_priority: 'CHECK_MAPPED_FIRST' # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
}

begin
  
  result = api_instance.spot_v1_latest_tick(market, instruments, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_latest_tick: #{e}"
end
```

#### Using the spot_v1_latest_tick_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SPOTINSTRUMENTMARKETDATARESPONSE>, Integer, Hash)> spot_v1_latest_tick_with_http_info(market, instruments, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.spot_v1_latest_tick_with_http_info(market, instruments, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SPOTINSTRUMENTMARKETDATARESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_latest_tick_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instruments** | [**Array&lt;String&gt;**](String.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |

### Return type

[**SPOTINSTRUMENTMARKETDATARESPONSE**](SPOTINSTRUMENTMARKETDATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## spot_v1_markets

> <GENERICRESPONSE> spot_v1_markets(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SpotApi.new
opts = {
  market: 'market_example' # String | The exchange to obtain data from
}

begin
  
  result = api_instance.spot_v1_markets(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_markets: #{e}"
end
```

#### Using the spot_v1_markets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> spot_v1_markets_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.spot_v1_markets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_markets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from | [optional][default to &#39;&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## spot_v1_markets_instruments

> <GENERICRESPONSE> spot_v1_markets_instruments(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SpotApi.new
opts = {
  market: 'market_example', # String | The exchange to obtain data from
  instrument: 'instrument_example', # String | The mapped instrument to retrieve on a specific market.
  instrument_status: ['ACTIVE'] # Array<String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
}

begin
  
  result = api_instance.spot_v1_markets_instruments(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_markets_instruments: #{e}"
end
```

#### Using the spot_v1_markets_instruments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> spot_v1_markets_instruments_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.spot_v1_markets_instruments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_markets_instruments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from | [optional][default to &#39;&#39;] |
| **instrument** | **String** | The mapped instrument to retrieve on a specific market. | [optional][default to &#39;&#39;] |
| **instrument_status** | [**Array&lt;String&gt;**](String.md) | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## spot_v1_markets_instruments_unmapped

> <GENERICRESPONSE> spot_v1_markets_instruments_unmapped(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::SpotApi.new
opts = {
  market: 'market_example', # String | The exchange to obtain data from
  instrument: 'instrument_example', # String | The unmapped instrument to retrieve on a specific market.
  instrument_status: ['ACTIVE'] # Array<String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
}

begin
  
  result = api_instance.spot_v1_markets_instruments_unmapped(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_markets_instruments_unmapped: #{e}"
end
```

#### Using the spot_v1_markets_instruments_unmapped_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> spot_v1_markets_instruments_unmapped_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.spot_v1_markets_instruments_unmapped_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SpotApi->spot_v1_markets_instruments_unmapped_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from | [optional][default to &#39;&#39;] |
| **instrument** | **String** | The unmapped instrument to retrieve on a specific market. | [optional][default to &#39;&#39;] |
| **instrument_status** | [**Array&lt;String&gt;**](String.md) | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

