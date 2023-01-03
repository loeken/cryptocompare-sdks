/**
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.client.api

import org.openapitools.client.model.Error
import org.openapitools.client.model.GENERICRESPONSE
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

object AssetApi {

  def apply(baseUrl: String = "https://data-api.cryptocompare.com") = new AssetApi(baseUrl)
}

class AssetApi(baseUrl: String) {

  /**
   * Expected answers:
   *   code 200 : GENERICRESPONSE (Success response from the API.)
   *   code 400 : Error (The 400 error occurs when some of the data sent is malformed.)
   *   code 401 : Error (The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.)
   *   code 403 : Error (The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.)
   *   code 404 : Error (The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid)
   *   code 405 : Error (The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.)
   *   code 429 : Error (The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.)
   *   code 500 : Error (The 500 error occurs our API is up but does not know how to / can't handle the request.)
   *   code 502 : Error (The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.)
   *   code 503 : Error (The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.)
   * 
   * @param address 
   * @param chainSymbol 
   * @param groups 
   */
  def assetV1DataByAddress(address: String, chainSymbol: String, groups: Option[String] = None): ApiRequest[GENERICRESPONSE] =
    ApiRequest[GENERICRESPONSE](ApiMethods.GET, baseUrl, "/asset/v1/data/by/address", "application/json")
      .withQueryParam("address", address)
      .withQueryParam("chain_symbol", chainSymbol)
      .withQueryParam("groups", groups)
      .withSuccessResponse[GENERICRESPONSE](200)
      .withErrorResponse[Error](400)
      .withErrorResponse[Error](401)
      .withErrorResponse[Error](403)
      .withErrorResponse[Error](404)
      .withErrorResponse[Error](405)
      .withErrorResponse[Error](429)
      .withErrorResponse[Error](500)
      .withErrorResponse[Error](502)
      .withErrorResponse[Error](503)
      

  /**
   * Expected answers:
   *   code 200 : GENERICRESPONSE (Success response from the API.)
   *   code 400 : Error (The 400 error occurs when some of the data sent is malformed.)
   *   code 401 : Error (The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.)
   *   code 403 : Error (The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.)
   *   code 404 : Error (The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid)
   *   code 405 : Error (The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.)
   *   code 429 : Error (The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.)
   *   code 500 : Error (The 500 error occurs our API is up but does not know how to / can't handle the request.)
   *   code 502 : Error (The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.)
   *   code 503 : Error (The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.)
   * 
   * @param assetId The asset id you are interested in
   * @param groups 
   */
  def assetV1DataById(assetId: Int, groups: Option[String] = None): ApiRequest[GENERICRESPONSE] =
    ApiRequest[GENERICRESPONSE](ApiMethods.GET, baseUrl, "/asset/v1/data/by/id", "application/json")
      .withQueryParam("asset_id", assetId)
      .withQueryParam("groups", groups)
      .withSuccessResponse[GENERICRESPONSE](200)
      .withErrorResponse[Error](400)
      .withErrorResponse[Error](401)
      .withErrorResponse[Error](403)
      .withErrorResponse[Error](404)
      .withErrorResponse[Error](405)
      .withErrorResponse[Error](429)
      .withErrorResponse[Error](500)
      .withErrorResponse[Error](502)
      .withErrorResponse[Error](503)
      

  /**
   * Expected answers:
   *   code 200 : GENERICRESPONSE (Success response from the API.)
   *   code 400 : Error (The 400 error occurs when some of the data sent is malformed.)
   *   code 401 : Error (The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.)
   *   code 403 : Error (The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.)
   *   code 404 : Error (The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid)
   *   code 405 : Error (The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.)
   *   code 429 : Error (The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.)
   *   code 500 : Error (The 500 error occurs our API is up but does not know how to / can't handle the request.)
   *   code 502 : Error (The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.)
   *   code 503 : Error (The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.)
   * 
   * @param assetSymbol The asset symbol you are interested in
   * @param groups 
   */
  def assetV1DataBySymbol(assetSymbol: String, groups: Option[String] = None): ApiRequest[GENERICRESPONSE] =
    ApiRequest[GENERICRESPONSE](ApiMethods.GET, baseUrl, "/asset/v1/data/by/symbol", "application/json")
      .withQueryParam("asset_symbol", assetSymbol)
      .withQueryParam("groups", groups)
      .withSuccessResponse[GENERICRESPONSE](200)
      .withErrorResponse[Error](400)
      .withErrorResponse[Error](401)
      .withErrorResponse[Error](403)
      .withErrorResponse[Error](404)
      .withErrorResponse[Error](405)
      .withErrorResponse[Error](429)
      .withErrorResponse[Error](500)
      .withErrorResponse[Error](502)
      .withErrorResponse[Error](503)
      

  /**
   * Expected answers:
   *   code 200 : GENERICRESPONSE (Success response from the API.)
   *   code 400 : Error (The 400 error occurs when some of the data sent is malformed.)
   *   code 401 : Error (The 401 error occurs when you don't use a valid API Key on an endpoint that requires authetication.)
   *   code 403 : Error (The 403 error occurs when you don't use a valid API Key on an endpoint that requires authetication.)
   *   code 404 : Error (The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid)
   *   code 405 : Error (The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.)
   *   code 429 : Error (The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.)
   *   code 500 : Error (The 500 error occurs our API is up but does not know how to / can't handle the request.)
   *   code 502 : Error (The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.)
   *   code 503 : Error (The 503 error occurs when there is an issue with one of our data sources and we can't even return a partial answer.)
   * 
   * @param page The page number for the request to get {page_size} coins at the time.
   * @param pageSize The number of items returned per page
   * @param assetType The asset class/type
   * @param sortBy Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
   * @param sortDirection Sort direction ( DESC,ASC )
   * @param groups 
   */
  def assetV1TopList(page: Option[Int] = None, pageSize: Option[Int] = None, assetType: Option[String] = None, sortBy: Option[String] = None, sortDirection: Option[String] = None, groups: Option[String] = None): ApiRequest[GENERICRESPONSE] =
    ApiRequest[GENERICRESPONSE](ApiMethods.GET, baseUrl, "/asset/v1/top/list", "application/json")
      .withQueryParam("page", page)
      .withQueryParam("page_size", pageSize)
      .withQueryParam("asset_type", assetType)
      .withQueryParam("sort_by", sortBy)
      .withQueryParam("sort_direction", sortDirection)
      .withQueryParam("groups", groups)
      .withSuccessResponse[GENERICRESPONSE](200)
      .withErrorResponse[Error](400)
      .withErrorResponse[Error](401)
      .withErrorResponse[Error](403)
      .withErrorResponse[Error](404)
      .withErrorResponse[Error](405)
      .withErrorResponse[Error](429)
      .withErrorResponse[Error](500)
      .withErrorResponse[Error](502)
      .withErrorResponse[Error](503)
      



}
