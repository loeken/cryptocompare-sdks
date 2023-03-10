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

object NewsApi {

  def apply(baseUrl: String = "https://data-api.cryptocompare.com") = new NewsApi(baseUrl)
}

class NewsApi(baseUrl: String) {

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
   * @param sourceIds Get articles from specific sources; either by their ids or keys
   * @param lang The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
   * @param categories News article categories to return
   * @param excludeCategories News article categories to exclude from results
   * @param toTs Articles published on or before this timestamp
   */
  def newsV1ArticleList(sourceIds: Seq[String], lang: Option[String] = None, categories: Seq[String], excludeCategories: Seq[String], toTs: Option[Int] = None): ApiRequest[GENERICRESPONSE] =
    ApiRequest[GENERICRESPONSE](ApiMethods.GET, baseUrl, "/news/v1/article/list", "application/json")
      .withQueryParam("source_ids", ArrayValues(sourceIds, CSV))
      .withQueryParam("lang", lang)
      .withQueryParam("categories", ArrayValues(categories, CSV))
      .withQueryParam("exclude_categories", ArrayValues(excludeCategories, CSV))
      .withQueryParam("to_ts", toTs)
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
   */
  def newsV1CategoryList(): ApiRequest[GENERICRESPONSE] =
    ApiRequest[GENERICRESPONSE](ApiMethods.GET, baseUrl, "/news/v1/category/list", "application/json")
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
   * @param lang The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
   * @param `type` RSS, API, TWITTER
   * @param status The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
   */
  def newsV1SourceList(lang: Option[String] = None, `type`: Option[String] = None, status: Option[String] = None): ApiRequest[GENERICRESPONSE] =
    ApiRequest[GENERICRESPONSE](ApiMethods.GET, baseUrl, "/news/v1/source/list", "application/json")
      .withQueryParam("lang", lang)
      .withQueryParam("type", `type`)
      .withQueryParam("status", status)
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

