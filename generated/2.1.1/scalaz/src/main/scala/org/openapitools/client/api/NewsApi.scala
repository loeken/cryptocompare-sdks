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

object NewsApi {

  val client = PooledHttp1Client()

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def newsV1ArticleList(host: String, sourceIds: List[String] = [""], lang: String = EN, categories: List[String] = [""], excludeCategories: List[String] = [""], toTs: Integer = -1)(implicit sourceIdsQuery: QueryParam[List[String]], langQuery: QueryParam[String], categoriesQuery: QueryParam[List[String]], excludeCategoriesQuery: QueryParam[List[String]], toTsQuery: QueryParam[Integer]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/news/v1/article/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("sourceIds", Some(source_idsQuery.toParamString(source_ids))), ("lang", Some(langQuery.toParamString(lang))), ("categories", Some(categoriesQuery.toParamString(categories))), ("excludeCategories", Some(exclude_categoriesQuery.toParamString(exclude_categories))), ("toTs", Some(to_tsQuery.toParamString(to_ts))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def newsV1CategoryList(host: String): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/news/v1/category/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def newsV1SourceList(host: String, lang: String = EN, `type`: String = RSS, status: String = ACTIVE)(implicit langQuery: QueryParam[String], `type`Query: QueryParam[String], statusQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/news/v1/source/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("lang", Some(langQuery.toParamString(lang))), ("`type`", Some(typeQuery.toParamString(type))), ("status", Some(statusQuery.toParamString(status))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(host + path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

}

class HttpServiceNewsApi(service: HttpService) {
  val client = Client.fromHttpService(service)

  def escape(value: String): String = URLEncoder.encode(value, "utf-8").replaceAll("\\+", "%20")

  def newsV1ArticleList(sourceIds: List[String] = [""], lang: String = EN, categories: List[String] = [""], excludeCategories: List[String] = [""], toTs: Integer = -1)(implicit sourceIdsQuery: QueryParam[List[String]], langQuery: QueryParam[String], categoriesQuery: QueryParam[List[String]], excludeCategoriesQuery: QueryParam[List[String]], toTsQuery: QueryParam[Integer]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/news/v1/article/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("sourceIds", Some(source_idsQuery.toParamString(source_ids))), ("lang", Some(langQuery.toParamString(lang))), ("categories", Some(categoriesQuery.toParamString(categories))), ("excludeCategories", Some(exclude_categoriesQuery.toParamString(exclude_categories))), ("toTs", Some(to_tsQuery.toParamString(to_ts))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def newsV1CategoryList(): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/news/v1/category/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      )

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

  def newsV1SourceList(lang: String = EN, `type`: String = RSS, status: String = ACTIVE)(implicit langQuery: QueryParam[String], `type`Query: QueryParam[String], statusQuery: QueryParam[String]): Task[GENERICRESPONSE] = {
    implicit val returnTypeDecoder: EntityDecoder[GENERICRESPONSE] = jsonOf[GENERICRESPONSE]

    val path = "/news/v1/source/list"

    val httpMethod = Method.GET
    val contentType = `Content-Type`(MediaType.`application/json`)
    val headers = Headers(
      )
    val queryParams = Query(
      ("lang", Some(langQuery.toParamString(lang))), ("`type`", Some(typeQuery.toParamString(type))), ("status", Some(statusQuery.toParamString(status))))

    for {
      uri           <- Task.fromDisjunction(Uri.fromString(path))
      uriWithParams =  uri.copy(query = queryParams)
      req           =  Request(method = httpMethod, uri = uriWithParams, headers = headers.put(contentType))
      resp          <- client.expect[GENERICRESPONSE](req)

    } yield resp
  }

}
