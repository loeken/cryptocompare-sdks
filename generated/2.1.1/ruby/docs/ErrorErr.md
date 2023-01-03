# OpenapiClient::ErrorErr

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | A message describing the error | [optional] |
| **other_info** | [**ErrorErrOtherInfo**](ErrorErrOtherInfo.md) |  | [optional] |
| **type** | **Integer** | A public facing error type. If you want to treat a specific error use the type. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ErrorErr.new(
  message: Not found: market parameter. Value test_market_does_not_exist not integrated yet. We list all markets in lowercase and transform the parameter sent, make sure you check the https://data-api.cryptocompare.com/spot/v1/markets endpoint for a list of all the supported TRADE_SPOT markets,
  other_info: null,
  type: 1
)
```

