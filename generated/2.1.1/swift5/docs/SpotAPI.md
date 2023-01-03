# SpotAPI

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**spotV1HistoricalDays**](SpotAPI.md#spotv1historicaldays) | **GET** /spot/v1/historical/days | 
[**spotV1HistoricalHours**](SpotAPI.md#spotv1historicalhours) | **GET** /spot/v1/historical/hours | 
[**spotV1HistoricalMinutes**](SpotAPI.md#spotv1historicalminutes) | **GET** /spot/v1/historical/minutes | 
[**spotV1HistoricalOrderbookL2SnapshotMinute**](SpotAPI.md#spotv1historicalorderbookl2snapshotminute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
[**spotV1HistoricalTrades**](SpotAPI.md#spotv1historicaltrades) | **GET** /spot/v1/historical/trades | 
[**spotV1HistoricalTradesHour**](SpotAPI.md#spotv1historicaltradeshour) | **GET** /spot/v1/historical/trades/hour | 
[**spotV1LatestInstrumentMetadata**](SpotAPI.md#spotv1latestinstrumentmetadata) | **GET** /spot/v1/latest/instrument/metadata | 
[**spotV1LatestTick**](SpotAPI.md#spotv1latesttick) | **GET** /spot/v1/latest/tick | 
[**spotV1Markets**](SpotAPI.md#spotv1markets) | **GET** /spot/v1/markets | 
[**spotV1MarketsInstruments**](SpotAPI.md#spotv1marketsinstruments) | **GET** /spot/v1/markets/instruments | 
[**spotV1MarketsInstrumentsUnmapped**](SpotAPI.md#spotv1marketsinstrumentsunmapped) | **GET** /spot/v1/markets/instruments/unmapped | 


# **spotV1HistoricalDays**
```swift
    open class func spotV1HistoricalDays(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_spotV1HistoricalDays? = nil, responseFormat: ResponseFormat_spotV1HistoricalDays? = nil, completion: @escaping (_ data: SPOTINSTRUMENTHISTODATARESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

SpotAPI.spotV1HistoricalDays(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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
 **market** | **String** | The exchange to obtain data from | 
 **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**[String]**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1HistoricalHours**
```swift
    open class func spotV1HistoricalHours(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_spotV1HistoricalHours? = nil, responseFormat: ResponseFormat_spotV1HistoricalHours? = nil, completion: @escaping (_ data: SPOTINSTRUMENTHISTODATARESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

SpotAPI.spotV1HistoricalHours(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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
 **market** | **String** | The exchange to obtain data from | 
 **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**[String]**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1HistoricalMinutes**
```swift
    open class func spotV1HistoricalMinutes(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_spotV1HistoricalMinutes? = nil, responseFormat: ResponseFormat_spotV1HistoricalMinutes? = nil, completion: @escaping (_ data: SPOTINSTRUMENTHISTODATARESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

SpotAPI.spotV1HistoricalMinutes(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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
 **market** | **String** | The exchange to obtain data from | 
 **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**[String]**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1HistoricalOrderbookL2SnapshotMinute**
```swift
    open class func spotV1HistoricalOrderbookL2SnapshotMinute(market: String, instrument: String, minuteTs: Int, depth: Int? = nil, mappingPriority: MappingPriority_spotV1HistoricalOrderbookL2SnapshotMinute? = nil, responseFormat: ResponseFormat_spotV1HistoricalOrderbookL2SnapshotMinute? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let minuteTs = 987 // Int | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
let depth = 987 // Int | The number of top bids and asks to return. (optional) (default to 50)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

SpotAPI.spotV1HistoricalOrderbookL2SnapshotMinute(market: market, instrument: instrument, minuteTs: minuteTs, depth: depth, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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
 **market** | **String** | The exchange to obtain data from | 
 **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **minuteTs** | **Int** | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. | 
 **depth** | **Int** | The number of top bids and asks to return. | [optional] [default to 50]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1HistoricalTrades**
```swift
    open class func spotV1HistoricalTrades(market: String, instrument: String, afterTs: Int? = nil, lastCcseq: Int? = nil, limit: Int? = nil, mappingPriority: MappingPriority_spotV1HistoricalTrades? = nil, responseFormat: ResponseFormat_spotV1HistoricalTrades? = nil, return404OnEmptyResponse: Bool? = nil, completion: @escaping (_ data: SPOTINSTRUMENTTRADERESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let afterTs = 987 // Int | Unix timestamp in seconds of the earliest trade in the response. (optional)
let lastCcseq = 987 // Int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to 0)
let limit = 987 // Int | The maximum number of trades to return (optional) (default to 100)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)
let return404OnEmptyResponse = true // Bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

SpotAPI.spotV1HistoricalTrades(market: market, instrument: instrument, afterTs: afterTs, lastCcseq: lastCcseq, limit: limit, mappingPriority: mappingPriority, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse) { (response, error) in
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
 **market** | **String** | The exchange to obtain data from | 
 **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **afterTs** | **Int** | Unix timestamp in seconds of the earliest trade in the response. | [optional] 
 **lastCcseq** | **Int** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **Int** | The maximum number of trades to return | [optional] [default to 100]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]
 **return404OnEmptyResponse** | **Bool** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1HistoricalTradesHour**
```swift
    open class func spotV1HistoricalTradesHour(market: String, instrument: String, hourTs: Int? = nil, mappingPriority: MappingPriority_spotV1HistoricalTradesHour? = nil, responseFormat: ResponseFormat_spotV1HistoricalTradesHour? = nil, return404OnEmptyResponse: Bool? = nil, completion: @escaping (_ data: SPOTINSTRUMENTTRADERESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let hourTs = 987 // Int | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)
let return404OnEmptyResponse = true // Bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

SpotAPI.spotV1HistoricalTradesHour(market: market, instrument: instrument, hourTs: hourTs, mappingPriority: mappingPriority, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse) { (response, error) in
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
 **market** | **String** | The exchange to obtain data from | 
 **instrument** | **String** | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **hourTs** | **Int** | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional] 
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]
 **return404OnEmptyResponse** | **Bool** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1LatestInstrumentMetadata**
```swift
    open class func spotV1LatestInstrumentMetadata(market: String, instruments: [String], groups: [String]? = nil, mappingPriority: MappingPriority_spotV1LatestInstrumentMetadata? = nil, completion: @escaping (_ data: SPOTINSTRUMENTMETADATARESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instruments = ["inner_example"] // [String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)

SpotAPI.spotV1LatestInstrumentMetadata(market: market, instruments: instruments, groups: groups, mappingPriority: mappingPriority) { (response, error) in
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
 **market** | **String** | The exchange to obtain data from | 
 **instruments** | [**[String]**](String.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**[String]**](String.md) | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] 
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]

### Return type

[**SPOTINSTRUMENTMETADATARESPONSE**](SPOTINSTRUMENTMETADATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1LatestTick**
```swift
    open class func spotV1LatestTick(market: String, instruments: [String], groups: [String]? = nil, mappingPriority: MappingPriority_spotV1LatestTick? = nil, completion: @escaping (_ data: SPOTINSTRUMENTMARKETDATARESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instruments = ["inner_example"] // [String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)

SpotAPI.spotV1LatestTick(market: market, instruments: instruments, groups: groups, mappingPriority: mappingPriority) { (response, error) in
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
 **market** | **String** | The exchange to obtain data from | 
 **instruments** | [**[String]**](String.md) | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **groups** | [**[String]**](String.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]

### Return type

[**SPOTINSTRUMENTMARKETDATARESPONSE**](SPOTINSTRUMENTMARKETDATARESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1Markets**
```swift
    open class func spotV1Markets(market: String? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from (optional) (default to "")

SpotAPI.spotV1Markets(market: market) { (response, error) in
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
 **market** | **String** | The exchange to obtain data from | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1MarketsInstruments**
```swift
    open class func spotV1MarketsInstruments(market: String? = nil, instrument: String? = nil, instrumentStatus: [InstrumentStatus_spotV1MarketsInstruments]? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from (optional) (default to "")
let instrument = "instrument_example" // String | The mapped instrument to retrieve on a specific market. (optional) (default to "")
let instrumentStatus = ["instrumentStatus_example"] // [String] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

SpotAPI.spotV1MarketsInstruments(market: market, instrument: instrument, instrumentStatus: instrumentStatus) { (response, error) in
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
 **market** | **String** | The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **instrument** | **String** | The mapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **instrumentStatus** | [**[String]**](String.md) | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spotV1MarketsInstrumentsUnmapped**
```swift
    open class func spotV1MarketsInstrumentsUnmapped(market: String? = nil, instrument: String? = nil, instrumentStatus: [InstrumentStatus_spotV1MarketsInstrumentsUnmapped]? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from (optional) (default to "")
let instrument = "instrument_example" // String | The unmapped instrument to retrieve on a specific market. (optional) (default to "")
let instrumentStatus = ["instrumentStatus_example"] // [String] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

SpotAPI.spotV1MarketsInstrumentsUnmapped(market: market, instrument: instrument, instrumentStatus: instrumentStatus) { (response, error) in
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
 **market** | **String** | The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **instrument** | **String** | The unmapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **instrumentStatus** | [**[String]**](String.md) | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

