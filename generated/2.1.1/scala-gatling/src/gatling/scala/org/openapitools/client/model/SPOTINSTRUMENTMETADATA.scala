
package org.openapitools.client.model


case class SPOTINSTRUMENTMETADATA (
    /* This is the first time instrument was seen on instrumentListSourceType BLOB. */
    _FIRST_SEEN_ON_BLOB_TS: Option[Integer],
    /* This is the first time instrument was seen on instrumentListSourceType FIX. */
    _FIRST_SEEN_ON_FIX_TS: Option[Integer],
    /* This is the first time instrument was seen on instrumentListSourceType HARDCODED. */
    _FIRST_SEEN_ON_HARDCODED_TS: Option[Integer],
    /* This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. */
    _FIRST_SEEN_ON_INDEX_COMPOSITION_TS: Option[Integer],
    /* This is the first time instrument was seen on instrumentListSourceType NSQ. */
    _FIRST_SEEN_ON_NSQ_TS: Option[Integer],
    /* This is the first time instrument was seen on instrumentListSourceType POLLING. */
    _FIRST_SEEN_ON_POLLING_TS: Option[Integer],
    /* This is the first time instrument was seen on instrumentListSourceType STREAMING. */
    _FIRST_SEEN_ON_STREAMING_TS: Option[Integer],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    _FIRST_TRADE_SPOT_FROM_BACKFILL: Option[Any],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    _FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL: Option[Any],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    _FIRST_TRADE_SPOT_FROM_BLOB: Option[Any],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    _FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL: Option[Any],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    _FIRST_TRADE_SPOT_FROM_CALCULATED: Option[Any],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    _FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL: Option[Any],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    _FIRST_TRADE_SPOT_FROM_FIX: Option[Any],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    _FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL: Option[Any],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    _FIRST_TRADE_SPOT_FROM_GO: Option[Any],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    _FIRST_TRADE_SPOT_FROM_GO_EXTERNAL: Option[Any],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    _FIRST_TRADE_SPOT_FROM_POLLING: Option[Any],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    _FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL: Option[Any],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    _FIRST_TRADE_SPOT_FROM_STREAMING: Option[Any],
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    _FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL: Option[Any],
    /* The migration destination vm hostname. */
    _HOST_MIGRATION_DESTINATION: Option[String],
    /* The migration source vm hostname. */
    _HOST_MIGRATION_SOURCE: Option[String],
    /* The migration status of the symbol, we only poll / stream / connect empty or SETTLED */
    _HOST_MIGRATION_STATUS: Option[String],
    /* The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&? */
    _INSTRUMENT: Option[String],
    /* The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange. */
    _INSTRUMENT_EXTERNAL_DATA: Option[String],
    /* The current mapping information for this instrument */
    _INSTRUMENT_MAPPING: Option[Any],
    /* Historical mapping information for this instrument */
    _INSTRUMENT_MAPPING_HISTORY: Option[List[String]],
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    _INSTRUMENT_SOURCE_BACKFILL: Option[String],
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    _INSTRUMENT_SOURCE_BLOB: Option[String],
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    _INSTRUMENT_SOURCE_CALCULATED: Option[String],
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    _INSTRUMENT_SOURCE_FIX: Option[String],
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    _INSTRUMENT_SOURCE_GO: Option[String],
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    _INSTRUMENT_SOURCE_POLLING: Option[String],
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    _INSTRUMENT_SOURCE_STREAMING: Option[String],
    /* The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data. */
    _INSTRUMENT_STATUS: Option[String],
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST: Option[Any],
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS: Option[Integer],
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS: Option[Integer],
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS: Option[Integer],
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST: Option[Any],
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS: Option[Integer],
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS: Option[Integer],
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS: Option[Integer],
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST: Option[Any],
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS: Option[Integer],
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS: Option[Integer],
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS: Option[Integer],
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST: Option[Any],
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS: Option[Integer],
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS: Option[Integer],
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS: Option[Integer],
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST: Option[Any],
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS: Option[Integer],
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS: Option[Integer],
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS: Option[Integer],
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST: Option[Any],
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS: Option[Integer],
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS: Option[Integer],
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS: Option[Integer],
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST: Option[Any],
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS: Option[Integer],
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS: Option[Integer],
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    _INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS: Option[Integer],
    /* This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration. */
    _INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION: Option[Boolean],
    /* This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT. */
    _INSTRUMENT_TRADE_SPOT_REST_URI: Option[String],
    /* The URL we send to the proxy swarm to get TRADE_SPOT for the instrument. */
    _INSTRUMENT_TRADE_SPOT_REST_URL: Option[String],
    /* This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument. */
    _INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION: Option[String],
    /* The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter */
    _LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS: Option[Integer],
    /* This is the last time instrument was seen on instrumentListSourceType BLOB. */
    _LAST_SEEN_ON_BLOB_TS: Option[Integer],
    /* This is the last time instrument was seen on instrumentListSourceType FIX. */
    _LAST_SEEN_ON_FIX_TS: Option[Integer],
    /* This is the last time instrument was seen on instrumentListSourceType HARDCODED. */
    _LAST_SEEN_ON_HARDCODED_TS: Option[Integer],
    /* This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. */
    _LAST_SEEN_ON_INDEX_COMPOSITION_TS: Option[Integer],
    /* This is the last time instrument was seen on instrumentListSourceType NSQ. */
    _LAST_SEEN_ON_NSQ_TS: Option[Integer],
    /* This is the last time instrument was seen on instrumentListSourceType POLLING. */
    _LAST_SEEN_ON_POLLING_TS: Option[Integer],
    /* This is the last time instrument was seen on instrumentListSourceType STREAMING. */
    _LAST_SEEN_ON_STREAMING_TS: Option[Integer],
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    _LAST_TRADE_SPOT_FROM_BACKFILL: Option[Any],
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    _LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL: Option[Any],
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    _LAST_TRADE_SPOT_FROM_BLOB: Option[Any],
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    _LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL: Option[Any],
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    _LAST_TRADE_SPOT_FROM_CALCULATED: Option[Any],
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    _LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL: Option[Any],
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    _LAST_TRADE_SPOT_FROM_FIX: Option[Any],
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    _LAST_TRADE_SPOT_FROM_FIX_EXTERNAL: Option[Any],
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    _LAST_TRADE_SPOT_FROM_GO: Option[Any],
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    _LAST_TRADE_SPOT_FROM_GO_EXTERNAL: Option[Any],
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    _LAST_TRADE_SPOT_FROM_POLLING: Option[Any],
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    _LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL: Option[Any],
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    _LAST_TRADE_SPOT_FROM_STREAMING: Option[Any],
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    _LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL: Option[Any],
    /* The version of metadata, used for version conversions/migrates. */
    _METADATA_VERSION: Option[Integer],
    /* This states the status of blob migration for this intrument on this exchange. */
    _PROCESSING_TRADES_FROM_BLOB_STATUS: Option[String],
    /* This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument */
    _TOTAL_TRADES_SPOT: Option[Integer],
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    _UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA: Option[Any],
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    _UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA: Option[Any],
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    _UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA: Option[Any],
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    _UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA: Option[Any],
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    _UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA: Option[Any],
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    _UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA: Option[Any],
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    _UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA: Option[Any]
)
object SPOTINSTRUMENTMETADATA {
    def toStringBody(var_FIRST_SEEN_ON_BLOB_TS: Object, var_FIRST_SEEN_ON_FIX_TS: Object, var_FIRST_SEEN_ON_HARDCODED_TS: Object, var_FIRST_SEEN_ON_INDEX_COMPOSITION_TS: Object, var_FIRST_SEEN_ON_NSQ_TS: Object, var_FIRST_SEEN_ON_POLLING_TS: Object, var_FIRST_SEEN_ON_STREAMING_TS: Object, var_FIRST_TRADE_SPOT_FROM_BACKFILL: Object, var_FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL: Object, var_FIRST_TRADE_SPOT_FROM_BLOB: Object, var_FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL: Object, var_FIRST_TRADE_SPOT_FROM_CALCULATED: Object, var_FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL: Object, var_FIRST_TRADE_SPOT_FROM_FIX: Object, var_FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL: Object, var_FIRST_TRADE_SPOT_FROM_GO: Object, var_FIRST_TRADE_SPOT_FROM_GO_EXTERNAL: Object, var_FIRST_TRADE_SPOT_FROM_POLLING: Object, var_FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL: Object, var_FIRST_TRADE_SPOT_FROM_STREAMING: Object, var_FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL: Object, var_HOST_MIGRATION_DESTINATION: Object, var_HOST_MIGRATION_SOURCE: Object, var_HOST_MIGRATION_STATUS: Object, var_INSTRUMENT: Object, var_INSTRUMENT_EXTERNAL_DATA: Object, var_INSTRUMENT_MAPPING: Object, var_INSTRUMENT_MAPPING_HISTORY: Object, var_INSTRUMENT_SOURCE_BACKFILL: Object, var_INSTRUMENT_SOURCE_BLOB: Object, var_INSTRUMENT_SOURCE_CALCULATED: Object, var_INSTRUMENT_SOURCE_FIX: Object, var_INSTRUMENT_SOURCE_GO: Object, var_INSTRUMENT_SOURCE_POLLING: Object, var_INSTRUMENT_SOURCE_STREAMING: Object, var_INSTRUMENT_STATUS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST: Object, var_INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST: Object, var_INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST: Object, var_INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST: Object, var_INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST: Object, var_INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST: Object, var_INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST: Object, var_INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS: Object, var_INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS: Object, var_INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION: Object, var_INSTRUMENT_TRADE_SPOT_REST_URI: Object, var_INSTRUMENT_TRADE_SPOT_REST_URL: Object, var_INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION: Object, var_LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS: Object, var_LAST_SEEN_ON_BLOB_TS: Object, var_LAST_SEEN_ON_FIX_TS: Object, var_LAST_SEEN_ON_HARDCODED_TS: Object, var_LAST_SEEN_ON_INDEX_COMPOSITION_TS: Object, var_LAST_SEEN_ON_NSQ_TS: Object, var_LAST_SEEN_ON_POLLING_TS: Object, var_LAST_SEEN_ON_STREAMING_TS: Object, var_LAST_TRADE_SPOT_FROM_BACKFILL: Object, var_LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL: Object, var_LAST_TRADE_SPOT_FROM_BLOB: Object, var_LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL: Object, var_LAST_TRADE_SPOT_FROM_CALCULATED: Object, var_LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL: Object, var_LAST_TRADE_SPOT_FROM_FIX: Object, var_LAST_TRADE_SPOT_FROM_FIX_EXTERNAL: Object, var_LAST_TRADE_SPOT_FROM_GO: Object, var_LAST_TRADE_SPOT_FROM_GO_EXTERNAL: Object, var_LAST_TRADE_SPOT_FROM_POLLING: Object, var_LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL: Object, var_LAST_TRADE_SPOT_FROM_STREAMING: Object, var_LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL: Object, var_METADATA_VERSION: Object, var_PROCESSING_TRADES_FROM_BLOB_STATUS: Object, var_TOTAL_TRADES_SPOT: Object, var_UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA: Object, var_UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA: Object, var_UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA: Object, var_UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA: Object, var_UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA: Object, var_UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA: Object, var_UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA: Object) =
        s"""
        | {
        | "FIRST_SEEN_ON_BLOB_TS":$var_FIRST_SEEN_ON_BLOB_TS,"FIRST_SEEN_ON_FIX_TS":$var_FIRST_SEEN_ON_FIX_TS,"FIRST_SEEN_ON_HARDCODED_TS":$var_FIRST_SEEN_ON_HARDCODED_TS,"FIRST_SEEN_ON_INDEX_COMPOSITION_TS":$var_FIRST_SEEN_ON_INDEX_COMPOSITION_TS,"FIRST_SEEN_ON_NSQ_TS":$var_FIRST_SEEN_ON_NSQ_TS,"FIRST_SEEN_ON_POLLING_TS":$var_FIRST_SEEN_ON_POLLING_TS,"FIRST_SEEN_ON_STREAMING_TS":$var_FIRST_SEEN_ON_STREAMING_TS,"FIRST_TRADE_SPOT_FROM_BACKFILL":$var_FIRST_TRADE_SPOT_FROM_BACKFILL,"FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL":$var_FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL,"FIRST_TRADE_SPOT_FROM_BLOB":$var_FIRST_TRADE_SPOT_FROM_BLOB,"FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL":$var_FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL,"FIRST_TRADE_SPOT_FROM_CALCULATED":$var_FIRST_TRADE_SPOT_FROM_CALCULATED,"FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL":$var_FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL,"FIRST_TRADE_SPOT_FROM_FIX":$var_FIRST_TRADE_SPOT_FROM_FIX,"FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL":$var_FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL,"FIRST_TRADE_SPOT_FROM_GO":$var_FIRST_TRADE_SPOT_FROM_GO,"FIRST_TRADE_SPOT_FROM_GO_EXTERNAL":$var_FIRST_TRADE_SPOT_FROM_GO_EXTERNAL,"FIRST_TRADE_SPOT_FROM_POLLING":$var_FIRST_TRADE_SPOT_FROM_POLLING,"FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL":$var_FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL,"FIRST_TRADE_SPOT_FROM_STREAMING":$var_FIRST_TRADE_SPOT_FROM_STREAMING,"FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL":$var_FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL,"HOST_MIGRATION_DESTINATION":$var_HOST_MIGRATION_DESTINATION,"HOST_MIGRATION_SOURCE":$var_HOST_MIGRATION_SOURCE,"HOST_MIGRATION_STATUS":$var_HOST_MIGRATION_STATUS,"INSTRUMENT":$var_INSTRUMENT,"INSTRUMENT_EXTERNAL_DATA":$var_INSTRUMENT_EXTERNAL_DATA,"INSTRUMENT_MAPPING":$var_INSTRUMENT_MAPPING,"INSTRUMENT_MAPPING_HISTORY":$var_INSTRUMENT_MAPPING_HISTORY,"INSTRUMENT_SOURCE_BACKFILL":$var_INSTRUMENT_SOURCE_BACKFILL,"INSTRUMENT_SOURCE_BLOB":$var_INSTRUMENT_SOURCE_BLOB,"INSTRUMENT_SOURCE_CALCULATED":$var_INSTRUMENT_SOURCE_CALCULATED,"INSTRUMENT_SOURCE_FIX":$var_INSTRUMENT_SOURCE_FIX,"INSTRUMENT_SOURCE_GO":$var_INSTRUMENT_SOURCE_GO,"INSTRUMENT_SOURCE_POLLING":$var_INSTRUMENT_SOURCE_POLLING,"INSTRUMENT_SOURCE_STREAMING":$var_INSTRUMENT_SOURCE_STREAMING,"INSTRUMENT_STATUS":$var_INSTRUMENT_STATUS,"INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST":$var_INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST,"INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS,"INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST":$var_INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST,"INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS,"INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST":$var_INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST,"INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS,"INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST":$var_INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST,"INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS,"INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST":$var_INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST,"INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS,"INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST":$var_INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST,"INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS,"INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST":$var_INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST,"INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS,"INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS":$var_INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS,"INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION":$var_INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION,"INSTRUMENT_TRADE_SPOT_REST_URI":$var_INSTRUMENT_TRADE_SPOT_REST_URI,"INSTRUMENT_TRADE_SPOT_REST_URL":$var_INSTRUMENT_TRADE_SPOT_REST_URL,"INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION":$var_INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION,"LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS":$var_LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS,"LAST_SEEN_ON_BLOB_TS":$var_LAST_SEEN_ON_BLOB_TS,"LAST_SEEN_ON_FIX_TS":$var_LAST_SEEN_ON_FIX_TS,"LAST_SEEN_ON_HARDCODED_TS":$var_LAST_SEEN_ON_HARDCODED_TS,"LAST_SEEN_ON_INDEX_COMPOSITION_TS":$var_LAST_SEEN_ON_INDEX_COMPOSITION_TS,"LAST_SEEN_ON_NSQ_TS":$var_LAST_SEEN_ON_NSQ_TS,"LAST_SEEN_ON_POLLING_TS":$var_LAST_SEEN_ON_POLLING_TS,"LAST_SEEN_ON_STREAMING_TS":$var_LAST_SEEN_ON_STREAMING_TS,"LAST_TRADE_SPOT_FROM_BACKFILL":$var_LAST_TRADE_SPOT_FROM_BACKFILL,"LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL":$var_LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL,"LAST_TRADE_SPOT_FROM_BLOB":$var_LAST_TRADE_SPOT_FROM_BLOB,"LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL":$var_LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL,"LAST_TRADE_SPOT_FROM_CALCULATED":$var_LAST_TRADE_SPOT_FROM_CALCULATED,"LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL":$var_LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL,"LAST_TRADE_SPOT_FROM_FIX":$var_LAST_TRADE_SPOT_FROM_FIX,"LAST_TRADE_SPOT_FROM_FIX_EXTERNAL":$var_LAST_TRADE_SPOT_FROM_FIX_EXTERNAL,"LAST_TRADE_SPOT_FROM_GO":$var_LAST_TRADE_SPOT_FROM_GO,"LAST_TRADE_SPOT_FROM_GO_EXTERNAL":$var_LAST_TRADE_SPOT_FROM_GO_EXTERNAL,"LAST_TRADE_SPOT_FROM_POLLING":$var_LAST_TRADE_SPOT_FROM_POLLING,"LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL":$var_LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL,"LAST_TRADE_SPOT_FROM_STREAMING":$var_LAST_TRADE_SPOT_FROM_STREAMING,"LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL":$var_LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL,"METADATA_VERSION":$var_METADATA_VERSION,"PROCESSING_TRADES_FROM_BLOB_STATUS":$var_PROCESSING_TRADES_FROM_BLOB_STATUS,"TOTAL_TRADES_SPOT":$var_TOTAL_TRADES_SPOT,"UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA":$var_UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA,"UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA":$var_UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA,"UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA":$var_UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA,"UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA":$var_UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA,"UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA":$var_UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA,"UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA":$var_UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA,"UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA":$var_UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA
        | }
        """.stripMargin
}
