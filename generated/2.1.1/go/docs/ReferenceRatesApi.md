# \ReferenceRatesApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**IndexCcV1HistoricalDays**](ReferenceRatesApi.md#IndexCcV1HistoricalDays) | **Get** /index/cc/v1/historical/days | 
[**IndexCcV1HistoricalHours**](ReferenceRatesApi.md#IndexCcV1HistoricalHours) | **Get** /index/cc/v1/historical/hours | 
[**IndexCcV1HistoricalMessages**](ReferenceRatesApi.md#IndexCcV1HistoricalMessages) | **Get** /index/cc/v1/historical/messages | 
[**IndexCcV1HistoricalMessagesHour**](ReferenceRatesApi.md#IndexCcV1HistoricalMessagesHour) | **Get** /index/cc/v1/historical/messages/hour | 
[**IndexCcV1HistoricalMinutes**](ReferenceRatesApi.md#IndexCcV1HistoricalMinutes) | **Get** /index/cc/v1/historical/minutes | 
[**IndexCcV1LatestInstrumentMetadata**](ReferenceRatesApi.md#IndexCcV1LatestInstrumentMetadata) | **Get** /index/cc/v1/latest/instrument/metadata | 
[**IndexCcV1LatestTick**](ReferenceRatesApi.md#IndexCcV1LatestTick) | **Get** /index/cc/v1/latest/tick | 
[**IndexCcV1Markets**](ReferenceRatesApi.md#IndexCcV1Markets) | **Get** /index/cc/v1/markets | 
[**IndexCcV1MarketsInstruments**](ReferenceRatesApi.md#IndexCcV1MarketsInstruments) | **Get** /index/cc/v1/markets/instruments | 
[**IndexCcV1MarketsInstrumentsUnmapped**](ReferenceRatesApi.md#IndexCcV1MarketsInstrumentsUnmapped) | **Get** /index/cc/v1/markets/instruments/unmapped | 



## IndexCcV1HistoricalDays

> GENERICRESPONSE IndexCcV1HistoricalDays(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ReferenceRatesApi.IndexCcV1HistoricalDays(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceRatesApi.IndexCcV1HistoricalDays``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexCcV1HistoricalDays`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `ReferenceRatesApi.IndexCcV1HistoricalDays`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexCcV1HistoricalDaysRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [default to []]
 **limit** | **int32** | The number of data points to return | [default to 30]
 **toTs** | **int32** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | 
 **aggregate** | **int32** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [default to 1]
 **fill** | **bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]
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


## IndexCcV1HistoricalHours

> GENERICRESPONSE IndexCcV1HistoricalHours(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ReferenceRatesApi.IndexCcV1HistoricalHours(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceRatesApi.IndexCcV1HistoricalHours``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexCcV1HistoricalHours`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `ReferenceRatesApi.IndexCcV1HistoricalHours`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexCcV1HistoricalHoursRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [default to []]
 **limit** | **int32** | The number of data points to return | [default to 30]
 **toTs** | **int32** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | 
 **aggregate** | **int32** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [default to 1]
 **fill** | **bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]
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


## IndexCcV1HistoricalMessages

> GENERICRESPONSE IndexCcV1HistoricalMessages(ctx).Market(market).Instrument(instrument).AfterTs(afterTs).LastCcseq(lastCcseq).MappingPriority(mappingPriority).Limit(limit).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()



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
    afterTs := int32(56) // int32 | Unix timestamp in seconds of the earliest index message in the response (optional)
    lastCcseq := int32(56) // int32 | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to 0)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    limit := int32(56) // int32 | The maximum number of index messages to return (optional) (default to 100)
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")
    return404OnEmptyResponse := true // bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ReferenceRatesApi.IndexCcV1HistoricalMessages(context.Background()).Market(market).Instrument(instrument).AfterTs(afterTs).LastCcseq(lastCcseq).MappingPriority(mappingPriority).Limit(limit).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceRatesApi.IndexCcV1HistoricalMessages``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexCcV1HistoricalMessages`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `ReferenceRatesApi.IndexCcV1HistoricalMessages`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexCcV1HistoricalMessagesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **afterTs** | **int32** | Unix timestamp in seconds of the earliest index message in the response | 
 **lastCcseq** | **int32** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [default to 0]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **limit** | **int32** | The maximum number of index messages to return | [default to 100]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [default to &quot;JSON&quot;]
 **return404OnEmptyResponse** | **bool** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [default to false]

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


## IndexCcV1HistoricalMessagesHour

> GENERICRESPONSE IndexCcV1HistoricalMessagesHour(ctx).Market(market).Instrument(instrument).HourTs(hourTs).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()



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
    hourTs := int32(56) // int32 | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. (optional)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")
    return404OnEmptyResponse := true // bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ReferenceRatesApi.IndexCcV1HistoricalMessagesHour(context.Background()).Market(market).Instrument(instrument).HourTs(hourTs).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceRatesApi.IndexCcV1HistoricalMessagesHour``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexCcV1HistoricalMessagesHour`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `ReferenceRatesApi.IndexCcV1HistoricalMessagesHour`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexCcV1HistoricalMessagesHourRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hourTs** | **int32** | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | 
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **responseFormat** | **string** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [default to &quot;JSON&quot;]
 **return404OnEmptyResponse** | **bool** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [default to false]

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


## IndexCcV1HistoricalMinutes

> GENERICRESPONSE IndexCcV1HistoricalMinutes(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ReferenceRatesApi.IndexCcV1HistoricalMinutes(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceRatesApi.IndexCcV1HistoricalMinutes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexCcV1HistoricalMinutes`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `ReferenceRatesApi.IndexCcV1HistoricalMinutes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexCcV1HistoricalMinutesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [default to []]
 **limit** | **int32** | The number of data points to return | [default to 30]
 **toTs** | **int32** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | 
 **aggregate** | **int32** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [default to 1]
 **fill** | **bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [default to true]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]
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


## IndexCcV1LatestInstrumentMetadata

> GENERICRESPONSE IndexCcV1LatestInstrumentMetadata(ctx).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional) (default to [])
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ReferenceRatesApi.IndexCcV1LatestInstrumentMetadata(context.Background()).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceRatesApi.IndexCcV1LatestInstrumentMetadata``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexCcV1LatestInstrumentMetadata`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `ReferenceRatesApi.IndexCcV1LatestInstrumentMetadata`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexCcV1LatestInstrumentMetadataRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instruments** | **[]string** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [default to []]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]

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


## IndexCcV1LatestTick

> GENERICRESPONSE IndexCcV1LatestTick(ctx).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional) (default to [])
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ReferenceRatesApi.IndexCcV1LatestTick(context.Background()).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceRatesApi.IndexCcV1LatestTick``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexCcV1LatestTick`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `ReferenceRatesApi.IndexCcV1LatestTick`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexCcV1LatestTickRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instruments** | **[]string** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [default to []]
 **mappingPriority** | **string** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [default to &quot;CHECK_MAPPED_FIRST&quot;]

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


## IndexCcV1Markets

> GENERICRESPONSE IndexCcV1Markets(ctx).Market(market).Execute()



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
    resp, r, err := apiClient.ReferenceRatesApi.IndexCcV1Markets(context.Background()).Market(market).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceRatesApi.IndexCcV1Markets``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexCcV1Markets`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `ReferenceRatesApi.IndexCcV1Markets`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexCcV1MarketsRequest struct via the builder pattern


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


## IndexCcV1MarketsInstruments

> GENERICRESPONSE IndexCcV1MarketsInstruments(ctx).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()



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
    instrumentStatus := []string{"InstrumentStatus_example"} // []string | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional) (default to [])

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ReferenceRatesApi.IndexCcV1MarketsInstruments(context.Background()).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceRatesApi.IndexCcV1MarketsInstruments``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexCcV1MarketsInstruments`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `ReferenceRatesApi.IndexCcV1MarketsInstruments`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexCcV1MarketsInstrumentsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to &quot;&quot;]
 **instrument** | **string** | The mapped instrument to retrieve on a specific market. | [default to &quot;&quot;]
 **instrumentStatus** | **[]string** | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [default to []]

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


## IndexCcV1MarketsInstrumentsUnmapped

> GENERICRESPONSE IndexCcV1MarketsInstrumentsUnmapped(ctx).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()



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
    instrumentStatus := []string{"InstrumentStatus_example"} // []string | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional) (default to [])

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.ReferenceRatesApi.IndexCcV1MarketsInstrumentsUnmapped(context.Background()).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `ReferenceRatesApi.IndexCcV1MarketsInstrumentsUnmapped``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexCcV1MarketsInstrumentsUnmapped`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `ReferenceRatesApi.IndexCcV1MarketsInstrumentsUnmapped`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexCcV1MarketsInstrumentsUnmappedRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | [default to &quot;&quot;]
 **instrument** | **string** | The unmapped instrument to retrieve on a specific market. | [default to &quot;&quot;]
 **instrumentStatus** | **[]string** | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [default to []]

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

