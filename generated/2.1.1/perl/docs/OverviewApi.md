# WWW::OpenAPIClient::OverviewApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::OverviewApi;
```

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**overview_v1_historical_marketcap_all_assets_days**](OverviewApi.md#overview_v1_historical_marketcap_all_assets_days) | **GET** /overview/v1/historical/marketcap/all/assets/days | 
[**overview_v1_historical_marketcap_all_assets_hours**](OverviewApi.md#overview_v1_historical_marketcap_all_assets_hours) | **GET** /overview/v1/historical/marketcap/all/assets/hours | 
[**overview_v1_historical_marketcap_ftw_assets_days**](OverviewApi.md#overview_v1_historical_marketcap_ftw_assets_days) | **GET** /overview/v1/historical/marketcap/ftw/assets/days | 
[**overview_v1_historical_marketcap_ftw_assets_hours**](OverviewApi.md#overview_v1_historical_marketcap_ftw_assets_hours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours | 
[**overview_v1_latest_marketcap_all_tick**](OverviewApi.md#overview_v1_latest_marketcap_all_tick) | **GET** /overview/v1/latest/marketcap/all/tick | 
[**overview_v1_latest_marketcap_ftw_tick**](OverviewApi.md#overview_v1_latest_marketcap_ftw_tick) | **GET** /overview/v1/latest/marketcap/ftw/tick | 


# **overview_v1_historical_marketcap_all_assets_days**
> GENERICRESPONSE overview_v1_historical_marketcap_all_assets_days(groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OverviewApi;
my $api_instance = WWW::OpenAPIClient::OverviewApi->new(
);

my $groups = [("null")]; # ARRAY[string] | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->overview_v1_historical_marketcap_all_assets_days(groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OverviewApi->overview_v1_historical_marketcap_all_assets_days: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**ARRAY[string]**](string.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overview_v1_historical_marketcap_all_assets_hours**
> GENERICRESPONSE overview_v1_historical_marketcap_all_assets_hours(groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OverviewApi;
my $api_instance = WWW::OpenAPIClient::OverviewApi->new(
);

my $groups = [("null")]; # ARRAY[string] | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->overview_v1_historical_marketcap_all_assets_hours(groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OverviewApi->overview_v1_historical_marketcap_all_assets_hours: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**ARRAY[string]**](string.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overview_v1_historical_marketcap_ftw_assets_days**
> GENERICRESPONSE overview_v1_historical_marketcap_ftw_assets_days(groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OverviewApi;
my $api_instance = WWW::OpenAPIClient::OverviewApi->new(
);

my $groups = [("null")]; # ARRAY[string] | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->overview_v1_historical_marketcap_ftw_assets_days(groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OverviewApi->overview_v1_historical_marketcap_ftw_assets_days: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**ARRAY[string]**](string.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overview_v1_historical_marketcap_ftw_assets_hours**
> GENERICRESPONSE overview_v1_historical_marketcap_ftw_assets_hours(groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, response_format => $response_format)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OverviewApi;
my $api_instance = WWW::OpenAPIClient::OverviewApi->new(
);

my $groups = [("null")]; # ARRAY[string] | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
my $limit = 30; # int | The number of data points to return
my $to_ts = 56; # int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
my $aggregate = 1; # int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
my $fill = true; # boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
my $response_format = 'JSON'; # string | The format of the data response in uppercase. It can be one of the following: JSON,CSV

eval {
    my $result = $api_instance->overview_v1_historical_marketcap_ftw_assets_hours(groups => $groups, limit => $limit, to_ts => $to_ts, aggregate => $aggregate, fill => $fill, response_format => $response_format);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OverviewApi->overview_v1_historical_marketcap_ftw_assets_hours: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**ARRAY[string]**](string.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **to_ts** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **response_format** | **string**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &#39;JSON&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overview_v1_latest_marketcap_all_tick**
> GENERICRESPONSE overview_v1_latest_marketcap_all_tick(groups => $groups)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OverviewApi;
my $api_instance = WWW::OpenAPIClient::OverviewApi->new(
);

my $groups = [("null")]; # ARRAY[string] | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR

eval {
    my $result = $api_instance->overview_v1_latest_marketcap_all_tick(groups => $groups);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OverviewApi->overview_v1_latest_marketcap_all_tick: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**ARRAY[string]**](string.md)| When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overview_v1_latest_marketcap_ftw_tick**
> GENERICRESPONSE overview_v1_latest_marketcap_ftw_tick(groups => $groups)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::OverviewApi;
my $api_instance = WWW::OpenAPIClient::OverviewApi->new(
);

my $groups = [("null")]; # ARRAY[string] | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR

eval {
    my $result = $api_instance->overview_v1_latest_marketcap_ftw_tick(groups => $groups);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OverviewApi->overview_v1_latest_marketcap_ftw_tick: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**ARRAY[string]**](string.md)| When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

