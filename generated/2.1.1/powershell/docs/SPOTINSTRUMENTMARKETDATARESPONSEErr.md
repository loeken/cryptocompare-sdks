# SPOTINSTRUMENTMARKETDATARESPONSEErr
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | A message describing the error | [optional] 
**OtherInfo** | [**SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo**](SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.md) |  | [optional] 
**Type** | **Int32** | A public facing error type. If you want to treat a specific error use the type. | [optional] 

## Examples

- Prepare the resource
```powershell
$SPOTINSTRUMENTMARKETDATARESPONSEErr = Initialize-PSOpenAPIToolsSPOTINSTRUMENTMARKETDATARESPONSEErr  -Message Not found: instruments parameter. One or multiple instruments on coinbase not integrated yet or not supported. Instruments are case sensitive, make sure you check the https://data-api.cryptocompare.com/spot/v1/markets/instruments endpoint for a list of all the supported TRADE_SPOT market and instrument combinations. Invalid instruments: INSTRUMENT-DOES-NOT-EXIST `
 -OtherInfo null `
 -Type 1
```

- Convert the resource to JSON
```powershell
$SPOTINSTRUMENTMARKETDATARESPONSEErr | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

