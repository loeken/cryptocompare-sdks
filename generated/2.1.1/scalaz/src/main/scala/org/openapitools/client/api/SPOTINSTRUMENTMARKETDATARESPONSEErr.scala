package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SPOTINSTRUMENTMARKETDATARESPONSEErr._

case class SPOTINSTRUMENTMARKETDATARESPONSEErr (
  /* A message describing the error */
  message: Option[String],
otherInfo: Option[SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo],
/* A public facing error type. If you want to treat a specific error use the type. */
  `type`: Option[Integer])

object SPOTINSTRUMENTMARKETDATARESPONSEErr {
  import DateTimeCodecs._

  implicit val SPOTINSTRUMENTMARKETDATARESPONSEErrCodecJson: CodecJson[SPOTINSTRUMENTMARKETDATARESPONSEErr] = CodecJson.derive[SPOTINSTRUMENTMARKETDATARESPONSEErr]
  implicit val SPOTINSTRUMENTMARKETDATARESPONSEErrDecoder: EntityDecoder[SPOTINSTRUMENTMARKETDATARESPONSEErr] = jsonOf[SPOTINSTRUMENTMARKETDATARESPONSEErr]
  implicit val SPOTINSTRUMENTMARKETDATARESPONSEErrEncoder: EntityEncoder[SPOTINSTRUMENTMARKETDATARESPONSEErr] = jsonEncoderOf[SPOTINSTRUMENTMARKETDATARESPONSEErr]
}
