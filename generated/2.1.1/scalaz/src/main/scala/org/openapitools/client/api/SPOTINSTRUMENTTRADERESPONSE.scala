package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SPOTINSTRUMENTTRADERESPONSE._

case class SPOTINSTRUMENTTRADERESPONSE (
  data: Option[List[SPOTINSTRUMENTTRADE]],
err: Option[Any])

object SPOTINSTRUMENTTRADERESPONSE {
  import DateTimeCodecs._

  implicit val SPOTINSTRUMENTTRADERESPONSECodecJson: CodecJson[SPOTINSTRUMENTTRADERESPONSE] = CodecJson.derive[SPOTINSTRUMENTTRADERESPONSE]
  implicit val SPOTINSTRUMENTTRADERESPONSEDecoder: EntityDecoder[SPOTINSTRUMENTTRADERESPONSE] = jsonOf[SPOTINSTRUMENTTRADERESPONSE]
  implicit val SPOTINSTRUMENTTRADERESPONSEEncoder: EntityEncoder[SPOTINSTRUMENTTRADERESPONSE] = jsonEncoderOf[SPOTINSTRUMENTTRADERESPONSE]
}
