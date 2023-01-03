# PSOpenAPITools.PSOpenAPITools/Api.AssetApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-AssetV1DataByAddress**](AssetApi.md#Invoke-AssetV1DataByAddress) | **GET** /asset/v1/data/by/address | 
[**Invoke-AssetV1DataById**](AssetApi.md#Invoke-AssetV1DataById) | **GET** /asset/v1/data/by/id | 
[**Invoke-AssetV1DataBySymbol**](AssetApi.md#Invoke-AssetV1DataBySymbol) | **GET** /asset/v1/data/by/symbol | 
[**Invoke-AssetV1TopList**](AssetApi.md#Invoke-AssetV1TopList) | **GET** /asset/v1/top/list | 


<a name="Invoke-AssetV1DataByAddress"></a>
# **Invoke-AssetV1DataByAddress**
> GENERICRESPONSE Invoke-AssetV1DataByAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Address] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ChainSymbol] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groups] <String><br>



### Example
```powershell
$Address = "MyAddress" # String | 
$ChainSymbol = "MyChainSymbol" # String | 
$Groups = "MyGroups" # String |  (optional) (default to "")

try {
    $Result = Invoke-AssetV1DataByAddress -Address $Address -ChainSymbol $ChainSymbol -Groups $Groups
} catch {
    Write-Host ("Exception occurred when calling Invoke-AssetV1DataByAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Address** | **String**|  | 
 **ChainSymbol** | **String**|  | 
 **Groups** | **String**|  | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-AssetV1DataById"></a>
# **Invoke-AssetV1DataById**
> GENERICRESPONSE Invoke-AssetV1DataById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetId] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groups] <String><br>



### Example
```powershell
$AssetId = 56 # Int32 | The asset id you are interested in
$Groups = "MyGroups" # String |  (optional) (default to "")

try {
    $Result = Invoke-AssetV1DataById -AssetId $AssetId -Groups $Groups
} catch {
    Write-Host ("Exception occurred when calling Invoke-AssetV1DataById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssetId** | **Int32**| The asset id you are interested in | 
 **Groups** | **String**|  | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-AssetV1DataBySymbol"></a>
# **Invoke-AssetV1DataBySymbol**
> GENERICRESPONSE Invoke-AssetV1DataBySymbol<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetSymbol] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groups] <String><br>



### Example
```powershell
$AssetSymbol = "MyAssetSymbol" # String | The asset symbol you are interested in
$Groups = "MyGroups" # String |  (optional) (default to "")

try {
    $Result = Invoke-AssetV1DataBySymbol -AssetSymbol $AssetSymbol -Groups $Groups
} catch {
    Write-Host ("Exception occurred when calling Invoke-AssetV1DataBySymbol: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssetSymbol** | **String**| The asset symbol you are interested in | 
 **Groups** | **String**|  | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-AssetV1TopList"></a>
# **Invoke-AssetV1TopList**
> GENERICRESPONSE Invoke-AssetV1TopList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageSize] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssetType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortDirection] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Groups] <String><br>



### Example
```powershell
$Page = 56 # Int32 | The page number for the request to get {page_size} coins at the time. (optional) (default to 1)
$PageSize = 56 # Int32 | The number of items returned per page (optional) (default to 100)
$AssetType = "MyAssetType" # String | The asset class/type (optional) (default to "")
$SortBy = "CREATED_ON" # String | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) (optional) (default to "CREATED_ON")
$SortDirection = "DESC" # String | Sort direction ( DESC,ASC ) (optional) (default to "DESC")
$Groups = "MyGroups" # String |  (optional) (default to "")

try {
    $Result = Invoke-AssetV1TopList -Page $Page -PageSize $PageSize -AssetType $AssetType -SortBy $SortBy -SortDirection $SortDirection -Groups $Groups
} catch {
    Write-Host ("Exception occurred when calling Invoke-AssetV1TopList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**| The page number for the request to get {page_size} coins at the time. | [optional] [default to 1]
 **PageSize** | **Int32**| The number of items returned per page | [optional] [default to 100]
 **AssetType** | **String**| The asset class/type | [optional] [default to &quot;&quot;]
 **SortBy** | **String**| Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to &quot;CREATED_ON&quot;]
 **SortDirection** | **String**| Sort direction ( DESC,ASC ) | [optional] [default to &quot;DESC&quot;]
 **Groups** | **String**|  | [optional] [default to &quot;&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

