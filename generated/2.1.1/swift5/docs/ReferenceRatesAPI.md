# ReferenceRatesAPI

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**indexCcV1HistoricalDays**](ReferenceRatesAPI.md#indexccv1historicaldays) | **GET** /index/cc/v1/historical/days | 
[**indexCcV1HistoricalHours**](ReferenceRatesAPI.md#indexccv1historicalhours) | **GET** /index/cc/v1/historical/hours | 
[**indexCcV1HistoricalMessages**](ReferenceRatesAPI.md#indexccv1historicalmessages) | **GET** /index/cc/v1/historical/messages | 
[**indexCcV1HistoricalMessagesHour**](ReferenceRatesAPI.md#indexccv1historicalmessageshour) | **GET** /index/cc/v1/historical/messages/hour | 
[**indexCcV1HistoricalMinutes**](ReferenceRatesAPI.md#indexccv1historicalminutes) | **GET** /index/cc/v1/historical/minutes | 
[**indexCcV1LatestInstrumentMetadata**](ReferenceRatesAPI.md#indexccv1latestinstrumentmetadata) | **GET** /index/cc/v1/latest/instrument/metadata | 
[**indexCcV1LatestTick**](ReferenceRatesAPI.md#indexccv1latesttick) | **GET** /index/cc/v1/latest/tick | 
[**indexCcV1Markets**](ReferenceRatesAPI.md#indexccv1markets) | **GET** /index/cc/v1/markets | 
[**indexCcV1MarketsInstruments**](ReferenceRatesAPI.md#indexccv1marketsinstruments) | **GET** /index/cc/v1/markets/instruments | 
[**indexCcV1MarketsInstrumentsUnmapped**](ReferenceRatesAPI.md#indexccv1marketsinstrumentsunmapped) | **GET** /index/cc/v1/markets/instruments/unmapped | 


# **indexCcV1HistoricalDays**
```swift
    open class func indexCcV1HistoricalDays(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_indexCcV1HistoricalDays? = nil, responseFormat: ResponseFormat_indexCcV1HistoricalDays? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
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

ReferenceRatesAPI.indexCcV1HistoricalDays(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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

# **indexCcV1HistoricalHours**
```swift
    open class func indexCcV1HistoricalHours(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_indexCcV1HistoricalHours? = nil, responseFormat: ResponseFormat_indexCcV1HistoricalHours? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
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

ReferenceRatesAPI.indexCcV1HistoricalHours(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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

# **indexCcV1HistoricalMessages**
```swift
    open class func indexCcV1HistoricalMessages(market: String, instrument: String, afterTs: Int? = nil, lastCcseq: Int? = nil, mappingPriority: MappingPriority_indexCcV1HistoricalMessages? = nil, limit: Int? = nil, responseFormat: ResponseFormat_indexCcV1HistoricalMessages? = nil, return404OnEmptyResponse: Bool? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instrument = "instrument_example" // String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
let afterTs = 987 // Int | Unix timestamp in seconds of the earliest index message in the response (optional)
let lastCcseq = 987 // Int | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to 0)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)
let limit = 987 // Int | The maximum number of index messages to return (optional) (default to 100)
let responseFormat = "responseFormat_example" // String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to .json)
let return404OnEmptyResponse = true // Bool | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to false)

ReferenceRatesAPI.indexCcV1HistoricalMessages(market: market, instrument: instrument, afterTs: afterTs, lastCcseq: lastCcseq, mappingPriority: mappingPriority, limit: limit, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse) { (response, error) in
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
 **mappingPriority** | **String** | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to .checkMappedFirst]
 **limit** | **Int** | The maximum number of index messages to return | [optional] [default to 100]
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

# **indexCcV1HistoricalMessagesHour**
```swift
    open class func indexCcV1HistoricalMessagesHour(market: String, instrument: String, hourTs: Int? = nil, mappingPriority: MappingPriority_indexCcV1HistoricalMessagesHour? = nil, responseFormat: ResponseFormat_indexCcV1HistoricalMessagesHour? = nil, return404OnEmptyResponse: Bool? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
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

ReferenceRatesAPI.indexCcV1HistoricalMessagesHour(market: market, instrument: instrument, hourTs: hourTs, mappingPriority: mappingPriority, responseFormat: responseFormat, return404OnEmptyResponse: return404OnEmptyResponse) { (response, error) in
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

# **indexCcV1HistoricalMinutes**
```swift
    open class func indexCcV1HistoricalMinutes(market: String, instrument: String, groups: [String]? = nil, limit: Int? = nil, toTs: Int? = nil, aggregate: Int? = nil, fill: Bool? = nil, mappingPriority: MappingPriority_indexCcV1HistoricalMinutes? = nil, responseFormat: ResponseFormat_indexCcV1HistoricalMinutes? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
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

ReferenceRatesAPI.indexCcV1HistoricalMinutes(market: market, instrument: instrument, groups: groups, limit: limit, toTs: toTs, aggregate: aggregate, fill: fill, mappingPriority: mappingPriority, responseFormat: responseFormat) { (response, error) in
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

# **indexCcV1LatestInstrumentMetadata**
```swift
    open class func indexCcV1LatestInstrumentMetadata(market: String, instruments: [String], groups: [String]? = nil, mappingPriority: MappingPriority_indexCcV1LatestInstrumentMetadata? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instruments = ["inner_example"] // [String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)

ReferenceRatesAPI.indexCcV1LatestInstrumentMetadata(market: market, instruments: instruments, groups: groups, mappingPriority: mappingPriority) { (response, error) in
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

# **indexCcV1LatestTick**
```swift
    open class func indexCcV1LatestTick(market: String, instruments: [String], groups: [String]? = nil, mappingPriority: MappingPriority_indexCcV1LatestTick? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from
let instruments = ["inner_example"] // [String] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
let groups = ["inner_example"] // [String] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
let mappingPriority = "mappingPriority_example" // String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to .checkMappedFirst)

ReferenceRatesAPI.indexCcV1LatestTick(market: market, instruments: instruments, groups: groups, mappingPriority: mappingPriority) { (response, error) in
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

# **indexCcV1Markets**
```swift
    open class func indexCcV1Markets(market: String? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from (optional) (default to "")

ReferenceRatesAPI.indexCcV1Markets(market: market) { (response, error) in
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

# **indexCcV1MarketsInstruments**
```swift
    open class func indexCcV1MarketsInstruments(market: String? = nil, instrument: String? = nil, instrumentStatus: [InstrumentStatus_indexCcV1MarketsInstruments]? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from (optional) (default to "")
let instrument = "instrument_example" // String | The mapped instrument to retrieve on a specific market. (optional) (default to "")
let instrumentStatus = ["instrumentStatus_example"] // [String] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

ReferenceRatesAPI.indexCcV1MarketsInstruments(market: market, instrument: instrument, instrumentStatus: instrumentStatus) { (response, error) in
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

# **indexCcV1MarketsInstrumentsUnmapped**
```swift
    open class func indexCcV1MarketsInstrumentsUnmapped(market: String? = nil, instrument: String? = nil, instrumentStatus: [InstrumentStatus_indexCcV1MarketsInstrumentsUnmapped]? = nil, completion: @escaping (_ data: GENERICRESPONSE?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let market = "market_example" // String | The exchange to obtain data from (optional) (default to "")
let instrument = "instrument_example" // String | The unmapped instrument to retrieve on a specific market. (optional) (default to "")
let instrumentStatus = ["instrumentStatus_example"] // [String] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

ReferenceRatesAPI.indexCcV1MarketsInstrumentsUnmapped(market: market, instrument: instrument, instrumentStatus: instrumentStatus) { (response, error) in
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

