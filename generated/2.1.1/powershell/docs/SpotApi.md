# PSOpenAPITools.PSOpenAPITools/Api.SpotApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-SpotV1HistoricalDays**](SpotApi.md#Invoke-SpotV1HistoricalDays) | **GET** /spot/v1/historical/days | 
[**Invoke-SpotV1HistoricalHours**](SpotApi.md#Invoke-SpotV1HistoricalHours) | **GET** /spot/v1/historical/hours | 
[**Invoke-SpotV1HistoricalMinutes**](SpotApi.md#Invoke-SpotV1HistoricalMinutes) | **GET** /spot/v1/historical/minutes | 
[**Invoke-SpotV1HistoricalOrderbookL2SnapshotMinute**](SpotApi.md#Invoke-SpotV1HistoricalOrderbookL2SnapshotMinute) | **GET** /spot/v1/historical/orderbook/l2/snapshot/minute | 
[**Invoke-SpotV1HistoricalTrades**](SpotApi.md#Invoke-SpotV1HistoricalTrades) | **GET** /spot/v1/historical/trades | 
[**Invoke-SpotV1HistoricalTradesHour**](SpotApi.md#Invoke-SpotV1HistoricalTradesHour) | **GET** /spot/v1/historical/trades/hour | 
[**Invoke-SpotV1LatestInstrumentMetadata**](SpotApi.md#Invoke-SpotV1LatestInstrumentMetadata) | **GET** /spot/v1/latest/instrument/metadata | 
[**Invoke-SpotV1LatestTick**](SpotApi.md#Invoke-SpotV1LatestTick) | **GET** /spot/v1/latest/tick | 
[**Invoke-SpotV1Markets**](SpotApi.md#Invoke-SpotV1Markets) | **GET** /spot/v1/markets | 
[**Invoke-SpotV1MarketsInstruments**](SpotApi.md#Invoke-SpotV1MarketsInstruments) | **GET** /spot/v1/markets/instruments | 
[**Invoke-SpotV1MarketsInstrumentsUnmapped**](SpotApi.md#Invoke-SpotV1MarketsInstrumentsUnmapped) | **GET** /spot/v1/markets/instruments/unmapped | 


<a name="Invoke-SpotV1HistoricalDays"></a>
# **Invoke-SpotV1HistoricalDays**
> SPOTINSTRUMENTHISTODATARESPONSE Invoke-SpotV1HistoricalDays<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instrument] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groups] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ToTs] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Aggregate] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Fill] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingPriority] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResponseFormat] <String><br>



### Example
```powershell
$Market = "MyMarket" # String | The exchange to obtain data from
$Instrument = "MyInstrument" # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
$Groups = "MyGroups" # String[] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional)
$Limit = 56 # Int32 | The number of data points to return (optional) (default to 30)
$ToTs = 56 # Int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
$Aggregate = 56 # Int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
$Fill = $true # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to $true)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
$ResponseFormat = "JSON" # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

try {
    $Result = Invoke-SpotV1HistoricalDays -Market $Market -Instrument $Instrument -Groups $Groups -Limit $Limit -ToTs $ToTs -Aggregate $Aggregate -Fill $Fill -MappingPriority $MappingPriority -ResponseFormat $ResponseFormat
} catch {
    Write-Host ("Exception occurred when calling Invoke-SpotV1HistoricalDays: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **Groups** | [**String[]**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
 **Limit** | **Int32**| The number of data points to return | [optional] [default to 30]
 **ToTs** | **Int32**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **Aggregate** | **Int32**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **Fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to $true]
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **ResponseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SpotV1HistoricalHours"></a>
# **Invoke-SpotV1HistoricalHours**
> SPOTINSTRUMENTHISTODATARESPONSE Invoke-SpotV1HistoricalHours<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instrument] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groups] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ToTs] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Aggregate] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Fill] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingPriority] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResponseFormat] <String><br>



### Example
```powershell
$Market = "MyMarket" # String | The exchange to obtain data from
$Instrument = "MyInstrument" # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
$Groups = "MyGroups" # String[] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional)
$Limit = 56 # Int32 | The number of data points to return (optional) (default to 30)
$ToTs = 56 # Int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
$Aggregate = 56 # Int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
$Fill = $true # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to $true)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
$ResponseFormat = "JSON" # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

try {
    $Result = Invoke-SpotV1HistoricalHours -Market $Market -Instrument $Instrument -Groups $Groups -Limit $Limit -ToTs $ToTs -Aggregate $Aggregate -Fill $Fill -MappingPriority $MappingPriority -ResponseFormat $ResponseFormat
} catch {
    Write-Host ("Exception occurred when calling Invoke-SpotV1HistoricalHours: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **Groups** | [**String[]**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
 **Limit** | **Int32**| The number of data points to return | [optional] [default to 30]
 **ToTs** | **Int32**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **Aggregate** | **Int32**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **Fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to $true]
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **ResponseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SpotV1HistoricalMinutes"></a>
# **Invoke-SpotV1HistoricalMinutes**
> SPOTINSTRUMENTHISTODATARESPONSE Invoke-SpotV1HistoricalMinutes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instrument] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groups] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ToTs] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Aggregate] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Fill] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingPriority] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResponseFormat] <String><br>



### Example
```powershell
$Market = "MyMarket" # String | The exchange to obtain data from
$Instrument = "MyInstrument" # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
$Groups = "MyGroups" # String[] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME (optional)
$Limit = 56 # Int32 | The number of data points to return (optional) (default to 30)
$ToTs = 56 # Int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
$Aggregate = 56 # Int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
$Fill = $true # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to $true)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
$ResponseFormat = "JSON" # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

try {
    $Result = Invoke-SpotV1HistoricalMinutes -Market $Market -Instrument $Instrument -Groups $Groups -Limit $Limit -ToTs $ToTs -Aggregate $Aggregate -Fill $Fill -MappingPriority $MappingPriority -ResponseFormat $ResponseFormat
} catch {
    Write-Host ("Exception occurred when calling Invoke-SpotV1HistoricalMinutes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **Groups** | [**String[]**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME | [optional] 
 **Limit** | **Int32**| The number of data points to return | [optional] [default to 30]
 **ToTs** | **Int32**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **Aggregate** | **Int32**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **Fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to $true]
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **ResponseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]

### Return type

[**SPOTINSTRUMENTHISTODATARESPONSE**](SPOTINSTRUMENTHISTODATARESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SpotV1HistoricalOrderbookL2SnapshotMinute"></a>
# **Invoke-SpotV1HistoricalOrderbookL2SnapshotMinute**
> GENERICRESPONSE Invoke-SpotV1HistoricalOrderbookL2SnapshotMinute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instrument] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MinuteTs] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Depth] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingPriority] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResponseFormat] <String><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: api_key_header
$Configuration.ApiKey.authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.authorization = "Bearer"

# Configure API key authorization: api_key_query
$Configuration.ApiKey.api_key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.api_key = "Bearer"

$Market = "MyMarket" # String | The exchange to obtain data from
$Instrument = "MyInstrument" # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
$MinuteTs = 56 # Int32 | Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
$Depth = 56 # Int32 | The number of top bids and asks to return. (optional) (default to 50)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
$ResponseFormat = "JSON" # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

try {
    $Result = Invoke-SpotV1HistoricalOrderbookL2SnapshotMinute -Market $Market -Instrument $Instrument -MinuteTs $MinuteTs -Depth $Depth -MappingPriority $MappingPriority -ResponseFormat $ResponseFormat
} catch {
    Write-Host ("Exception occurred when calling Invoke-SpotV1HistoricalOrderbookL2SnapshotMinute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **MinuteTs** | **Int32**| Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. | 
 **Depth** | **Int32**| The number of top bids and asks to return. | [optional] [default to 50]
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **ResponseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SpotV1HistoricalTrades"></a>
# **Invoke-SpotV1HistoricalTrades**
> SPOTINSTRUMENTTRADERESPONSE Invoke-SpotV1HistoricalTrades<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instrument] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AfterTs] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LastCcseq] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingPriority] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResponseFormat] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Return404OnEmptyResponse] <System.Nullable[Boolean]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: api_key_header
$Configuration.ApiKey.authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.authorization = "Bearer"

# Configure API key authorization: api_key_query
$Configuration.ApiKey.api_key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.api_key = "Bearer"

$Market = "MyMarket" # String | The exchange to obtain data from
$Instrument = "MyInstrument" # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
$AfterTs = 56 # Int32 | Unix timestamp in seconds of the earliest trade in the response. (optional)
$LastCcseq = 56 # Int32 | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to 0)
$Limit = 56 # Int32 | The maximum number of trades to return (optional) (default to 100)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
$ResponseFormat = "JSON" # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")
$Return404OnEmptyResponse = $true # Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to $false)

try {
    $Result = Invoke-SpotV1HistoricalTrades -Market $Market -Instrument $Instrument -AfterTs $AfterTs -LastCcseq $LastCcseq -Limit $Limit -MappingPriority $MappingPriority -ResponseFormat $ResponseFormat -Return404OnEmptyResponse $Return404OnEmptyResponse
} catch {
    Write-Host ("Exception occurred when calling Invoke-SpotV1HistoricalTrades: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **AfterTs** | **Int32**| Unix timestamp in seconds of the earliest trade in the response. | [optional] 
 **LastCcseq** | **Int32**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **Limit** | **Int32**| The maximum number of trades to return | [optional] [default to 100]
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **ResponseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]
 **Return404OnEmptyResponse** | **Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to $false]

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md) (PSCustomObject)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SpotV1HistoricalTradesHour"></a>
# **Invoke-SpotV1HistoricalTradesHour**
> SPOTINSTRUMENTTRADERESPONSE Invoke-SpotV1HistoricalTradesHour<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instrument] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HourTs] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingPriority] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResponseFormat] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Return404OnEmptyResponse] <System.Nullable[Boolean]><br>



### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: api_key_header
$Configuration.ApiKey.authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.authorization = "Bearer"

# Configure API key authorization: api_key_query
$Configuration.ApiKey.api_key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.api_key = "Bearer"

$Market = "MyMarket" # String | The exchange to obtain data from
$Instrument = "MyInstrument" # String | The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
$HourTs = 56 # Int32 | Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. (optional)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
$ResponseFormat = "JSON" # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")
$Return404OnEmptyResponse = $true # Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to $false)

try {
    $Result = Invoke-SpotV1HistoricalTradesHour -Market $Market -Instrument $Instrument -HourTs $HourTs -MappingPriority $MappingPriority -ResponseFormat $ResponseFormat -Return404OnEmptyResponse $Return404OnEmptyResponse
} catch {
    Write-Host ("Exception occurred when calling Invoke-SpotV1HistoricalTradesHour: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **HourTs** | **Int32**| Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. | [optional] 
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **ResponseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]
 **Return404OnEmptyResponse** | **Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to $false]

### Return type

[**SPOTINSTRUMENTTRADERESPONSE**](SPOTINSTRUMENTTRADERESPONSE.md) (PSCustomObject)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SpotV1LatestInstrumentMetadata"></a>
# **Invoke-SpotV1LatestInstrumentMetadata**
> SPOTINSTRUMENTMETADATARESPONSE Invoke-SpotV1LatestInstrumentMetadata<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instruments] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groups] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingPriority] <String><br>



### Example
```powershell
$Market = "coinbase" # String | The exchange to obtain data from
$Instruments = "MyInstruments" # String[] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
$Groups = "MyGroups" # String[] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")

try {
    $Result = Invoke-SpotV1LatestInstrumentMetadata -Market $Market -Instruments $Instruments -Groups $Groups -MappingPriority $MappingPriority
} catch {
    Write-Host ("Exception occurred when calling Invoke-SpotV1LatestInstrumentMetadata: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instruments** | [**String[]**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **Groups** | [**String[]**](String.md)| When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE | [optional] 
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]

### Return type

[**SPOTINSTRUMENTMETADATARESPONSE**](SPOTINSTRUMENTMETADATARESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SpotV1LatestTick"></a>
# **Invoke-SpotV1LatestTick**
> SPOTINSTRUMENTMARKETDATARESPONSE Invoke-SpotV1LatestTick<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instruments] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groups] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingPriority] <String><br>



### Example
```powershell
$Market = "MyMarket" # String | The exchange to obtain data from
$Instruments = "MyInstruments" # String[] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
$Groups = "MyGroups" # String[] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")

try {
    $Result = Invoke-SpotV1LatestTick -Market $Market -Instruments $Instruments -Groups $Groups -MappingPriority $MappingPriority
} catch {
    Write-Host ("Exception occurred when calling Invoke-SpotV1LatestTick: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instruments** | [**String[]**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **Groups** | [**String[]**](String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]

### Return type

[**SPOTINSTRUMENTMARKETDATARESPONSE**](SPOTINSTRUMENTMARKETDATARESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SpotV1Markets"></a>
# **Invoke-SpotV1Markets**
> GENERICRESPONSE Invoke-SpotV1Markets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>



### Example
```powershell
$Market = "MyMarket" # String | The exchange to obtain data from (optional) (default to "")

try {
    $Result = Invoke-SpotV1Markets -Market $Market
} catch {
    Write-Host ("Exception occurred when calling Invoke-SpotV1Markets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SpotV1MarketsInstruments"></a>
# **Invoke-SpotV1MarketsInstruments**
> GENERICRESPONSE Invoke-SpotV1MarketsInstruments<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instrument] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InstrumentStatus] <String[]><br>



### Example
```powershell
$Market = "MyMarket" # String | The exchange to obtain data from (optional) (default to "")
$Instrument = "MyInstrument" # String | The mapped instrument to retrieve on a specific market. (optional) (default to "")
$InstrumentStatus = "ACTIVE" # String[] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

try {
    $Result = Invoke-SpotV1MarketsInstruments -Market $Market -Instrument $Instrument -InstrumentStatus $InstrumentStatus
} catch {
    Write-Host ("Exception occurred when calling Invoke-SpotV1MarketsInstruments: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **Instrument** | **String**| The mapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **InstrumentStatus** | [**String[]**](String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-SpotV1MarketsInstrumentsUnmapped"></a>
# **Invoke-SpotV1MarketsInstrumentsUnmapped**
> GENERICRESPONSE Invoke-SpotV1MarketsInstrumentsUnmapped<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instrument] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InstrumentStatus] <String[]><br>



### Example
```powershell
$Market = "MyMarket" # String | The exchange to obtain data from (optional) (default to "")
$Instrument = "MyInstrument" # String | The unmapped instrument to retrieve on a specific market. (optional) (default to "")
$InstrumentStatus = "ACTIVE" # String[] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

try {
    $Result = Invoke-SpotV1MarketsInstrumentsUnmapped -Market $Market -Instrument $Instrument -InstrumentStatus $InstrumentStatus
} catch {
    Write-Host ("Exception occurred when calling Invoke-SpotV1MarketsInstrumentsUnmapped: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | [optional] [default to &quot;&quot;]
 **Instrument** | **String**| The unmapped instrument to retrieve on a specific market. | [optional] [default to &quot;&quot;]
 **InstrumentStatus** | [**String[]**](String.md)| The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED | [optional] 

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

