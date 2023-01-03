# \FuturesApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**FuturesV1HistoricalDays**](FuturesApi.md#FuturesV1HistoricalDays) | **Get** /futures/v1/historical/days | 
[**FuturesV1HistoricalFundingRateDays**](FuturesApi.md#FuturesV1HistoricalFundingRateDays) | **Get** /futures/v1/historical/funding-rate/days | 
[**FuturesV1HistoricalFundingRateHours**](FuturesApi.md#FuturesV1HistoricalFundingRateHours) | **Get** /futures/v1/historical/funding-rate/hours | 
[**FuturesV1HistoricalFundingRateMessages**](FuturesApi.md#FuturesV1HistoricalFundingRateMessages) | **Get** /futures/v1/historical/funding-rate-messages | 
[**FuturesV1HistoricalFundingRateMessagesHour**](FuturesApi.md#FuturesV1HistoricalFundingRateMessagesHour) | **Get** /futures/v1/historical/funding-rate-messages/hour | 
[**FuturesV1HistoricalFundingRateMinutes**](FuturesApi.md#FuturesV1HistoricalFundingRateMinutes) | **Get** /futures/v1/historical/funding-rate/minutes | 
[**FuturesV1HistoricalHours**](FuturesApi.md#FuturesV1HistoricalHours) | **Get** /futures/v1/historical/hours | 
[**FuturesV1HistoricalMinutes**](FuturesApi.md#FuturesV1HistoricalMinutes) | **Get** /futures/v1/historical/minutes | 
[**FuturesV1HistoricalOpenInterestDays**](FuturesApi.md#FuturesV1HistoricalOpenInterestDays) | **Get** /futures/v1/historical/open-interest/days | 
[**FuturesV1HistoricalOpenInterestHours**](FuturesApi.md#FuturesV1HistoricalOpenInterestHours) | **Get** /futures/v1/historical/open-interest/hours | 
[**FuturesV1HistoricalOpenInterestMessages**](FuturesApi.md#FuturesV1HistoricalOpenInterestMessages) | **Get** /futures/v1/historical/open-interest-messages | 
[**FuturesV1HistoricalOpenInterestMessagesHour**](FuturesApi.md#FuturesV1HistoricalOpenInterestMessagesHour) | **Get** /futures/v1/historical/open-interest-messages/hour | 
[**FuturesV1HistoricalOpenInterestMinutes**](FuturesApi.md#FuturesV1HistoricalOpenInterestMinutes) | **Get** /futures/v1/historical/open-interest/minutes | 
[**FuturesV1HistoricalTrades**](FuturesApi.md#FuturesV1HistoricalTrades) | **Get** /futures/v1/historical/trades | 
[**FuturesV1HistoricalTradesHour**](FuturesApi.md#FuturesV1HistoricalTradesHour) | **Get** /futures/v1/historical/trades/hour | 
[**FuturesV1LatestFundingRateTick**](FuturesApi.md#FuturesV1LatestFundingRateTick) | **Get** /futures/v1/latest/funding-rate/tick | 
[**FuturesV1LatestInstrumentMetadata**](FuturesApi.md#FuturesV1LatestInstrumentMetadata) | **Get** /futures/v1/latest/instrument/metadata | 
[**FuturesV1LatestOpenInterestTick**](FuturesApi.md#FuturesV1LatestOpenInterestTick) | **Get** /futures/v1/latest/open-interest/tick | 
[**FuturesV1LatestTick**](FuturesApi.md#FuturesV1LatestTick) | **Get** /futures/v1/latest/tick | 
[**FuturesV1Markets**](FuturesApi.md#FuturesV1Markets) | **Get** /futures/v1/markets | 
[**FuturesV1MarketsInstruments**](FuturesApi.md#FuturesV1MarketsInstruments) | **Get** /futures/v1/markets/instruments | 
[**FuturesV1MarketsInstrumentsUnmapped**](FuturesApi.md#FuturesV1MarketsInstrumentsUnmapped) | **Get** /futures/v1/markets/instruments/unmapped | 
[**IndexV1HistoricalDays**](FuturesApi.md#IndexV1HistoricalDays) | **Get** /index/v1/historical/days | 
[**IndexV1HistoricalHours**](FuturesApi.md#IndexV1HistoricalHours) | **Get** /index/v1/historical/hours | 
[**IndexV1HistoricalMessages**](FuturesApi.md#IndexV1HistoricalMessages) | **Get** /index/v1/historical/messages | 
[**IndexV1HistoricalMessagesHour**](FuturesApi.md#IndexV1HistoricalMessagesHour) | **Get** /index/v1/historical/messages/hour | 
[**IndexV1HistoricalMinutes**](FuturesApi.md#IndexV1HistoricalMinutes) | **Get** /index/v1/historical/minutes | 
[**IndexV1LatestInstrumentMetadata**](FuturesApi.md#IndexV1LatestInstrumentMetadata) | **Get** /index/v1/latest/instrument/metadata | 
[**IndexV1LatestTick**](FuturesApi.md#IndexV1LatestTick) | **Get** /index/v1/latest/tick | 
[**IndexV1Markets**](FuturesApi.md#IndexV1Markets) | **Get** /index/v1/markets | 
[**IndexV1MarketsInstruments**](FuturesApi.md#IndexV1MarketsInstruments) | **Get** /index/v1/markets/instruments | 
[**IndexV1MarketsInstrumentsUnmapped**](FuturesApi.md#IndexV1MarketsInstrumentsUnmapped) | **Get** /index/v1/markets/instruments/unmapped | 



## FuturesV1HistoricalDays

> GENERICRESPONSE FuturesV1HistoricalDays(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalDays(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalDays``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalDays`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalDays`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalDaysRequest struct via the builder pattern


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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## FuturesV1HistoricalFundingRateDays

> GENERICRESPONSE FuturesV1HistoricalFundingRateDays(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalFundingRateDays(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalFundingRateDays``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalFundingRateDays`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalFundingRateDays`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalFundingRateDaysRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [default to []]
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


## FuturesV1HistoricalFundingRateHours

> GENERICRESPONSE FuturesV1HistoricalFundingRateHours(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalFundingRateHours(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalFundingRateHours``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalFundingRateHours`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalFundingRateHours`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalFundingRateHoursRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [default to []]
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


## FuturesV1HistoricalFundingRateMessages

> GENERICRESPONSE FuturesV1HistoricalFundingRateMessages(ctx).Market(market).Instrument(instrument).AfterTs(afterTs).LastCcseq(lastCcseq).Limit(limit).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()



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
    afterTs := int32(56) // int32 | Unix timestamp in seconds of the earliest funding rate message in the response (optional)
    lastCcseq := int32(56) // int32 | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to 0)
    limit := int32(56) // int32 | The maximum number of funding rate messages to return (optional) (default to 100)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")
    return404OnEmptyResponse := true // bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalFundingRateMessages(context.Background()).Market(market).Instrument(instrument).AfterTs(afterTs).LastCcseq(lastCcseq).Limit(limit).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalFundingRateMessages``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalFundingRateMessages`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalFundingRateMessages`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalFundingRateMessagesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **afterTs** | **int32** | Unix timestamp in seconds of the earliest funding rate message in the response | 
 **lastCcseq** | **int32** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [default to 0]
 **limit** | **int32** | The maximum number of funding rate messages to return | [default to 100]
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


## FuturesV1HistoricalFundingRateMessagesHour

> GENERICRESPONSE FuturesV1HistoricalFundingRateMessagesHour(ctx).Market(market).Instrument(instrument).HourTs(hourTs).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()



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
    hourTs := int32(56) // int32 | Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. (optional)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")
    return404OnEmptyResponse := true // bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalFundingRateMessagesHour(context.Background()).Market(market).Instrument(instrument).HourTs(hourTs).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalFundingRateMessagesHour``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalFundingRateMessagesHour`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalFundingRateMessagesHour`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalFundingRateMessagesHourRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hourTs** | **int32** | Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. | 
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


## FuturesV1HistoricalFundingRateMinutes

> GENERICRESPONSE FuturesV1HistoricalFundingRateMinutes(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalFundingRateMinutes(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalFundingRateMinutes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalFundingRateMinutes`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalFundingRateMinutes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalFundingRateMinutesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [default to []]
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


## FuturesV1HistoricalHours

> GENERICRESPONSE FuturesV1HistoricalHours(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalHours(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalHours``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalHours`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalHours`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalHoursRequest struct via the builder pattern


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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## FuturesV1HistoricalMinutes

> GENERICRESPONSE FuturesV1HistoricalMinutes(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalMinutes(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalMinutes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalMinutes`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalMinutes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalMinutesRequest struct via the builder pattern


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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## FuturesV1HistoricalOpenInterestDays

> GENERICRESPONSE FuturesV1HistoricalOpenInterestDays(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalOpenInterestDays(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalOpenInterestDays``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalOpenInterestDays`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalOpenInterestDays`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalOpenInterestDaysRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [default to []]
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


## FuturesV1HistoricalOpenInterestHours

> GENERICRESPONSE FuturesV1HistoricalOpenInterestHours(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalOpenInterestHours(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalOpenInterestHours``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalOpenInterestHours`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalOpenInterestHours`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalOpenInterestHoursRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [default to []]
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


## FuturesV1HistoricalOpenInterestMessages

> GENERICRESPONSE FuturesV1HistoricalOpenInterestMessages(ctx).Market(market).Instrument(instrument).AfterTs(afterTs).LastCcseq(lastCcseq).Limit(limit).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()



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
    afterTs := int32(56) // int32 | Unix timestamp in seconds of the earliest open interest message in the response (optional)
    lastCcseq := int32(56) // int32 | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to 0)
    limit := int32(56) // int32 | The maximum number of open interest messages to return (optional) (default to 100)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")
    return404OnEmptyResponse := true // bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalOpenInterestMessages(context.Background()).Market(market).Instrument(instrument).AfterTs(afterTs).LastCcseq(lastCcseq).Limit(limit).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalOpenInterestMessages``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalOpenInterestMessages`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalOpenInterestMessages`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalOpenInterestMessagesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **afterTs** | **int32** | Unix timestamp in seconds of the earliest open interest message in the response | 
 **lastCcseq** | **int32** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [default to 0]
 **limit** | **int32** | The maximum number of open interest messages to return | [default to 100]
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


## FuturesV1HistoricalOpenInterestMessagesHour

> GENERICRESPONSE FuturesV1HistoricalOpenInterestMessagesHour(ctx).Market(market).Instrument(instrument).HourTs(hourTs).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()



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
    hourTs := int32(56) // int32 | Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. (optional)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")
    return404OnEmptyResponse := true // bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalOpenInterestMessagesHour(context.Background()).Market(market).Instrument(instrument).HourTs(hourTs).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalOpenInterestMessagesHour``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalOpenInterestMessagesHour`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalOpenInterestMessagesHour`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalOpenInterestMessagesHourRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hourTs** | **int32** | Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. | 
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


## FuturesV1HistoricalOpenInterestMinutes

> GENERICRESPONSE FuturesV1HistoricalOpenInterestMinutes(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional) (default to [])
    limit := int32(56) // int32 | The number of data points to return (optional) (default to 30)
    toTs := int32(56) // int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
    aggregate := int32(56) // int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
    fill := true // bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalOpenInterestMinutes(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalOpenInterestMinutes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalOpenInterestMinutes`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalOpenInterestMinutes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalOpenInterestMinutesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [default to []]
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


## FuturesV1HistoricalTrades

> GENERICRESPONSE FuturesV1HistoricalTrades(ctx).Market(market).Instrument(instrument).AfterTs(afterTs).LastCcseq(lastCcseq).Limit(limit).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()



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
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalTrades(context.Background()).Market(market).Instrument(instrument).AfterTs(afterTs).LastCcseq(lastCcseq).Limit(limit).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalTrades``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalTrades`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalTrades`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalTradesRequest struct via the builder pattern


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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## FuturesV1HistoricalTradesHour

> GENERICRESPONSE FuturesV1HistoricalTradesHour(ctx).Market(market).Instrument(instrument).HourTs(hourTs).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()



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
    resp, r, err := apiClient.FuturesApi.FuturesV1HistoricalTradesHour(context.Background()).Market(market).Instrument(instrument).HourTs(hourTs).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1HistoricalTradesHour``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1HistoricalTradesHour`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1HistoricalTradesHour`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1HistoricalTradesHourRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hourTs** | **int32** | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | 
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


## FuturesV1LatestFundingRateTick

> GENERICRESPONSE FuturesV1LatestFundingRateTick(ctx).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional) (default to [])
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.FuturesV1LatestFundingRateTick(context.Background()).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1LatestFundingRateTick``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1LatestFundingRateTick`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1LatestFundingRateTick`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1LatestFundingRateTickRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instruments** | **[]string** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [default to []]
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


## FuturesV1LatestInstrumentMetadata

> GENERICRESPONSE FuturesV1LatestInstrumentMetadata(ctx).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()



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
    resp, r, err := apiClient.FuturesApi.FuturesV1LatestInstrumentMetadata(context.Background()).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1LatestInstrumentMetadata``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1LatestInstrumentMetadata`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1LatestInstrumentMetadata`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1LatestInstrumentMetadataRequest struct via the builder pattern


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


## FuturesV1LatestOpenInterestTick

> GENERICRESPONSE FuturesV1LatestOpenInterestTick(ctx).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional) (default to [])
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.FuturesV1LatestOpenInterestTick(context.Background()).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1LatestOpenInterestTick``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1LatestOpenInterestTick`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1LatestOpenInterestTick`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1LatestOpenInterestTickRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instruments** | **[]string** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [default to []]
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


## FuturesV1LatestTick

> GENERICRESPONSE FuturesV1LatestTick(ctx).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()



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
    groups := []string{"Inner_example"} // []string | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional) (default to [])
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.FuturesV1LatestTick(context.Background()).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1LatestTick``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1LatestTick`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1LatestTick`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1LatestTickRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instruments** | **[]string** | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | **[]string** | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [default to []]
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


## FuturesV1Markets

> GENERICRESPONSE FuturesV1Markets(ctx).Market(market).Execute()



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
    resp, r, err := apiClient.FuturesApi.FuturesV1Markets(context.Background()).Market(market).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1Markets``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1Markets`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1Markets`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1MarketsRequest struct via the builder pattern


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


## FuturesV1MarketsInstruments

> GENERICRESPONSE FuturesV1MarketsInstruments(ctx).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()



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
    resp, r, err := apiClient.FuturesApi.FuturesV1MarketsInstruments(context.Background()).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1MarketsInstruments``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1MarketsInstruments`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1MarketsInstruments`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1MarketsInstrumentsRequest struct via the builder pattern


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


## FuturesV1MarketsInstrumentsUnmapped

> GENERICRESPONSE FuturesV1MarketsInstrumentsUnmapped(ctx).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()



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
    resp, r, err := apiClient.FuturesApi.FuturesV1MarketsInstrumentsUnmapped(context.Background()).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.FuturesV1MarketsInstrumentsUnmapped``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `FuturesV1MarketsInstrumentsUnmapped`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.FuturesV1MarketsInstrumentsUnmapped`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiFuturesV1MarketsInstrumentsUnmappedRequest struct via the builder pattern


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


## IndexV1HistoricalDays

> GENERICRESPONSE IndexV1HistoricalDays(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    resp, r, err := apiClient.FuturesApi.IndexV1HistoricalDays(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.IndexV1HistoricalDays``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexV1HistoricalDays`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.IndexV1HistoricalDays`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexV1HistoricalDaysRequest struct via the builder pattern


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


## IndexV1HistoricalHours

> GENERICRESPONSE IndexV1HistoricalHours(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    resp, r, err := apiClient.FuturesApi.IndexV1HistoricalHours(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.IndexV1HistoricalHours``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexV1HistoricalHours`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.IndexV1HistoricalHours`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexV1HistoricalHoursRequest struct via the builder pattern


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


## IndexV1HistoricalMessages

> GENERICRESPONSE IndexV1HistoricalMessages(ctx).Market(market).Instrument(instrument).AfterTs(afterTs).LastCcseq(lastCcseq).Limit(limit).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()



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
    limit := int32(56) // int32 | The maximum number of index messages to return (optional) (default to 100)
    mappingPriority := "mappingPriority_example" // string | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
    responseFormat := "responseFormat_example" // string | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")
    return404OnEmptyResponse := true // bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.FuturesApi.IndexV1HistoricalMessages(context.Background()).Market(market).Instrument(instrument).AfterTs(afterTs).LastCcseq(lastCcseq).Limit(limit).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.IndexV1HistoricalMessages``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexV1HistoricalMessages`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.IndexV1HistoricalMessages`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexV1HistoricalMessagesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market** | **string** | The exchange to obtain data from | 
 **instrument** | **string** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **afterTs** | **int32** | Unix timestamp in seconds of the earliest index message in the response | 
 **lastCcseq** | **int32** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [default to 0]
 **limit** | **int32** | The maximum number of index messages to return | [default to 100]
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


## IndexV1HistoricalMessagesHour

> GENERICRESPONSE IndexV1HistoricalMessagesHour(ctx).Market(market).Instrument(instrument).HourTs(hourTs).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()



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
    resp, r, err := apiClient.FuturesApi.IndexV1HistoricalMessagesHour(context.Background()).Market(market).Instrument(instrument).HourTs(hourTs).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Return404OnEmptyResponse(return404OnEmptyResponse).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.IndexV1HistoricalMessagesHour``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexV1HistoricalMessagesHour`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.IndexV1HistoricalMessagesHour`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexV1HistoricalMessagesHourRequest struct via the builder pattern


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


## IndexV1HistoricalMinutes

> GENERICRESPONSE IndexV1HistoricalMinutes(ctx).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()



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
    resp, r, err := apiClient.FuturesApi.IndexV1HistoricalMinutes(context.Background()).Market(market).Instrument(instrument).Groups(groups).Limit(limit).ToTs(toTs).Aggregate(aggregate).Fill(fill).MappingPriority(mappingPriority).ResponseFormat(responseFormat).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.IndexV1HistoricalMinutes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexV1HistoricalMinutes`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.IndexV1HistoricalMinutes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexV1HistoricalMinutesRequest struct via the builder pattern


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


## IndexV1LatestInstrumentMetadata

> GENERICRESPONSE IndexV1LatestInstrumentMetadata(ctx).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()



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
    resp, r, err := apiClient.FuturesApi.IndexV1LatestInstrumentMetadata(context.Background()).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.IndexV1LatestInstrumentMetadata``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexV1LatestInstrumentMetadata`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.IndexV1LatestInstrumentMetadata`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexV1LatestInstrumentMetadataRequest struct via the builder pattern


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


## IndexV1LatestTick

> GENERICRESPONSE IndexV1LatestTick(ctx).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()



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
    resp, r, err := apiClient.FuturesApi.IndexV1LatestTick(context.Background()).Market(market).Instruments(instruments).Groups(groups).MappingPriority(mappingPriority).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.IndexV1LatestTick``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexV1LatestTick`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.IndexV1LatestTick`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexV1LatestTickRequest struct via the builder pattern


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


## IndexV1Markets

> GENERICRESPONSE IndexV1Markets(ctx).Market(market).Execute()



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
    resp, r, err := apiClient.FuturesApi.IndexV1Markets(context.Background()).Market(market).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.IndexV1Markets``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexV1Markets`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.IndexV1Markets`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexV1MarketsRequest struct via the builder pattern


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


## IndexV1MarketsInstruments

> GENERICRESPONSE IndexV1MarketsInstruments(ctx).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()



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
    resp, r, err := apiClient.FuturesApi.IndexV1MarketsInstruments(context.Background()).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.IndexV1MarketsInstruments``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexV1MarketsInstruments`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.IndexV1MarketsInstruments`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexV1MarketsInstrumentsRequest struct via the builder pattern


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


## IndexV1MarketsInstrumentsUnmapped

> GENERICRESPONSE IndexV1MarketsInstrumentsUnmapped(ctx).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()



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
    resp, r, err := apiClient.FuturesApi.IndexV1MarketsInstrumentsUnmapped(context.Background()).Market(market).Instrument(instrument).InstrumentStatus(instrumentStatus).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `FuturesApi.IndexV1MarketsInstrumentsUnmapped``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `IndexV1MarketsInstrumentsUnmapped`: GENERICRESPONSE
    fmt.Fprintf(os.Stdout, "Response from `FuturesApi.IndexV1MarketsInstrumentsUnmapped`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiIndexV1MarketsInstrumentsUnmappedRequest struct via the builder pattern


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

