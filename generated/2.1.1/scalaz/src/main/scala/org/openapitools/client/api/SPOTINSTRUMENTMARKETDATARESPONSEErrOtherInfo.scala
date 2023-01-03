package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo._

case class SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo (
  /* The parameter that is resposible for the error */
  param: Option[String],
/* The values resposible for the error */
  values: Option[List[String]])

object SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo {
  import DateTimeCodecs._

  implicit val SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfoCodecJson: CodecJson[SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo] = CodecJson.derive[SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo]
  implicit val SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfoDecoder: EntityDecoder[SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo] = jsonOf[SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo]
  implicit val SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfoEncoder: EntityEncoder[SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo] = jsonEncoderOf[SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo]
}
