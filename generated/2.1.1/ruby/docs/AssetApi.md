# OpenapiClient::AssetApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**asset_v1_data_by_address**](AssetApi.md#asset_v1_data_by_address) | **GET** /asset/v1/data/by/address |  |
| [**asset_v1_data_by_id**](AssetApi.md#asset_v1_data_by_id) | **GET** /asset/v1/data/by/id |  |
| [**asset_v1_data_by_symbol**](AssetApi.md#asset_v1_data_by_symbol) | **GET** /asset/v1/data/by/symbol |  |
| [**asset_v1_top_list**](AssetApi.md#asset_v1_top_list) | **GET** /asset/v1/top/list |  |


## asset_v1_data_by_address

> <GENERICRESPONSE> asset_v1_data_by_address(address, chain_symbol, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AssetApi.new
address = 'address_example' # String | 
chain_symbol = 'chain_symbol_example' # String | 
opts = {
  groups: 'groups_example' # String | 
}

begin
  
  result = api_instance.asset_v1_data_by_address(address, chain_symbol, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetApi->asset_v1_data_by_address: #{e}"
end
```

#### Using the asset_v1_data_by_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> asset_v1_data_by_address_with_http_info(address, chain_symbol, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.asset_v1_data_by_address_with_http_info(address, chain_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetApi->asset_v1_data_by_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** |  |  |
| **chain_symbol** | **String** |  |  |
| **groups** | **String** |  | [optional][default to &#39;&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## asset_v1_data_by_id

> <GENERICRESPONSE> asset_v1_data_by_id(asset_id, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AssetApi.new
asset_id = 56 # Integer | The asset id you are interested in
opts = {
  groups: 'groups_example' # String | 
}

begin
  
  result = api_instance.asset_v1_data_by_id(asset_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetApi->asset_v1_data_by_id: #{e}"
end
```

#### Using the asset_v1_data_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> asset_v1_data_by_id_with_http_info(asset_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.asset_v1_data_by_id_with_http_info(asset_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetApi->asset_v1_data_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_id** | **Integer** | The asset id you are interested in |  |
| **groups** | **String** |  | [optional][default to &#39;&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## asset_v1_data_by_symbol

> <GENERICRESPONSE> asset_v1_data_by_symbol(asset_symbol, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AssetApi.new
asset_symbol = 'asset_symbol_example' # String | The asset symbol you are interested in
opts = {
  groups: 'groups_example' # String | 
}

begin
  
  result = api_instance.asset_v1_data_by_symbol(asset_symbol, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetApi->asset_v1_data_by_symbol: #{e}"
end
```

#### Using the asset_v1_data_by_symbol_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> asset_v1_data_by_symbol_with_http_info(asset_symbol, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.asset_v1_data_by_symbol_with_http_info(asset_symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetApi->asset_v1_data_by_symbol_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_symbol** | **String** | The asset symbol you are interested in |  |
| **groups** | **String** |  | [optional][default to &#39;&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## asset_v1_top_list

> <GENERICRESPONSE> asset_v1_top_list(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AssetApi.new
opts = {
  page: 56, # Integer | The page number for the request to get {page_size} coins at the time.
  page_size: 56, # Integer | The number of items returned per page
  asset_type: 'asset_type_example', # String | The asset class/type
  sort_by: 'CREATED_ON', # String | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
  sort_direction: 'DESC', # String | Sort direction ( DESC,ASC )
  groups: 'groups_example' # String | 
}

begin
  
  result = api_instance.asset_v1_top_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetApi->asset_v1_top_list: #{e}"
end
```

#### Using the asset_v1_top_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> asset_v1_top_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.asset_v1_top_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AssetApi->asset_v1_top_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page number for the request to get {page_size} coins at the time. | [optional][default to 1] |
| **page_size** | **Integer** | The number of items returned per page | [optional][default to 100] |
| **asset_type** | **String** | The asset class/type | [optional][default to &#39;&#39;] |
| **sort_by** | **String** | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional][default to &#39;CREATED_ON&#39;] |
| **sort_direction** | **String** | Sort direction ( DESC,ASC ) | [optional][default to &#39;DESC&#39;] |
| **groups** | **String** |  | [optional][default to &#39;&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

