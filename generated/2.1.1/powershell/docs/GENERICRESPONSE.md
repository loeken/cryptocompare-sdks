# GENERICRESPONSE
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**GENERICRESPONSEData**](GENERICRESPONSEData.md) |  | [optional] 
**Err** | [**SystemCollectionsHashtable**](.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GENERICRESPONSE = Initialize-PSOpenAPIToolsGENERICRESPONSE  -VarData null `
 -Err null
```

- Convert the resource to JSON
```powershell
$GENERICRESPONSE | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

