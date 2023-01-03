# \SpotApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SpotV1HistoricalDays**](SpotApi.md#SpotV1HistoricalDays) | **Get** /spot/v1/historical/days | 
[**SpotV1HistoricalHours**](SpotApi.md#SpotV1HistoricalHours) | **Get** /spot/v1/historical/hours | 
[**SpotV1HistoricalMinutes**](SpotApi.md#SpotV1HistoricalMinutes) | **Get** /spot/v1/historical/minutes | 
[**SpotV1HistoricalOrderbookL2SnapshotMinute**](SpotApi.md#SpotV1HistoricalOrderbookL2SnapshotMinute) | **Get** /spot/v1/historical/orderbook/l2/snapshot/minute | 
[**SpotV1HistoricalTrades**](SpotApi.md#SpotV1HistoricalTrades) | **Get** /spot/v1/historical/trades | 
[**SpotV1HistoricalTradesHour**](SpotApi.md#SpotV1HistoricalTradesHour) | **Get** /spot/v1/historical/trades/hour | 
[**SpotV1LatestInstrumentMetadata**](SpotApi.md#SpotV1LatestInstrumentMetadata) | **Get** /spot/v1/latest/instrument/metadata | 
[**SpotV1LatestTick**](SpotApi.md#SpotV1LatestTick) | **Get** /spot/v1/latest/tick | 
[**SpotV1Markets**](SpotApi.md#SpotV1Markets) | **Get** /spot/v1/markets | 
[**SpotV1MarketsInstruments**](SpotApi.md#SpotV1MarketsInstruments) | **Get** /spot/v1/markets/instruments | 
[**SpotV1MarketsInstrumentsUnmapped**](SpotApi.md#SpotV1MarketsInstrumentsUnmapped) | **Get** /spot/v1/markets/instruments/unmapped | 



## SpotV1HistoricalDays

> SPOTINSTRUMENTHISTODATARESPONSE SpotV1HistoricalDays(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    market := "market_example" // string | The exchange to obtain data from
    instrument := "instrument_example" // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups := []string{"Inner_example"} // []string | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SpotApi.SpotV1HistoricalDays(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SpotApi.SpotV1HistoricalDays``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SpotV1HistoricalDays`: SPOTINSTRUMENTHISTODATARESPONSE
    fmt.Fprintf(os.Stdout, "Response from `SpotApi.SpotV1HistoricalDays`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSpotV1HistoricalDaysRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [default to []]
 **limit** | **int32** | The number of data points to return | [default to 30]
 **toTs** | **int32** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | 
 **aggregate** | **int32** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [default to 1]
 **fill** | **bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [default to &quot;JSON&quot;]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SpotV1HistoricalHours

> SPOTINSTRUMENTHISTODATARESPONSE SpotV1HistoricalHours(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    market := "market_example" // string | The exchange to obtain data from
    instrument := "instrument_example" // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups := []string{"Inner_example"} // []string | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SpotApi.SpotV1HistoricalHours(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SpotApi.SpotV1HistoricalHours``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SpotV1HistoricalHours`: SPOTINSTRUMENTHISTODATARESPONSE
    fmt.Fprintf(os.Stdout, "Response from `SpotApi.SpotV1HistoricalHours`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSpotV1HistoricalHoursRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [default to []]
 **limit** | **int32** | The number of data points to return | [default to 30]
 **toTs** | **int32** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | 
 **aggregate** | **int32** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [default to 1]
 **fill** | **bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [default to &quot;JSON&quot;]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SpotV1HistoricalMinutes

> SPOTINSTRUMENTHISTODATARESPONSE SpotV1HistoricalMinutes(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    market := "market_example" // string | The exchange to obtain data from
    instrument := "instrument_example" // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    groups := []string{"Inner_example"} // []string | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SpotApi.SpotV1HistoricalMinutes(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SpotApi.SpotV1HistoricalMinutes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SpotV1HistoricalMinutes`: SPOTINSTRUMENTHISTODATARESPONSE
    fmt.Fprintf(os.Stdout, "Response from `SpotApi.SpotV1HistoricalMinutes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSpotV1HistoricalMinutesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [default to []]
 **limit** | **int32** | The number of data points to return | [default to 30]
 **toTs** | **int32** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | 
 **aggregate** | **int32** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [default to 1]
 **fill** | **bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [default to &quot;JSON&quot;]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SpotV1HistoricalOrderbookL2SnapshotMinute

> GENERICRESPONSE SpotV1HistoricalOrderbookL2SnapshotMinute(ctx).Market(market).Instrument(instrument).MinuteTs(minuteTs).Depth(depth).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    market := "market_example" // string | The exchange to obtain data from
    instrument := "instrument_example" // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    minuteTs := int32(56) // int32 | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
    depth := int32(56) // int32 | The number of top bids and asks to return. (optional) (default to 50)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SpotApi.SpotV1HistoricalOrderbookL2SnapshotMinute(context.Background()).Market(market).Instrument(instrument).MinuteTs(minuteTs).Depth(depth).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SpotApi.SpotV1HistoricalOrderbookL2SnapshotMinute``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SpotV1HistoricalOrderbookL2SnapshotMinute`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `SpotApi.SpotV1HistoricalOrderbookL2SnapshotMinute`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSpotV1HistoricalOrderbookL2SnapshotMinuteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **minuteTs** | **int32** | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. | 
 **depth** | **int32** | The number of top bids and asks to return. | [default to 50]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [default to &quot;JSON&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SpotV1HistoricalTrades

> SPOTINSTRUMENTTRADERESPONSE SpotV1HistoricalTrades(ctx).Market(market).Instrument(instrument).AfterTs(afterTs).LastCcseq(lastCcseq).Limit(limit).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()



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
    market := "market_example" // string | The exchange to obtain data from
    instrument := "instrument_example" // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    afterTs := int32(56) // int32 | Unix timestamp in seconds of the earliest trade in the response. (optional)
    lastCcseq := int32(56) // int32 | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to 0)
    limit := int32(56) // int32 | The maximum number of trades to return (optional) (default to 100)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")
    return404OnEmptyResponse := true // bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SpotApi.SpotV1HistoricalTrades(context.Background()).Market(market).Instrument(instrument).AfterTs(afterTs).LastCcseq(lastCcseq).Limit(limit).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SpotApi.SpotV1HistoricalTrades``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SpotV1HistoricalTrades`: SPOTINSTRUMENTTRADERESPONSE
    fmt.Fprintf(os.Stdout, "Response from `SpotApi.SpotV1HistoricalTrades`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSpotV1HistoricalTradesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **afterTs** | **int32** | Unix timestamp in seconds of the earliest trade in the response. | 
 **lastCcseq** | **int32** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [default to 0]
 **limit** | **int32** | The maximum number of trades to return | [default to 100]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [default to &quot;JSON&quot;]
 **return404OnEmptyResponse** | **bool** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [default to false]

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SpotV1HistoricalTradesHour

> SPOTINSTRUMENTTRADERESPONSE SpotV1HistoricalTradesHour(ctx).Market(market).Instrument(instrument).HourTs(hourTs).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()



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
    market := "market_example" // string | The exchange to obtain data from
    instrument := "instrument_example" // string | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
    hourTs := int32(56) // int32 | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. (optional)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")
    return404OnEmptyResponse := true // bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SpotApi.SpotV1HistoricalTradesHour(context.Background()).Market(market).Instrument(instrument).HourTs(hourTs).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SpotApi.SpotV1HistoricalTradesHour``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SpotV1HistoricalTradesHour`: SPOTINSTRUMENTTRADERESPONSE
    fmt.Fprintf(os.Stdout, "Response from `SpotApi.SpotV1HistoricalTradesHour`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSpotV1HistoricalTradesHourRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hourTs** | **int32** | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | 
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [default to &quot;JSON&quot;]
 **return404OnEmptyResponse** | **bool** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [default to false]

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SpotV1LatestInstrumentMetadata

> SPOTINSTRUMENTMETADATARESPONSE SpotV1LatestInstrumentMetadata(ctx).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()



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
    market := "coinbase" // string | The exchange to obtain data from
    instruments := []string{"Inner_example"} // []string | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
    groups := []string{"Inner_example"} // []string | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional) (default to [])
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SpotApi.SpotV1LatestInstrumentMetadata(context.Background()).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SpotApi.SpotV1LatestInstrumentMetadata``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SpotV1LatestInstrumentMetadata`: SPOTINSTRUMENTMETADATARESPONSE
    fmt.Fprintf(os.Stdout, "Response from `SpotApi.SpotV1LatestInstrumentMetadata`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSpotV1LatestInstrumentMetadataRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instruments** | **[]string** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [default to []]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]

### Return type

[**SPOTINSTRUMENTMETADATARESPONSE**](SPOTINSTRUMENTMETADATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SpotV1LatestTick

> SPOTINSTRUMENTMARKETDATARESPONSE SpotV1LatestTick(ctx).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()



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
    market := "market_example" // string | The exchange to obtain data from
    instruments := []string{"Inner_example"} // []string | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
    groups := []string{"Inner_example"} // []string | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional) (default to [])
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SpotApi.SpotV1LatestTick(context.Background()).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SpotApi.SpotV1LatestTick``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SpotV1LatestTick`: SPOTINSTRUMENTMARKETDATARESPONSE
    fmt.Fprintf(os.Stdout, "Response from `SpotApi.SpotV1LatestTick`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSpotV1LatestTickRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instruments** | **[]string** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [default to []]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]

### Return type

[**SPOTINSTRUMENTMARKETDATARESPONSE**](SPOTINSTRUMENTMARKETDATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SpotV1Markets

> GENERICRESPONSE SpotV1Markets(ctx).Market(market).Execute()



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
    market := "market_example" // string | The exchange to obtain data from (optional) (default to "")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SpotApi.SpotV1Markets(context.Background()).Market(market).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SpotApi.SpotV1Markets``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SpotV1Markets`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `SpotApi.SpotV1Markets`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSpotV1MarketsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to &quot;&quot;]

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


## SpotV1MarketsInstruments

> GENERICRESPONSE SpotV1MarketsInstruments(ctx).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()



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
    market := "market_example" // string | The exchange to obtain data from (optional) (default to "")
    instrument := "instrument_example" // string | The mapped instrument to retrieve on a specific market. (optional) (default to "")
    instrumentStatus := []string{"InstrumentStatus_example"} // []string | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional) (default to ["ACTIVE","IGNORED","RETIRED","EXPIRED"])

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SpotApi.SpotV1MarketsInstruments(context.Background()).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SpotApi.SpotV1MarketsInstruments``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SpotV1MarketsInstruments`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `SpotApi.SpotV1MarketsInstruments`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSpotV1MarketsInstrumentsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to &quot;&quot;]
 **instrument** | **string** | The mapped instrument to retrieve on a specific market. | [default to &quot;&quot;]
 **instrumentStatus** | **[]string** | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [default to [&quot;ACTIVE&quot;,&quot;IGNORED&quot;,&quot;RETIRED&quot;,&quot;EXPIRED&quot;]]

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


## SpotV1MarketsInstrumentsUnmapped

> GENERICRESPONSE SpotV1MarketsInstrumentsUnmapped(ctx).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()



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
    market := "market_example" // string | The exchange to obtain data from (optional) (default to "")
    instrument := "instrument_example" // string | The unmapped instrument to retrieve on a specific market. (optional) (default to "")
    instrumentStatus := []string{"InstrumentStatus_example"} // []string | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional) (default to ["ACTIVE","IGNORED","RETIRED","EXPIRED"])

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.SpotApi.SpotV1MarketsInstrumentsUnmapped(context.Background()).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `SpotApi.SpotV1MarketsInstrumentsUnmapped``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SpotV1MarketsInstrumentsUnmapped`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `SpotApi.SpotV1MarketsInstrumentsUnmapped`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSpotV1MarketsInstrumentsUnmappedRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to &quot;&quot;]
 **instrument** | **string** | The unmapped instrument to retrieve on a specific market. | [default to &quot;&quot;]
 **instrumentStatus** | **[]string** | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [default to [&quot;ACTIVE&quot;,&quot;IGNORED&quot;,&quot;RETIRED&quot;,&quot;EXPIRED&quot;]]

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

