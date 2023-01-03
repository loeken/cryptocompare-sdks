# OverviewApi

All URIs are relative to *https://data-api.cryptocompare.com*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**overviewV1HistoricalMarketcapAllAssetsDays**](OverviewApi.md#overviewV1HistoricalMarketcapAllAssetsDays) | **GET** /overview/v1/historical/marketcap/all/assets/days |  |
| [**overviewV1HistoricalMarketcapAllAssetsHours**](OverviewApi.md#overviewV1HistoricalMarketcapAllAssetsHours) | **GET** /overview/v1/historical/marketcap/all/assets/hours |  |
| [**overviewV1HistoricalMarketcapFtwAssetsDays**](OverviewApi.md#overviewV1HistoricalMarketcapFtwAssetsDays) | **GET** /overview/v1/historical/marketcap/ftw/assets/days |  |
| [**overviewV1HistoricalMarketcapFtwAssetsHours**](OverviewApi.md#overviewV1HistoricalMarketcapFtwAssetsHours) | **GET** /overview/v1/historical/marketcap/ftw/assets/hours |  |
| [**overviewV1LatestMarketcapAllTick**](OverviewApi.md#overviewV1LatestMarketcapAllTick) | **GET** /overview/v1/latest/marketcap/all/tick |  |
| [**overviewV1LatestMarketcapFtwTick**](OverviewApi.md#overviewV1LatestMarketcapFtwTick) | **GET** /overview/v1/latest/marketcap/ftw/tick |  |


## Creating OverviewApi

To initiate an instance of `OverviewApi`, you can use micronaut's `ApplicationContext`:
```java
/* imports
import io.micronaut.runtime.Micronaut;
import io.micronaut.context.ApplicationContext;
import org.openapitools.api.OverviewApi;
*/

ApplicationContext context = Micronaut.run(/* ... */);
PetApi apiInstance = context.getBean(OverviewApi.class);
```

Or the `@Inject` annotation:
```java
@Singleton
class MyClass {
    @Inject
    OverviewApi overviewApi;

    /* ... use the injected variable */
}
```
Note that the class needs to be annotated with one of Micronaut's [scope annotations](https://docs.micronaut.io/latest/guide/#scopes) like `Singleton` in order to be processed.

More information can be found inside [Inversion of Control guide section](https://docs.micronaut.io/latest/guide/#ioc).

<a name="overviewV1HistoricalMarketcapAllAssetsDays"></a>
# **overviewV1HistoricalMarketcapAllAssetsDays**
```java
Mono<GENERICRESPONSE> OverviewApi.overviewV1HistoricalMarketcapAllAssetsDays(groupslimittoTsaggregatefillresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="overviewV1HistoricalMarketcapAllAssetsHours"></a>
# **overviewV1HistoricalMarketcapAllAssetsHours**
```java
Mono<GENERICRESPONSE> OverviewApi.overviewV1HistoricalMarketcapAllAssetsHours(groupslimittoTsaggregatefillresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="overviewV1HistoricalMarketcapFtwAssetsDays"></a>
# **overviewV1HistoricalMarketcapFtwAssetsDays**
```java
Mono<GENERICRESPONSE> OverviewApi.overviewV1HistoricalMarketcapFtwAssetsDays(groupslimittoTsaggregatefillresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="overviewV1HistoricalMarketcapFtwAssetsHours"></a>
# **overviewV1HistoricalMarketcapFtwAssetsHours**
```java
Mono<GENERICRESPONSE> OverviewApi.overviewV1HistoricalMarketcapFtwAssetsHours(groupslimittoTsaggregatefillresponseFormat)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME | [optional parameter] [default to ``] |
| **limit** | `Integer`| The number of data points to return | [optional parameter] [default to `30`] |
| **toTs** | `Integer`| Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} | [optional parameter] |
| **aggregate** | `Integer`| The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries | [optional parameter] [default to `1`] |
| **fill** | `Boolean`| Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. | [optional parameter] [default to `true`] |
| **responseFormat** | `String`| The format of the data response in uppercase. It can be one of the following: JSON,CSV | [optional parameter] [default to `JSON`] [enum: `JSON`, `CSV`] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="overviewV1LatestMarketcapAllTick"></a>
# **overviewV1LatestMarketcapAllTick**
```java
Mono<GENERICRESPONSE> OverviewApi.overviewV1LatestMarketcapAllTick(groups)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional parameter] [default to ``] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="overviewV1LatestMarketcapFtwTick"></a>
# **overviewV1LatestMarketcapFtwTick**
```java
Mono<GENERICRESPONSE> OverviewApi.overviewV1LatestMarketcapFtwTick(groups)
```



### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **groups** | [**List&lt;String&gt;**](String.md)| When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR | [optional parameter] [default to ``] |


### Return type
[**GENERICRESPONSE**](GENERICRESPONSE.md)



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

