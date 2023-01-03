# SPOTINSTRUMENTMARKETDATARESPONSE
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**System.Collections.Hashtable**](SPOTINSTRUMENTMARKETDATA.md) |  | [optional] 
**Err** | [**SPOTINSTRUMENTMARKETDATARESPONSEErr**](SPOTINSTRUMENTMARKETDATARESPONSEErr.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SPOTINSTRUMENTMARKETDATARESPONSE = Initialize-PSOpenAPIToolsSPOTINSTRUMENTMARKETDATARESPONSE  -VarData null `
 -Err null
```

- Convert the resource to JSON
```powershell
$SPOTINSTRUMENTMARKETDATARESPONSE | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

