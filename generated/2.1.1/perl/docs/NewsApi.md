# WWW::OpenAPIClient::NewsApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::NewsApi;
```

All URIs are relative to *https://data-api.cryptocompare.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**news_v1_article_list**](NewsApi.md#news_v1_article_list) | **GET** /news/v1/article/list | 
[**news_v1_category_list**](NewsApi.md#news_v1_category_list) | **GET** /news/v1/category/list | 
[**news_v1_source_list**](NewsApi.md#news_v1_source_list) | **GET** /news/v1/source/list | 


# **news_v1_article_list**
> GENERICRESPONSE news_v1_article_list(source_ids => $source_ids, lang => $lang, categories => $categories, exclude_categories => $exclude_categories, to_ts => $to_ts)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(
);

my $source_ids = [("null")]; # ARRAY[string] | Get articles from specific sources; either by their ids or keys
my $lang = 'EN'; # string | The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
my $categories = [("null")]; # ARRAY[string] | News article categories to return
my $exclude_categories = [("null")]; # ARRAY[string] | News article categories to exclude from results
my $to_ts = -1; # int | Articles published on or before this timestamp

eval {
    my $result = $api_instance->news_v1_article_list(source_ids => $source_ids, lang => $lang, categories => $categories, exclude_categories => $exclude_categories, to_ts => $to_ts);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->news_v1_article_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **source_ids** | [**ARRAY[string]**](string.md)| Get articles from specific sources; either by their ids or keys | [optional] 
 **lang** | **string**| The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to &#39;EN&#39;]
 **categories** | [**ARRAY[string]**](string.md)| News article categories to return | [optional] 
 **exclude_categories** | [**ARRAY[string]**](string.md)| News article categories to exclude from results | [optional] 
 **to_ts** | **int**| Articles published on or before this timestamp | [optional] [default to -1]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **news_v1_category_list**
> GENERICRESPONSE news_v1_category_list()



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(
);


eval {
    my $result = $api_instance->news_v1_category_list();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->news_v1_category_list: $@\n";
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **news_v1_source_list**
> GENERICRESPONSE news_v1_source_list(lang => $lang, type => $type, status => $status)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::NewsApi;
my $api_instance = WWW::OpenAPIClient::NewsApi->new(
);

my $lang = 'EN'; # string | The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
my $type = 'RSS'; # string | RSS, API, TWITTER
my $status = 'ACTIVE'; # string | The status for the  article source entry. Allowed values: ACTIVE, INACTIVE

eval {
    my $result = $api_instance->news_v1_source_list(lang => $lang, type => $type, status => $status);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NewsApi->news_v1_source_list: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lang** | **string**| The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) | [optional] [default to &#39;EN&#39;]
 **type** | **string**| RSS, API, TWITTER | [optional] [default to &#39;RSS&#39;]
 **status** | **string**| The status for the  article source entry. Allowed values: ACTIVE, INACTIVE | [optional] [default to &#39;ACTIVE&#39;]

### Return type

[**GENERICRESPONSE**](GENERICRESPONSE.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

