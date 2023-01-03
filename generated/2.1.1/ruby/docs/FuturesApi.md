# OpenapiClient::FuturesApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**futures_v1_historical_days**](FuturesApi.md#futures_v1_historical_days) | **GET** /futures/v1/historical/days |  |
| [**futures_v1_historical_funding_rate_days**](FuturesApi.md#futures_v1_historical_funding_rate_days) | **GET** /futures/v1/historical/funding-rate/days |  |
| [**futures_v1_historical_funding_rate_hours**](FuturesApi.md#futures_v1_historical_funding_rate_hours) | **GET** /futures/v1/historical/funding-rate/hours |  |
| [**futures_v1_historical_funding_rate_messages**](FuturesApi.md#futures_v1_historical_funding_rate_messages) | **GET** /futures/v1/historical/funding-rate-messages |  |
| [**futures_v1_historical_funding_rate_messages_hour**](FuturesApi.md#futures_v1_historical_funding_rate_messages_hour) | **GET** /futures/v1/historical/funding-rate-messages/hour |  |
| [**futures_v1_historical_funding_rate_minutes**](FuturesApi.md#futures_v1_historical_funding_rate_minutes) | **GET** /futures/v1/historical/funding-rate/minutes |  |
| [**futures_v1_historical_hours**](FuturesApi.md#futures_v1_historical_hours) | **GET** /futures/v1/historical/hours |  |
| [**futures_v1_historical_minutes**](FuturesApi.md#futures_v1_historical_minutes) | **GET** /futures/v1/historical/minutes |  |
| [**futures_v1_historical_open_interest_days**](FuturesApi.md#futures_v1_historical_open_interest_days) | **GET** /futures/v1/historical/open-interest/days |  |
| [**futures_v1_historical_open_interest_hours**](FuturesApi.md#futures_v1_historical_open_interest_hours) | **GET** /futures/v1/historical/open-interest/hours |  |
| [**futures_v1_historical_open_interest_messages**](FuturesApi.md#futures_v1_historical_open_interest_messages) | **GET** /futures/v1/historical/open-interest-messages |  |
| [**futures_v1_historical_open_interest_messages_hour**](FuturesApi.md#futures_v1_historical_open_interest_messages_hour) | **GET** /futures/v1/historical/open-interest-messages/hour |  |
| [**futures_v1_historical_open_interest_minutes**](FuturesApi.md#futures_v1_historical_open_interest_minutes) | **GET** /futures/v1/historical/open-interest/minutes |  |
| [**futures_v1_historical_trades**](FuturesApi.md#futures_v1_historical_trades) | **GET** /futures/v1/historical/trades |  |
| [**futures_v1_historical_trades_hour**](FuturesApi.md#futures_v1_historical_trades_hour) | **GET** /futures/v1/historical/trades/hour |  |
| [**futures_v1_latest_funding_rate_tick**](FuturesApi.md#futures_v1_latest_funding_rate_tick) | **GET** /futures/v1/latest/funding-rate/tick |  |
| [**futures_v1_latest_instrument_metadata**](FuturesApi.md#futures_v1_latest_instrument_metadata) | **GET** /futures/v1/latest/instrument/metadata |  |
| [**futures_v1_latest_open_interest_tick**](FuturesApi.md#futures_v1_latest_open_interest_tick) | **GET** /futures/v1/latest/open-interest/tick |  |
| [**futures_v1_latest_tick**](FuturesApi.md#futures_v1_latest_tick) | **GET** /futures/v1/latest/tick |  |
| [**futures_v1_markets**](FuturesApi.md#futures_v1_markets) | **GET** /futures/v1/markets |  |
| [**futures_v1_markets_instruments**](FuturesApi.md#futures_v1_markets_instruments) | **GET** /futures/v1/markets/instruments |  |
| [**futures_v1_markets_instruments_unmapped**](FuturesApi.md#futures_v1_markets_instruments_unmapped) | **GET** /futures/v1/markets/instruments/unmapped |  |
| [**index_v1_historical_days**](FuturesApi.md#index_v1_historical_days) | **GET** /index/v1/historical/days |  |
| [**index_v1_historical_hours**](FuturesApi.md#index_v1_historical_hours) | **GET** /index/v1/historical/hours |  |
| [**index_v1_historical_messages**](FuturesApi.md#index_v1_historical_messages) | **GET** /index/v1/historical/messages |  |
| [**index_v1_historical_messages_hour**](FuturesApi.md#index_v1_historical_messages_hour) | **GET** /index/v1/historical/messages/hour |  |
| [**index_v1_historical_minutes**](FuturesApi.md#index_v1_historical_minutes) | **GET** /index/v1/historical/minutes |  |
| [**index_v1_latest_instrument_metadata**](FuturesApi.md#index_v1_latest_instrument_metadata) | **GET** /index/v1/latest/instrument/metadata |  |
| [**index_v1_latest_tick**](FuturesApi.md#index_v1_latest_tick) | **GET** /index/v1/latest/tick |  |
| [**index_v1_markets**](FuturesApi.md#index_v1_markets) | **GET** /index/v1/markets |  |
| [**index_v1_markets_instruments**](FuturesApi.md#index_v1_markets_instruments) | **GET** /index/v1/markets/instruments |  |
| [**index_v1_markets_instruments_unmapped**](FuturesApi.md#index_v1_markets_instruments_unmapped) | **GET** /index/v1/markets/instruments/unmapped |  |


## futures_v1_historical_days

> <GENERICRESPONSE> futures_v1_historical_days(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
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
  
  result = api_instance.futures_v1_historical_days(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_days: #{e}"
end
```

#### Using the futures_v1_historical_days_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_days_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_days_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_days_with_http_info: #{e}"
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_funding_rate_days

> <GENERICRESPONSE> futures_v1_historical_funding_rate_days(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.futures_v1_historical_funding_rate_days(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_funding_rate_days: #{e}"
end
```

#### Using the futures_v1_historical_funding_rate_days_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_funding_rate_days_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_funding_rate_days_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_funding_rate_days_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_funding_rate_hours

> <GENERICRESPONSE> futures_v1_historical_funding_rate_hours(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.futures_v1_historical_funding_rate_hours(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_funding_rate_hours: #{e}"
end
```

#### Using the futures_v1_historical_funding_rate_hours_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_funding_rate_hours_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_funding_rate_hours_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_funding_rate_hours_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_funding_rate_messages

> <GENERICRESPONSE> futures_v1_historical_funding_rate_messages(market, instrument, opts)



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

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  after_ts: 56, # Integer | Unix timestamp in seconds of the earliest funding rate message in the response
  last_ccseq: 56, # Integer | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
  limit: 56, # Integer | The maximum number of funding rate messages to return
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON', # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
  return_404_on_empty_response: true # Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
}

begin
  
  result = api_instance.futures_v1_historical_funding_rate_messages(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_funding_rate_messages: #{e}"
end
```

#### Using the futures_v1_historical_funding_rate_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_funding_rate_messages_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_funding_rate_messages_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_funding_rate_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **after_ts** | **Integer** | Unix timestamp in seconds of the earliest funding rate message in the response | [optional] |
| **last_ccseq** | **Integer** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of funding rate messages to return | [optional][default to 100] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |
| **return_404_on_empty_response** | **Boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional][default to false] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_funding_rate_messages_hour

> <GENERICRESPONSE> futures_v1_historical_funding_rate_messages_hour(market, instrument, opts)



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

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  hour_ts: 56, # Integer | Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON', # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
  return_404_on_empty_response: true # Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
}

begin
  
  result = api_instance.futures_v1_historical_funding_rate_messages_hour(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_funding_rate_messages_hour: #{e}"
end
```

#### Using the futures_v1_historical_funding_rate_messages_hour_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_funding_rate_messages_hour_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_funding_rate_messages_hour_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_funding_rate_messages_hour_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **hour_ts** | **Integer** | Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. | [optional] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |
| **return_404_on_empty_response** | **Boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional][default to false] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_funding_rate_minutes

> <GENERICRESPONSE> futures_v1_historical_funding_rate_minutes(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.futures_v1_historical_funding_rate_minutes(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_funding_rate_minutes: #{e}"
end
```

#### Using the futures_v1_historical_funding_rate_minutes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_funding_rate_minutes_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_funding_rate_minutes_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_funding_rate_minutes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_hours

> <GENERICRESPONSE> futures_v1_historical_hours(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
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
  
  result = api_instance.futures_v1_historical_hours(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_hours: #{e}"
end
```

#### Using the futures_v1_historical_hours_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_hours_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_hours_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_hours_with_http_info: #{e}"
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_minutes

> <GENERICRESPONSE> futures_v1_historical_minutes(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
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
  
  result = api_instance.futures_v1_historical_minutes(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_minutes: #{e}"
end
```

#### Using the futures_v1_historical_minutes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_minutes_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_minutes_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_minutes_with_http_info: #{e}"
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_open_interest_days

> <GENERICRESPONSE> futures_v1_historical_open_interest_days(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.futures_v1_historical_open_interest_days(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_open_interest_days: #{e}"
end
```

#### Using the futures_v1_historical_open_interest_days_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_open_interest_days_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_open_interest_days_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_open_interest_days_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_open_interest_hours

> <GENERICRESPONSE> futures_v1_historical_open_interest_hours(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.futures_v1_historical_open_interest_hours(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_open_interest_hours: #{e}"
end
```

#### Using the futures_v1_historical_open_interest_hours_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_open_interest_hours_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_open_interest_hours_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_open_interest_hours_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_open_interest_messages

> <GENERICRESPONSE> futures_v1_historical_open_interest_messages(market, instrument, opts)



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

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  after_ts: 56, # Integer | Unix timestamp in seconds of the earliest open interest message in the response
  last_ccseq: 56, # Integer | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
  limit: 56, # Integer | The maximum number of open interest messages to return
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON', # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
  return_404_on_empty_response: true # Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
}

begin
  
  result = api_instance.futures_v1_historical_open_interest_messages(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_open_interest_messages: #{e}"
end
```

#### Using the futures_v1_historical_open_interest_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_open_interest_messages_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_open_interest_messages_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_open_interest_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **after_ts** | **Integer** | Unix timestamp in seconds of the earliest open interest message in the response | [optional] |
| **last_ccseq** | **Integer** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of open interest messages to return | [optional][default to 100] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |
| **return_404_on_empty_response** | **Boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional][default to false] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_open_interest_messages_hour

> <GENERICRESPONSE> futures_v1_historical_open_interest_messages_hour(market, instrument, opts)



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

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  hour_ts: 56, # Integer | Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON', # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
  return_404_on_empty_response: true # Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
}

begin
  
  result = api_instance.futures_v1_historical_open_interest_messages_hour(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_open_interest_messages_hour: #{e}"
end
```

#### Using the futures_v1_historical_open_interest_messages_hour_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_open_interest_messages_hour_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_open_interest_messages_hour_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_open_interest_messages_hour_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **hour_ts** | **Integer** | Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. | [optional] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |
| **return_404_on_empty_response** | **Boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional][default to false] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_open_interest_minutes

> <GENERICRESPONSE> futures_v1_historical_open_interest_minutes(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.futures_v1_historical_open_interest_minutes(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_open_interest_minutes: #{e}"
end
```

#### Using the futures_v1_historical_open_interest_minutes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_open_interest_minutes_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_open_interest_minutes_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_open_interest_minutes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_trades

> <GENERICRESPONSE> futures_v1_historical_trades(market, instrument, opts)



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

api_instance = OpenapiClient::FuturesApi.new
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
  
  result = api_instance.futures_v1_historical_trades(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_trades: #{e}"
end
```

#### Using the futures_v1_historical_trades_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_trades_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_trades_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_trades_with_http_info: #{e}"
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_historical_trades_hour

> <GENERICRESPONSE> futures_v1_historical_trades_hour(market, instrument, opts)



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

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  hour_ts: 56, # Integer | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON', # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
  return_404_on_empty_response: true # Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
}

begin
  
  result = api_instance.futures_v1_historical_trades_hour(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_trades_hour: #{e}"
end
```

#### Using the futures_v1_historical_trades_hour_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_historical_trades_hour_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_historical_trades_hour_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_historical_trades_hour_with_http_info: #{e}"
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_latest_funding_rate_tick

> <GENERICRESPONSE> futures_v1_latest_funding_rate_tick(market, instruments, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instruments = ['inner_example'] # Array<String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
  mapping_priority: 'CHECK_MAPPED_FIRST' # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
}

begin
  
  result = api_instance.futures_v1_latest_funding_rate_tick(market, instruments, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_latest_funding_rate_tick: #{e}"
end
```

#### Using the futures_v1_latest_funding_rate_tick_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_latest_funding_rate_tick_with_http_info(market, instruments, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_latest_funding_rate_tick_with_http_info(market, instruments, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_latest_funding_rate_tick_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instruments** | [**Array&lt;String&gt;**](String.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_latest_instrument_metadata

> <GENERICRESPONSE> futures_v1_latest_instrument_metadata(market, instruments, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instruments = ['inner_example'] # Array<String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
  mapping_priority: 'CHECK_MAPPED_FIRST' # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
}

begin
  
  result = api_instance.futures_v1_latest_instrument_metadata(market, instruments, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_latest_instrument_metadata: #{e}"
end
```

#### Using the futures_v1_latest_instrument_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_latest_instrument_metadata_with_http_info(market, instruments, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_latest_instrument_metadata_with_http_info(market, instruments, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_latest_instrument_metadata_with_http_info: #{e}"
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_latest_open_interest_tick

> <GENERICRESPONSE> futures_v1_latest_open_interest_tick(market, instruments, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instruments = ['inner_example'] # Array<String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
  mapping_priority: 'CHECK_MAPPED_FIRST' # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
}

begin
  
  result = api_instance.futures_v1_latest_open_interest_tick(market, instruments, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_latest_open_interest_tick: #{e}"
end
```

#### Using the futures_v1_latest_open_interest_tick_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_latest_open_interest_tick_with_http_info(market, instruments, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_latest_open_interest_tick_with_http_info(market, instruments, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_latest_open_interest_tick_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instruments** | [**Array&lt;String&gt;**](String.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_latest_tick

> <GENERICRESPONSE> futures_v1_latest_tick(market, instruments, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instruments = ['inner_example'] # Array<String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
  mapping_priority: 'CHECK_MAPPED_FIRST' # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
}

begin
  
  result = api_instance.futures_v1_latest_tick(market, instruments, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_latest_tick: #{e}"
end
```

#### Using the futures_v1_latest_tick_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_latest_tick_with_http_info(market, instruments, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_latest_tick_with_http_info(market, instruments, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_latest_tick_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instruments** | [**Array&lt;String&gt;**](String.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## futures_v1_markets

> <GENERICRESPONSE> futures_v1_markets(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
opts = {
  market: 'market_example' # String | The exchange to obtain data from
}

begin
  
  result = api_instance.futures_v1_markets(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_markets: #{e}"
end
```

#### Using the futures_v1_markets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_markets_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_markets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_markets_with_http_info: #{e}"
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


## futures_v1_markets_instruments

> <GENERICRESPONSE> futures_v1_markets_instruments(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
opts = {
  market: 'market_example', # String | The exchange to obtain data from
  instrument: 'instrument_example', # String | The mapped instrument to retrieve on a specific market.
  instrument_status: ['ACTIVE'] # Array<String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
}

begin
  
  result = api_instance.futures_v1_markets_instruments(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_markets_instruments: #{e}"
end
```

#### Using the futures_v1_markets_instruments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_markets_instruments_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_markets_instruments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_markets_instruments_with_http_info: #{e}"
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


## futures_v1_markets_instruments_unmapped

> <GENERICRESPONSE> futures_v1_markets_instruments_unmapped(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
opts = {
  market: 'market_example', # String | The exchange to obtain data from
  instrument: 'instrument_example', # String | The unmapped instrument to retrieve on a specific market.
  instrument_status: ['ACTIVE'] # Array<String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
}

begin
  
  result = api_instance.futures_v1_markets_instruments_unmapped(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_markets_instruments_unmapped: #{e}"
end
```

#### Using the futures_v1_markets_instruments_unmapped_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> futures_v1_markets_instruments_unmapped_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.futures_v1_markets_instruments_unmapped_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->futures_v1_markets_instruments_unmapped_with_http_info: #{e}"
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


## index_v1_historical_days

> <GENERICRESPONSE> index_v1_historical_days(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.index_v1_historical_days(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_historical_days: #{e}"
end
```

#### Using the index_v1_historical_days_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> index_v1_historical_days_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.index_v1_historical_days_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_historical_days_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_v1_historical_hours

> <GENERICRESPONSE> index_v1_historical_hours(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.index_v1_historical_hours(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_historical_hours: #{e}"
end
```

#### Using the index_v1_historical_hours_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> index_v1_historical_hours_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.index_v1_historical_hours_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_historical_hours_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_v1_historical_messages

> <GENERICRESPONSE> index_v1_historical_messages(market, instrument, opts)



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

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  after_ts: 56, # Integer | Unix timestamp in seconds of the earliest index message in the response
  last_ccseq: 56, # Integer | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
  limit: 56, # Integer | The maximum number of index messages to return
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON', # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
  return_404_on_empty_response: true # Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
}

begin
  
  result = api_instance.index_v1_historical_messages(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_historical_messages: #{e}"
end
```

#### Using the index_v1_historical_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> index_v1_historical_messages_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.index_v1_historical_messages_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_historical_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **after_ts** | **Integer** | Unix timestamp in seconds of the earliest index message in the response | [optional] |
| **last_ccseq** | **Integer** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional][default to 0] |
| **limit** | **Integer** | The maximum number of index messages to return | [optional][default to 100] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |
| **return_404_on_empty_response** | **Boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional][default to false] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_v1_historical_messages_hour

> <GENERICRESPONSE> index_v1_historical_messages_hour(market, instrument, opts)



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

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  hour_ts: 56, # Integer | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON', # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
  return_404_on_empty_response: true # Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
}

begin
  
  result = api_instance.index_v1_historical_messages_hour(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_historical_messages_hour: #{e}"
end
```

#### Using the index_v1_historical_messages_hour_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> index_v1_historical_messages_hour_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.index_v1_historical_messages_hour_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_historical_messages_hour_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **hour_ts** | **Integer** | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | [optional] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |
| **return_404_on_empty_response** | **Boolean** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional][default to false] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_v1_historical_minutes

> <GENERICRESPONSE> index_v1_historical_minutes(market, instrument, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instrument = 'instrument_example' # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
  limit: 56, # Integer | The number of data points to return
  to_ts: 56, # Integer | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
  aggregate: 56, # Integer | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
  fill: true, # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
  mapping_priority: 'CHECK_MAPPED_FIRST', # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
  response_format: 'JSON' # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV
}

begin
  
  result = api_instance.index_v1_historical_minutes(market, instrument, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_historical_minutes: #{e}"
end
```

#### Using the index_v1_historical_minutes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> index_v1_historical_minutes_with_http_info(market, instrument, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.index_v1_historical_minutes_with_http_info(market, instrument, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_historical_minutes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] |
| **limit** | **Integer** | The number of data points to return | [optional][default to 30] |
| **to_ts** | **Integer** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] |
| **aggregate** | **Integer** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional][default to 1] |
| **fill** | **Boolean** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional][default to true] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |
| **response_format** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional][default to &#39;JSON&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_v1_latest_instrument_metadata

> <GENERICRESPONSE> index_v1_latest_instrument_metadata(market, instruments, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instruments = ['inner_example'] # Array<String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
  mapping_priority: 'CHECK_MAPPED_FIRST' # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
}

begin
  
  result = api_instance.index_v1_latest_instrument_metadata(market, instruments, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_latest_instrument_metadata: #{e}"
end
```

#### Using the index_v1_latest_instrument_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> index_v1_latest_instrument_metadata_with_http_info(market, instruments, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.index_v1_latest_instrument_metadata_with_http_info(market, instruments, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_latest_instrument_metadata_with_http_info: #{e}"
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_v1_latest_tick

> <GENERICRESPONSE> index_v1_latest_tick(market, instruments, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
market = 'market_example' # String | The exchange to obtain data from
instruments = ['inner_example'] # Array<String> | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
opts = {
  groups: ['inner_example'], # Array<String> | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
  mapping_priority: 'CHECK_MAPPED_FIRST' # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
}

begin
  
  result = api_instance.index_v1_latest_tick(market, instruments, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_latest_tick: #{e}"
end
```

#### Using the index_v1_latest_tick_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> index_v1_latest_tick_with_http_info(market, instruments, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.index_v1_latest_tick_with_http_info(market, instruments, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_latest_tick_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **market** | **String** | The exchange to obtain data from |  |
| **instruments** | [**Array&lt;String&gt;**](String.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. |  |
| **groups** | [**Array&lt;String&gt;**](String.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] |
| **mapping_priority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional][default to &#39;CHECK_MAPPED_FIRST&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_v1_markets

> <GENERICRESPONSE> index_v1_markets(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
opts = {
  market: 'market_example' # String | The exchange to obtain data from
}

begin
  
  result = api_instance.index_v1_markets(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_markets: #{e}"
end
```

#### Using the index_v1_markets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> index_v1_markets_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.index_v1_markets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_markets_with_http_info: #{e}"
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


## index_v1_markets_instruments

> <GENERICRESPONSE> index_v1_markets_instruments(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
opts = {
  market: 'market_example', # String | The exchange to obtain data from
  instrument: 'instrument_example', # String | The mapped instrument to retrieve on a specific market.
  instrument_status: ['ACTIVE'] # Array<String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
}

begin
  
  result = api_instance.index_v1_markets_instruments(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_markets_instruments: #{e}"
end
```

#### Using the index_v1_markets_instruments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> index_v1_markets_instruments_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.index_v1_markets_instruments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_markets_instruments_with_http_info: #{e}"
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


## index_v1_markets_instruments_unmapped

> <GENERICRESPONSE> index_v1_markets_instruments_unmapped(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FuturesApi.new
opts = {
  market: 'market_example', # String | The exchange to obtain data from
  instrument: 'instrument_example', # String | The unmapped instrument to retrieve on a specific market.
  instrument_status: ['ACTIVE'] # Array<String> | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
}

begin
  
  result = api_instance.index_v1_markets_instruments_unmapped(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_markets_instruments_unmapped: #{e}"
end
```

#### Using the index_v1_markets_instruments_unmapped_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> index_v1_markets_instruments_unmapped_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.index_v1_markets_instruments_unmapped_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling FuturesApi->index_v1_markets_instruments_unmapped_with_http_info: #{e}"
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

