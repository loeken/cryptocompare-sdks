# PSOpenAPITools.PSOpenAPITools/Api.ReferenceRatesApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ConvertTo-dexCcV1HistoricalDays**](ReferenceRatesApi.md#ConvertTo-dexCcV1HistoricalDays) | **GET** /index/cc/v1/historical/days | 
[**ConvertTo-dexCcV1HistoricalHours**](ReferenceRatesApi.md#ConvertTo-dexCcV1HistoricalHours) | **GET** /index/cc/v1/historical/hours | 
[**ConvertTo-dexCcV1HistoricalMessages**](ReferenceRatesApi.md#ConvertTo-dexCcV1HistoricalMessages) | **GET** /index/cc/v1/historical/messages | 
[**ConvertTo-dexCcV1HistoricalMessagesHour**](ReferenceRatesApi.md#ConvertTo-dexCcV1HistoricalMessagesHour) | **GET** /index/cc/v1/historical/messages/hour | 
[**ConvertTo-dexCcV1HistoricalMinutes**](ReferenceRatesApi.md#ConvertTo-dexCcV1HistoricalMinutes) | **GET** /index/cc/v1/historical/minutes | 
[**ConvertTo-dexCcV1LatestInstrumentMetadata**](ReferenceRatesApi.md#ConvertTo-dexCcV1LatestInstrumentMetadata) | **GET** /index/cc/v1/latest/instrument/metadata | 
[**ConvertTo-dexCcV1LatestTick**](ReferenceRatesApi.md#ConvertTo-dexCcV1LatestTick) | **GET** /index/cc/v1/latest/tick | 
[**ConvertTo-dexCcV1Markets**](ReferenceRatesApi.md#ConvertTo-dexCcV1Markets) | **GET** /index/cc/v1/markets | 
[**ConvertTo-dexCcV1MarketsInstruments**](ReferenceRatesApi.md#ConvertTo-dexCcV1MarketsInstruments) | **GET** /index/cc/v1/markets/instruments | 
[**ConvertTo-dexCcV1MarketsInstrumentsUnmapped**](ReferenceRatesApi.md#ConvertTo-dexCcV1MarketsInstrumentsUnmapped) | **GET** /index/cc/v1/markets/instruments/unmapped | 


<a name="ConvertTo-dexCcV1HistoricalDays"></a>
# **ConvertTo-dexCcV1HistoricalDays**
> GENERICRESPONSE ConvertTo-dexCcV1HistoricalDays<br>
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
$Groups = "MyGroups" # String[] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
$Limit = 56 # Int32 | The number of data points to return (optional) (default to 30)
$ToTs = 56 # Int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
$Aggregate = 56 # Int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
$Fill = $true # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to $true)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
$ResponseFormat = "JSON" # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

try {
    $Result = ConvertTo-dexCcV1HistoricalDays -Market $Market -Instrument $Instrument -Groups $Groups -Limit $Limit -ToTs $ToTs -Aggregate $Aggregate -Fill $Fill -MappingPriority $MappingPriority -ResponseFormat $ResponseFormat
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-dexCcV1HistoricalDays: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **Groups** | [**String[]**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **Limit** | **Int32**| The number of data points to return | [optional] [default to 30]
 **ToTs** | **Int32**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **Aggregate** | **Int32**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **Fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to $true]
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **ResponseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ConvertTo-dexCcV1HistoricalHours"></a>
# **ConvertTo-dexCcV1HistoricalHours**
> GENERICRESPONSE ConvertTo-dexCcV1HistoricalHours<br>
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
$Groups = "MyGroups" # String[] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
$Limit = 56 # Int32 | The number of data points to return (optional) (default to 30)
$ToTs = 56 # Int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
$Aggregate = 56 # Int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
$Fill = $true # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to $true)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
$ResponseFormat = "JSON" # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

try {
    $Result = ConvertTo-dexCcV1HistoricalHours -Market $Market -Instrument $Instrument -Groups $Groups -Limit $Limit -ToTs $ToTs -Aggregate $Aggregate -Fill $Fill -MappingPriority $MappingPriority -ResponseFormat $ResponseFormat
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-dexCcV1HistoricalHours: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **Groups** | [**String[]**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **Limit** | **Int32**| The number of data points to return | [optional] [default to 30]
 **ToTs** | **Int32**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **Aggregate** | **Int32**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **Fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to $true]
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **ResponseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ConvertTo-dexCcV1HistoricalMessages"></a>
# **ConvertTo-dexCcV1HistoricalMessages**
> GENERICRESPONSE ConvertTo-dexCcV1HistoricalMessages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instrument] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AfterTs] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LastCcseq] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingPriority] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
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
$AfterTs = 56 # Int32 | Unix timestamp in seconds of the earliest index message in the response (optional)
$LastCcseq = 56 # Int32 | The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. (optional) (default to 0)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
$Limit = 56 # Int32 | The maximum number of index messages to return (optional) (default to 100)
$ResponseFormat = "JSON" # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")
$Return404OnEmptyResponse = $true # Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to $false)

try {
    $Result = ConvertTo-dexCcV1HistoricalMessages -Market $Market -Instrument $Instrument -AfterTs $AfterTs -LastCcseq $LastCcseq -MappingPriority $MappingPriority -Limit $Limit -ResponseFormat $ResponseFormat -Return404OnEmptyResponse $Return404OnEmptyResponse
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-dexCcV1HistoricalMessages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **AfterTs** | **Int32**| Unix timestamp in seconds of the earliest index message in the response | [optional] 
 **LastCcseq** | **Int32**| The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. | [optional] [default to 0]
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **Limit** | **Int32**| The maximum number of index messages to return | [optional] [default to 100]
 **ResponseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]
 **Return404OnEmptyResponse** | **Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to $false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ConvertTo-dexCcV1HistoricalMessagesHour"></a>
# **ConvertTo-dexCcV1HistoricalMessagesHour**
> GENERICRESPONSE ConvertTo-dexCcV1HistoricalMessagesHour<br>
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
$HourTs = 56 # Int32 | Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. (optional)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
$ResponseFormat = "JSON" # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")
$Return404OnEmptyResponse = $true # Boolean | If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. (optional) (default to $false)

try {
    $Result = ConvertTo-dexCcV1HistoricalMessagesHour -Market $Market -Instrument $Instrument -HourTs $HourTs -MappingPriority $MappingPriority -ResponseFormat $ResponseFormat -Return404OnEmptyResponse $Return404OnEmptyResponse
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-dexCcV1HistoricalMessagesHour: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **HourTs** | **Int32**| Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour. | [optional] 
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **ResponseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]
 **Return404OnEmptyResponse** | **Boolean**| If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. | [optional] [default to $false]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

[api_key_header](../README.md#api_key_header), [api_key_query](../README.md#api_key_query)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ConvertTo-dexCcV1HistoricalMinutes"></a>
# **ConvertTo-dexCcV1HistoricalMinutes**
> GENERICRESPONSE ConvertTo-dexCcV1HistoricalMinutes<br>
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
$Groups = "MyGroups" # String[] | When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME (optional)
$Limit = 56 # Int32 | The number of data points to return (optional) (default to 30)
$ToTs = 56 # Int32 | Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} (optional)
$Aggregate = 56 # Int32 | The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional) (default to 1)
$Fill = $true # Boolean | Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional) (default to $true)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")
$ResponseFormat = "JSON" # String | The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional) (default to "JSON")

try {
    $Result = ConvertTo-dexCcV1HistoricalMinutes -Market $Market -Instrument $Instrument -Groups $Groups -Limit $Limit -ToTs $ToTs -Aggregate $Aggregate -Fill $Fill -MappingPriority $MappingPriority -ResponseFormat $ResponseFormat
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-dexCcV1HistoricalMinutes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instrument** | **String**| The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. | 
 **Groups** | [**String[]**](String.md)| When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME | [optional] 
 **Limit** | **Int32**| The number of data points to return | [optional] [default to 30]
 **ToTs** | **Int32**| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional] 
 **Aggregate** | **Int32**| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional] [default to 1]
 **Fill** | **Boolean**| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional] [default to $true]
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]
 **ResponseFormat** | **String**| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional] [default to &quot;JSON&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ConvertTo-dexCcV1LatestInstrumentMetadata"></a>
# **ConvertTo-dexCcV1LatestInstrumentMetadata**
> GENERICRESPONSE ConvertTo-dexCcV1LatestInstrumentMetadata<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instruments] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groups] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingPriority] <String><br>



### Example
```powershell
$Market = "MyMarket" # String | The exchange to obtain data from
$Instruments = "MyInstruments" # String[] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
$Groups = "MyGroups" # String[] | When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE (optional)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")

try {
    $Result = ConvertTo-dexCcV1LatestInstrumentMetadata -Market $Market -Instruments $Instruments -Groups $Groups -MappingPriority $MappingPriority
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-dexCcV1LatestInstrumentMetadata: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ConvertTo-dexCcV1LatestTick"></a>
# **ConvertTo-dexCcV1LatestTick**
> GENERICRESPONSE ConvertTo-dexCcV1LatestTick<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instruments] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groups] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MappingPriority] <String><br>



### Example
```powershell
$Market = "MyMarket" # String | The exchange to obtain data from
$Instruments = "MyInstruments" # String[] | A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
$Groups = "MyGroups" # String[] | When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME (optional)
$MappingPriority = "CHECK_MAPPED_FIRST" # String | The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST (optional) (default to "CHECK_MAPPED_FIRST")

try {
    $Result = ConvertTo-dexCcV1LatestTick -Market $Market -Instruments $Instruments -Groups $Groups -MappingPriority $MappingPriority
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-dexCcV1LatestTick: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Market** | **String**| The exchange to obtain data from | 
 **Instruments** | [**String[]**](String.md)| A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. | 
 **Groups** | [**String[]**](String.md)| When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME | [optional] 
 **MappingPriority** | **String**| The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST | [optional] [default to &quot;CHECK_MAPPED_FIRST&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="ConvertTo-dexCcV1Markets"></a>
# **ConvertTo-dexCcV1Markets**
> GENERICRESPONSE ConvertTo-dexCcV1Markets<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>



### Example
```powershell
$Market = "MyMarket" # String | The exchange to obtain data from (optional) (default to "")

try {
    $Result = ConvertTo-dexCcV1Markets -Market $Market
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-dexCcV1Markets: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="ConvertTo-dexCcV1MarketsInstruments"></a>
# **ConvertTo-dexCcV1MarketsInstruments**
> GENERICRESPONSE ConvertTo-dexCcV1MarketsInstruments<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instrument] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InstrumentStatus] <String[]><br>



### Example
```powershell
$Market = "MyMarket" # String | The exchange to obtain data from (optional) (default to "")
$Instrument = "MyInstrument" # String | The mapped instrument to retrieve on a specific market. (optional) (default to "")
$InstrumentStatus = "ACTIVE" # String[] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

try {
    $Result = ConvertTo-dexCcV1MarketsInstruments -Market $Market -Instrument $Instrument -InstrumentStatus $InstrumentStatus
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-dexCcV1MarketsInstruments: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="ConvertTo-dexCcV1MarketsInstrumentsUnmapped"></a>
# **ConvertTo-dexCcV1MarketsInstrumentsUnmapped**
> GENERICRESPONSE ConvertTo-dexCcV1MarketsInstrumentsUnmapped<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Market] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Instrument] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InstrumentStatus] <String[]><br>



### Example
```powershell
$Market = "MyMarket" # String | The exchange to obtain data from (optional) (default to "")
$Instrument = "MyInstrument" # String | The unmapped instrument to retrieve on a specific market. (optional) (default to "")
$InstrumentStatus = "ACTIVE" # String[] | The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED (optional)

try {
    $Result = ConvertTo-dexCcV1MarketsInstrumentsUnmapped -Market $Market -Instrument $Instrument -InstrumentStatus $InstrumentStatus
} catch {
    Write-Host ("Exception occurred when calling ConvertTo-dexCcV1MarketsInstrumentsUnmapped: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

