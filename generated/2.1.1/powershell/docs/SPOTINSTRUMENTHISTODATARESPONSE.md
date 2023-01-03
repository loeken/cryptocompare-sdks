# SPOTINSTRUMENTHISTODATARESPONSE
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**SPOTINSTRUMENTHISTODATA[]**](SPOTINSTRUMENTHISTODATA.md) |  | [optional] 
**Err** | [**SystemCollectionsHashtable**](.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SPOTINSTRUMENTHISTODATARESPONSE = Initialize-PSOpenAPIToolsSPOTINSTRUMENTHISTODATARESPONSE  -VarData null `
 -Err null
```

- Convert the resource to JSON
```powershell
$SPOTINSTRUMENTHISTODATARESPONSE | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

