# WWW::OpenAPIClient::AssetApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::AssetApi;
```

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**asset_v1_data_by_address**](AssetApi.md#asset_v1_data_by_address) | **GET** /asset/v1/data/by/address | 
[**asset_v1_data_by_id**](AssetApi.md#asset_v1_data_by_id) | **GET** /asset/v1/data/by/id | 
[**asset_v1_data_by_symbol**](AssetApi.md#asset_v1_data_by_symbol) | **GET** /asset/v1/data/by/symbol | 
[**asset_v1_top_list**](AssetApi.md#asset_v1_top_list) | **GET** /asset/v1/top/list | 


# **asset_v1_data_by_address**
> GENERICRESPONSE asset_v1_data_by_address(address => $address, chain_symbol => $chain_symbol, groups => $groups)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AssetApi;
my $api_instance = WWW::OpenAPIClient::AssetApi->new(
);

my $address = "address_example"; # string | 
my $chain_symbol = "chain_symbol_example"; # string | 
my $groups = ''; # string | 

eval {
    my $result = $api_instance->asset_v1_data_by_address(address => $address, chain_symbol => $chain_symbol, groups => $groups);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AssetApi->asset_v1_data_by_address: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **string**|  | 
 **chain_symbol** | **string**|  | 
 **groups** | **string**|  | [optional] [default to &#39;&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **asset_v1_data_by_id**
> GENERICRESPONSE asset_v1_data_by_id(asset_id => $asset_id, groups => $groups)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AssetApi;
my $api_instance = WWW::OpenAPIClient::AssetApi->new(
);

my $asset_id = 56; # int | The asset id you are interested in
my $groups = ''; # string | 

eval {
    my $result = $api_instance->asset_v1_data_by_id(asset_id => $asset_id, groups => $groups);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AssetApi->asset_v1_data_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_id** | **int**| The asset id you are interested in | 
 **groups** | **string**|  | [optional] [default to &#39;&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **asset_v1_data_by_symbol**
> GENERICRESPONSE asset_v1_data_by_symbol(asset_symbol => $asset_symbol, groups => $groups)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AssetApi;
my $api_instance = WWW::OpenAPIClient::AssetApi->new(
);

my $asset_symbol = "asset_symbol_example"; # string | The asset symbol you are interested in
my $groups = ''; # string | 

eval {
    my $result = $api_instance->asset_v1_data_by_symbol(asset_symbol => $asset_symbol, groups => $groups);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AssetApi->asset_v1_data_by_symbol: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset_symbol** | **string**| The asset symbol you are interested in | 
 **groups** | **string**|  | [optional] [default to &#39;&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **asset_v1_top_list**
> GENERICRESPONSE asset_v1_top_list(page => $page, page_size => $page_size, asset_type => $asset_type, sort_by => $sort_by, sort_direction => $sort_direction, groups => $groups)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::AssetApi;
my $api_instance = WWW::OpenAPIClient::AssetApi->new(
);

my $page = 1; # int | The page number for the request to get {page_size} coins at the time.
my $page_size = 100; # int | The number of items returned per page
my $asset_type = ''; # string | The asset class/type
my $sort_by = 'CREATED_ON'; # string | Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
my $sort_direction = 'DESC'; # string | Sort direction ( DESC,ASC )
my $groups = ''; # string | 

eval {
    my $result = $api_instance->asset_v1_top_list(page => $page, page_size => $page_size, asset_type => $asset_type, sort_by => $sort_by, sort_direction => $sort_direction, groups => $groups);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AssetApi->asset_v1_top_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page number for the request to get {page_size} coins at the time. | [optional] [default to 1]
 **page_size** | **int**| The number of items returned per page | [optional] [default to 100]
 **asset_type** | **string**| The asset class/type | [optional] [default to &#39;&#39;]
 **sort_by** | **string**| Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional] [default to &#39;CREATED_ON&#39;]
 **sort_direction** | **string**| Sort direction ( DESC,ASC ) | [optional] [default to &#39;DESC&#39;]
 **groups** | **string**|  | [optional] [default to &#39;&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

