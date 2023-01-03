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

object AssetApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def assetV1DataByAddress(host: String, address: String, chainSymbol: String, groups: String = )(implicit addressQuery: QueryParam[String], chainSymbolQuery: QueryParam[String], groupsQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/asset/v1/data/by/address"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("address", Some(addressQuery.toParamString(address))), ("chainSymbol", Some(chain_symbolQuery.toParamString(chain_symbol))), ("groups", Some(groupsQuery.toParamString(groups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def assetV1DataById(host: String, assetId: Integer, groups: String = )(implicit assetIdQuery: QueryParam[Integer], groupsQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/asset/v1/data/by/id"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("assetId", Some(asset_idQuery.toParamString(asset_id))), ("groups", Some(groupsQuery.toParamString(groups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def assetV1DataBySymbol(host: String, assetSymbol: String, groups: String = )(implicit assetSymbolQuery: QueryParam[String], groupsQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/asset/v1/data/by/symbol"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("assetSymbol", Some(asset_symbolQuery.toParamString(asset_symbol))), ("groups", Some(groupsQuery.toParamString(groups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def assetV1TopList(host: String, page: Integer = 1, pageSize: Integer = 100, assetType: String = , sortBy: String = CREATED_ON, sortDirection: String = DESC, groups: String = )(implicit pageQuery: QueryParam[Integer], pageSizeQuery: QueryParam[Integer], assetTypeQuery: QueryParam[String], sortByQuery: QueryParam[String], sortDirectionQuery: QueryParam[String], groupsQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/asset/v1/top/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("page", Some(pageQuery.toParamString(page))), ("pageSize", Some(page_sizeQuery.toParamString(page_size))), ("assetType", Some(asset_typeQuery.toParamString(asset_type))), ("sortBy", Some(sort_byQuery.toParamString(sort_by))), ("sortDirection", Some(sort_directionQuery.toParamString(sort_direction))), ("groups", Some(groupsQuery.toParamString(groups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

}

class HttpServiceAssetApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def assetV1DataByAddress(address: String, chainSymbol: String, groups: String = )(implicit addressQuery: QueryParam[String], chainSymbolQuery: QueryParam[String], groupsQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/asset/v1/data/by/address"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("address", Some(addressQuery.toParamString(address))), ("chainSymbol", Some(chain_symbolQuery.toParamString(chain_symbol))), ("groups", Some(groupsQuery.toParamString(groups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def assetV1DataById(assetId: Integer, groups: String = )(implicit assetIdQuery: QueryParam[Integer], groupsQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/asset/v1/data/by/id"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("assetId", Some(asset_idQuery.toParamString(asset_id))), ("groups", Some(groupsQuery.toParamString(groups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def assetV1DataBySymbol(assetSymbol: String, groups: String = )(implicit assetSymbolQuery: QueryParam[String], groupsQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/asset/v1/data/by/symbol"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("assetSymbol", Some(asset_symbolQuery.toParamString(asset_symbol))), ("groups", Some(groupsQuery.toParamString(groups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def assetV1TopList(page: Integer = 1, pageSize: Integer = 100, assetType: String = , sortBy: String = CREATED_ON, sortDirection: String = DESC, groups: String = )(implicit pageQuery: QueryParam[Integer], pageSizeQuery: QueryParam[Integer], assetTypeQuery: QueryParam[String], sortByQuery: QueryParam[String], sortDirectionQuery: QueryParam[String], groupsQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/asset/v1/top/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("page", Some(pageQuery.toParamString(page))), ("pageSize", Some(page_sizeQuery.toParamString(page_size))), ("assetType", Some(asset_typeQuery.toParamString(asset_type))), ("sortBy", Some(sort_byQuery.toParamString(sort_by))), ("sortDirection", Some(sort_directionQuery.toParamString(sort_direction))), ("groups", Some(groupsQuery.toParamString(groups))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

}
