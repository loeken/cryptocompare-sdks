package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import java.io.File
import java.net.URLEncoder
import java.util.UUID

import org.http4s._
import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.http4s.client._
import org.http4s.client.blaze.PooledHttp1Client
import org.http4s.headers._

import org.joda.time.DateTime

import scalaz.concurrent.Task

import HelperCodecs._

import org.openapitools.client.api.Error
import org.openapitools.client.api.GENERICRESPONSE

object OverviewApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def overviewV1HistoricalMarketcapAllAssetsDays(host: String, groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, responseFormat: String = JSON)(implicit groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/overview/v1/historical/marketcap/all/assets/days"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def overviewV1HistoricalMarketcapAllAssetsHours(host: String, groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, responseFormat: String = JSON)(implicit groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/overview/v1/historical/marketcap/all/assets/hours"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def overviewV1HistoricalMarketcapFtwAssetsDays(host: String, groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, responseFormat: String = JSON)(implicit groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/overview/v1/historical/marketcap/ftw/assets/days"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def overviewV1HistoricalMarketcapFtwAssetsHours(host: String, groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, responseFormat: String = JSON)(implicit groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/overview/v1/historical/marketcap/ftw/assets/hours"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def overviewV1LatestMarketcapAllTick(host: String, groups: List[String] = [])(implicit groupsQuery: QueryParam[List[String]]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/overview/v1/latest/marketcap/all/tick"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("groups", Some(groupsQuery.toParamString(groups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def overviewV1LatestMarketcapFtwTick(host: String, groups: List[String] = [])(implicit groupsQuery: QueryParam[List[String]]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/overview/v1/latest/marketcap/ftw/tick"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("groups", Some(groupsQuery.toParamString(groups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

}

class HttpServiceOverviewApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def overviewV1HistoricalMarketcapAllAssetsDays(groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, responseFormat: String = JSON)(implicit groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/overview/v1/historical/marketcap/all/assets/days"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def overviewV1HistoricalMarketcapAllAssetsHours(groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, responseFormat: String = JSON)(implicit groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/overview/v1/historical/marketcap/all/assets/hours"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def overviewV1HistoricalMarketcapFtwAssetsDays(groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, responseFormat: String = JSON)(implicit groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/overview/v1/historical/marketcap/ftw/assets/days"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def overviewV1HistoricalMarketcapFtwAssetsHours(groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, responseFormat: String = JSON)(implicit groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/overview/v1/historical/marketcap/ftw/assets/hours"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def overviewV1LatestMarketcapAllTick(groups: List[String] = [])(implicit groupsQuery: QueryParam[List[String]]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/overview/v1/latest/marketcap/all/tick"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("groups", Some(groupsQuery.toParamString(groups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def overviewV1LatestMarketcapFtwTick(groups: List[String] = [])(implicit groupsQuery: QueryParam[List[String]]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/overview/v1/latest/marketcap/ftw/tick"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("groups", Some(groupsQuery.toParamString(groups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

}
