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

object ReferenceRatesApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def indexCcV1HistoricalDays(host: String, market: String, instrument: String, groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, mappingPriority: String = CHECK_MAPPED_FIRST, responseFormat: String = JSON)(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], mappingPriorityQuery: QueryParam[String], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/historical/days"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1HistoricalHours(host: String, market: String, instrument: String, groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, mappingPriority: String = CHECK_MAPPED_FIRST, responseFormat: String = JSON)(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], mappingPriorityQuery: QueryParam[String], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/historical/hours"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1HistoricalMessages(host: String, market: String, instrument: String, afterTs: Integer, lastCcseq: Integer = 0, mappingPriority: String = CHECK_MAPPED_FIRST, limit: Integer = 100, responseFormat: String = JSON, return404OnEmptyResponse: Boolean = false)(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], afterTsQuery: QueryParam[Integer], lastCcseqQuery: QueryParam[Integer], mappingPriorityQuery: QueryParam[String], limitQuery: QueryParam[Integer], responseFormatQuery: QueryParam[String], return404OnEmptyResponseQuery: QueryParam[Boolean]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/historical/messages"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("afterTs", Some(after_tsQuery.toParamString(after_ts))), ("lastCcseq", Some(last_ccseqQuery.toParamString(last_ccseq))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))), ("limit", Some(limitQuery.toParamString(limit))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))), ("return404OnEmptyResponse", Some(return_404_on_empty_responseQuery.toParamString(return_404_on_empty_response))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1HistoricalMessagesHour(host: String, market: String, instrument: String, hourTs: Integer, mappingPriority: String = CHECK_MAPPED_FIRST, responseFormat: String = JSON, return404OnEmptyResponse: Boolean = false)(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], hourTsQuery: QueryParam[Integer], mappingPriorityQuery: QueryParam[String], responseFormatQuery: QueryParam[String], return404OnEmptyResponseQuery: QueryParam[Boolean]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/historical/messages/hour"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("hourTs", Some(hour_tsQuery.toParamString(hour_ts))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))), ("return404OnEmptyResponse", Some(return_404_on_empty_responseQuery.toParamString(return_404_on_empty_response))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1HistoricalMinutes(host: String, market: String, instrument: String, groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, mappingPriority: String = CHECK_MAPPED_FIRST, responseFormat: String = JSON)(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], mappingPriorityQuery: QueryParam[String], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/historical/minutes"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1LatestInstrumentMetadata(host: String, market: String, instruments: List[String] = List.empty[String] , groups: List[String] = [], mappingPriority: String = CHECK_MAPPED_FIRST)(implicit marketQuery: QueryParam[String], instrumentsQuery: QueryParam[List[String]], groupsQuery: QueryParam[List[String]], mappingPriorityQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/latest/instrument/metadata"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instruments", Some(instrumentsQuery.toParamString(instruments))), ("groups", Some(groupsQuery.toParamString(groups))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1LatestTick(host: String, market: String, instruments: List[String] = List.empty[String] , groups: List[String] = [], mappingPriority: String = CHECK_MAPPED_FIRST)(implicit marketQuery: QueryParam[String], instrumentsQuery: QueryParam[List[String]], groupsQuery: QueryParam[List[String]], mappingPriorityQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/latest/tick"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instruments", Some(instrumentsQuery.toParamString(instruments))), ("groups", Some(groupsQuery.toParamString(groups))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1Markets(host: String, market: String = )(implicit marketQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/markets"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1MarketsInstruments(host: String, market: String = , instrument: String = , instrumentStatus: List[String] = [])(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], instrumentStatusQuery: QueryParam[List[String]]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/markets/instruments"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("instrumentStatus", Some(instrument_statusQuery.toParamString(instrument_status))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1MarketsInstrumentsUnmapped(host: String, market: String = , instrument: String = , instrumentStatus: List[String] = [])(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], instrumentStatusQuery: QueryParam[List[String]]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/markets/instruments/unmapped"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("instrumentStatus", Some(instrument_statusQuery.toParamString(instrument_status))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

}

class HttpServiceReferenceRatesApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def indexCcV1HistoricalDays(market: String, instrument: String, groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, mappingPriority: String = CHECK_MAPPED_FIRST, responseFormat: String = JSON)(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], mappingPriorityQuery: QueryParam[String], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/historical/days"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1HistoricalHours(market: String, instrument: String, groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, mappingPriority: String = CHECK_MAPPED_FIRST, responseFormat: String = JSON)(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], mappingPriorityQuery: QueryParam[String], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/historical/hours"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1HistoricalMessages(market: String, instrument: String, afterTs: Integer, lastCcseq: Integer = 0, mappingPriority: String = CHECK_MAPPED_FIRST, limit: Integer = 100, responseFormat: String = JSON, return404OnEmptyResponse: Boolean = false)(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], afterTsQuery: QueryParam[Integer], lastCcseqQuery: QueryParam[Integer], mappingPriorityQuery: QueryParam[String], limitQuery: QueryParam[Integer], responseFormatQuery: QueryParam[String], return404OnEmptyResponseQuery: QueryParam[Boolean]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/historical/messages"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("afterTs", Some(after_tsQuery.toParamString(after_ts))), ("lastCcseq", Some(last_ccseqQuery.toParamString(last_ccseq))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))), ("limit", Some(limitQuery.toParamString(limit))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))), ("return404OnEmptyResponse", Some(return_404_on_empty_responseQuery.toParamString(return_404_on_empty_response))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1HistoricalMessagesHour(market: String, instrument: String, hourTs: Integer, mappingPriority: String = CHECK_MAPPED_FIRST, responseFormat: String = JSON, return404OnEmptyResponse: Boolean = false)(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], hourTsQuery: QueryParam[Integer], mappingPriorityQuery: QueryParam[String], responseFormatQuery: QueryParam[String], return404OnEmptyResponseQuery: QueryParam[Boolean]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/historical/messages/hour"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("hourTs", Some(hour_tsQuery.toParamString(hour_ts))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))), ("return404OnEmptyResponse", Some(return_404_on_empty_responseQuery.toParamString(return_404_on_empty_response))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1HistoricalMinutes(market: String, instrument: String, groups: List[String] = [], limit: Integer = 30, toTs: Integer, aggregate: Integer = 1, fill: Boolean = true, mappingPriority: String = CHECK_MAPPED_FIRST, responseFormat: String = JSON)(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], groupsQuery: QueryParam[List[String]], limitQuery: QueryParam[Integer], toTsQuery: QueryParam[Integer], aggregateQuery: QueryParam[Integer], fillQuery: QueryParam[Boolean], mappingPriorityQuery: QueryParam[String], responseFormatQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/historical/minutes"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("groups", Some(groupsQuery.toParamString(groups))), ("limit", Some(limitQuery.toParamString(limit))), ("toTs", Some(to_tsQuery.toParamString(to_ts))), ("aggregate", Some(aggregateQuery.toParamString(aggregate))), ("fill", Some(fillQuery.toParamString(fill))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))), ("responseFormat", Some(response_formatQuery.toParamString(response_format))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1LatestInstrumentMetadata(market: String, instruments: List[String] = List.empty[String] , groups: List[String] = [], mappingPriority: String = CHECK_MAPPED_FIRST)(implicit marketQuery: QueryParam[String], instrumentsQuery: QueryParam[List[String]], groupsQuery: QueryParam[List[String]], mappingPriorityQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/latest/instrument/metadata"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instruments", Some(instrumentsQuery.toParamString(instruments))), ("groups", Some(groupsQuery.toParamString(groups))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1LatestTick(market: String, instruments: List[String] = List.empty[String] , groups: List[String] = [], mappingPriority: String = CHECK_MAPPED_FIRST)(implicit marketQuery: QueryParam[String], instrumentsQuery: QueryParam[List[String]], groupsQuery: QueryParam[List[String]], mappingPriorityQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/latest/tick"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instruments", Some(instrumentsQuery.toParamString(instruments))), ("groups", Some(groupsQuery.toParamString(groups))), ("mappingPriority", Some(mapping_priorityQuery.toParamString(mapping_priority))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1Markets(market: String = )(implicit marketQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/markets"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1MarketsInstruments(market: String = , instrument: String = , instrumentStatus: List[String] = [])(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], instrumentStatusQuery: QueryParam[List[String]]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/markets/instruments"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("instrumentStatus", Some(instrument_statusQuery.toParamString(instrument_status))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def indexCcV1MarketsInstrumentsUnmapped(market: String = , instrument: String = , instrumentStatus: List[String] = [])(implicit marketQuery: QueryParam[String], instrumentQuery: QueryParam[String], instrumentStatusQuery: QueryParam[List[String]]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/index/cc/v1/markets/instruments/unmapped"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("market", Some(marketQuery.toParamString(market))), ("instrument", Some(instrumentQuery.toParamString(instrument))), ("instrumentStatus", Some(instrument_statusQuery.toParamString(instrument_status))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

}
