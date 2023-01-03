# FuturesAPI

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**futuresV1HistoricalDays**](FuturesAPI.md#futuresv1historicaldays) | **GET** /futures/v1/historical/days | 
[**futuresV1HistoricalFundingRateDays**](FuturesAPI.md#futuresv1historicalfundingratedays) | **GET** /futures/v1/historical/funding-rate/days | 
[**futuresV1HistoricalFundingRateHours**](FuturesAPI.md#futuresv1historicalfundingratehours) | **GET** /futures/v1/historical/funding-rate/hours | 
[**futuresV1HistoricalFundingRateMessages**](FuturesAPI.md#futuresv1historicalfundingratemessages) | **GET** /futures/v1/historical/funding-rate-messages | 
[**futuresV1HistoricalFundingRateMessagesHour**](FuturesAPI.md#futuresv1historicalfundingratemessageshour) | **GET** /futures/v1/historical/funding-rate-messages/hour | 
[**futuresV1HistoricalFundingRateMinutes**](FuturesAPI.md#futuresv1historicalfundingrateminutes) | **GET** /futures/v1/historical/funding-rate/minutes | 
[**futuresV1HistoricalHours**](FuturesAPI.md#futuresv1historicalhours) | **GET** /futures/v1/historical/hours | 
[**futuresV1HistoricalMinutes**](FuturesAPI.md#futuresv1historicalminutes) | **GET** /futures/v1/historical/minutes | 
[**futuresV1HistoricalOpenInterestDays**](FuturesAPI.md#futuresv1historicalopeninterestdays) | **GET** /futures/v1/historical/open-interest/days | 
[**futuresV1HistoricalOpenInterestHours**](FuturesAPI.md#futuresv1historicalopeninteresthours) | **GET** /futures/v1/historical/open-interest/hours | 
[**futuresV1HistoricalOpenInterestMessages**](FuturesAPI.md#futuresv1historicalopeninterestmessages) | **GET** /futures/v1/historical/open-interest-messages | 
[**futuresV1HistoricalOpenInterestMessagesHour**](FuturesAPI.md#futuresv1historicalopeninterestmessageshour) | **GET** /futures/v1/historical/open-interest-messages/hour | 
[**futuresV1HistoricalOpenInterestMinutes**](FuturesAPI.md#futuresv1historicalopeninterestminutes) | **GET** /futures/v1/historical/open-interest/minutes | 
[**futuresV1HistoricalTrades**](FuturesAPI.md#futuresv1historicaltrades) | **GET** /futures/v1/historical/trades | 
[**futuresV1HistoricalTradesHour**](FuturesAPI.md#futuresv1historicaltradeshour) | **GET** /futures/v1/historical/trades/hour | 
[**futuresV1LatestFundingRateTick**](FuturesAPI.md#futuresv1latestfundingratetick) | **GET** /futures/v1/latest/funding-rate/tick | 
[**futuresV1LatestInstrumentMetadata**](FuturesAPI.md#futuresv1latestinstrumentmetadata) | **GET** /futures/v1/latest/instrument/metadata | 
[**futuresV1LatestOpenInterestTick**](FuturesAPI.md#futuresv1latestopeninteresttick) | **GET** /futures/v1/latest/open-interest/tick | 
[**futuresV1LatestTick**](FuturesAPI.md#futuresv1latesttick) | **GET** /futures/v1/latest/tick | 
[**futuresV1Markets**](FuturesAPI.md#futuresv1markets) | **GET** /futures/v1/markets | 
[**futuresV1MarketsInstruments**](FuturesAPI.md#futuresv1marketsinstruments) | **GET** /futures/v1/markets/instruments | 
[**futuresV1MarketsInstrumentsUnmapped**](FuturesAPI.md#futuresv1marketsinstrumentsunmapped) | **GET** /futures/v1/markets/instruments/unmapped | 
[**indexV1HistoricalDays**](FuturesAPI.md#indexv1historicaldays) | **GET** /index/v1/historical/days | 
[**indexV1HistoricalHours**](FuturesAPI.md#indexv1historicalhours) | **GET** /index/v1/historical/hours | 
[**indexV1HistoricalMessages**](FuturesAPI.md#indexv1historicalmessages) | **GET** /index/v1/historical/messages | 
[**indexV1HistoricalMessagesHour**](FuturesAPI.md#indexv1historicalmessageshour) | **GET** /index/v1/historical/messages/hour | 
[**indexV1HistoricalMinutes**](FuturesAPI.md#indexv1historicalminutes) | **GET** /index/v1/historical/minutes | 
[**indexV1LatestInstrumentMetadata**](FuturesAPI.md#indexv1latestinstrumentmetadata) | **GET** /index/v1/latest/instrument/metadata | 
[**indexV1LatestTick**](FuturesAPI.md#indexv1latesttick) | **GET** /index/v1/latest/tick | 
[**indexV1Markets**](FuturesAPI.md#indexv1markets) | **GET** /index/v1/markets | 
[**indexV1MarketsInstruments**](FuturesAPI.md#indexv1marketsinstruments) | **GET** /index/v1/markets/instruments | 
[**indexV1MarketsInstrumentsUnmapped**](FuturesAPI.md#indexv1marketsinstrumentsunmapped) | **GET** /index/v1/markets/instruments/unmapped | 


# **futuresV1HistoricalDays**
```swift
    open class func futuresV1HistoricalDays(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_futuresV1HistoricalDays? = nil, responseFormat: ResponseFormat_futuresV1HistoricalDays? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
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

FuturesAPI.futuresV1HistoricalDays(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalFundingRateDays**
```swift
    open class func futuresV1HistoricalFundingRateDays(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_futuresV1HistoricalFundingRateDays? = nil, responseFormat: ResponseFormat_futuresV1HistoricalFundingRateDays? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

FuturesAPI.futuresV1HistoricalFundingRateDays(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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
 **groups** | [**[String]**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalFundingRateHours**
```swift
    open class func futuresV1HistoricalFundingRateHours(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_futuresV1HistoricalFundingRateHours? = nil, responseFormat: ResponseFormat_futuresV1HistoricalFundingRateHours? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

FuturesAPI.futuresV1HistoricalFundingRateHours(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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
 **groups** | [**[String]**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalFundingRateMessages**
```swift
    open class func futuresV1HistoricalFundingRateMessages(market: String, instrument: String, afterTs: Int? = nil, lastCcseq: Int? = nil, limit: Int? = nil, mappingPriority: MappingPriority_futuresV1HistoricalFundingRateMessages? = nil, responseFormat: ResponseFormat_futuresV1HistoricalFundingRateMessages? = nil, return404OnEmptyResponse: Bool? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let afterTs = 987 // Int | Unix timestamp in seconds of the earliest funding rate message in the response (optional)
let lastCcseq = 987 // Int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to 0)
let limit = 987 // Int | The maximum number of funding rate messages to return (optional) (default to 100)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)
let return404OnEmptyResponse = true // Bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

FuturesAPI.futuresV1HistoricalFundingRateMessages(market: market, instrument: instrument, afterTs: afterTs, lastCcseq: lastCcseq, limit: limit, mappingPriority: mappingPriority, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse) { (response, error) in
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
 **afterTs** | **Int** | Unix timestamp in seconds of the earliest funding rate message in the response | [optional] 
 **lastCcseq** | **Int** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **Int** | The maximum number of funding rate messages to return | [optional] [default to 100]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]
 **return404OnEmptyResponse** | **Bool** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalFundingRateMessagesHour**
```swift
    open class func futuresV1HistoricalFundingRateMessagesHour(market: String, instrument: String, hourTs: Int? = nil, mappingPriority: MappingPriority_futuresV1HistoricalFundingRateMessagesHour? = nil, responseFormat: ResponseFormat_futuresV1HistoricalFundingRateMessagesHour? = nil, return404OnEmptyResponse: Bool? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let hourTs = 987 // Int | Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)
let return404OnEmptyResponse = true // Bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

FuturesAPI.futuresV1HistoricalFundingRateMessagesHour(market: market, instrument: instrument, hourTs: hourTs, mappingPriority: mappingPriority, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse) { (response, error) in
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
 **hourTs** | **Int** | Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour. | [optional] 
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]
 **return404OnEmptyResponse** | **Bool** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalFundingRateMinutes**
```swift
    open class func futuresV1HistoricalFundingRateMinutes(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_futuresV1HistoricalFundingRateMinutes? = nil, responseFormat: ResponseFormat_futuresV1HistoricalFundingRateMinutes? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

FuturesAPI.futuresV1HistoricalFundingRateMinutes(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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
 **groups** | [**[String]**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalHours**
```swift
    open class func futuresV1HistoricalHours(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_futuresV1HistoricalHours? = nil, responseFormat: ResponseFormat_futuresV1HistoricalHours? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
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

FuturesAPI.futuresV1HistoricalHours(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalMinutes**
```swift
    open class func futuresV1HistoricalMinutes(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_futuresV1HistoricalMinutes? = nil, responseFormat: ResponseFormat_futuresV1HistoricalMinutes? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
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

FuturesAPI.futuresV1HistoricalMinutes(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalOpenInterestDays**
```swift
    open class func futuresV1HistoricalOpenInterestDays(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_futuresV1HistoricalOpenInterestDays? = nil, responseFormat: ResponseFormat_futuresV1HistoricalOpenInterestDays? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

FuturesAPI.futuresV1HistoricalOpenInterestDays(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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
 **groups** | [**[String]**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalOpenInterestHours**
```swift
    open class func futuresV1HistoricalOpenInterestHours(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_futuresV1HistoricalOpenInterestHours? = nil, responseFormat: ResponseFormat_futuresV1HistoricalOpenInterestHours? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

FuturesAPI.futuresV1HistoricalOpenInterestHours(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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
 **groups** | [**[String]**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalOpenInterestMessages**
```swift
    open class func futuresV1HistoricalOpenInterestMessages(market: String, instrument: String, afterTs: Int? = nil, lastCcseq: Int? = nil, limit: Int? = nil, mappingPriority: MappingPriority_futuresV1HistoricalOpenInterestMessages? = nil, responseFormat: ResponseFormat_futuresV1HistoricalOpenInterestMessages? = nil, return404OnEmptyResponse: Bool? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let afterTs = 987 // Int | Unix timestamp in seconds of the earliest open interest message in the response (optional)
let lastCcseq = 987 // Int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to 0)
let limit = 987 // Int | The maximum number of open interest messages to return (optional) (default to 100)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)
let return404OnEmptyResponse = true // Bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

FuturesAPI.futuresV1HistoricalOpenInterestMessages(market: market, instrument: instrument, afterTs: afterTs, lastCcseq: lastCcseq, limit: limit, mappingPriority: mappingPriority, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse) { (response, error) in
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
 **afterTs** | **Int** | Unix timestamp in seconds of the earliest open interest message in the response | [optional] 
 **lastCcseq** | **Int** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **Int** | The maximum number of open interest messages to return | [optional] [default to 100]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]
 **return404OnEmptyResponse** | **Bool** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalOpenInterestMessagesHour**
```swift
    open class func futuresV1HistoricalOpenInterestMessagesHour(market: String, instrument: String, hourTs: Int? = nil, mappingPriority: MappingPriority_futuresV1HistoricalOpenInterestMessagesHour? = nil, responseFormat: ResponseFormat_futuresV1HistoricalOpenInterestMessagesHour? = nil, return404OnEmptyResponse: Bool? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let hourTs = 987 // Int | Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)
let return404OnEmptyResponse = true // Bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

FuturesAPI.futuresV1HistoricalOpenInterestMessagesHour(market: market, instrument: instrument, hourTs: hourTs, mappingPriority: mappingPriority, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse) { (response, error) in
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
 **hourTs** | **Int** | Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour. | [optional] 
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]
 **return404OnEmptyResponse** | **Bool** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalOpenInterestMinutes**
```swift
    open class func futuresV1HistoricalOpenInterestMinutes(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_futuresV1HistoricalOpenInterestMinutes? = nil, responseFormat: ResponseFormat_futuresV1HistoricalOpenInterestMinutes? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

FuturesAPI.futuresV1HistoricalOpenInterestMinutes(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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
 **groups** | [**[String]**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalTrades**
```swift
    open class func futuresV1HistoricalTrades(market: String, instrument: String, afterTs: Int? = nil, lastCcseq: Int? = nil, limit: Int? = nil, mappingPriority: MappingPriority_futuresV1HistoricalTrades? = nil, responseFormat: ResponseFormat_futuresV1HistoricalTrades? = nil, return404OnEmptyResponse: Bool? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
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

FuturesAPI.futuresV1HistoricalTrades(market: market, instrument: instrument, afterTs: afterTs, lastCcseq: lastCcseq, limit: limit, mappingPriority: mappingPriority, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse) { (response, error) in
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1HistoricalTradesHour**
```swift
    open class func futuresV1HistoricalTradesHour(market: String, instrument: String, hourTs: Int? = nil, mappingPriority: MappingPriority_futuresV1HistoricalTradesHour? = nil, responseFormat: ResponseFormat_futuresV1HistoricalTradesHour? = nil, return404OnEmptyResponse: Bool? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
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

FuturesAPI.futuresV1HistoricalTradesHour(market: market, instrument: instrument, hourTs: hourTs, mappingPriority: mappingPriority, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse) { (response, error) in
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1LatestFundingRateTick**
```swift
    open class func futuresV1LatestFundingRateTick(market: String, instruments: [String], groups: [String]? = nil, mappingPriority: MappingPriority_futuresV1LatestFundingRateTick? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instruments = ["inner_example"] // [String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)

FuturesAPI.futuresV1LatestFundingRateTick(market: market, instruments: instruments, groups: groups, mappingPriority: mappingPriority) { (response, error) in
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
 **groups** | [**[String]**](String.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1LatestInstrumentMetadata**
```swift
    open class func futuresV1LatestInstrumentMetadata(market: String, instruments: [String], groups: [String]? = nil, mappingPriority: MappingPriority_futuresV1LatestInstrumentMetadata? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instruments = ["inner_example"] // [String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)

FuturesAPI.futuresV1LatestInstrumentMetadata(market: market, instruments: instruments, groups: groups, mappingPriority: mappingPriority) { (response, error) in
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1LatestOpenInterestTick**
```swift
    open class func futuresV1LatestOpenInterestTick(market: String, instruments: [String], groups: [String]? = nil, mappingPriority: MappingPriority_futuresV1LatestOpenInterestTick? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instruments = ["inner_example"] // [String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)

FuturesAPI.futuresV1LatestOpenInterestTick(market: market, instruments: instruments, groups: groups, mappingPriority: mappingPriority) { (response, error) in
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
 **groups** | [**[String]**](String.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1LatestTick**
```swift
    open class func futuresV1LatestTick(market: String, instruments: [String], groups: [String]? = nil, mappingPriority: MappingPriority_futuresV1LatestTick? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instruments = ["inner_example"] // [String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)

FuturesAPI.futuresV1LatestTick(market: market, instruments: instruments, groups: groups, mappingPriority: mappingPriority) { (response, error) in
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
 **groups** | [**[String]**](String.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **futuresV1Markets**
```swift
    open class func futuresV1Markets(market: String? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from (optional) (default to "")

FuturesAPI.futuresV1Markets(market: market) { (response, error) in
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

# **futuresV1MarketsInstruments**
```swift
    open class func futuresV1MarketsInstruments(market: String? = nil, instrument: String? = nil, instrumentStatus: [InstrumentStatus_futuresV1MarketsInstruments]? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from (optional) (default to "")
let instrument = "instrument_example" // String | The mapped instrument to retrieve on a specific market. (optional) (default to "")
let instrumentStatus = ["instrumentStatus_example"] // [String] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

FuturesAPI.futuresV1MarketsInstruments(market: market, instrument: instrument, instrumentStatus: instrumentStatus) { (response, error) in
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

# **futuresV1MarketsInstrumentsUnmapped**
```swift
    open class func futuresV1MarketsInstrumentsUnmapped(market: String? = nil, instrument: String? = nil, instrumentStatus: [InstrumentStatus_futuresV1MarketsInstrumentsUnmapped]? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from (optional) (default to "")
let instrument = "instrument_example" // String | The unmapped instrument to retrieve on a specific market. (optional) (default to "")
let instrumentStatus = ["instrumentStatus_example"] // [String] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

FuturesAPI.futuresV1MarketsInstrumentsUnmapped(market: market, instrument: instrument, instrumentStatus: instrumentStatus) { (response, error) in
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

# **indexV1HistoricalDays**
```swift
    open class func indexV1HistoricalDays(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_indexV1HistoricalDays? = nil, responseFormat: ResponseFormat_indexV1HistoricalDays? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

FuturesAPI.indexV1HistoricalDays(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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
 **groups** | [**[String]**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1HistoricalHours**
```swift
    open class func indexV1HistoricalHours(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_indexV1HistoricalHours? = nil, responseFormat: ResponseFormat_indexV1HistoricalHours? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

FuturesAPI.indexV1HistoricalHours(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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
 **groups** | [**[String]**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1HistoricalMessages**
```swift
    open class func indexV1HistoricalMessages(market: String, instrument: String, afterTs: Int? = nil, lastCcseq: Int? = nil, limit: Int? = nil, mappingPriority: MappingPriority_indexV1HistoricalMessages? = nil, responseFormat: ResponseFormat_indexV1HistoricalMessages? = nil, return404OnEmptyResponse: Bool? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let afterTs = 987 // Int | Unix timestamp in seconds of the earliest index message in the response (optional)
let lastCcseq = 987 // Int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to 0)
let limit = 987 // Int | The maximum number of index messages to return (optional) (default to 100)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)
let return404OnEmptyResponse = true // Bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

FuturesAPI.indexV1HistoricalMessages(market: market, instrument: instrument, afterTs: afterTs, lastCcseq: lastCcseq, limit: limit, mappingPriority: mappingPriority, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse) { (response, error) in
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
 **afterTs** | **Int** | Unix timestamp in seconds of the earliest index message in the response | [optional] 
 **lastCcseq** | **Int** | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **limit** | **Int** | The maximum number of index messages to return | [optional] [default to 100]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]
 **return404OnEmptyResponse** | **Bool** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1HistoricalMessagesHour**
```swift
    open class func indexV1HistoricalMessagesHour(market: String, instrument: String, hourTs: Int? = nil, mappingPriority: MappingPriority_indexV1HistoricalMessagesHour? = nil, responseFormat: ResponseFormat_indexV1HistoricalMessagesHour? = nil, return404OnEmptyResponse: Bool? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let hourTs = 987 // Int | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)
let return404OnEmptyResponse = true // Bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

FuturesAPI.indexV1HistoricalMessagesHour(market: market, instrument: instrument, hourTs: hourTs, mappingPriority: mappingPriority, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse) { (response, error) in
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
 **hourTs** | **Int** | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | [optional] 
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]
 **return404OnEmptyResponse** | **Bool** | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1HistoricalMinutes**
```swift
    open class func indexV1HistoricalMinutes(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_indexV1HistoricalMinutes? = nil, responseFormat: ResponseFormat_indexV1HistoricalMinutes? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
let limit = 987 // Int | The number of data points to return (optional) (default to 30)
let toTs = 987 // Int | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
let aggregate = 987 // Int | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
let fill = true // Bool | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to true)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)

FuturesAPI.indexV1HistoricalMinutes(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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
 **groups** | [**[String]**](String.md) | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **limit** | **Int** | The number of data points to return | [optional] [default to 30]
 **toTs** | **Int** | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **aggregate** | **Int** | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **fill** | **Bool** | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to true]
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **responseFormat** | **String** | The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to .json]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1LatestInstrumentMetadata**
```swift
    open class func indexV1LatestInstrumentMetadata(market: String, instruments: [String], groups: [String]? = nil, mappingPriority: MappingPriority_indexV1LatestInstrumentMetadata? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instruments = ["inner_example"] // [String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)

FuturesAPI.indexV1LatestInstrumentMetadata(market: market, instruments: instruments, groups: groups, mappingPriority: mappingPriority) { (response, error) in
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

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1LatestTick**
```swift
    open class func indexV1LatestTick(market: String, instruments: [String], groups: [String]? = nil, mappingPriority: MappingPriority_indexV1LatestTick? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instruments = ["inner_example"] // [String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)

FuturesAPI.indexV1LatestTick(market: market, instruments: instruments, groups: groups, mappingPriority: mappingPriority) { (response, error) in
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
 **groups** | [**[String]**](String.md) | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexV1Markets**
```swift
    open class func indexV1Markets(market: String? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from (optional) (default to "")

FuturesAPI.indexV1Markets(market: market) { (response, error) in
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

# **indexV1MarketsInstruments**
```swift
    open class func indexV1MarketsInstruments(market: String? = nil, instrument: String? = nil, instrumentStatus: [InstrumentStatus_indexV1MarketsInstruments]? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from (optional) (default to "")
let instrument = "instrument_example" // String | The mapped instrument to retrieve on a specific market. (optional) (default to "")
let instrumentStatus = ["instrumentStatus_example"] // [String] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

FuturesAPI.indexV1MarketsInstruments(market: market, instrument: instrument, instrumentStatus: instrumentStatus) { (response, error) in
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

# **indexV1MarketsInstrumentsUnmapped**
```swift
    open class func indexV1MarketsInstrumentsUnmapped(market: String? = nil, instrument: String? = nil, instrumentStatus: [InstrumentStatus_indexV1MarketsInstrumentsUnmapped]? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from (optional) (default to "")
let instrument = "instrument_example" // String | The unmapped instrument to retrieve on a specific market. (optional) (default to "")
let instrumentStatus = ["instrumentStatus_example"] // [String] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

FuturesAPI.indexV1MarketsInstrumentsUnmapped(market: market, instrument: instrument, instrumentStatus: instrumentStatus) { (response, error) in
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

