# openapi.api.OverviewApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**overviewV1HistoricalMarketcapAllAssetsDays**](OverviewApi.md#overviewv1historicalmarketcapallassetsdays) | **GET** /overview/v1/historical/marketcap/all/assets/days | 
[**overviewV1HistoricalMarketcapAllAssetsHours**](OverviewApi.md#overviewv1historicalmarketcapallassetshours) | **GET** /overview/v1/historical/marketcap/all/assets/hours | 
[**overviewV1HistoricalMarketcapFtwAssetsDays**](OverviewApi.md#overviewv1historicalmarketcapftwassetsdays) | **GET** /overview/v1/historical/marketcap/ftw/assets/days | 
[**overviewV1HistoricalMarketcapFtwAssetsHours**](OverviewApi.md#overviewv1historicalmarketcapftwassetshours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours | 
[**overviewV1LatestMarketcapAllTick**](OverviewApi.md#overviewv1latestmarketcapalltick) | **GET** /overview/v1/latest/marketcap/all/tick | 
[**overviewV1LatestMarketcapFtwTick**](OverviewApi.md#overviewv1latestmarketcapftwtick) | **GET** /overview/v1/latest/marketcap/ftw/tick | 


# **overviewV1HistoricalMarketcapAllAssetsDays**
> GENERICRESPONSE overviewV1HistoricalMarketcapAllAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOverviewApi();
final BuiltList<String> groups = ; // BuiltList<String> | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
final int limit = 56; // int | The number of data points to return
final int toTs = 56; // int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
final int aggregate = 56; // int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
final bool fill = true; // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
final String responseFormat = responseFormat_example; // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV

try {
    final response = api.overviewV1HistoricalMarketcapAllAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OverviewApi->overviewV1HistoricalMarketcapAllAssetsDays: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**BuiltList&lt;String&gt;**](String.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to ListBuilder()]
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to 'JSON']

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1HistoricalMarketcapAllAssetsHours**
> GENERICRESPONSE overviewV1HistoricalMarketcapAllAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOverviewApi();
final BuiltList<String> groups = ; // BuiltList<String> | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
final int limit = 56; // int | The number of data points to return
final int toTs = 56; // int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
final int aggregate = 56; // int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
final bool fill = true; // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
final String responseFormat = responseFormat_example; // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV

try {
    final response = api.overviewV1HistoricalMarketcapAllAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OverviewApi->overviewV1HistoricalMarketcapAllAssetsHours: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**BuiltList&lt;String&gt;**](String.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to ListBuilder()]
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to 'JSON']

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1HistoricalMarketcapFtwAssetsDays**
> GENERICRESPONSE overviewV1HistoricalMarketcapFtwAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOverviewApi();
final BuiltList<String> groups = ; // BuiltList<String> | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
final int limit = 56; // int | The number of data points to return
final int toTs = 56; // int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
final int aggregate = 56; // int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
final bool fill = true; // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
final String responseFormat = responseFormat_example; // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV

try {
    final response = api.overviewV1HistoricalMarketcapFtwAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OverviewApi->overviewV1HistoricalMarketcapFtwAssetsDays: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**BuiltList&lt;String&gt;**](String.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to ListBuilder()]
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to 'JSON']

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1HistoricalMarketcapFtwAssetsHours**
> GENERICRESPONSE overviewV1HistoricalMarketcapFtwAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOverviewApi();
final BuiltList<String> groups = ; // BuiltList<String> | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
final int limit = 56; // int | The number of data points to return
final int toTs = 56; // int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
final int aggregate = 56; // int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
final bool fill = true; // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
final String responseFormat = responseFormat_example; // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV

try {
    final response = api.overviewV1HistoricalMarketcapFtwAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OverviewApi->overviewV1HistoricalMarketcapFtwAssetsHours: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**BuiltList&lt;String&gt;**](String.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] [default to ListBuilder()]
 **limit** | **int**| The number of data points to return | [optional] [default to 30]
 **toTs** | **int**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} | [optional] 
 **aggregate** | **int**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **bool**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to 'JSON']

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1LatestMarketcapAllTick**
> GENERICRESPONSE overviewV1LatestMarketcapAllTick(groups)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOverviewApi();
final BuiltList<String> groups = ; // BuiltList<String> | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR

try {
    final response = api.overviewV1LatestMarketcapAllTick(groups);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OverviewApi->overviewV1LatestMarketcapAllTick: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**BuiltList&lt;String&gt;**](String.md)| When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] [default to ListBuilder()]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1LatestMarketcapFtwTick**
> GENERICRESPONSE overviewV1LatestMarketcapFtwTick(groups)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOverviewApi();
final BuiltList<String> groups = ; // BuiltList<String> | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR

try {
    final response = api.overviewV1LatestMarketcapFtwTick(groups);
    print(response);
} catch on DioError (e) {
    print('Exception when calling OverviewApi->overviewV1LatestMarketcapFtwTick: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**BuiltList&lt;String&gt;**](String.md)| When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] [default to ListBuilder()]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

