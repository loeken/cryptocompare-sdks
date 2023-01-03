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

import java.text.SimpleDateFormat

import org.openapitools.client.model.Error
import org.openapitools.client.model.GENERICRESPONSE
import org.openapitools.client.{ApiInvoker, ApiException}

import collection.mutable
import com.sun.jersey.multipart.FormDataMultiPart
import com.sun.jersey.multipart.file.FileDataBodyPart
import com.wordnik.swagger.client._
import com.wordnik.swagger.client.ClientResponseReaders.Json4sFormatsReader._
import com.wordnik.swagger.client.RequestWriters.Json4sFormatsWriter._
import javax.ws.rs.core.Response.Status.Family

import java.net.URI
import java.io.File
import java.util.Date
import java.util.TimeZone
import javax.ws.rs.core.{MediaType, Response}

import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent._
import scala.concurrent.duration._
import scala.collection.mutable.HashMap
import scala.util.{Failure, Success, Try}

import org.json4s._

class OverviewApi(
  val defBasePath: String = "https://data-api.cryptocompare.com",
  defApiInvoker: ApiInvoker = ApiInvoker
) {
  private lazy val dateTimeFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  private val dateFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  implicit val formats = new org.json4s.DefaultFormats {
    override def dateFormatter = dateTimeFormatter
  }
  implicit val stringReader: ClientResponseReader[String] = ClientResponseReaders.StringReader
  implicit val unitReader: ClientResponseReader[Unit] = ClientResponseReaders.UnitReader
  implicit val jvalueReader: ClientResponseReader[JValue] = ClientResponseReaders.JValueReader
  implicit val jsonReader: ClientResponseReader[Nothing] = JsonFormatsReader
  implicit val stringWriter: RequestWriter[String] = RequestWriters.StringWriter
  implicit val jsonWriter: RequestWriter[Nothing] = JsonFormatsWriter

  var basePath: String = defBasePath
  var apiInvoker: ApiInvoker = defApiInvoker

  def addHeader(key: String, value: String): mutable.HashMap[String, String] = {
    apiInvoker.defaultHeaders += key -> value
  }

  val config: SwaggerConfig = SwaggerConfig.forUrl(new URI(defBasePath))
  val client = new RestClient(config)
  val helper = new OverviewApiAsyncHelper(client, config)

  /**
   * 
   * 
   *
   * @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional, default to [])
   * @param limit The number of data points to return (optional, default to 30)
   * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
   * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
   * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
   * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
   * @return GENERICRESPONSE
   */
  def overviewV1HistoricalMarketcapAllAssetsDays(groups: Option[List[String]] = None, limit: Option[Integer] = None, toTs: Option[Integer] = None, aggregate: Option[Integer] = None, fill: Option[Boolean] = None, responseFormat: Option[String] = None): Option[GENERICRESPONSE] = {
    val await = Try(Await.result(overviewV1HistoricalMarketcapAllAssetsDaysAsync(groups, limit, toTs, aggregate, fill, responseFormat), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   *  asynchronously
   * 
   *
   * @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional, default to [])
   * @param limit The number of data points to return (optional, default to 30)
   * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
   * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
   * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
   * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
   * @return Future(GENERICRESPONSE)
   */
  def overviewV1HistoricalMarketcapAllAssetsDaysAsync(groups: Option[List[String]] = None, limit: Option[Integer] = None, toTs: Option[Integer] = None, aggregate: Option[Integer] = None, fill: Option[Boolean] = None, responseFormat: Option[String] = None): Future[GENERICRESPONSE] = {
      helper.overviewV1HistoricalMarketcapAllAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat)
  }

  /**
   * 
   * 
   *
   * @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional, default to [])
   * @param limit The number of data points to return (optional, default to 30)
   * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
   * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
   * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
   * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
   * @return GENERICRESPONSE
   */
  def overviewV1HistoricalMarketcapAllAssetsHours(groups: Option[List[String]] = None, limit: Option[Integer] = None, toTs: Option[Integer] = None, aggregate: Option[Integer] = None, fill: Option[Boolean] = None, responseFormat: Option[String] = None): Option[GENERICRESPONSE] = {
    val await = Try(Await.result(overviewV1HistoricalMarketcapAllAssetsHoursAsync(groups, limit, toTs, aggregate, fill, responseFormat), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   *  asynchronously
   * 
   *
   * @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional, default to [])
   * @param limit The number of data points to return (optional, default to 30)
   * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
   * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
   * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
   * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
   * @return Future(GENERICRESPONSE)
   */
  def overviewV1HistoricalMarketcapAllAssetsHoursAsync(groups: Option[List[String]] = None, limit: Option[Integer] = None, toTs: Option[Integer] = None, aggregate: Option[Integer] = None, fill: Option[Boolean] = None, responseFormat: Option[String] = None): Future[GENERICRESPONSE] = {
      helper.overviewV1HistoricalMarketcapAllAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat)
  }

  /**
   * 
   * 
   *
   * @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional, default to [])
   * @param limit The number of data points to return (optional, default to 30)
   * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
   * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
   * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
   * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
   * @return GENERICRESPONSE
   */
  def overviewV1HistoricalMarketcapFtwAssetsDays(groups: Option[List[String]] = None, limit: Option[Integer] = None, toTs: Option[Integer] = None, aggregate: Option[Integer] = None, fill: Option[Boolean] = None, responseFormat: Option[String] = None): Option[GENERICRESPONSE] = {
    val await = Try(Await.result(overviewV1HistoricalMarketcapFtwAssetsDaysAsync(groups, limit, toTs, aggregate, fill, responseFormat), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   *  asynchronously
   * 
   *
   * @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional, default to [])
   * @param limit The number of data points to return (optional, default to 30)
   * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
   * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
   * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
   * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
   * @return Future(GENERICRESPONSE)
   */
  def overviewV1HistoricalMarketcapFtwAssetsDaysAsync(groups: Option[List[String]] = None, limit: Option[Integer] = None, toTs: Option[Integer] = None, aggregate: Option[Integer] = None, fill: Option[Boolean] = None, responseFormat: Option[String] = None): Future[GENERICRESPONSE] = {
      helper.overviewV1HistoricalMarketcapFtwAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat)
  }

  /**
   * 
   * 
   *
   * @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional, default to [])
   * @param limit The number of data points to return (optional, default to 30)
   * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
   * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
   * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
   * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
   * @return GENERICRESPONSE
   */
  def overviewV1HistoricalMarketcapFtwAssetsHours(groups: Option[List[String]] = None, limit: Option[Integer] = None, toTs: Option[Integer] = None, aggregate: Option[Integer] = None, fill: Option[Boolean] = None, responseFormat: Option[String] = None): Option[GENERICRESPONSE] = {
    val await = Try(Await.result(overviewV1HistoricalMarketcapFtwAssetsHoursAsync(groups, limit, toTs, aggregate, fill, responseFormat), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   *  asynchronously
   * 
   *
   * @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME (optional, default to [])
   * @param limit The number of data points to return (optional, default to 30)
   * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received} (optional)
   * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries (optional, default to 1)
   * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. (optional, default to true)
   * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV (optional, default to JSON)
   * @return Future(GENERICRESPONSE)
   */
  def overviewV1HistoricalMarketcapFtwAssetsHoursAsync(groups: Option[List[String]] = None, limit: Option[Integer] = None, toTs: Option[Integer] = None, aggregate: Option[Integer] = None, fill: Option[Boolean] = None, responseFormat: Option[String] = None): Future[GENERICRESPONSE] = {
      helper.overviewV1HistoricalMarketcapFtwAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat)
  }

  /**
   * 
   * 
   *
   * @param groups When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional, default to [])
   * @return GENERICRESPONSE
   */
  def overviewV1LatestMarketcapAllTick(groups: Option[List[String]] = None): Option[GENERICRESPONSE] = {
    val await = Try(Await.result(overviewV1LatestMarketcapAllTickAsync(groups), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   *  asynchronously
   * 
   *
   * @param groups When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional, default to [])
   * @return Future(GENERICRESPONSE)
   */
  def overviewV1LatestMarketcapAllTickAsync(groups: Option[List[String]] = None): Future[GENERICRESPONSE] = {
      helper.overviewV1LatestMarketcapAllTick(groups)
  }

  /**
   * 
   * 
   *
   * @param groups When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional, default to [])
   * @return GENERICRESPONSE
   */
  def overviewV1LatestMarketcapFtwTick(groups: Option[List[String]] = None): Option[GENERICRESPONSE] = {
    val await = Try(Await.result(overviewV1LatestMarketcapFtwTickAsync(groups), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   *  asynchronously
   * 
   *
   * @param groups When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR (optional, default to [])
   * @return Future(GENERICRESPONSE)
   */
  def overviewV1LatestMarketcapFtwTickAsync(groups: Option[List[String]] = None): Future[GENERICRESPONSE] = {
      helper.overviewV1LatestMarketcapFtwTick(groups)
  }

}

class OverviewApiAsyncHelper(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def overviewV1HistoricalMarketcapAllAssetsDays(groups: Option[List[String]] = None,
    limit: Option[Integer] = None,
    toTs: Option[Integer] = None,
    aggregate: Option[Integer] = None,
    fill: Option[Boolean] = None,
    responseFormat: Option[String] = None
    )(implicit reader: ClientResponseReader[GENERICRESPONSE]): Future[GENERICRESPONSE] = {
    // create path and map variables
    val path = (addFmt("/overview/v1/historical/marketcap/all/assets/days"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    groups match {
      case Some(param) => queryParams += "groups" -> param.toString
      case _ => queryParams
    }
    limit match {
      case Some(param) => queryParams += "limit" -> param.toString
      case _ => queryParams
    }
    toTs match {
      case Some(param) => queryParams += "to_ts" -> param.toString
      case _ => queryParams
    }
    aggregate match {
      case Some(param) => queryParams += "aggregate" -> param.toString
      case _ => queryParams
    }
    fill match {
      case Some(param) => queryParams += "fill" -> param.toString
      case _ => queryParams
    }
    responseFormat match {
      case Some(param) => queryParams += "response_format" -> param.toString
      case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      val status = Response.Status.fromStatusCode(resp.statusCode)
      status.getFamily match {
        case Family.SUCCESSFUL | Family.REDIRECTION | Family.INFORMATIONAL => process(reader.read(resp))
        case _ => throw new ApiException(resp.statusCode, resp.statusText)
      }
    }
  }

  def overviewV1HistoricalMarketcapAllAssetsHours(groups: Option[List[String]] = None,
    limit: Option[Integer] = None,
    toTs: Option[Integer] = None,
    aggregate: Option[Integer] = None,
    fill: Option[Boolean] = None,
    responseFormat: Option[String] = None
    )(implicit reader: ClientResponseReader[GENERICRESPONSE]): Future[GENERICRESPONSE] = {
    // create path and map variables
    val path = (addFmt("/overview/v1/historical/marketcap/all/assets/hours"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    groups match {
      case Some(param) => queryParams += "groups" -> param.toString
      case _ => queryParams
    }
    limit match {
      case Some(param) => queryParams += "limit" -> param.toString
      case _ => queryParams
    }
    toTs match {
      case Some(param) => queryParams += "to_ts" -> param.toString
      case _ => queryParams
    }
    aggregate match {
      case Some(param) => queryParams += "aggregate" -> param.toString
      case _ => queryParams
    }
    fill match {
      case Some(param) => queryParams += "fill" -> param.toString
      case _ => queryParams
    }
    responseFormat match {
      case Some(param) => queryParams += "response_format" -> param.toString
      case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      val status = Response.Status.fromStatusCode(resp.statusCode)
      status.getFamily match {
        case Family.SUCCESSFUL | Family.REDIRECTION | Family.INFORMATIONAL => process(reader.read(resp))
        case _ => throw new ApiException(resp.statusCode, resp.statusText)
      }
    }
  }

  def overviewV1HistoricalMarketcapFtwAssetsDays(groups: Option[List[String]] = None,
    limit: Option[Integer] = None,
    toTs: Option[Integer] = None,
    aggregate: Option[Integer] = None,
    fill: Option[Boolean] = None,
    responseFormat: Option[String] = None
    )(implicit reader: ClientResponseReader[GENERICRESPONSE]): Future[GENERICRESPONSE] = {
    // create path and map variables
    val path = (addFmt("/overview/v1/historical/marketcap/ftw/assets/days"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    groups match {
      case Some(param) => queryParams += "groups" -> param.toString
      case _ => queryParams
    }
    limit match {
      case Some(param) => queryParams += "limit" -> param.toString
      case _ => queryParams
    }
    toTs match {
      case Some(param) => queryParams += "to_ts" -> param.toString
      case _ => queryParams
    }
    aggregate match {
      case Some(param) => queryParams += "aggregate" -> param.toString
      case _ => queryParams
    }
    fill match {
      case Some(param) => queryParams += "fill" -> param.toString
      case _ => queryParams
    }
    responseFormat match {
      case Some(param) => queryParams += "response_format" -> param.toString
      case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      val status = Response.Status.fromStatusCode(resp.statusCode)
      status.getFamily match {
        case Family.SUCCESSFUL | Family.REDIRECTION | Family.INFORMATIONAL => process(reader.read(resp))
        case _ => throw new ApiException(resp.statusCode, resp.statusText)
      }
    }
  }

  def overviewV1HistoricalMarketcapFtwAssetsHours(groups: Option[List[String]] = None,
    limit: Option[Integer] = None,
    toTs: Option[Integer] = None,
    aggregate: Option[Integer] = None,
    fill: Option[Boolean] = None,
    responseFormat: Option[String] = None
    )(implicit reader: ClientResponseReader[GENERICRESPONSE]): Future[GENERICRESPONSE] = {
    // create path and map variables
    val path = (addFmt("/overview/v1/historical/marketcap/ftw/assets/hours"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    groups match {
      case Some(param) => queryParams += "groups" -> param.toString
      case _ => queryParams
    }
    limit match {
      case Some(param) => queryParams += "limit" -> param.toString
      case _ => queryParams
    }
    toTs match {
      case Some(param) => queryParams += "to_ts" -> param.toString
      case _ => queryParams
    }
    aggregate match {
      case Some(param) => queryParams += "aggregate" -> param.toString
      case _ => queryParams
    }
    fill match {
      case Some(param) => queryParams += "fill" -> param.toString
      case _ => queryParams
    }
    responseFormat match {
      case Some(param) => queryParams += "response_format" -> param.toString
      case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      val status = Response.Status.fromStatusCode(resp.statusCode)
      status.getFamily match {
        case Family.SUCCESSFUL | Family.REDIRECTION | Family.INFORMATIONAL => process(reader.read(resp))
        case _ => throw new ApiException(resp.statusCode, resp.statusText)
      }
    }
  }

  def overviewV1LatestMarketcapAllTick(groups: Option[List[String]] = None
    )(implicit reader: ClientResponseReader[GENERICRESPONSE]): Future[GENERICRESPONSE] = {
    // create path and map variables
    val path = (addFmt("/overview/v1/latest/marketcap/all/tick"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    groups match {
      case Some(param) => queryParams += "groups" -> param.toString
      case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      val status = Response.Status.fromStatusCode(resp.statusCode)
      status.getFamily match {
        case Family.SUCCESSFUL | Family.REDIRECTION | Family.INFORMATIONAL => process(reader.read(resp))
        case _ => throw new ApiException(resp.statusCode, resp.statusText)
      }
    }
  }

  def overviewV1LatestMarketcapFtwTick(groups: Option[List[String]] = None
    )(implicit reader: ClientResponseReader[GENERICRESPONSE]): Future[GENERICRESPONSE] = {
    // create path and map variables
    val path = (addFmt("/overview/v1/latest/marketcap/ftw/tick"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    groups match {
      case Some(param) => queryParams += "groups" -> param.toString
      case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      val status = Response.Status.fromStatusCode(resp.statusCode)
      status.getFamily match {
        case Family.SUCCESSFUL | Family.REDIRECTION | Family.INFORMATIONAL => process(reader.read(resp))
        case _ => throw new ApiException(resp.statusCode, resp.statusText)
      }
    }
  }


}