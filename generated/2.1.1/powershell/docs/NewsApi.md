# PSOpenAPITools.PSOpenAPITools/Api.NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-sV1ArticleList**](NewsApi.md#New-sV1ArticleList) | **GET** /news/v1/article/list | 
[**New-sV1CategoryList**](NewsApi.md#New-sV1CategoryList) | **GET** /news/v1/category/list | 
[**New-sV1SourceList**](NewsApi.md#New-sV1SourceList) | **GET** /news/v1/source/list | 


<a name="New-sV1ArticleList"></a>
# **New-sV1ArticleList**
> GENERICRESPONSE New-sV1ArticleList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceIds] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Categories] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExcludeCategories] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ToTs] <System.Nullable[Int32]><br>



### Example
```powershell
$SourceIds = "MySourceIds" # String[] | Get articles from specific sources; either by their ids or keys (optional)
$Lang = "EN" # String | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional) (default to "EN")
$Categories = "1INCH" # String[] | News article categories to return (optional)
$ExcludeCategories = "1INCH" # String[] | News article categories to exclude from results (optional)
$ToTs = 56 # Int32 | Articles published on or before this timestamp (optional) (default to -1)

try {
    $Result = New-sV1ArticleList -SourceIds $SourceIds -Lang $Lang -Categories $Categories -ExcludeCategories $ExcludeCategories -ToTs $ToTs
} catch {
    Write-Host ("Exception occurred when calling New-sV1ArticleList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceIds** | [**String[]**](String.md)| Get articles from specific sources; either by their ids or keys | [optional] 
 **Lang** | **String**| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to &quot;EN&quot;]
 **Categories** | [**String[]**](String.md)| News article categories to return | [optional] 
 **ExcludeCategories** | [**String[]**](String.md)| News article categories to exclude from results | [optional] 
 **ToTs** | **Int32**| Articles published on or before this timestamp | [optional] [default to -1]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-sV1CategoryList"></a>
# **New-sV1CategoryList**
> GENERICRESPONSE New-sV1CategoryList<br>



### Example
```powershell

try {
    $Result = New-sV1CategoryList
} catch {
    Write-Host ("Exception occurred when calling New-sV1CategoryList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-sV1SourceList"></a>
# **New-sV1SourceList**
> GENERICRESPONSE New-sV1SourceList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>



### Example
```powershell
$Lang = "EN" # String | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional) (default to "EN")
$Type = "RSS" # String | RSS, API, TWITTER (optional) (default to "RSS")
$Status = "ACTIVE" # String | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE (optional) (default to "ACTIVE")

try {
    $Result = New-sV1SourceList -Lang $Lang -Type $Type -Status $Status
} catch {
    Write-Host ("Exception occurred when calling New-sV1SourceList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Lang** | **String**| The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to &quot;EN&quot;]
 **Type** | **String**| RSS, API, TWITTER | [optional] [default to &quot;RSS&quot;]
 **Status** | **String**| The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to &quot;ACTIVE&quot;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

