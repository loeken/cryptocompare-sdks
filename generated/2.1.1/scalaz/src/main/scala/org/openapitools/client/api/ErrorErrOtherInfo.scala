package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ErrorErrOtherInfo._

case class ErrorErrOtherInfo (
  /* The parameter that is resposible for the error */
  param: Option[String],
/* The values resposible for the error */
  values: Option[List[String]])

object ErrorErrOtherInfo {
  import DateTimeCodecs._

  implicit val ErrorErrOtherInfoCodecJson: CodecJson[ErrorErrOtherInfo] = CodecJson.derive[ErrorErrOtherInfo]
  implicit val ErrorErrOtherInfoDecoder: EntityDecoder[ErrorErrOtherInfo] = jsonOf[ErrorErrOtherInfo]
  implicit val ErrorErrOtherInfoEncoder: EntityEncoder[ErrorErrOtherInfo] = jsonEncoderOf[ErrorErrOtherInfo]
}
