# AssetApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**assetV1DataByAddress**](AssetApi.md#assetV1DataByAddress) | **GET** /asset/v1/data/by/address |  |
| [**assetV1DataById**](AssetApi.md#assetV1DataById) | **GET** /asset/v1/data/by/id |  |
| [**assetV1DataBySymbol**](AssetApi.md#assetV1DataBySymbol) | **GET** /asset/v1/data/by/symbol |  |
| [**assetV1TopList**](AssetApi.md#assetV1TopList) | **GET** /asset/v1/top/list |  |


## Creating AssetApi

To initiate an instance of `AssetApi`, you can use micronaut's `ApplicationContext`:
```java
/* imports
import io.micronaut.runtime.Micronaut;
import io.micronaut.context.ApplicationContext;
import org.openapitools.api.AssetApi;
*/

ApplicationContext context = Micronaut.run(/* ... */);
PetApi apiInstance = context.getBean(AssetApi.class);
```

Or the `@Inject` annotation:
```java
@Singleton
class MyClass {
    @Inject
    AssetApi assetApi;

    /* ... use the injected variable */
}
```
Note that the class needs to be annotated with one of Micronaut's [scope annotations](https://docs.micronaut.io/latest/guide/#scopes) like `Singleton` in order to be processed.

More information can be found inside [Inversion of Control guide section](https://docs.micronaut.io/latest/guide/#ioc).

<a name="assetV1DataByAddress"></a>
# **assetV1DataByAddress**
```java
Mono<GENERICRESPONSE> AssetApi.assetV1DataByAddress(addresschainSymbolgroups)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **address** | `String`|  | |
| **chainSymbol** | `String`|  | |
| **groups** | `String`|  | [optional parameter] [default to ``] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="assetV1DataById"></a>
# **assetV1DataById**
```java
Mono<GENERICRESPONSE> AssetApi.assetV1DataById(assetIdgroups)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **assetId** | `Integer`| The asset id you are interested in | |
| **groups** | `String`|  | [optional parameter] [default to ``] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="assetV1DataBySymbol"></a>
# **assetV1DataBySymbol**
```java
Mono<GENERICRESPONSE> AssetApi.assetV1DataBySymbol(assetSymbolgroups)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **assetSymbol** | `String`| The asset symbol you are interested in | |
| **groups** | `String`|  | [optional parameter] [default to ``] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="assetV1TopList"></a>
# **assetV1TopList**
```java
Mono<GENERICRESPONSE> AssetApi.assetV1TopList(pagepageSizeassetTypesortBysortDirectiongroups)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **page** | `Integer`| The page number for the request to get {page_size} coins at the time. | [optional parameter] [default to `1`] |
| **pageSize** | `Integer`| The number of items returned per page | [optional parameter] [default to `100`] |
| **assetType** | `String`| The asset class/type | [optional parameter] [default to ``] |
| **sortBy** | `String`| Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) | [optional parameter] [default to `CREATED_ON`] [enum: `CREATED_ON`, `UPDATED_ON`, `SYMBOL`] |
| **sortDirection** | `String`| Sort direction ( DESC,ASC ) | [optional parameter] [default to `DESC`] [enum: `DESC`, `ASC`] |
| **groups** | `String`|  | [optional parameter] [default to ``] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

