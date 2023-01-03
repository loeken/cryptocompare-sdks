# ErrorErrOtherInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarParam** | **String** | The parameter that is resposible for the error | [optional] 
**Values** | **String[]** | The values resposible for the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorErrOtherInfo = Initialize-PSOpenAPIToolsErrorErrOtherInfo  -VarParam market `
 -Values [&quot;test_market_does_not_exist&quot;]
```

- Convert the resource to JSON
```powershell
$ErrorErrOtherInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

