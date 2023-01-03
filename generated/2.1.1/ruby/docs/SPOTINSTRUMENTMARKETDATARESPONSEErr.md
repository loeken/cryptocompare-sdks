# OpenapiClient::SPOTINSTRUMENTMARKETDATARESPONSEErr

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | A message describing the error | [optional] |
| **other_info** | [**SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo**](SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.md) |  | [optional] |
| **type** | **Integer** | A public facing error type. If you want to treat a specific error use the type. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SPOTINSTRUMENTMARKETDATARESPONSEErr.new(
  message: Not found: instruments parameter. One or multiple instruments on coinbase not integrated yet or not supported. Instruments are case sensitive, make sure you check the https://data-api.cryptocompare.com/spot/v1/markets/instruments endpoint for a list of all the supported TRADE_SPOT market and instrument combinations. Invalid instruments: INSTRUMENT-DOES-NOT-EXIST,
  other_info: null,
  type: 1
)
```

