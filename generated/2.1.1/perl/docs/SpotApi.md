# WWW::OpenAPIClient::SpotApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::SpotApi;
```

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spot_v1_historical_days**](SpotApi.md#spot_v1_historical_days) | **GET** /spot/v1/historical/days | 
[**spot_v1_historical_hours**](SpotApi.md#spot_v1_historical_hours) | **GET** /spot/v1/historical/hours | 
[**spot_v1_historical_minutes**](SpotApi.md#spot_v1_historical_minutes) | **GET** /spot/v1/historical/minutes | 
[**spot_v1_historical_orderbook_l2_snapshot_minute**](SpotApi.md#spot_v1_historical_orderbook_l2_snapshot_minute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
[**spot_v1_historical_trades**](SpotApi.md#spot_v1_historical_trades) | **GET** /spot/v1/historical/trades | 
[**spot_v1_historical_trades_hour**](SpotApi.md#spot_v1_historical_trades_hour) | **GET** /spot/v1/historical/trades/hour | 
[**spot_v1_latest_instrument_metadata**](SpotApi.md#spot_v1_latest_instrument_metadata) | **GET** /spot/v1/latest/instrument/metadata | 
[**spot_v1_latest_tick**](SpotApi.md#spot_v1_latest_tick) | **GET** /spot/v1/latest/tick | 
[**spot_v1_markets**](SpotApi.md#spot_v1_markets) | **GET** /spot/v1/markets | 
[**spot_v1_markets_instruments**](SpotApi.md#spot_v1_markets_instruments) | **GET** /spot/v1/markets/instruments | 
[**spot_v1_markets_instruments_unmapped**](SpotApi.md#spot_v1_markets_instruments_unmapped) | **GET** /spot/v1/markets/instruments/unmapped | 


# **spot_v1_historical_days**
> SPOTINSTRUMENTHISTODATARESPONSE spot_v1_historical_days(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SpotApi;
my $api_instance = WWW::OpenAPIClient::SpotApi->new(
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
    my $result = $api_instance->spot_v1_historical_days(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SpotApi->spot_v1_historical_days: $@\n";
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

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spot_v1_historical_hours**
> SPOTINSTRUMENTHISTODATARESPONSE spot_v1_historical_hours(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SpotApi;
my $api_instance = WWW::OpenAPIClient::SpotApi->new(
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
    my $result = $api_instance->spot_v1_historical_hours(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SpotApi->spot_v1_historical_hours: $@\n";
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

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spot_v1_historical_minutes**
> SPOTINSTRUMENTHISTODATARESPONSE spot_v1_historical_minutes(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SpotApi;
my $api_instance = WWW::OpenAPIClient::SpotApi->new(
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
    my $result = $api_instance->spot_v1_historical_minutes(market => $market, instrument => $instrument, groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SpotApi->spot_v1_historical_minutes: $@\n";
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

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spot_v1_historical_orderbook_l2_snapshot_minute**
> GENERICRESPONSE spot_v1_historical_orderbook_l2_snapshot_minute(market => $market, instrument => $instrument, minute_ts => $minute_ts, depth => $depth, mapping_priority => $mapping_priority, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SpotApi;
my $api_instance = WWW::OpenAPIClient::SpotApi->new(

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
my $minute_ts = 56; # int | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
my $depth = 50; # int | The number of top bids and asks to return.
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->spot_v1_historical_orderbook_l2_snapshot_minute(market => $market, instrument => $instrument, minute_ts => $minute_ts, depth => $depth, mapping_priority => $mapping_priority, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SpotApi->spot_v1_historical_orderbook_l2_snapshot_minute: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instrument** | **string**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **minute_ts** | **int**| Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. | 
 **depth** | **int**| The number of top bids and asks to return. | [optional] [default to 50]
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spot_v1_historical_trades**
> SPOTINSTRUMENTTRADERESPONSE spot_v1_historical_trades(market => $market, instrument => $instrument, after_ts => $after_ts, last_ccseq => $last_ccseq, limit => $limit, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SpotApi;
my $api_instance = WWW::OpenAPIClient::SpotApi->new(

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
    my $result = $api_instance->spot_v1_historical_trades(market => $market, instrument => $instrument, after_ts => $after_ts, last_ccseq => $last_ccseq, limit => $limit, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SpotApi->spot_v1_historical_trades: $@\n";
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

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spot_v1_historical_trades_hour**
> SPOTINSTRUMENTTRADERESPONSE spot_v1_historical_trades_hour(market => $market, instrument => $instrument, hour_ts => $hour_ts, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SpotApi;
my $api_instance = WWW::OpenAPIClient::SpotApi->new(

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
    my $result = $api_instance->spot_v1_historical_trades_hour(market => $market, instrument => $instrument, hour_ts => $hour_ts, mapping_priority => $mapping_priority, response_format => $response_format, return_404_on_empty_response => $return_404_on_empty_response);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SpotApi->spot_v1_historical_trades_hour: $@\n";
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

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spot_v1_latest_instrument_metadata**
> SPOTINSTRUMENTMETADATARESPONSE spot_v1_latest_instrument_metadata(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SpotApi;
my $api_instance = WWW::OpenAPIClient::SpotApi->new(
);

my $market = coinbase; # string | The exchange to obtain data from
my $instruments = [["BTC-USD","ETH-USD"]]; # ARRAY[string] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

eval {
    my $result = $api_instance->spot_v1_latest_instrument_metadata(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SpotApi->spot_v1_latest_instrument_metadata: $@\n";
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

[**SPOTINSTRUMENTMETADATARESPONSE**](SPOTINSTRUMENTMETADATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spot_v1_latest_tick**
> SPOTINSTRUMENTMARKETDATARESPONSE spot_v1_latest_tick(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SpotApi;
my $api_instance = WWW::OpenAPIClient::SpotApi->new(
);

my $market = "market_example"; # string | The exchange to obtain data from
my $instruments = [("null")]; # ARRAY[string] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
my $groups = [("null")]; # ARRAY[string] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
my $mapping_priority = 'CHECK_MAPPED_FIRST'; # string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST

eval {
    my $result = $api_instance->spot_v1_latest_tick(market => $market, instruments => $instruments, groups => $groups, mapping_priority => $mapping_priority);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SpotApi->spot_v1_latest_tick: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string**| The exchange to obtain data from | 
 **instruments** | [**ARRAY[string]**](string.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**ARRAY[string]**](string.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mapping_priority** | **string**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &#39;CHECK_MAPPED_FIRST&#39;]

### Return type

[**SPOTINSTRUMENTMARKETDATARESPONSE**](SPOTINSTRUMENTMARKETDATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spot_v1_markets**
> GENERICRESPONSE spot_v1_markets(market => $market)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SpotApi;
my $api_instance = WWW::OpenAPIClient::SpotApi->new(
);

my $market = ''; # string | The exchange to obtain data from

eval {
    my $result = $api_instance->spot_v1_markets(market => $market);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SpotApi->spot_v1_markets: $@\n";
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

# **spot_v1_markets_instruments**
> GENERICRESPONSE spot_v1_markets_instruments(market => $market, instrument => $instrument, instrument_status => $instrument_status)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SpotApi;
my $api_instance = WWW::OpenAPIClient::SpotApi->new(
);

my $market = ''; # string | The exchange to obtain data from
my $instrument = ''; # string | The mapped instrument to retrieve on a specific market.
my $instrument_status = [("null")]; # ARRAY[string] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED

eval {
    my $result = $api_instance->spot_v1_markets_instruments(market => $market, instrument => $instrument, instrument_status => $instrument_status);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SpotApi->spot_v1_markets_instruments: $@\n";
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

# **spot_v1_markets_instruments_unmapped**
> GENERICRESPONSE spot_v1_markets_instruments_unmapped(market => $market, instrument => $instrument, instrument_status => $instrument_status)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SpotApi;
my $api_instance = WWW::OpenAPIClient::SpotApi->new(
);

my $market = ''; # string | The exchange to obtain data from
my $instrument = ''; # string | The unmapped instrument to retrieve on a specific market.
my $instrument_status = [("null")]; # ARRAY[string] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED

eval {
    my $result = $api_instance->spot_v1_markets_instruments_unmapped(market => $market, instrument => $instrument, instrument_status => $instrument_status);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SpotApi->spot_v1_markets_instruments_unmapped: $@\n";
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

