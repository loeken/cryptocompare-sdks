package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SPOTINSTRUMENTMETADATA._

case class SPOTINSTRUMENTMETADATA (
  /* This is the first time instrument was seen on instrumentListSourceType BLOB. */
  FIRST_SEEN_ON_BLOB_TS: Option[Integer],
/* This is the first time instrument was seen on instrumentListSourceType FIX. */
  FIRST_SEEN_ON_FIX_TS: Option[Integer],
/* This is the first time instrument was seen on instrumentListSourceType HARDCODED. */
  FIRST_SEEN_ON_HARDCODED_TS: Option[Integer],
/* This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. */
  FIRST_SEEN_ON_INDEX_COMPOSITION_TS: Option[Integer],
/* This is the first time instrument was seen on instrumentListSourceType NSQ. */
  FIRST_SEEN_ON_NSQ_TS: Option[Integer],
/* This is the first time instrument was seen on instrumentListSourceType POLLING. */
  FIRST_SEEN_ON_POLLING_TS: Option[Integer],
/* This is the first time instrument was seen on instrumentListSourceType STREAMING. */
  FIRST_SEEN_ON_STREAMING_TS: Option[Integer],
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
  FIRST_TRADE_SPOT_FROM_BACKFILL: Option[Any],
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
  FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL: Option[Any],
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
  FIRST_TRADE_SPOT_FROM_BLOB: Option[Any],
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
  FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL: Option[Any],
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
  FIRST_TRADE_SPOT_FROM_CALCULATED: Option[Any],
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
  FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL: Option[Any],
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
  FIRST_TRADE_SPOT_FROM_FIX: Option[Any],
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
  FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL: Option[Any],
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
  FIRST_TRADE_SPOT_FROM_GO: Option[Any],
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
  FIRST_TRADE_SPOT_FROM_GO_EXTERNAL: Option[Any],
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
  FIRST_TRADE_SPOT_FROM_POLLING: Option[Any],
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
  FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL: Option[Any],
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
  FIRST_TRADE_SPOT_FROM_STREAMING: Option[Any],
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
  FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL: Option[Any],
/* The migration destination vm hostname. */
  HOST_MIGRATION_DESTINATION: Option[String],
/* The migration source vm hostname. */
  HOST_MIGRATION_SOURCE: Option[String],
/* The migration status of the symbol, we only poll / stream / connect empty or SETTLED */
  HOST_MIGRATION_STATUS: Option[String],
/* The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&? */
  INSTRUMENT: Option[String],
/* The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange. */
  INSTRUMENT_EXTERNAL_DATA: Option[String],
/* The current mapping information for this instrument */
  INSTRUMENT_MAPPING: Option[Any],
/* Historical mapping information for this instrument */
  INSTRUMENT_MAPPING_HISTORY: Option[List[String]],
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
  INSTRUMENT_SOURCE_BACKFILL: Option[String],
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
  INSTRUMENT_SOURCE_BLOB: Option[String],
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
  INSTRUMENT_SOURCE_CALCULATED: Option[String],
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
  INSTRUMENT_SOURCE_FIX: Option[String],
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
  INSTRUMENT_SOURCE_GO: Option[String],
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
  INSTRUMENT_SOURCE_POLLING: Option[String],
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
  INSTRUMENT_SOURCE_STREAMING: Option[String],
/* The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data. */
  INSTRUMENT_STATUS: Option[String],
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST: Option[Any],
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS: Option[Integer],
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS: Option[Integer],
/* The next time we expect to make a request for TRADE_SPOT on this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS: Option[Integer],
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST: Option[Any],
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS: Option[Integer],
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS: Option[Integer],
/* The next time we expect to make a request for TRADE_SPOT on this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS: Option[Integer],
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST: Option[Any],
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS: Option[Integer],
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS: Option[Integer],
/* The next time we expect to make a request for TRADE_SPOT on this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS: Option[Integer],
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST: Option[Any],
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS: Option[Integer],
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS: Option[Integer],
/* The next time we expect to make a request for TRADE_SPOT on this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS: Option[Integer],
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST: Option[Any],
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS: Option[Integer],
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS: Option[Integer],
/* The next time we expect to make a request for TRADE_SPOT on this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS: Option[Integer],
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST: Option[Any],
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS: Option[Integer],
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS: Option[Integer],
/* The next time we expect to make a request for TRADE_SPOT on this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS: Option[Integer],
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST: Option[Any],
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS: Option[Integer],
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS: Option[Integer],
/* The next time we expect to make a request for TRADE_SPOT on this instrument. */
  INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS: Option[Integer],
/* This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration. */
  INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION: Option[Boolean],
/* This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT. */
  INSTRUMENT_TRADE_SPOT_REST_URI: Option[String],
/* The URL we send to the proxy swarm to get TRADE_SPOT for the instrument. */
  INSTRUMENT_TRADE_SPOT_REST_URL: Option[String],
/* This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument. */
  INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION: Option[String],
/* The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter */
  LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS: Option[Integer],
/* This is the last time instrument was seen on instrumentListSourceType BLOB. */
  LAST_SEEN_ON_BLOB_TS: Option[Integer],
/* This is the last time instrument was seen on instrumentListSourceType FIX. */
  LAST_SEEN_ON_FIX_TS: Option[Integer],
/* This is the last time instrument was seen on instrumentListSourceType HARDCODED. */
  LAST_SEEN_ON_HARDCODED_TS: Option[Integer],
/* This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. */
  LAST_SEEN_ON_INDEX_COMPOSITION_TS: Option[Integer],
/* This is the last time instrument was seen on instrumentListSourceType NSQ. */
  LAST_SEEN_ON_NSQ_TS: Option[Integer],
/* This is the last time instrument was seen on instrumentListSourceType POLLING. */
  LAST_SEEN_ON_POLLING_TS: Option[Integer],
/* This is the last time instrument was seen on instrumentListSourceType STREAMING. */
  LAST_SEEN_ON_STREAMING_TS: Option[Integer],
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
  LAST_TRADE_SPOT_FROM_BACKFILL: Option[Any],
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
  LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL: Option[Any],
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
  LAST_TRADE_SPOT_FROM_BLOB: Option[Any],
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
  LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL: Option[Any],
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
  LAST_TRADE_SPOT_FROM_CALCULATED: Option[Any],
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
  LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL: Option[Any],
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
  LAST_TRADE_SPOT_FROM_FIX: Option[Any],
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
  LAST_TRADE_SPOT_FROM_FIX_EXTERNAL: Option[Any],
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
  LAST_TRADE_SPOT_FROM_GO: Option[Any],
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
  LAST_TRADE_SPOT_FROM_GO_EXTERNAL: Option[Any],
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
  LAST_TRADE_SPOT_FROM_POLLING: Option[Any],
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
  LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL: Option[Any],
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
  LAST_TRADE_SPOT_FROM_STREAMING: Option[Any],
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
  LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL: Option[Any],
/* The version of metadata, used for version conversions/migrates. */
  METADATA_VERSION: Option[Integer],
/* This states the status of blob migration for this intrument on this exchange. */
  PROCESSING_TRADES_FROM_BLOB_STATUS: Option[String],
/* This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument */
  TOTAL_TRADES_SPOT: Option[Integer],
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
  UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA: Option[Any],
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
  UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA: Option[Any],
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
  UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA: Option[Any],
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
  UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA: Option[Any],
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
  UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA: Option[Any],
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
  UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA: Option[Any],
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
  UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA: Option[Any])

object SPOTINSTRUMENTMETADATA {
  import DateTimeCodecs._

  implicit val SPOTINSTRUMENTMETADATACodecJson: CodecJson[SPOTINSTRUMENTMETADATA] = CodecJson.derive[SPOTINSTRUMENTMETADATA]
  implicit val SPOTINSTRUMENTMETADATADecoder: EntityDecoder[SPOTINSTRUMENTMETADATA] = jsonOf[SPOTINSTRUMENTMETADATA]
  implicit val SPOTINSTRUMENTMETADATAEncoder: EntityEncoder[SPOTINSTRUMENTMETADATA] = jsonEncoderOf[SPOTINSTRUMENTMETADATA]
}