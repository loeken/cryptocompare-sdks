# ModelError
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Err** | [**ErrorErr**](ErrorErr.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelError = Initialize-PSOpenAPIToolsModelError  -VarData null `
 -Err null
```

- Convert the resource to JSON
```powershell
$ModelError | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

