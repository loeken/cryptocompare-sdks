# ErrorErr
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | A message describing the error | [optional] 
**OtherInfo** | [**ErrorErrOtherInfo**](ErrorErrOtherInfo.md) |  | [optional] 
**Type** | **Int32** | A public facing error type. If you want to treat a specific error use the type. | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorErr = Initialize-PSOpenAPIToolsErrorErr  -Message Not found: market parameter. Value test_market_does_not_exist not integrated yet. We list all markets in lowercase and transform the parameter sent, make sure you check the https://data-api.cryptocompare.com/spot/v1/markets endpoint for a list of all the supported TRADE_SPOT markets `
 -OtherInfo null `
 -Type 1
```

- Convert the resource to JSON
```powershell
$ErrorErr | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

