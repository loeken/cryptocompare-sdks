# WWW::OpenAPIClient::FuturesApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::FuturesApi;
```

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**futures_v1_historical_days**](FuturesApi.md#futures_v1_historical_days) | **GET** /futures/v1/historical/days | 
[**futures_v1_historical_funding_rate_days**](FuturesApi.md#futures_v1_historical_funding_rate_days) | **GET** /futures/v1/historical/funding-rate/days | 
[**futures_v1_historical_funding_rate_hours**](FuturesApi.md#futures_v1_historical_funding_rate_hours) | **GET** /futures/v1/historical/funding-rate/hours | 
[**futures_v1_historical_funding_rate_messages**](FuturesApi.md#futures_v1_historical_funding_rate_messages) | **GET** /futures/v1/historical/funding-rate-messages | 
[**futures_v1_historical_funding_rate_messages_hour**](FuturesApi.md#futures_v1_historical_funding_rate_messages_hour) | **GET** /futures/v1/historical/funding-rate-messages/hour | 
[**futures_v1_historical_funding_rate_minutes**](FuturesApi.md#futures_v1_historical_funding_rate_minutes) | **GET** /futures/v1/historical/funding-rate/minutes | 
[**futures_v1_historical_hours**](FuturesApi.md#futures_v1_historical_hours) | **GET** /futures/v1/historical/hours | 
[**futures_v1_historical_minutes**](FuturesApi.md#futures_v1_historical_minutes) | **GET** /futures/v1/historical/minutes | 
[**futures_v1_historical_open_interest_days**](FuturesApi.md#futures_v1_historical_open_interest_days) | **GET** /futures/v1/historical/open-interest/days | 
[**futures_v1_historical_open_interest_hours**](FuturesApi.md#futures_v1_historical_open_interest_hours) | **GET** /futures/v1/historical/open-interest/hours | 
[**futures_v1_historical_open_interest_messages**](FuturesApi.md#futures_v1_historical_open_interest_messages) | **GET** /futures/v1/historical/open-interest-messages | 
[**futures_v1_historical_open_interest_messages_hour**](FuturesApi.md#futures_v1_historical_open_interest_messages_hour) | **GET** /futures/v1/historical/open-interest-messages/hour | 
[**futures_v1_historical_open_interest_minutes**](FuturesApi.md#futures_v1_historical_open_interest_minutes) | **GET** /futures/v1/historical/open-interest/minutes | 
[**futures_v1_historical_trades**](FuturesApi.md#futures_v1_historical_trades) | **GET** /futures/v1/historical/trades | 
[**futures_v1_historical_trades_hour**](FuturesApi.md#futures_v1_historical_trades_hour) | **GET** /futures/v1/historical/trades/hour | 
[**futures_v1_latest_funding_rate_tick**](FuturesApi.md#futures_v1_latest_funding_rate_tick) | **GET** /futures/v1/latest/funding-rate/tick | 
[**futures_v1_latest_instrument_metadata**](FuturesApi.md#futures_v1_latest_instrument_metadata) | **GET** /futures/v1/latest/instrument/metadata | 
[**futures_v1_latest_open_interest_tick**](FuturesApi.md#futures_v1_latest_open_interest_tick) | **GET** /futures/v1/latest/open-interest/tick | 
[**futures_v1_latest_tick**](FuturesApi.md#futures_v1_latest_tick) | **GET** /futures/v1/latest/tick | 
[**futures_v1_markets**](FuturesApi.md#futures_v1_markets) | **GET** /futures/v1/markets | 
[**futures_v1_markets_instruments**](FuturesApi.md#futures_v1_markets_instruments) | **GET** /futures/v1/markets/instruments | 
[**futures_v1_markets_instruments_unmapped**](FuturesApi.md#futures_v1_markets_instruments_unmapped) | **GET** /futures/v1/markets/instruments/unmapped | 
[**index_v1_historical_days**](FuturesApi.md#index_v1_historical_days) | **GET** /index/v1/historical/days | 
[**index_v1_historical_hours**](FuturesApi.md#index_v1_historical_hours) | **GET** /index/v1/historical/hours | 
[**index_v1_historical_messages**](FuturesApi.md#index_v1_historical_messages) | **GET** /index/v1/historical/messages | 
[**index_v1_historical_messages_hour**](FuturesApi.md#index_v1_historical_messages_hour) | **GET** /index/v1/historical/messages/hour | 
[**index_v1_historical_minutes**](FuturesApi.md#index_v1_historical_minutes) | **GET** /index/v1/historical/minutes | 
[**index_v1_latest_instrument_metadata**](FuturesApi.md#index_v1_latest_instrument_metadata) | **GET** /index/v1/latest/instrument/metadata | 
[**index_v1_latest_tick**](FuturesApi.md#index_v1_latest_tick) | **GET** /index/v1/latest/tick | 
[**index_v1_markets**](FuturesApi.md#index_v1_markets) | **GET** /index/v1/markets | 
[**index_v1_markets_instruments**](FuturesApi.md#index_v1_markets_instruments) | **GET** /index/v1/markets/instruments | 
[**index_v1_markets_instruments_unmapped**](FuturesApi.md#index_v1_markets_instruments_unmapped) | **GET** /index/v1/markets/instruments/unmapped | 


# **futures_v1_historical_days**
> GENERICRESPONSE futures_v1_historical_days(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->futures_v1_historical_days(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_days: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_funding_rate_days**
> GENERICRESPONSE futures_v1_historical_funding_rate_days(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->futures_v1_historical_funding_rate_days(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_funding_rate_days: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_funding_rate_hours**
> GENERICRESPONSE futures_v1_historical_funding_rate_hours(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->futures_v1_historical_funding_rate_hours(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_funding_rate_hours: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_funding_rate_messages**
> GENERICRESPONSE futures_v1_historical_funding_rate_messages(market => $market, instrument => $instrument, after_ts => $after_ts, last_ccseq => $last_ccseq, limit => $limit, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(

    # Configure API key authorization: api_key_header
    api_key => {'authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'authorization' => 'Bearer'},
    # Configure API key authorization: api_key_query
    api_key => {'api_key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api_key' => 'Bearer'},
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $after_ts = 56; # int | Unix timestamp in seconds of the earliest funding rate message in the response
my $last_ccseq = 0; # int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
my $limit = 100; # int | The maximum number of funding rate messages to return
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV
my $return_404_on_empty_response = false; # boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.

eval {
    my $result = $api_instance->futures_v1_historical_funding_rate_messages(market => $market, instrument => $instrument, after_ts => $after_ts, last_ccseq => $last_ccseq, limit => $limit, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_funding_rate_messages: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **after_ts** | **int**| Unix timestamp in seconds of the earliest funding rate message in the response | [optional] 
 **last_ccseq** | **int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **int**| The maximum number of funding rate messages to return | [optional] [default to 100]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
 **return_404_on_empty_response** | **boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_funding_rate_messages_hour**
> GENERICRESPONSE futures_v1_historical_funding_rate_messages_hour(market => $market, instrument => $instrument, hour_ts => $hour_ts, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(

    # Configure API key authorization: api_key_header
    api_key => {'authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'authorization' => 'Bearer'},
    # Configure API key authorization: api_key_query
    api_key => {'api_key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api_key' => 'Bearer'},
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $hour_ts = 56; # int | Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV
my $return_404_on_empty_response = false; # boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.

eval {
    my $result = $api_instance->futures_v1_historical_funding_rate_messages_hour(market => $market, instrument => $instrument, hour_ts => $hour_ts, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_funding_rate_messages_hour: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hour_ts** | **int**| Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. | [optional] 
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
 **return_404_on_empty_response** | **boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_funding_rate_minutes**
> GENERICRESPONSE futures_v1_historical_funding_rate_minutes(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->futures_v1_historical_funding_rate_minutes(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_funding_rate_minutes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_hours**
> GENERICRESPONSE futures_v1_historical_hours(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->futures_v1_historical_hours(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_hours: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_minutes**
> GENERICRESPONSE futures_v1_historical_minutes(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->futures_v1_historical_minutes(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_minutes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_open_interest_days**
> GENERICRESPONSE futures_v1_historical_open_interest_days(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->futures_v1_historical_open_interest_days(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_open_interest_days: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_open_interest_hours**
> GENERICRESPONSE futures_v1_historical_open_interest_hours(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->futures_v1_historical_open_interest_hours(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_open_interest_hours: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_open_interest_messages**
> GENERICRESPONSE futures_v1_historical_open_interest_messages(market => $market, instrument => $instrument, after_ts => $after_ts, last_ccseq => $last_ccseq, limit => $limit, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(

    # Configure API key authorization: api_key_header
    api_key => {'authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'authorization' => 'Bearer'},
    # Configure API key authorization: api_key_query
    api_key => {'api_key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api_key' => 'Bearer'},
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $after_ts = 56; # int | Unix timestamp in seconds of the earliest open interest message in the response
my $last_ccseq = 0; # int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
my $limit = 100; # int | The maximum number of open interest messages to return
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV
my $return_404_on_empty_response = false; # boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.

eval {
    my $result = $api_instance->futures_v1_historical_open_interest_messages(market => $market, instrument => $instrument, after_ts => $after_ts, last_ccseq => $last_ccseq, limit => $limit, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_open_interest_messages: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **after_ts** | **int**| Unix timestamp in seconds of the earliest open interest message in the response | [optional] 
 **last_ccseq** | **int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **int**| The maximum number of open interest messages to return | [optional] [default to 100]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
 **return_404_on_empty_response** | **boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_open_interest_messages_hour**
> GENERICRESPONSE futures_v1_historical_open_interest_messages_hour(market => $market, instrument => $instrument, hour_ts => $hour_ts, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(

    # Configure API key authorization: api_key_header
    api_key => {'authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'authorization' => 'Bearer'},
    # Configure API key authorization: api_key_query
    api_key => {'api_key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api_key' => 'Bearer'},
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $hour_ts = 56; # int | Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV
my $return_404_on_empty_response = false; # boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.

eval {
    my $result = $api_instance->futures_v1_historical_open_interest_messages_hour(market => $market, instrument => $instrument, hour_ts => $hour_ts, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_open_interest_messages_hour: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hour_ts** | **int**| Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. | [optional] 
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
 **return_404_on_empty_response** | **boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_open_interest_minutes**
> GENERICRESPONSE futures_v1_historical_open_interest_minutes(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->futures_v1_historical_open_interest_minutes(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_open_interest_minutes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_trades**
> GENERICRESPONSE futures_v1_historical_trades(market => $market, instrument => $instrument, after_ts => $after_ts, last_ccseq => $last_ccseq, limit => $limit, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(

    # Configure API key authorization: api_key_header
    api_key => {'authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'authorization' => 'Bearer'},
    # Configure API key authorization: api_key_query
    api_key => {'api_key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api_key' => 'Bearer'},
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $after_ts = 56; # int | Unix timestamp in seconds of the earliest trade in the response.
my $last_ccseq = 0; # int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
my $limit = 100; # int | The maximum number of trades to return
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV
my $return_404_on_empty_response = false; # boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.

eval {
    my $result = $api_instance->futures_v1_historical_trades(market => $market, instrument => $instrument, after_ts => $after_ts, last_ccseq => $last_ccseq, limit => $limit, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_trades: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **after_ts** | **int**| Unix timestamp in seconds of the earliest trade in the response. | [optional] 
 **last_ccseq** | **int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **int**| The maximum number of trades to return | [optional] [default to 100]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
 **return_404_on_empty_response** | **boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_historical_trades_hour**
> GENERICRESPONSE futures_v1_historical_trades_hour(market => $market, instrument => $instrument, hour_ts => $hour_ts, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(

    # Configure API key authorization: api_key_header
    api_key => {'authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'authorization' => 'Bearer'},
    # Configure API key authorization: api_key_query
    api_key => {'api_key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api_key' => 'Bearer'},
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $hour_ts = 56; # int | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV
my $return_404_on_empty_response = false; # boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.

eval {
    my $result = $api_instance->futures_v1_historical_trades_hour(market => $market, instrument => $instrument, hour_ts => $hour_ts, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_historical_trades_hour: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hour_ts** | **int**| Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional] 
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
 **return_404_on_empty_response** | **boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_latest_funding_rate_tick**
> GENERICRESPONSE futures_v1_latest_funding_rate_tick(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instruments = [("null")]; # ARRAY[string] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

eval {
    my $result = $api_instance->futures_v1_latest_funding_rate_tick(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_latest_funding_rate_tick: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instruments** | [**ARRAY[string]**](string.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_latest_instrument_metadata**
> GENERICRESPONSE futures_v1_latest_instrument_metadata(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instruments = [("null")]; # ARRAY[string] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

eval {
    my $result = $api_instance->futures_v1_latest_instrument_metadata(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_latest_instrument_metadata: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instruments** | [**ARRAY[string]**](string.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] 
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_latest_open_interest_tick**
> GENERICRESPONSE futures_v1_latest_open_interest_tick(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instruments = [("null")]; # ARRAY[string] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

eval {
    my $result = $api_instance->futures_v1_latest_open_interest_tick(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_latest_open_interest_tick: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instruments** | [**ARRAY[string]**](string.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_latest_tick**
> GENERICRESPONSE futures_v1_latest_tick(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instruments = [("null")]; # ARRAY[string] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

eval {
    my $result = $api_instance->futures_v1_latest_tick(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_latest_tick: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instruments** | [**ARRAY[string]**](string.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_markets**
> GENERICRESPONSE futures_v1_markets(market => $market)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = ''; # string | The exchange to obtain data from

eval {
    my $result = $api_instance->futures_v1_markets(market => $market);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_markets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | [optional] [default to &#39;&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_markets_instruments**
> GENERICRESPONSE futures_v1_markets_instruments(market => $market, instrument => $instrument, instrument_status => $instrument_status)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = ''; # string | The exchange to obtain data from
my $instrument = ''; # string | The mapped instrument to retrieve on a specific market.
my $instrument_status = [("null")]; # ARRAY[string] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED

eval {
    my $result = $api_instance->futures_v1_markets_instruments(market => $market, instrument => $instrument, instrument_status => $instrument_status);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_markets_instruments: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | [optional] [default to &#39;&#39;]
 **instrument** | **string**| The mapped instrument to retrieve on a specific market. | [optional] [default to &#39;&#39;]
 **instrument_status** | [**ARRAY[string]**](string.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futures_v1_markets_instruments_unmapped**
> GENERICRESPONSE futures_v1_markets_instruments_unmapped(market => $market, instrument => $instrument, instrument_status => $instrument_status)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = ''; # string | The exchange to obtain data from
my $instrument = ''; # string | The unmapped instrument to retrieve on a specific market.
my $instrument_status = [("null")]; # ARRAY[string] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED

eval {
    my $result = $api_instance->futures_v1_markets_instruments_unmapped(market => $market, instrument => $instrument, instrument_status => $instrument_status);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->futures_v1_markets_instruments_unmapped: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | [optional] [default to &#39;&#39;]
 **instrument** | **string**| The unmapped instrument to retrieve on a specific market. | [optional] [default to &#39;&#39;]
 **instrument_status** | [**ARRAY[string]**](string.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_historical_days**
> GENERICRESPONSE index_v1_historical_days(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->index_v1_historical_days(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->index_v1_historical_days: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_historical_hours**
> GENERICRESPONSE index_v1_historical_hours(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->index_v1_historical_hours(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->index_v1_historical_hours: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_historical_messages**
> GENERICRESPONSE index_v1_historical_messages(market => $market, instrument => $instrument, after_ts => $after_ts, last_ccseq => $last_ccseq, limit => $limit, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(

    # Configure API key authorization: api_key_header
    api_key => {'authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'authorization' => 'Bearer'},
    # Configure API key authorization: api_key_query
    api_key => {'api_key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api_key' => 'Bearer'},
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $after_ts = 56; # int | Unix timestamp in seconds of the earliest index message in the response
my $last_ccseq = 0; # int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
my $limit = 100; # int | The maximum number of index messages to return
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV
my $return_404_on_empty_response = false; # boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.

eval {
    my $result = $api_instance->index_v1_historical_messages(market => $market, instrument => $instrument, after_ts => $after_ts, last_ccseq => $last_ccseq, limit => $limit, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->index_v1_historical_messages: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **after_ts** | **int**| Unix timestamp in seconds of the earliest index message in the response | [optional] 
 **last_ccseq** | **int**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **int**| The maximum number of index messages to return | [optional] [default to 100]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
 **return_404_on_empty_response** | **boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_historical_messages_hour**
> GENERICRESPONSE index_v1_historical_messages_hour(market => $market, instrument => $instrument, hour_ts => $hour_ts, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(

    # Configure API key authorization: api_key_header
    api_key => {'authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'authorization' => 'Bearer'},
    # Configure API key authorization: api_key_query
    api_key => {'api_key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api_key' => 'Bearer'},
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $hour_ts = 56; # int | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV
my $return_404_on_empty_response = false; # boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.

eval {
    my $result = $api_instance->index_v1_historical_messages_hour(market => $market, instrument => $instrument, hour_ts => $hour_ts, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->index_v1_historical_messages_hour: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hour_ts** | **int**| Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | [optional] 
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]
 **return_404_on_empty_response** | **boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_historical_minutes**
> GENERICRESPONSE index_v1_historical_minutes(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instrument = "instrument_example"; # string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->index_v1_historical_minutes(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->index_v1_historical_minutes: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_latest_instrument_metadata**
> GENERICRESPONSE index_v1_latest_instrument_metadata(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instruments = [("null")]; # ARRAY[string] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

eval {
    my $result = $api_instance->index_v1_latest_instrument_metadata(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->index_v1_latest_instrument_metadata: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instruments** | [**ARRAY[string]**](string.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] 
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_latest_tick**
> GENERICRESPONSE index_v1_latest_tick(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instruments = [("null")]; # ARRAY[string] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

eval {
    my $result = $api_instance->index_v1_latest_tick(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->index_v1_latest_tick: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instruments** | [**ARRAY[string]**](string.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_markets**
> GENERICRESPONSE index_v1_markets(market => $market)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = ''; # string | The exchange to obtain data from

eval {
    my $result = $api_instance->index_v1_markets(market => $market);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->index_v1_markets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | [optional] [default to &#39;&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_markets_instruments**
> GENERICRESPONSE index_v1_markets_instruments(market => $market, instrument => $instrument, instrument_status => $instrument_status)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = ''; # string | The exchange to obtain data from
my $instrument = ''; # string | The mapped instrument to retrieve on a specific market.
my $instrument_status = [("null")]; # ARRAY[string] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED

eval {
    my $result = $api_instance->index_v1_markets_instruments(market => $market, instrument => $instrument, instrument_status => $instrument_status);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->index_v1_markets_instruments: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | [optional] [default to &#39;&#39;]
 **instrument** | **string**| The mapped instrument to retrieve on a specific market. | [optional] [default to &#39;&#39;]
 **instrument_status** | [**ARRAY[string]**](string.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_v1_markets_instruments_unmapped**
> GENERICRESPONSE index_v1_markets_instruments_unmapped(market => $market, instrument => $instrument, instrument_status => $instrument_status)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::FuturesApi;
my $api_instance = WWW::OpenAPIClient::FuturesApi->new(
);

my $market = ''; # string | The exchange to obtain data from
my $instrument = ''; # string | The unmapped instrument to retrieve on a specific market.
my $instrument_status = [("null")]; # ARRAY[string] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED

eval {
    my $result = $api_instance->index_v1_markets_instruments_unmapped(market => $market, instrument => $instrument, instrument_status => $instrument_status);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FuturesApi->index_v1_markets_instruments_unmapped: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | [optional] [default to &#39;&#39;]
 **instrument** | **string**| The unmapped instrument to retrieve on a specific market. | [optional] [default to &#39;&#39;]
 **instrument_status** | [**ARRAY[string]**](string.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

