# \OverviewApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**OverviewV1HistoricalMarketcapAllAssetsDays**](OverviewApi.md#OverviewV1HistoricalMarketcapAllAssetsDays) | **Get** /overview/v1/historical/marketcap/all/assets/days | 
[**OverviewV1HistoricalMarketcapAllAssetsHours**](OverviewApi.md#OverviewV1HistoricalMarketcapAllAssetsHours) | **Get** /overview/v1/historical/marketcap/all/assets/hours | 
[**OverviewV1HistoricalMarketcapFtwAssetsDays**](OverviewApi.md#OverviewV1HistoricalMarketcapFtwAssetsDays) | **Get** /overview/v1/historical/marketcap/ftw/assets/days | 
[**OverviewV1HistoricalMarketcapFtwAssetsHours**](OverviewApi.md#OverviewV1HistoricalMarketcapFtwAssetsHours) | **Get** /overview/v1/historical/marketcap/ftw/assets/hours | 
[**OverviewV1LatestMarketcapAllTick**](OverviewApi.md#OverviewV1LatestMarketcapAllTick) | **Get** /overview/v1/latest/marketcap/all/tick | 
[**OverviewV1LatestMarketcapFtwTick**](OverviewApi.md#OverviewV1LatestMarketcapFtwTick) | **Get** /overview/v1/latest/marketcap/ftw/tick | 



## OverviewV1HistoricalMarketcapAllAssetsDays

> GENERICRESPONSE OverviewV1HistoricalMarketcapAllAssetsDays(ctx).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).ResponseFormat(responseFormat).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    groups := []string{"Inner_example"} // []string | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OverviewApi.OverviewV1HistoricalMarketcapAllAssetsDays(context.Background()).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OverviewApi.OverviewV1HistoricalMarketcapAllAssetsDays``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `OverviewV1HistoricalMarketcapAllAssetsDays`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `OverviewApi.OverviewV1HistoricalMarketcapAllAssetsDays`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiOverviewV1HistoricalMarketcapAllAssetsDaysRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | **[]string** | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [default to []]
 **limit** | **int32** | The number of data points to return | [default to 30]
 **toTs** | **int32** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | 
 **aggregate** | **int32** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [default to 1]
 **fill** | **bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [default to true]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [default to &quot;JSON&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## OverviewV1HistoricalMarketcapAllAssetsHours

> GENERICRESPONSE OverviewV1HistoricalMarketcapAllAssetsHours(ctx).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).ResponseFormat(responseFormat).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    groups := []string{"Inner_example"} // []string | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OverviewApi.OverviewV1HistoricalMarketcapAllAssetsHours(context.Background()).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OverviewApi.OverviewV1HistoricalMarketcapAllAssetsHours``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `OverviewV1HistoricalMarketcapAllAssetsHours`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `OverviewApi.OverviewV1HistoricalMarketcapAllAssetsHours`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiOverviewV1HistoricalMarketcapAllAssetsHoursRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | **[]string** | When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [default to []]
 **limit** | **int32** | The number of data points to return | [default to 30]
 **toTs** | **int32** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | 
 **aggregate** | **int32** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [default to 1]
 **fill** | **bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [default to true]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [default to &quot;JSON&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## OverviewV1HistoricalMarketcapFtwAssetsDays

> GENERICRESPONSE OverviewV1HistoricalMarketcapFtwAssetsDays(ctx).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).ResponseFormat(responseFormat).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    groups := []string{"Inner_example"} // []string | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OverviewApi.OverviewV1HistoricalMarketcapFtwAssetsDays(context.Background()).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OverviewApi.OverviewV1HistoricalMarketcapFtwAssetsDays``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `OverviewV1HistoricalMarketcapFtwAssetsDays`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `OverviewApi.OverviewV1HistoricalMarketcapFtwAssetsDays`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiOverviewV1HistoricalMarketcapFtwAssetsDaysRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | **[]string** | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [default to []]
 **limit** | **int32** | The number of data points to return | [default to 30]
 **toTs** | **int32** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | 
 **aggregate** | **int32** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [default to 1]
 **fill** | **bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [default to true]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [default to &quot;JSON&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## OverviewV1HistoricalMarketcapFtwAssetsHours

> GENERICRESPONSE OverviewV1HistoricalMarketcapFtwAssetsHours(ctx).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).ResponseFormat(responseFormat).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    groups := []string{"Inner_example"} // []string | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OverviewApi.OverviewV1HistoricalMarketcapFtwAssetsHours(context.Background()).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OverviewApi.OverviewV1HistoricalMarketcapFtwAssetsHours``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `OverviewV1HistoricalMarketcapFtwAssetsHours`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `OverviewApi.OverviewV1HistoricalMarketcapFtwAssetsHours`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiOverviewV1HistoricalMarketcapFtwAssetsHoursRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | **[]string** | When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [default to []]
 **limit** | **int32** | The number of data points to return | [default to 30]
 **toTs** | **int32** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | 
 **aggregate** | **int32** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [default to 1]
 **fill** | **bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [default to true]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [default to &quot;JSON&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## OverviewV1LatestMarketcapAllTick

> GENERICRESPONSE OverviewV1LatestMarketcapAllTick(ctx).Groups(groups).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    groups := []string{"Inner_example"} // []string | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional) (default to [])

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OverviewApi.OverviewV1LatestMarketcapAllTick(context.Background()).Groups(groups).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OverviewApi.OverviewV1LatestMarketcapAllTick``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `OverviewV1LatestMarketcapAllTick`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `OverviewApi.OverviewV1LatestMarketcapAllTick`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiOverviewV1LatestMarketcapAllTickRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | **[]string** | When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [default to []]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## OverviewV1LatestMarketcapFtwTick

> GENERICRESPONSE OverviewV1LatestMarketcapFtwTick(ctx).Groups(groups).Execute()



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    groups := []string{"Inner_example"} // []string | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional) (default to [])

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.OverviewApi.OverviewV1LatestMarketcapFtwTick(context.Background()).Groups(groups).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `OverviewApi.OverviewV1LatestMarketcapFtwTick``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `OverviewV1LatestMarketcapFtwTick`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `OverviewApi.OverviewV1LatestMarketcapFtwTick`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiOverviewV1LatestMarketcapFtwTickRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groups** | **[]string** | When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [default to []]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

