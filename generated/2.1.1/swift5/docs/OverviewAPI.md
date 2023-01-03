# OverviewAPI

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**overviewV1HistoricalMarketcapAllAssetsDays**](OverviewAPI.md#overviewv1historicalmarketcapallassetsdays) | **GET** /overview/v1/historical/marketcap/all/assets/days | 
[**overviewV1HistoricalMarketcapAllAssetsHours**](OverviewAPI.md#overviewv1historicalmarketcapallassetshours) | **GET** /overview/v1/historical/marketcap/all/assets/hours | 
[**overviewV1HistoricalMarketcapFtwAssetsDays**](OverviewAPI.md#overviewv1historicalmarketcapftwassetsdays) | **GET** /overview/v1/historical/marketcap/ftw/assets/days | 
[**overviewV1HistoricalMarketcapFtwAssetsHours**](OverviewAPI.md#overviewv1historicalmarketcapftwassetshours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours | 
[**overviewV1LatestMarketcapAllTick**](OverviewAPI.md#overviewv1latestmarketcapalltick) | **GET** /overview/v1/latest/marketcap/all/tick | 
[**overviewV1LatestMarketcapFtwTick**](OverviewAPI.md#overviewv1latestmarketcapftwtick) | **GET** /overview/v1/latest/marketcap/ftw/tick | 


# **overviewV1HistoricalMarketcapAllAssetsDays**
```swift
    open class func overviewV1HistoricalMarketcapAllAssetsDays(groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, responseFormat: ResponseFormat_overviewV1HistoricalMarketcapAllAssetsDays? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let groups = ["inner_example"] // [String] | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

OverviewAPI.overviewV1HistoricalMarketcapAllAssetsDays(groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, responseFormat: responseFormat) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**[String]**](String.md) | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1HistoricalMarketcapAllAssetsHours**
```swift
    open class func overviewV1HistoricalMarketcapAllAssetsHours(groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, responseFormat: ResponseFormat_overviewV1HistoricalMarketcapAllAssetsHours? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let groups = ["inner_example"] // [String] | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

OverviewAPI.overviewV1HistoricalMarketcapAllAssetsHours(groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, responseFormat: responseFormat) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**[String]**](String.md) | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1HistoricalMarketcapFtwAssetsDays**
```swift
    open class func overviewV1HistoricalMarketcapFtwAssetsDays(groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, responseFormat: ResponseFormat_overviewV1HistoricalMarketcapFtwAssetsDays? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let groups = ["inner_example"] // [String] | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

OverviewAPI.overviewV1HistoricalMarketcapFtwAssetsDays(groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, responseFormat: responseFormat) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**[String]**](String.md) | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1HistoricalMarketcapFtwAssetsHours**
```swift
    open class func overviewV1HistoricalMarketcapFtwAssetsHours(groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, responseFormat: ResponseFormat_overviewV1HistoricalMarketcapFtwAssetsHours? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let groups = ["inner_example"] // [String] | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

OverviewAPI.overviewV1HistoricalMarketcapFtwAssetsHours(groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, responseFormat: responseFormat) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**[String]**](String.md) | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1LatestMarketcapAllTick**
```swift
    open class func overviewV1LatestMarketcapAllTick(groups: [String]? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let groups = ["inner_example"] // [String] | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional)

OverviewAPI.overviewV1LatestMarketcapAllTick(groups: groups) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**[String]**](String.md) | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **overviewV1LatestMarketcapFtwTick**
```swift
    open class func overviewV1LatestMarketcapFtwTick(groups: [String]? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let groups = ["inner_example"] // [String] | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional)

OverviewAPI.overviewV1LatestMarketcapFtwTick(groups: groups) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | [**[String]**](String.md) | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

