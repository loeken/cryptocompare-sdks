# OpenapiClient::NewsApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**news_v1_article_list**](NewsApi.md#news_v1_article_list) | **GET** /news/v1/article/list |  |
| [**news_v1_category_list**](NewsApi.md#news_v1_category_list) | **GET** /news/v1/category/list |  |
| [**news_v1_source_list**](NewsApi.md#news_v1_source_list) | **GET** /news/v1/source/list |  |


## news_v1_article_list

> <GENERICRESPONSE> news_v1_article_list(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::NewsApi.new
opts = {
  source_ids: ['inner_example'], # Array<String> | Get articles from specific sources; either by their ids or keys
  lang: 'EN', # String | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
  categories: ['1INCH'], # Array<String> | News article categories to return
  exclude_categories: ['1INCH'], # Array<String> | News article categories to exclude from results
  to_ts: 56 # Integer | Articles published on or before this timestamp
}

begin
  
  result = api_instance.news_v1_article_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->news_v1_article_list: #{e}"
end
```

#### Using the news_v1_article_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> news_v1_article_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.news_v1_article_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->news_v1_article_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_ids** | [**Array&lt;String&gt;**](String.md) | Get articles from specific sources; either by their ids or keys | [optional] |
| **lang** | **String** | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional][default to &#39;EN&#39;] |
| **categories** | [**Array&lt;String&gt;**](String.md) | News article categories to return | [optional] |
| **exclude_categories** | [**Array&lt;String&gt;**](String.md) | News article categories to exclude from results | [optional] |
| **to_ts** | **Integer** | Articles published on or before this timestamp | [optional][default to -1] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## news_v1_category_list

> <GENERICRESPONSE> news_v1_category_list



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::NewsApi.new

begin
  
  result = api_instance.news_v1_category_list
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->news_v1_category_list: #{e}"
end
```

#### Using the news_v1_category_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> news_v1_category_list_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.news_v1_category_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->news_v1_category_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## news_v1_source_list

> <GENERICRESPONSE> news_v1_source_list(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::NewsApi.new
opts = {
  lang: 'EN', # String | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
  type: 'RSS', # String | RSS, API, TWITTER
  status: 'ACTIVE' # String | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
}

begin
  
  result = api_instance.news_v1_source_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->news_v1_source_list: #{e}"
end
```

#### Using the news_v1_source_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GENERICRESPONSE>, Integer, Hash)> news_v1_source_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.news_v1_source_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GENERICRESPONSE>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NewsApi->news_v1_source_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lang** | **String** | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional][default to &#39;EN&#39;] |
| **type** | **String** | RSS, API, TWITTER | [optional][default to &#39;RSS&#39;] |
| **status** | **String** | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional][default to &#39;ACTIVE&#39;] |

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

