package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SPOTINSTRUMENTMETADATARESPONSE._

case class SPOTINSTRUMENTMETADATARESPONSE (
  data: Option[Map[String, SPOTINSTRUMENTMETADATA]],
err: Option[SPOTINSTRUMENTMARKETDATARESPONSEErr])

object SPOTINSTRUMENTMETADATARESPONSE {
  import DateTimeCodecs._

  implicit val SPOTINSTRUMENTMETADATARESPONSECodecJson: CodecJson[SPOTINSTRUMENTMETADATARESPONSE] = CodecJson.derive[SPOTINSTRUMENTMETADATARESPONSE]
  implicit val SPOTINSTRUMENTMETADATARESPONSEDecoder: EntityDecoder[SPOTINSTRUMENTMETADATARESPONSE] = jsonOf[SPOTINSTRUMENTMETADATARESPONSE]
  implicit val SPOTINSTRUMENTMETADATARESPONSEEncoder: EntityEncoder[SPOTINSTRUMENTMETADATARESPONSE] = jsonEncoderOf[SPOTINSTRUMENTMETADATARESPONSE]
}
