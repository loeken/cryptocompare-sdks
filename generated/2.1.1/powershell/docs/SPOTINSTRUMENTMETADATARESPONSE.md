# SPOTINSTRUMENTMETADATARESPONSE
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**System.Collections.Hashtable**](SPOTINSTRUMENTMETADATA.md) |  | [optional] 
**Err** | [**SPOTINSTRUMENTMARKETDATARESPONSEErr**](SPOTINSTRUMENTMARKETDATARESPONSEErr.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SPOTINSTRUMENTMETADATARESPONSE = Initialize-PSOpenAPIToolsSPOTINSTRUMENTMETADATARESPONSE  -VarData null `
 -Err null
```

- Convert the resource to JSON
```powershell
$SPOTINSTRUMENTMETADATARESPONSE | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

