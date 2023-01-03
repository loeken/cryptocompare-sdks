# OpenapiClient::SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **param** | **String** | The parameter that is resposible for the error | [optional] |
| **values** | **Array&lt;String&gt;** | The values resposible for the error | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.new(
  param: instruments,
  values: [&quot;INSTRUMENT-DOES-NOT-EXIST&quot;]
)
```

