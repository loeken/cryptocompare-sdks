package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import GENERICRESPONSEData._

case class GENERICRESPONSEData (
  /* The endpoint does not have a reponse defined */
  NO_DATA: Option[String])

object GENERICRESPONSEData {
  import DateTimeCodecs._

  implicit val GENERICRESPONSEDataCodecJson: CodecJson[GENERICRESPONSEData] = CodecJson.derive[GENERICRESPONSEData]
  implicit val GENERICRESPONSEDataDecoder: EntityDecoder[GENERICRESPONSEData] = jsonOf[GENERICRESPONSEData]
  implicit val GENERICRESPONSEDataEncoder: EntityEncoder[GENERICRESPONSEData] = jsonEncoderOf[GENERICRESPONSEData]
}
