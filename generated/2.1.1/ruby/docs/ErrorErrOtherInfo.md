# OpenapiClient::ErrorErrOtherInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **param** | **String** | The parameter that is resposible for the error | [optional] |
| **values** | **Array&lt;String&gt;** | The values resposible for the error | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ErrorErrOtherInfo.new(
  param: market,
  values: [&quot;test_market_does_not_exist&quot;]
)
```

