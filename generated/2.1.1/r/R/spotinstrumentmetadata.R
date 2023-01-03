#' Create a new SPOTINSTRUMENTMETADATA
#'
#' @description
#' SPOTINSTRUMENTMETADATA Class
#'
#' @docType class
#' @title SPOTINSTRUMENTMETADATA
#' @description SPOTINSTRUMENTMETADATA Class
#' @format An \code{R6Class} generator object
#' @field FIRST_SEEN_ON_BLOB_TS This is the first time instrument was seen on instrumentListSourceType BLOB. integer [optional]
#' @field FIRST_SEEN_ON_FIX_TS This is the first time instrument was seen on instrumentListSourceType FIX. integer [optional]
#' @field FIRST_SEEN_ON_HARDCODED_TS This is the first time instrument was seen on instrumentListSourceType HARDCODED. integer [optional]
#' @field FIRST_SEEN_ON_INDEX_COMPOSITION_TS This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. integer [optional]
#' @field FIRST_SEEN_ON_NSQ_TS This is the first time instrument was seen on instrumentListSourceType NSQ. integer [optional]
#' @field FIRST_SEEN_ON_POLLING_TS This is the first time instrument was seen on instrumentListSourceType POLLING. integer [optional]
#' @field FIRST_SEEN_ON_STREAMING_TS This is the first time instrument was seen on instrumentListSourceType STREAMING. integer [optional]
#' @field FIRST_TRADE_SPOT_FROM_BACKFILL This is the first TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format. object [optional]
#' @field FIRST_TRADE_SPOT_FROM_BLOB This is the first TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format. object [optional]
#' @field FIRST_TRADE_SPOT_FROM_CALCULATED This is the first TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format. object [optional]
#' @field FIRST_TRADE_SPOT_FROM_FIX This is the first TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format. object [optional]
#' @field FIRST_TRADE_SPOT_FROM_GO This is the first TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field FIRST_TRADE_SPOT_FROM_GO_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format. object [optional]
#' @field FIRST_TRADE_SPOT_FROM_POLLING This is the first TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format. object [optional]
#' @field FIRST_TRADE_SPOT_FROM_STREAMING This is the first TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format. object [optional]
#' @field HOST_MIGRATION_DESTINATION The migration destination vm hostname. character [optional]
#' @field HOST_MIGRATION_SOURCE The migration source vm hostname. character [optional]
#' @field HOST_MIGRATION_STATUS The migration status of the symbol, we only poll / stream / connect empty or SETTLED character [optional]
#' @field INSTRUMENT The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&? character [optional]
#' @field INSTRUMENT_EXTERNAL_DATA The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange. character [optional]
#' @field INSTRUMENT_MAPPING The current mapping information for this instrument object [optional]
#' @field INSTRUMENT_MAPPING_HISTORY Historical mapping information for this instrument list(character) [optional]
#' @field INSTRUMENT_SOURCE_BACKFILL Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. character [optional]
#' @field INSTRUMENT_SOURCE_BLOB Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. character [optional]
#' @field INSTRUMENT_SOURCE_CALCULATED Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. character [optional]
#' @field INSTRUMENT_SOURCE_FIX Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. character [optional]
#' @field INSTRUMENT_SOURCE_GO Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. character [optional]
#' @field INSTRUMENT_SOURCE_POLLING Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. character [optional]
#' @field INSTRUMENT_SOURCE_STREAMING Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. character [optional]
#' @field INSTRUMENT_STATUS The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data. character [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. object [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. object [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. object [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. object [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. object [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. object [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. object [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument. integer [optional]
#' @field INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration. character [optional]
#' @field INSTRUMENT_TRADE_SPOT_REST_URI This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT. character [optional]
#' @field INSTRUMENT_TRADE_SPOT_REST_URL The URL we send to the proxy swarm to get TRADE_SPOT for the instrument. character [optional]
#' @field INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument. character [optional]
#' @field LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter integer [optional]
#' @field LAST_SEEN_ON_BLOB_TS This is the last time instrument was seen on instrumentListSourceType BLOB. integer [optional]
#' @field LAST_SEEN_ON_FIX_TS This is the last time instrument was seen on instrumentListSourceType FIX. integer [optional]
#' @field LAST_SEEN_ON_HARDCODED_TS This is the last time instrument was seen on instrumentListSourceType HARDCODED. integer [optional]
#' @field LAST_SEEN_ON_INDEX_COMPOSITION_TS This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. integer [optional]
#' @field LAST_SEEN_ON_NSQ_TS This is the last time instrument was seen on instrumentListSourceType NSQ. integer [optional]
#' @field LAST_SEEN_ON_POLLING_TS This is the last time instrument was seen on instrumentListSourceType POLLING. integer [optional]
#' @field LAST_SEEN_ON_STREAMING_TS This is the last time instrument was seen on instrumentListSourceType STREAMING. integer [optional]
#' @field LAST_TRADE_SPOT_FROM_BACKFILL This is the last TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format. object [optional]
#' @field LAST_TRADE_SPOT_FROM_BLOB This is the last TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format. object [optional]
#' @field LAST_TRADE_SPOT_FROM_CALCULATED This is the last TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format. object [optional]
#' @field LAST_TRADE_SPOT_FROM_FIX This is the last TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field LAST_TRADE_SPOT_FROM_FIX_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format. object [optional]
#' @field LAST_TRADE_SPOT_FROM_GO This is the last TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field LAST_TRADE_SPOT_FROM_GO_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format. object [optional]
#' @field LAST_TRADE_SPOT_FROM_POLLING This is the last TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format. object [optional]
#' @field LAST_TRADE_SPOT_FROM_STREAMING This is the last TRADE_SPOT that we have seen on the specific source type in internal format. object [optional]
#' @field LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format. object [optional]
#' @field METADATA_VERSION The version of metadata, used for version conversions/migrates. integer [optional]
#' @field PROCESSING_TRADES_FROM_BLOB_STATUS This states the status of blob migration for this intrument on this exchange. character [optional]
#' @field TOTAL_TRADES_SPOT This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument integer [optional]
#' @field UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. object [optional]
#' @field UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. object [optional]
#' @field UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. object [optional]
#' @field UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. object [optional]
#' @field UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. object [optional]
#' @field UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. object [optional]
#' @field UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SPOTINSTRUMENTMETADATA <- R6::R6Class(
  "SPOTINSTRUMENTMETADATA",
  public = list(
    `FIRST_SEEN_ON_BLOB_TS` = NULL,
    `FIRST_SEEN_ON_FIX_TS` = NULL,
    `FIRST_SEEN_ON_HARDCODED_TS` = NULL,
    `FIRST_SEEN_ON_INDEX_COMPOSITION_TS` = NULL,
    `FIRST_SEEN_ON_NSQ_TS` = NULL,
    `FIRST_SEEN_ON_POLLING_TS` = NULL,
    `FIRST_SEEN_ON_STREAMING_TS` = NULL,
    `FIRST_TRADE_SPOT_FROM_BACKFILL` = NULL,
    `FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL` = NULL,
    `FIRST_TRADE_SPOT_FROM_BLOB` = NULL,
    `FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL` = NULL,
    `FIRST_TRADE_SPOT_FROM_CALCULATED` = NULL,
    `FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL` = NULL,
    `FIRST_TRADE_SPOT_FROM_FIX` = NULL,
    `FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL` = NULL,
    `FIRST_TRADE_SPOT_FROM_GO` = NULL,
    `FIRST_TRADE_SPOT_FROM_GO_EXTERNAL` = NULL,
    `FIRST_TRADE_SPOT_FROM_POLLING` = NULL,
    `FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL` = NULL,
    `FIRST_TRADE_SPOT_FROM_STREAMING` = NULL,
    `FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL` = NULL,
    `HOST_MIGRATION_DESTINATION` = NULL,
    `HOST_MIGRATION_SOURCE` = NULL,
    `HOST_MIGRATION_STATUS` = NULL,
    `INSTRUMENT` = NULL,
    `INSTRUMENT_EXTERNAL_DATA` = NULL,
    `INSTRUMENT_MAPPING` = NULL,
    `INSTRUMENT_MAPPING_HISTORY` = NULL,
    `INSTRUMENT_SOURCE_BACKFILL` = NULL,
    `INSTRUMENT_SOURCE_BLOB` = NULL,
    `INSTRUMENT_SOURCE_CALCULATED` = NULL,
    `INSTRUMENT_SOURCE_FIX` = NULL,
    `INSTRUMENT_SOURCE_GO` = NULL,
    `INSTRUMENT_SOURCE_POLLING` = NULL,
    `INSTRUMENT_SOURCE_STREAMING` = NULL,
    `INSTRUMENT_STATUS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS` = NULL,
    `INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION` = NULL,
    `INSTRUMENT_TRADE_SPOT_REST_URI` = NULL,
    `INSTRUMENT_TRADE_SPOT_REST_URL` = NULL,
    `INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION` = NULL,
    `LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS` = NULL,
    `LAST_SEEN_ON_BLOB_TS` = NULL,
    `LAST_SEEN_ON_FIX_TS` = NULL,
    `LAST_SEEN_ON_HARDCODED_TS` = NULL,
    `LAST_SEEN_ON_INDEX_COMPOSITION_TS` = NULL,
    `LAST_SEEN_ON_NSQ_TS` = NULL,
    `LAST_SEEN_ON_POLLING_TS` = NULL,
    `LAST_SEEN_ON_STREAMING_TS` = NULL,
    `LAST_TRADE_SPOT_FROM_BACKFILL` = NULL,
    `LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL` = NULL,
    `LAST_TRADE_SPOT_FROM_BLOB` = NULL,
    `LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL` = NULL,
    `LAST_TRADE_SPOT_FROM_CALCULATED` = NULL,
    `LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL` = NULL,
    `LAST_TRADE_SPOT_FROM_FIX` = NULL,
    `LAST_TRADE_SPOT_FROM_FIX_EXTERNAL` = NULL,
    `LAST_TRADE_SPOT_FROM_GO` = NULL,
    `LAST_TRADE_SPOT_FROM_GO_EXTERNAL` = NULL,
    `LAST_TRADE_SPOT_FROM_POLLING` = NULL,
    `LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL` = NULL,
    `LAST_TRADE_SPOT_FROM_STREAMING` = NULL,
    `LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL` = NULL,
    `METADATA_VERSION` = NULL,
    `PROCESSING_TRADES_FROM_BLOB_STATUS` = NULL,
    `TOTAL_TRADES_SPOT` = NULL,
    `UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA` = NULL,
    `UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA` = NULL,
    `UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA` = NULL,
    `UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA` = NULL,
    `UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA` = NULL,
    `UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA` = NULL,
    `UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA` = NULL,
    #' Initialize a new SPOTINSTRUMENTMETADATA class.
    #'
    #' @description
    #' Initialize a new SPOTINSTRUMENTMETADATA class.
    #'
    #' @param FIRST_SEEN_ON_BLOB_TS This is the first time instrument was seen on instrumentListSourceType BLOB.
    #' @param FIRST_SEEN_ON_FIX_TS This is the first time instrument was seen on instrumentListSourceType FIX.
    #' @param FIRST_SEEN_ON_HARDCODED_TS This is the first time instrument was seen on instrumentListSourceType HARDCODED.
    #' @param FIRST_SEEN_ON_INDEX_COMPOSITION_TS This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
    #' @param FIRST_SEEN_ON_NSQ_TS This is the first time instrument was seen on instrumentListSourceType NSQ.
    #' @param FIRST_SEEN_ON_POLLING_TS This is the first time instrument was seen on instrumentListSourceType POLLING.
    #' @param FIRST_SEEN_ON_STREAMING_TS This is the first time instrument was seen on instrumentListSourceType STREAMING.
    #' @param FIRST_TRADE_SPOT_FROM_BACKFILL This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format.
    #' @param FIRST_TRADE_SPOT_FROM_BLOB This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format.
    #' @param FIRST_TRADE_SPOT_FROM_CALCULATED This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format.
    #' @param FIRST_TRADE_SPOT_FROM_FIX This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format.
    #' @param FIRST_TRADE_SPOT_FROM_GO This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param FIRST_TRADE_SPOT_FROM_GO_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format.
    #' @param FIRST_TRADE_SPOT_FROM_POLLING This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format.
    #' @param FIRST_TRADE_SPOT_FROM_STREAMING This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL This is the first TRADE_SPOT that we have seen on the specific source type in external format.
    #' @param HOST_MIGRATION_DESTINATION The migration destination vm hostname.
    #' @param HOST_MIGRATION_SOURCE The migration source vm hostname.
    #' @param HOST_MIGRATION_STATUS The migration status of the symbol, we only poll / stream / connect empty or SETTLED
    #' @param INSTRUMENT The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&?
    #' @param INSTRUMENT_EXTERNAL_DATA The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange.
    #' @param INSTRUMENT_MAPPING The current mapping information for this instrument
    #' @param INSTRUMENT_MAPPING_HISTORY Historical mapping information for this instrument. Default to [].
    #' @param INSTRUMENT_SOURCE_BACKFILL Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
    #' @param INSTRUMENT_SOURCE_BLOB Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
    #' @param INSTRUMENT_SOURCE_CALCULATED Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
    #' @param INSTRUMENT_SOURCE_FIX Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
    #' @param INSTRUMENT_SOURCE_GO Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
    #' @param INSTRUMENT_SOURCE_POLLING Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
    #' @param INSTRUMENT_SOURCE_STREAMING Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
    #' @param INSTRUMENT_STATUS The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data.. Default to "ACTIVE".
    #' @param INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS The next time we expect to make a request for TRADE_SPOT on this instrument.
    #' @param INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration.. Default to FALSE.
    #' @param INSTRUMENT_TRADE_SPOT_REST_URI This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT.
    #' @param INSTRUMENT_TRADE_SPOT_REST_URL The URL we send to the proxy swarm to get TRADE_SPOT for the instrument.
    #' @param INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument.
    #' @param LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter
    #' @param LAST_SEEN_ON_BLOB_TS This is the last time instrument was seen on instrumentListSourceType BLOB.
    #' @param LAST_SEEN_ON_FIX_TS This is the last time instrument was seen on instrumentListSourceType FIX.
    #' @param LAST_SEEN_ON_HARDCODED_TS This is the last time instrument was seen on instrumentListSourceType HARDCODED.
    #' @param LAST_SEEN_ON_INDEX_COMPOSITION_TS This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
    #' @param LAST_SEEN_ON_NSQ_TS This is the last time instrument was seen on instrumentListSourceType NSQ.
    #' @param LAST_SEEN_ON_POLLING_TS This is the last time instrument was seen on instrumentListSourceType POLLING.
    #' @param LAST_SEEN_ON_STREAMING_TS This is the last time instrument was seen on instrumentListSourceType STREAMING.
    #' @param LAST_TRADE_SPOT_FROM_BACKFILL This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
    #' @param LAST_TRADE_SPOT_FROM_BLOB This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
    #' @param LAST_TRADE_SPOT_FROM_CALCULATED This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
    #' @param LAST_TRADE_SPOT_FROM_FIX This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param LAST_TRADE_SPOT_FROM_FIX_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
    #' @param LAST_TRADE_SPOT_FROM_GO This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param LAST_TRADE_SPOT_FROM_GO_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
    #' @param LAST_TRADE_SPOT_FROM_POLLING This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
    #' @param LAST_TRADE_SPOT_FROM_STREAMING This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
    #' @param LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
    #' @param METADATA_VERSION The version of metadata, used for version conversions/migrates.. Default to 4.
    #' @param PROCESSING_TRADES_FROM_BLOB_STATUS This states the status of blob migration for this intrument on this exchange.
    #' @param TOTAL_TRADES_SPOT This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument
    #' @param UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
    #' @param UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
    #' @param UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
    #' @param UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
    #' @param UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
    #' @param UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
    #' @param UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`FIRST_SEEN_ON_BLOB_TS` = NULL, `FIRST_SEEN_ON_FIX_TS` = NULL, `FIRST_SEEN_ON_HARDCODED_TS` = NULL, `FIRST_SEEN_ON_INDEX_COMPOSITION_TS` = NULL, `FIRST_SEEN_ON_NSQ_TS` = NULL, `FIRST_SEEN_ON_POLLING_TS` = NULL, `FIRST_SEEN_ON_STREAMING_TS` = NULL, `FIRST_TRADE_SPOT_FROM_BACKFILL` = NULL, `FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL` = NULL, `FIRST_TRADE_SPOT_FROM_BLOB` = NULL, `FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL` = NULL, `FIRST_TRADE_SPOT_FROM_CALCULATED` = NULL, `FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL` = NULL, `FIRST_TRADE_SPOT_FROM_FIX` = NULL, `FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL` = NULL, `FIRST_TRADE_SPOT_FROM_GO` = NULL, `FIRST_TRADE_SPOT_FROM_GO_EXTERNAL` = NULL, `FIRST_TRADE_SPOT_FROM_POLLING` = NULL, `FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL` = NULL, `FIRST_TRADE_SPOT_FROM_STREAMING` = NULL, `FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL` = NULL, `HOST_MIGRATION_DESTINATION` = NULL, `HOST_MIGRATION_SOURCE` = NULL, `HOST_MIGRATION_STATUS` = NULL, `INSTRUMENT` = NULL, `INSTRUMENT_EXTERNAL_DATA` = NULL, `INSTRUMENT_MAPPING` = NULL, `INSTRUMENT_MAPPING_HISTORY` = [], `INSTRUMENT_SOURCE_BACKFILL` = NULL, `INSTRUMENT_SOURCE_BLOB` = NULL, `INSTRUMENT_SOURCE_CALCULATED` = NULL, `INSTRUMENT_SOURCE_FIX` = NULL, `INSTRUMENT_SOURCE_GO` = NULL, `INSTRUMENT_SOURCE_POLLING` = NULL, `INSTRUMENT_SOURCE_STREAMING` = NULL, `INSTRUMENT_STATUS` = "ACTIVE", `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS` = NULL, `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS` = NULL, `INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION` = FALSE, `INSTRUMENT_TRADE_SPOT_REST_URI` = NULL, `INSTRUMENT_TRADE_SPOT_REST_URL` = NULL, `INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION` = NULL, `LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS` = NULL, `LAST_SEEN_ON_BLOB_TS` = NULL, `LAST_SEEN_ON_FIX_TS` = NULL, `LAST_SEEN_ON_HARDCODED_TS` = NULL, `LAST_SEEN_ON_INDEX_COMPOSITION_TS` = NULL, `LAST_SEEN_ON_NSQ_TS` = NULL, `LAST_SEEN_ON_POLLING_TS` = NULL, `LAST_SEEN_ON_STREAMING_TS` = NULL, `LAST_TRADE_SPOT_FROM_BACKFILL` = NULL, `LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL` = NULL, `LAST_TRADE_SPOT_FROM_BLOB` = NULL, `LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL` = NULL, `LAST_TRADE_SPOT_FROM_CALCULATED` = NULL, `LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL` = NULL, `LAST_TRADE_SPOT_FROM_FIX` = NULL, `LAST_TRADE_SPOT_FROM_FIX_EXTERNAL` = NULL, `LAST_TRADE_SPOT_FROM_GO` = NULL, `LAST_TRADE_SPOT_FROM_GO_EXTERNAL` = NULL, `LAST_TRADE_SPOT_FROM_POLLING` = NULL, `LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL` = NULL, `LAST_TRADE_SPOT_FROM_STREAMING` = NULL, `LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL` = NULL, `METADATA_VERSION` = 4, `PROCESSING_TRADES_FROM_BLOB_STATUS` = NULL, `TOTAL_TRADES_SPOT` = NULL, `UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA` = NULL, `UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA` = NULL, `UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA` = NULL, `UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA` = NULL, `UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA` = NULL, `UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA` = NULL, `UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA` = NULL, ...) {
      if (!is.null(`FIRST_SEEN_ON_BLOB_TS`)) {
        if (!(is.numeric(`FIRST_SEEN_ON_BLOB_TS`) && length(`FIRST_SEEN_ON_BLOB_TS`) == 1)) {
          stop(paste("Error! Invalid data for `FIRST_SEEN_ON_BLOB_TS`. Must be an integer:", `FIRST_SEEN_ON_BLOB_TS`))
        }
        self$`FIRST_SEEN_ON_BLOB_TS` <- `FIRST_SEEN_ON_BLOB_TS`
      }
      if (!is.null(`FIRST_SEEN_ON_FIX_TS`)) {
        if (!(is.numeric(`FIRST_SEEN_ON_FIX_TS`) && length(`FIRST_SEEN_ON_FIX_TS`) == 1)) {
          stop(paste("Error! Invalid data for `FIRST_SEEN_ON_FIX_TS`. Must be an integer:", `FIRST_SEEN_ON_FIX_TS`))
        }
        self$`FIRST_SEEN_ON_FIX_TS` <- `FIRST_SEEN_ON_FIX_TS`
      }
      if (!is.null(`FIRST_SEEN_ON_HARDCODED_TS`)) {
        if (!(is.numeric(`FIRST_SEEN_ON_HARDCODED_TS`) && length(`FIRST_SEEN_ON_HARDCODED_TS`) == 1)) {
          stop(paste("Error! Invalid data for `FIRST_SEEN_ON_HARDCODED_TS`. Must be an integer:", `FIRST_SEEN_ON_HARDCODED_TS`))
        }
        self$`FIRST_SEEN_ON_HARDCODED_TS` <- `FIRST_SEEN_ON_HARDCODED_TS`
      }
      if (!is.null(`FIRST_SEEN_ON_INDEX_COMPOSITION_TS`)) {
        if (!(is.numeric(`FIRST_SEEN_ON_INDEX_COMPOSITION_TS`) && length(`FIRST_SEEN_ON_INDEX_COMPOSITION_TS`) == 1)) {
          stop(paste("Error! Invalid data for `FIRST_SEEN_ON_INDEX_COMPOSITION_TS`. Must be an integer:", `FIRST_SEEN_ON_INDEX_COMPOSITION_TS`))
        }
        self$`FIRST_SEEN_ON_INDEX_COMPOSITION_TS` <- `FIRST_SEEN_ON_INDEX_COMPOSITION_TS`
      }
      if (!is.null(`FIRST_SEEN_ON_NSQ_TS`)) {
        if (!(is.numeric(`FIRST_SEEN_ON_NSQ_TS`) && length(`FIRST_SEEN_ON_NSQ_TS`) == 1)) {
          stop(paste("Error! Invalid data for `FIRST_SEEN_ON_NSQ_TS`. Must be an integer:", `FIRST_SEEN_ON_NSQ_TS`))
        }
        self$`FIRST_SEEN_ON_NSQ_TS` <- `FIRST_SEEN_ON_NSQ_TS`
      }
      if (!is.null(`FIRST_SEEN_ON_POLLING_TS`)) {
        if (!(is.numeric(`FIRST_SEEN_ON_POLLING_TS`) && length(`FIRST_SEEN_ON_POLLING_TS`) == 1)) {
          stop(paste("Error! Invalid data for `FIRST_SEEN_ON_POLLING_TS`. Must be an integer:", `FIRST_SEEN_ON_POLLING_TS`))
        }
        self$`FIRST_SEEN_ON_POLLING_TS` <- `FIRST_SEEN_ON_POLLING_TS`
      }
      if (!is.null(`FIRST_SEEN_ON_STREAMING_TS`)) {
        if (!(is.numeric(`FIRST_SEEN_ON_STREAMING_TS`) && length(`FIRST_SEEN_ON_STREAMING_TS`) == 1)) {
          stop(paste("Error! Invalid data for `FIRST_SEEN_ON_STREAMING_TS`. Must be an integer:", `FIRST_SEEN_ON_STREAMING_TS`))
        }
        self$`FIRST_SEEN_ON_STREAMING_TS` <- `FIRST_SEEN_ON_STREAMING_TS`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_BACKFILL`)) {
        self$`FIRST_TRADE_SPOT_FROM_BACKFILL` <- `FIRST_TRADE_SPOT_FROM_BACKFILL`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL` <- `FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_BLOB`)) {
        self$`FIRST_TRADE_SPOT_FROM_BLOB` <- `FIRST_TRADE_SPOT_FROM_BLOB`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL` <- `FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_CALCULATED`)) {
        self$`FIRST_TRADE_SPOT_FROM_CALCULATED` <- `FIRST_TRADE_SPOT_FROM_CALCULATED`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL` <- `FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_FIX`)) {
        self$`FIRST_TRADE_SPOT_FROM_FIX` <- `FIRST_TRADE_SPOT_FROM_FIX`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL` <- `FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_GO`)) {
        self$`FIRST_TRADE_SPOT_FROM_GO` <- `FIRST_TRADE_SPOT_FROM_GO`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_GO_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_GO_EXTERNAL` <- `FIRST_TRADE_SPOT_FROM_GO_EXTERNAL`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_POLLING`)) {
        self$`FIRST_TRADE_SPOT_FROM_POLLING` <- `FIRST_TRADE_SPOT_FROM_POLLING`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL` <- `FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_STREAMING`)) {
        self$`FIRST_TRADE_SPOT_FROM_STREAMING` <- `FIRST_TRADE_SPOT_FROM_STREAMING`
      }
      if (!is.null(`FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL` <- `FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`
      }
      if (!is.null(`HOST_MIGRATION_DESTINATION`)) {
        if (!(is.character(`HOST_MIGRATION_DESTINATION`) && length(`HOST_MIGRATION_DESTINATION`) == 1)) {
          stop(paste("Error! Invalid data for `HOST_MIGRATION_DESTINATION`. Must be a string:", `HOST_MIGRATION_DESTINATION`))
        }
        self$`HOST_MIGRATION_DESTINATION` <- `HOST_MIGRATION_DESTINATION`
      }
      if (!is.null(`HOST_MIGRATION_SOURCE`)) {
        if (!(is.character(`HOST_MIGRATION_SOURCE`) && length(`HOST_MIGRATION_SOURCE`) == 1)) {
          stop(paste("Error! Invalid data for `HOST_MIGRATION_SOURCE`. Must be a string:", `HOST_MIGRATION_SOURCE`))
        }
        self$`HOST_MIGRATION_SOURCE` <- `HOST_MIGRATION_SOURCE`
      }
      if (!is.null(`HOST_MIGRATION_STATUS`)) {
        if (!(is.character(`HOST_MIGRATION_STATUS`) && length(`HOST_MIGRATION_STATUS`) == 1)) {
          stop(paste("Error! Invalid data for `HOST_MIGRATION_STATUS`. Must be a string:", `HOST_MIGRATION_STATUS`))
        }
        self$`HOST_MIGRATION_STATUS` <- `HOST_MIGRATION_STATUS`
      }
      if (!is.null(`INSTRUMENT`)) {
        if (!(is.character(`INSTRUMENT`) && length(`INSTRUMENT`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT`. Must be a string:", `INSTRUMENT`))
        }
        self$`INSTRUMENT` <- `INSTRUMENT`
      }
      if (!is.null(`INSTRUMENT_EXTERNAL_DATA`)) {
        if (!(is.character(`INSTRUMENT_EXTERNAL_DATA`) && length(`INSTRUMENT_EXTERNAL_DATA`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_EXTERNAL_DATA`. Must be a string:", `INSTRUMENT_EXTERNAL_DATA`))
        }
        self$`INSTRUMENT_EXTERNAL_DATA` <- `INSTRUMENT_EXTERNAL_DATA`
      }
      if (!is.null(`INSTRUMENT_MAPPING`)) {
        self$`INSTRUMENT_MAPPING` <- `INSTRUMENT_MAPPING`
      }
      if (!is.null(`INSTRUMENT_MAPPING_HISTORY`)) {
        stopifnot(is.vector(`INSTRUMENT_MAPPING_HISTORY`), length(`INSTRUMENT_MAPPING_HISTORY`) != 0)
        sapply(`INSTRUMENT_MAPPING_HISTORY`, function(x) stopifnot(is.character(x)))
        self$`INSTRUMENT_MAPPING_HISTORY` <- `INSTRUMENT_MAPPING_HISTORY`
      }
      if (!is.null(`INSTRUMENT_SOURCE_BACKFILL`)) {
        if (!(is.character(`INSTRUMENT_SOURCE_BACKFILL`) && length(`INSTRUMENT_SOURCE_BACKFILL`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_SOURCE_BACKFILL`. Must be a string:", `INSTRUMENT_SOURCE_BACKFILL`))
        }
        self$`INSTRUMENT_SOURCE_BACKFILL` <- `INSTRUMENT_SOURCE_BACKFILL`
      }
      if (!is.null(`INSTRUMENT_SOURCE_BLOB`)) {
        if (!(is.character(`INSTRUMENT_SOURCE_BLOB`) && length(`INSTRUMENT_SOURCE_BLOB`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_SOURCE_BLOB`. Must be a string:", `INSTRUMENT_SOURCE_BLOB`))
        }
        self$`INSTRUMENT_SOURCE_BLOB` <- `INSTRUMENT_SOURCE_BLOB`
      }
      if (!is.null(`INSTRUMENT_SOURCE_CALCULATED`)) {
        if (!(is.character(`INSTRUMENT_SOURCE_CALCULATED`) && length(`INSTRUMENT_SOURCE_CALCULATED`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_SOURCE_CALCULATED`. Must be a string:", `INSTRUMENT_SOURCE_CALCULATED`))
        }
        self$`INSTRUMENT_SOURCE_CALCULATED` <- `INSTRUMENT_SOURCE_CALCULATED`
      }
      if (!is.null(`INSTRUMENT_SOURCE_FIX`)) {
        if (!(is.character(`INSTRUMENT_SOURCE_FIX`) && length(`INSTRUMENT_SOURCE_FIX`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_SOURCE_FIX`. Must be a string:", `INSTRUMENT_SOURCE_FIX`))
        }
        self$`INSTRUMENT_SOURCE_FIX` <- `INSTRUMENT_SOURCE_FIX`
      }
      if (!is.null(`INSTRUMENT_SOURCE_GO`)) {
        if (!(is.character(`INSTRUMENT_SOURCE_GO`) && length(`INSTRUMENT_SOURCE_GO`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_SOURCE_GO`. Must be a string:", `INSTRUMENT_SOURCE_GO`))
        }
        self$`INSTRUMENT_SOURCE_GO` <- `INSTRUMENT_SOURCE_GO`
      }
      if (!is.null(`INSTRUMENT_SOURCE_POLLING`)) {
        if (!(is.character(`INSTRUMENT_SOURCE_POLLING`) && length(`INSTRUMENT_SOURCE_POLLING`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_SOURCE_POLLING`. Must be a string:", `INSTRUMENT_SOURCE_POLLING`))
        }
        self$`INSTRUMENT_SOURCE_POLLING` <- `INSTRUMENT_SOURCE_POLLING`
      }
      if (!is.null(`INSTRUMENT_SOURCE_STREAMING`)) {
        if (!(is.character(`INSTRUMENT_SOURCE_STREAMING`) && length(`INSTRUMENT_SOURCE_STREAMING`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_SOURCE_STREAMING`. Must be a string:", `INSTRUMENT_SOURCE_STREAMING`))
        }
        self$`INSTRUMENT_SOURCE_STREAMING` <- `INSTRUMENT_SOURCE_STREAMING`
      }
      if (!is.null(`INSTRUMENT_STATUS`)) {
        if (!(is.character(`INSTRUMENT_STATUS`) && length(`INSTRUMENT_STATUS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_STATUS`. Must be a string:", `INSTRUMENT_STATUS`))
        }
        self$`INSTRUMENT_STATUS` <- `INSTRUMENT_STATUS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST` <- `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST` <- `INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST` <- `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST` <- `INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST` <- `INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST` <- `INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST` <- `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS`)) {
        if (!(is.numeric(`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS`) && length(`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS`. Must be an integer:", `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS`))
        }
        self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS` <- `INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION`)) {
        if (!(is.logical(`INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION`) && length(`INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION`. Must be a boolean:", `INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION`))
        }
        self$`INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION` <- `INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_REST_URI`)) {
        if (!(is.character(`INSTRUMENT_TRADE_SPOT_REST_URI`) && length(`INSTRUMENT_TRADE_SPOT_REST_URI`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_REST_URI`. Must be a string:", `INSTRUMENT_TRADE_SPOT_REST_URI`))
        }
        self$`INSTRUMENT_TRADE_SPOT_REST_URI` <- `INSTRUMENT_TRADE_SPOT_REST_URI`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_REST_URL`)) {
        if (!(is.character(`INSTRUMENT_TRADE_SPOT_REST_URL`) && length(`INSTRUMENT_TRADE_SPOT_REST_URL`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_REST_URL`. Must be a string:", `INSTRUMENT_TRADE_SPOT_REST_URL`))
        }
        self$`INSTRUMENT_TRADE_SPOT_REST_URL` <- `INSTRUMENT_TRADE_SPOT_REST_URL`
      }
      if (!is.null(`INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION`)) {
        if (!(is.character(`INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION`) && length(`INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION`) == 1)) {
          stop(paste("Error! Invalid data for `INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION`. Must be a string:", `INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION`))
        }
        self$`INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION` <- `INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION`
      }
      if (!is.null(`LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS`)) {
        if (!(is.numeric(`LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS`) && length(`LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS`. Must be an integer:", `LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS`))
        }
        self$`LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS` <- `LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS`
      }
      if (!is.null(`LAST_SEEN_ON_BLOB_TS`)) {
        if (!(is.numeric(`LAST_SEEN_ON_BLOB_TS`) && length(`LAST_SEEN_ON_BLOB_TS`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_SEEN_ON_BLOB_TS`. Must be an integer:", `LAST_SEEN_ON_BLOB_TS`))
        }
        self$`LAST_SEEN_ON_BLOB_TS` <- `LAST_SEEN_ON_BLOB_TS`
      }
      if (!is.null(`LAST_SEEN_ON_FIX_TS`)) {
        if (!(is.numeric(`LAST_SEEN_ON_FIX_TS`) && length(`LAST_SEEN_ON_FIX_TS`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_SEEN_ON_FIX_TS`. Must be an integer:", `LAST_SEEN_ON_FIX_TS`))
        }
        self$`LAST_SEEN_ON_FIX_TS` <- `LAST_SEEN_ON_FIX_TS`
      }
      if (!is.null(`LAST_SEEN_ON_HARDCODED_TS`)) {
        if (!(is.numeric(`LAST_SEEN_ON_HARDCODED_TS`) && length(`LAST_SEEN_ON_HARDCODED_TS`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_SEEN_ON_HARDCODED_TS`. Must be an integer:", `LAST_SEEN_ON_HARDCODED_TS`))
        }
        self$`LAST_SEEN_ON_HARDCODED_TS` <- `LAST_SEEN_ON_HARDCODED_TS`
      }
      if (!is.null(`LAST_SEEN_ON_INDEX_COMPOSITION_TS`)) {
        if (!(is.numeric(`LAST_SEEN_ON_INDEX_COMPOSITION_TS`) && length(`LAST_SEEN_ON_INDEX_COMPOSITION_TS`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_SEEN_ON_INDEX_COMPOSITION_TS`. Must be an integer:", `LAST_SEEN_ON_INDEX_COMPOSITION_TS`))
        }
        self$`LAST_SEEN_ON_INDEX_COMPOSITION_TS` <- `LAST_SEEN_ON_INDEX_COMPOSITION_TS`
      }
      if (!is.null(`LAST_SEEN_ON_NSQ_TS`)) {
        if (!(is.numeric(`LAST_SEEN_ON_NSQ_TS`) && length(`LAST_SEEN_ON_NSQ_TS`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_SEEN_ON_NSQ_TS`. Must be an integer:", `LAST_SEEN_ON_NSQ_TS`))
        }
        self$`LAST_SEEN_ON_NSQ_TS` <- `LAST_SEEN_ON_NSQ_TS`
      }
      if (!is.null(`LAST_SEEN_ON_POLLING_TS`)) {
        if (!(is.numeric(`LAST_SEEN_ON_POLLING_TS`) && length(`LAST_SEEN_ON_POLLING_TS`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_SEEN_ON_POLLING_TS`. Must be an integer:", `LAST_SEEN_ON_POLLING_TS`))
        }
        self$`LAST_SEEN_ON_POLLING_TS` <- `LAST_SEEN_ON_POLLING_TS`
      }
      if (!is.null(`LAST_SEEN_ON_STREAMING_TS`)) {
        if (!(is.numeric(`LAST_SEEN_ON_STREAMING_TS`) && length(`LAST_SEEN_ON_STREAMING_TS`) == 1)) {
          stop(paste("Error! Invalid data for `LAST_SEEN_ON_STREAMING_TS`. Must be an integer:", `LAST_SEEN_ON_STREAMING_TS`))
        }
        self$`LAST_SEEN_ON_STREAMING_TS` <- `LAST_SEEN_ON_STREAMING_TS`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_BACKFILL`)) {
        self$`LAST_TRADE_SPOT_FROM_BACKFILL` <- `LAST_TRADE_SPOT_FROM_BACKFILL`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL` <- `LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_BLOB`)) {
        self$`LAST_TRADE_SPOT_FROM_BLOB` <- `LAST_TRADE_SPOT_FROM_BLOB`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL` <- `LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_CALCULATED`)) {
        self$`LAST_TRADE_SPOT_FROM_CALCULATED` <- `LAST_TRADE_SPOT_FROM_CALCULATED`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL` <- `LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_FIX`)) {
        self$`LAST_TRADE_SPOT_FROM_FIX` <- `LAST_TRADE_SPOT_FROM_FIX`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_FIX_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_FIX_EXTERNAL` <- `LAST_TRADE_SPOT_FROM_FIX_EXTERNAL`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_GO`)) {
        self$`LAST_TRADE_SPOT_FROM_GO` <- `LAST_TRADE_SPOT_FROM_GO`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_GO_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_GO_EXTERNAL` <- `LAST_TRADE_SPOT_FROM_GO_EXTERNAL`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_POLLING`)) {
        self$`LAST_TRADE_SPOT_FROM_POLLING` <- `LAST_TRADE_SPOT_FROM_POLLING`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL` <- `LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_STREAMING`)) {
        self$`LAST_TRADE_SPOT_FROM_STREAMING` <- `LAST_TRADE_SPOT_FROM_STREAMING`
      }
      if (!is.null(`LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL` <- `LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`
      }
      if (!is.null(`METADATA_VERSION`)) {
        if (!(is.numeric(`METADATA_VERSION`) && length(`METADATA_VERSION`) == 1)) {
          stop(paste("Error! Invalid data for `METADATA_VERSION`. Must be an integer:", `METADATA_VERSION`))
        }
        self$`METADATA_VERSION` <- `METADATA_VERSION`
      }
      if (!is.null(`PROCESSING_TRADES_FROM_BLOB_STATUS`)) {
        if (!(is.character(`PROCESSING_TRADES_FROM_BLOB_STATUS`) && length(`PROCESSING_TRADES_FROM_BLOB_STATUS`) == 1)) {
          stop(paste("Error! Invalid data for `PROCESSING_TRADES_FROM_BLOB_STATUS`. Must be a string:", `PROCESSING_TRADES_FROM_BLOB_STATUS`))
        }
        self$`PROCESSING_TRADES_FROM_BLOB_STATUS` <- `PROCESSING_TRADES_FROM_BLOB_STATUS`
      }
      if (!is.null(`TOTAL_TRADES_SPOT`)) {
        if (!(is.numeric(`TOTAL_TRADES_SPOT`) && length(`TOTAL_TRADES_SPOT`) == 1)) {
          stop(paste("Error! Invalid data for `TOTAL_TRADES_SPOT`. Must be an integer:", `TOTAL_TRADES_SPOT`))
        }
        self$`TOTAL_TRADES_SPOT` <- `TOTAL_TRADES_SPOT`
      }
      if (!is.null(`UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA` <- `UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA`
      }
      if (!is.null(`UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA` <- `UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA`
      }
      if (!is.null(`UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA` <- `UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA`
      }
      if (!is.null(`UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA` <- `UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA`
      }
      if (!is.null(`UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA` <- `UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA`
      }
      if (!is.null(`UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA` <- `UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA`
      }
      if (!is.null(`UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA` <- `UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SPOTINSTRUMENTMETADATA in JSON format
    #' @export
    toJSON = function() {
      SPOTINSTRUMENTMETADATAObject <- list()
      if (!is.null(self$`FIRST_SEEN_ON_BLOB_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_SEEN_ON_BLOB_TS"]] <-
          self$`FIRST_SEEN_ON_BLOB_TS`
      }
      if (!is.null(self$`FIRST_SEEN_ON_FIX_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_SEEN_ON_FIX_TS"]] <-
          self$`FIRST_SEEN_ON_FIX_TS`
      }
      if (!is.null(self$`FIRST_SEEN_ON_HARDCODED_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_SEEN_ON_HARDCODED_TS"]] <-
          self$`FIRST_SEEN_ON_HARDCODED_TS`
      }
      if (!is.null(self$`FIRST_SEEN_ON_INDEX_COMPOSITION_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_SEEN_ON_INDEX_COMPOSITION_TS"]] <-
          self$`FIRST_SEEN_ON_INDEX_COMPOSITION_TS`
      }
      if (!is.null(self$`FIRST_SEEN_ON_NSQ_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_SEEN_ON_NSQ_TS"]] <-
          self$`FIRST_SEEN_ON_NSQ_TS`
      }
      if (!is.null(self$`FIRST_SEEN_ON_POLLING_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_SEEN_ON_POLLING_TS"]] <-
          self$`FIRST_SEEN_ON_POLLING_TS`
      }
      if (!is.null(self$`FIRST_SEEN_ON_STREAMING_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_SEEN_ON_STREAMING_TS"]] <-
          self$`FIRST_SEEN_ON_STREAMING_TS`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_BACKFILL`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_BACKFILL"]] <-
          self$`FIRST_TRADE_SPOT_FROM_BACKFILL`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL"]] <-
          self$`FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_BLOB`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_BLOB"]] <-
          self$`FIRST_TRADE_SPOT_FROM_BLOB`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL"]] <-
          self$`FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_CALCULATED`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_CALCULATED"]] <-
          self$`FIRST_TRADE_SPOT_FROM_CALCULATED`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL"]] <-
          self$`FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_FIX`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_FIX"]] <-
          self$`FIRST_TRADE_SPOT_FROM_FIX`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL"]] <-
          self$`FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_GO`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_GO"]] <-
          self$`FIRST_TRADE_SPOT_FROM_GO`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_GO_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_GO_EXTERNAL"]] <-
          self$`FIRST_TRADE_SPOT_FROM_GO_EXTERNAL`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_POLLING`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_POLLING"]] <-
          self$`FIRST_TRADE_SPOT_FROM_POLLING`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL"]] <-
          self$`FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_STREAMING`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_STREAMING"]] <-
          self$`FIRST_TRADE_SPOT_FROM_STREAMING`
      }
      if (!is.null(self$`FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL"]] <-
          self$`FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`
      }
      if (!is.null(self$`HOST_MIGRATION_DESTINATION`)) {
        SPOTINSTRUMENTMETADATAObject[["HOST_MIGRATION_DESTINATION"]] <-
          self$`HOST_MIGRATION_DESTINATION`
      }
      if (!is.null(self$`HOST_MIGRATION_SOURCE`)) {
        SPOTINSTRUMENTMETADATAObject[["HOST_MIGRATION_SOURCE"]] <-
          self$`HOST_MIGRATION_SOURCE`
      }
      if (!is.null(self$`HOST_MIGRATION_STATUS`)) {
        SPOTINSTRUMENTMETADATAObject[["HOST_MIGRATION_STATUS"]] <-
          self$`HOST_MIGRATION_STATUS`
      }
      if (!is.null(self$`INSTRUMENT`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT"]] <-
          self$`INSTRUMENT`
      }
      if (!is.null(self$`INSTRUMENT_EXTERNAL_DATA`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_EXTERNAL_DATA"]] <-
          self$`INSTRUMENT_EXTERNAL_DATA`
      }
      if (!is.null(self$`INSTRUMENT_MAPPING`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_MAPPING"]] <-
          self$`INSTRUMENT_MAPPING`
      }
      if (!is.null(self$`INSTRUMENT_MAPPING_HISTORY`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_MAPPING_HISTORY"]] <-
          self$`INSTRUMENT_MAPPING_HISTORY`
      }
      if (!is.null(self$`INSTRUMENT_SOURCE_BACKFILL`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_SOURCE_BACKFILL"]] <-
          self$`INSTRUMENT_SOURCE_BACKFILL`
      }
      if (!is.null(self$`INSTRUMENT_SOURCE_BLOB`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_SOURCE_BLOB"]] <-
          self$`INSTRUMENT_SOURCE_BLOB`
      }
      if (!is.null(self$`INSTRUMENT_SOURCE_CALCULATED`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_SOURCE_CALCULATED"]] <-
          self$`INSTRUMENT_SOURCE_CALCULATED`
      }
      if (!is.null(self$`INSTRUMENT_SOURCE_FIX`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_SOURCE_FIX"]] <-
          self$`INSTRUMENT_SOURCE_FIX`
      }
      if (!is.null(self$`INSTRUMENT_SOURCE_GO`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_SOURCE_GO"]] <-
          self$`INSTRUMENT_SOURCE_GO`
      }
      if (!is.null(self$`INSTRUMENT_SOURCE_POLLING`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_SOURCE_POLLING"]] <-
          self$`INSTRUMENT_SOURCE_POLLING`
      }
      if (!is.null(self$`INSTRUMENT_SOURCE_STREAMING`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_SOURCE_STREAMING"]] <-
          self$`INSTRUMENT_SOURCE_STREAMING`
      }
      if (!is.null(self$`INSTRUMENT_STATUS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_STATUS"]] <-
          self$`INSTRUMENT_STATUS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS"]] <-
          self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION"]] <-
          self$`INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_REST_URI`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_REST_URI"]] <-
          self$`INSTRUMENT_TRADE_SPOT_REST_URI`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_REST_URL`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_REST_URL"]] <-
          self$`INSTRUMENT_TRADE_SPOT_REST_URL`
      }
      if (!is.null(self$`INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION`)) {
        SPOTINSTRUMENTMETADATAObject[["INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION"]] <-
          self$`INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION`
      }
      if (!is.null(self$`LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS"]] <-
          self$`LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS`
      }
      if (!is.null(self$`LAST_SEEN_ON_BLOB_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_SEEN_ON_BLOB_TS"]] <-
          self$`LAST_SEEN_ON_BLOB_TS`
      }
      if (!is.null(self$`LAST_SEEN_ON_FIX_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_SEEN_ON_FIX_TS"]] <-
          self$`LAST_SEEN_ON_FIX_TS`
      }
      if (!is.null(self$`LAST_SEEN_ON_HARDCODED_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_SEEN_ON_HARDCODED_TS"]] <-
          self$`LAST_SEEN_ON_HARDCODED_TS`
      }
      if (!is.null(self$`LAST_SEEN_ON_INDEX_COMPOSITION_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_SEEN_ON_INDEX_COMPOSITION_TS"]] <-
          self$`LAST_SEEN_ON_INDEX_COMPOSITION_TS`
      }
      if (!is.null(self$`LAST_SEEN_ON_NSQ_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_SEEN_ON_NSQ_TS"]] <-
          self$`LAST_SEEN_ON_NSQ_TS`
      }
      if (!is.null(self$`LAST_SEEN_ON_POLLING_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_SEEN_ON_POLLING_TS"]] <-
          self$`LAST_SEEN_ON_POLLING_TS`
      }
      if (!is.null(self$`LAST_SEEN_ON_STREAMING_TS`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_SEEN_ON_STREAMING_TS"]] <-
          self$`LAST_SEEN_ON_STREAMING_TS`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_BACKFILL`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_BACKFILL"]] <-
          self$`LAST_TRADE_SPOT_FROM_BACKFILL`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL"]] <-
          self$`LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_BLOB`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_BLOB"]] <-
          self$`LAST_TRADE_SPOT_FROM_BLOB`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL"]] <-
          self$`LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_CALCULATED`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_CALCULATED"]] <-
          self$`LAST_TRADE_SPOT_FROM_CALCULATED`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL"]] <-
          self$`LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_FIX`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_FIX"]] <-
          self$`LAST_TRADE_SPOT_FROM_FIX`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_FIX_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_FIX_EXTERNAL"]] <-
          self$`LAST_TRADE_SPOT_FROM_FIX_EXTERNAL`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_GO`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_GO"]] <-
          self$`LAST_TRADE_SPOT_FROM_GO`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_GO_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_GO_EXTERNAL"]] <-
          self$`LAST_TRADE_SPOT_FROM_GO_EXTERNAL`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_POLLING`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_POLLING"]] <-
          self$`LAST_TRADE_SPOT_FROM_POLLING`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL"]] <-
          self$`LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_STREAMING`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_STREAMING"]] <-
          self$`LAST_TRADE_SPOT_FROM_STREAMING`
      }
      if (!is.null(self$`LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`)) {
        SPOTINSTRUMENTMETADATAObject[["LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL"]] <-
          self$`LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`
      }
      if (!is.null(self$`METADATA_VERSION`)) {
        SPOTINSTRUMENTMETADATAObject[["METADATA_VERSION"]] <-
          self$`METADATA_VERSION`
      }
      if (!is.null(self$`PROCESSING_TRADES_FROM_BLOB_STATUS`)) {
        SPOTINSTRUMENTMETADATAObject[["PROCESSING_TRADES_FROM_BLOB_STATUS"]] <-
          self$`PROCESSING_TRADES_FROM_BLOB_STATUS`
      }
      if (!is.null(self$`TOTAL_TRADES_SPOT`)) {
        SPOTINSTRUMENTMETADATAObject[["TOTAL_TRADES_SPOT"]] <-
          self$`TOTAL_TRADES_SPOT`
      }
      if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA`)) {
        SPOTINSTRUMENTMETADATAObject[["UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA"]] <-
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA`
      }
      if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA`)) {
        SPOTINSTRUMENTMETADATAObject[["UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA"]] <-
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA`
      }
      if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA`)) {
        SPOTINSTRUMENTMETADATAObject[["UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA"]] <-
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA`
      }
      if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA`)) {
        SPOTINSTRUMENTMETADATAObject[["UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA"]] <-
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA`
      }
      if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA`)) {
        SPOTINSTRUMENTMETADATAObject[["UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA"]] <-
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA`
      }
      if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA`)) {
        SPOTINSTRUMENTMETADATAObject[["UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA"]] <-
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA`
      }
      if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA`)) {
        SPOTINSTRUMENTMETADATAObject[["UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA"]] <-
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA`
      }
      SPOTINSTRUMENTMETADATAObject
    },
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMETADATA
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMETADATA
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTMETADATA
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`FIRST_SEEN_ON_BLOB_TS`)) {
        self$`FIRST_SEEN_ON_BLOB_TS` <- this_object$`FIRST_SEEN_ON_BLOB_TS`
      }
      if (!is.null(this_object$`FIRST_SEEN_ON_FIX_TS`)) {
        self$`FIRST_SEEN_ON_FIX_TS` <- this_object$`FIRST_SEEN_ON_FIX_TS`
      }
      if (!is.null(this_object$`FIRST_SEEN_ON_HARDCODED_TS`)) {
        self$`FIRST_SEEN_ON_HARDCODED_TS` <- this_object$`FIRST_SEEN_ON_HARDCODED_TS`
      }
      if (!is.null(this_object$`FIRST_SEEN_ON_INDEX_COMPOSITION_TS`)) {
        self$`FIRST_SEEN_ON_INDEX_COMPOSITION_TS` <- this_object$`FIRST_SEEN_ON_INDEX_COMPOSITION_TS`
      }
      if (!is.null(this_object$`FIRST_SEEN_ON_NSQ_TS`)) {
        self$`FIRST_SEEN_ON_NSQ_TS` <- this_object$`FIRST_SEEN_ON_NSQ_TS`
      }
      if (!is.null(this_object$`FIRST_SEEN_ON_POLLING_TS`)) {
        self$`FIRST_SEEN_ON_POLLING_TS` <- this_object$`FIRST_SEEN_ON_POLLING_TS`
      }
      if (!is.null(this_object$`FIRST_SEEN_ON_STREAMING_TS`)) {
        self$`FIRST_SEEN_ON_STREAMING_TS` <- this_object$`FIRST_SEEN_ON_STREAMING_TS`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_BACKFILL`)) {
        self$`FIRST_TRADE_SPOT_FROM_BACKFILL` <- this_object$`FIRST_TRADE_SPOT_FROM_BACKFILL`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_BLOB`)) {
        self$`FIRST_TRADE_SPOT_FROM_BLOB` <- this_object$`FIRST_TRADE_SPOT_FROM_BLOB`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_CALCULATED`)) {
        self$`FIRST_TRADE_SPOT_FROM_CALCULATED` <- this_object$`FIRST_TRADE_SPOT_FROM_CALCULATED`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_FIX`)) {
        self$`FIRST_TRADE_SPOT_FROM_FIX` <- this_object$`FIRST_TRADE_SPOT_FROM_FIX`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_GO`)) {
        self$`FIRST_TRADE_SPOT_FROM_GO` <- this_object$`FIRST_TRADE_SPOT_FROM_GO`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_GO_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_GO_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_GO_EXTERNAL`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_POLLING`)) {
        self$`FIRST_TRADE_SPOT_FROM_POLLING` <- this_object$`FIRST_TRADE_SPOT_FROM_POLLING`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_STREAMING`)) {
        self$`FIRST_TRADE_SPOT_FROM_STREAMING` <- this_object$`FIRST_TRADE_SPOT_FROM_STREAMING`
      }
      if (!is.null(this_object$`FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`)) {
        self$`FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`
      }
      if (!is.null(this_object$`HOST_MIGRATION_DESTINATION`)) {
        self$`HOST_MIGRATION_DESTINATION` <- this_object$`HOST_MIGRATION_DESTINATION`
      }
      if (!is.null(this_object$`HOST_MIGRATION_SOURCE`)) {
        self$`HOST_MIGRATION_SOURCE` <- this_object$`HOST_MIGRATION_SOURCE`
      }
      if (!is.null(this_object$`HOST_MIGRATION_STATUS`)) {
        self$`HOST_MIGRATION_STATUS` <- this_object$`HOST_MIGRATION_STATUS`
      }
      if (!is.null(this_object$`INSTRUMENT`)) {
        self$`INSTRUMENT` <- this_object$`INSTRUMENT`
      }
      if (!is.null(this_object$`INSTRUMENT_EXTERNAL_DATA`)) {
        self$`INSTRUMENT_EXTERNAL_DATA` <- this_object$`INSTRUMENT_EXTERNAL_DATA`
      }
      if (!is.null(this_object$`INSTRUMENT_MAPPING`)) {
        self$`INSTRUMENT_MAPPING` <- this_object$`INSTRUMENT_MAPPING`
      }
      if (!is.null(this_object$`INSTRUMENT_MAPPING_HISTORY`)) {
        self$`INSTRUMENT_MAPPING_HISTORY` <- ApiClient$new()$deserializeObj(this_object$`INSTRUMENT_MAPPING_HISTORY`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`INSTRUMENT_SOURCE_BACKFILL`)) {
        self$`INSTRUMENT_SOURCE_BACKFILL` <- this_object$`INSTRUMENT_SOURCE_BACKFILL`
      }
      if (!is.null(this_object$`INSTRUMENT_SOURCE_BLOB`)) {
        self$`INSTRUMENT_SOURCE_BLOB` <- this_object$`INSTRUMENT_SOURCE_BLOB`
      }
      if (!is.null(this_object$`INSTRUMENT_SOURCE_CALCULATED`)) {
        self$`INSTRUMENT_SOURCE_CALCULATED` <- this_object$`INSTRUMENT_SOURCE_CALCULATED`
      }
      if (!is.null(this_object$`INSTRUMENT_SOURCE_FIX`)) {
        self$`INSTRUMENT_SOURCE_FIX` <- this_object$`INSTRUMENT_SOURCE_FIX`
      }
      if (!is.null(this_object$`INSTRUMENT_SOURCE_GO`)) {
        self$`INSTRUMENT_SOURCE_GO` <- this_object$`INSTRUMENT_SOURCE_GO`
      }
      if (!is.null(this_object$`INSTRUMENT_SOURCE_POLLING`)) {
        self$`INSTRUMENT_SOURCE_POLLING` <- this_object$`INSTRUMENT_SOURCE_POLLING`
      }
      if (!is.null(this_object$`INSTRUMENT_SOURCE_STREAMING`)) {
        self$`INSTRUMENT_SOURCE_STREAMING` <- this_object$`INSTRUMENT_SOURCE_STREAMING`
      }
      if (!is.null(this_object$`INSTRUMENT_STATUS`)) {
        self$`INSTRUMENT_STATUS` <- this_object$`INSTRUMENT_STATUS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS`)) {
        self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION`)) {
        self$`INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION` <- this_object$`INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_REST_URI`)) {
        self$`INSTRUMENT_TRADE_SPOT_REST_URI` <- this_object$`INSTRUMENT_TRADE_SPOT_REST_URI`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_REST_URL`)) {
        self$`INSTRUMENT_TRADE_SPOT_REST_URL` <- this_object$`INSTRUMENT_TRADE_SPOT_REST_URL`
      }
      if (!is.null(this_object$`INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION`)) {
        self$`INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION` <- this_object$`INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION`
      }
      if (!is.null(this_object$`LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS`)) {
        self$`LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS` <- this_object$`LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS`
      }
      if (!is.null(this_object$`LAST_SEEN_ON_BLOB_TS`)) {
        self$`LAST_SEEN_ON_BLOB_TS` <- this_object$`LAST_SEEN_ON_BLOB_TS`
      }
      if (!is.null(this_object$`LAST_SEEN_ON_FIX_TS`)) {
        self$`LAST_SEEN_ON_FIX_TS` <- this_object$`LAST_SEEN_ON_FIX_TS`
      }
      if (!is.null(this_object$`LAST_SEEN_ON_HARDCODED_TS`)) {
        self$`LAST_SEEN_ON_HARDCODED_TS` <- this_object$`LAST_SEEN_ON_HARDCODED_TS`
      }
      if (!is.null(this_object$`LAST_SEEN_ON_INDEX_COMPOSITION_TS`)) {
        self$`LAST_SEEN_ON_INDEX_COMPOSITION_TS` <- this_object$`LAST_SEEN_ON_INDEX_COMPOSITION_TS`
      }
      if (!is.null(this_object$`LAST_SEEN_ON_NSQ_TS`)) {
        self$`LAST_SEEN_ON_NSQ_TS` <- this_object$`LAST_SEEN_ON_NSQ_TS`
      }
      if (!is.null(this_object$`LAST_SEEN_ON_POLLING_TS`)) {
        self$`LAST_SEEN_ON_POLLING_TS` <- this_object$`LAST_SEEN_ON_POLLING_TS`
      }
      if (!is.null(this_object$`LAST_SEEN_ON_STREAMING_TS`)) {
        self$`LAST_SEEN_ON_STREAMING_TS` <- this_object$`LAST_SEEN_ON_STREAMING_TS`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_BACKFILL`)) {
        self$`LAST_TRADE_SPOT_FROM_BACKFILL` <- this_object$`LAST_TRADE_SPOT_FROM_BACKFILL`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_BLOB`)) {
        self$`LAST_TRADE_SPOT_FROM_BLOB` <- this_object$`LAST_TRADE_SPOT_FROM_BLOB`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_CALCULATED`)) {
        self$`LAST_TRADE_SPOT_FROM_CALCULATED` <- this_object$`LAST_TRADE_SPOT_FROM_CALCULATED`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_FIX`)) {
        self$`LAST_TRADE_SPOT_FROM_FIX` <- this_object$`LAST_TRADE_SPOT_FROM_FIX`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_FIX_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_FIX_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_FIX_EXTERNAL`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_GO`)) {
        self$`LAST_TRADE_SPOT_FROM_GO` <- this_object$`LAST_TRADE_SPOT_FROM_GO`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_GO_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_GO_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_GO_EXTERNAL`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_POLLING`)) {
        self$`LAST_TRADE_SPOT_FROM_POLLING` <- this_object$`LAST_TRADE_SPOT_FROM_POLLING`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_STREAMING`)) {
        self$`LAST_TRADE_SPOT_FROM_STREAMING` <- this_object$`LAST_TRADE_SPOT_FROM_STREAMING`
      }
      if (!is.null(this_object$`LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`)) {
        self$`LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`
      }
      if (!is.null(this_object$`METADATA_VERSION`)) {
        self$`METADATA_VERSION` <- this_object$`METADATA_VERSION`
      }
      if (!is.null(this_object$`PROCESSING_TRADES_FROM_BLOB_STATUS`)) {
        self$`PROCESSING_TRADES_FROM_BLOB_STATUS` <- this_object$`PROCESSING_TRADES_FROM_BLOB_STATUS`
      }
      if (!is.null(this_object$`TOTAL_TRADES_SPOT`)) {
        self$`TOTAL_TRADES_SPOT` <- this_object$`TOTAL_TRADES_SPOT`
      }
      if (!is.null(this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA`
      }
      if (!is.null(this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA`
      }
      if (!is.null(this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA`
      }
      if (!is.null(this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA`
      }
      if (!is.null(this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA`
      }
      if (!is.null(this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA`
      }
      if (!is.null(this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA`)) {
        self$`UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return SPOTINSTRUMENTMETADATA in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`FIRST_SEEN_ON_BLOB_TS`)) {
          sprintf(
          '"FIRST_SEEN_ON_BLOB_TS":
            %d
                    ',
          self$`FIRST_SEEN_ON_BLOB_TS`
          )
        },
        if (!is.null(self$`FIRST_SEEN_ON_FIX_TS`)) {
          sprintf(
          '"FIRST_SEEN_ON_FIX_TS":
            %d
                    ',
          self$`FIRST_SEEN_ON_FIX_TS`
          )
        },
        if (!is.null(self$`FIRST_SEEN_ON_HARDCODED_TS`)) {
          sprintf(
          '"FIRST_SEEN_ON_HARDCODED_TS":
            %d
                    ',
          self$`FIRST_SEEN_ON_HARDCODED_TS`
          )
        },
        if (!is.null(self$`FIRST_SEEN_ON_INDEX_COMPOSITION_TS`)) {
          sprintf(
          '"FIRST_SEEN_ON_INDEX_COMPOSITION_TS":
            %d
                    ',
          self$`FIRST_SEEN_ON_INDEX_COMPOSITION_TS`
          )
        },
        if (!is.null(self$`FIRST_SEEN_ON_NSQ_TS`)) {
          sprintf(
          '"FIRST_SEEN_ON_NSQ_TS":
            %d
                    ',
          self$`FIRST_SEEN_ON_NSQ_TS`
          )
        },
        if (!is.null(self$`FIRST_SEEN_ON_POLLING_TS`)) {
          sprintf(
          '"FIRST_SEEN_ON_POLLING_TS":
            %d
                    ',
          self$`FIRST_SEEN_ON_POLLING_TS`
          )
        },
        if (!is.null(self$`FIRST_SEEN_ON_STREAMING_TS`)) {
          sprintf(
          '"FIRST_SEEN_ON_STREAMING_TS":
            %d
                    ',
          self$`FIRST_SEEN_ON_STREAMING_TS`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_BACKFILL`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_BACKFILL":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_BACKFILL`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_BLOB`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_BLOB":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_BLOB`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_CALCULATED`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_CALCULATED":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_CALCULATED`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_FIX`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_FIX":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_FIX`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_GO`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_GO":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_GO`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_GO_EXTERNAL`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_GO_EXTERNAL":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_GO_EXTERNAL`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_POLLING`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_POLLING":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_POLLING`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_STREAMING`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_STREAMING":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_STREAMING`
          )
        },
        if (!is.null(self$`FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`)) {
          sprintf(
          '"FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL":
            "%s"
                    ',
          self$`FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`
          )
        },
        if (!is.null(self$`HOST_MIGRATION_DESTINATION`)) {
          sprintf(
          '"HOST_MIGRATION_DESTINATION":
            "%s"
                    ',
          self$`HOST_MIGRATION_DESTINATION`
          )
        },
        if (!is.null(self$`HOST_MIGRATION_SOURCE`)) {
          sprintf(
          '"HOST_MIGRATION_SOURCE":
            "%s"
                    ',
          self$`HOST_MIGRATION_SOURCE`
          )
        },
        if (!is.null(self$`HOST_MIGRATION_STATUS`)) {
          sprintf(
          '"HOST_MIGRATION_STATUS":
            "%s"
                    ',
          self$`HOST_MIGRATION_STATUS`
          )
        },
        if (!is.null(self$`INSTRUMENT`)) {
          sprintf(
          '"INSTRUMENT":
            "%s"
                    ',
          self$`INSTRUMENT`
          )
        },
        if (!is.null(self$`INSTRUMENT_EXTERNAL_DATA`)) {
          sprintf(
          '"INSTRUMENT_EXTERNAL_DATA":
            "%s"
                    ',
          self$`INSTRUMENT_EXTERNAL_DATA`
          )
        },
        if (!is.null(self$`INSTRUMENT_MAPPING`)) {
          sprintf(
          '"INSTRUMENT_MAPPING":
            "%s"
                    ',
          self$`INSTRUMENT_MAPPING`
          )
        },
        if (!is.null(self$`INSTRUMENT_MAPPING_HISTORY`)) {
          sprintf(
          '"INSTRUMENT_MAPPING_HISTORY":
             [%s]
          ',
          paste(unlist(lapply(self$`INSTRUMENT_MAPPING_HISTORY`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`INSTRUMENT_SOURCE_BACKFILL`)) {
          sprintf(
          '"INSTRUMENT_SOURCE_BACKFILL":
            "%s"
                    ',
          self$`INSTRUMENT_SOURCE_BACKFILL`
          )
        },
        if (!is.null(self$`INSTRUMENT_SOURCE_BLOB`)) {
          sprintf(
          '"INSTRUMENT_SOURCE_BLOB":
            "%s"
                    ',
          self$`INSTRUMENT_SOURCE_BLOB`
          )
        },
        if (!is.null(self$`INSTRUMENT_SOURCE_CALCULATED`)) {
          sprintf(
          '"INSTRUMENT_SOURCE_CALCULATED":
            "%s"
                    ',
          self$`INSTRUMENT_SOURCE_CALCULATED`
          )
        },
        if (!is.null(self$`INSTRUMENT_SOURCE_FIX`)) {
          sprintf(
          '"INSTRUMENT_SOURCE_FIX":
            "%s"
                    ',
          self$`INSTRUMENT_SOURCE_FIX`
          )
        },
        if (!is.null(self$`INSTRUMENT_SOURCE_GO`)) {
          sprintf(
          '"INSTRUMENT_SOURCE_GO":
            "%s"
                    ',
          self$`INSTRUMENT_SOURCE_GO`
          )
        },
        if (!is.null(self$`INSTRUMENT_SOURCE_POLLING`)) {
          sprintf(
          '"INSTRUMENT_SOURCE_POLLING":
            "%s"
                    ',
          self$`INSTRUMENT_SOURCE_POLLING`
          )
        },
        if (!is.null(self$`INSTRUMENT_SOURCE_STREAMING`)) {
          sprintf(
          '"INSTRUMENT_SOURCE_STREAMING":
            "%s"
                    ',
          self$`INSTRUMENT_SOURCE_STREAMING`
          )
        },
        if (!is.null(self$`INSTRUMENT_STATUS`)) {
          sprintf(
          '"INSTRUMENT_STATUS":
            "%s"
                    ',
          self$`INSTRUMENT_STATUS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST":
            "%s"
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST":
            "%s"
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST":
            "%s"
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST":
            "%s"
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST":
            "%s"
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST":
            "%s"
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST":
            "%s"
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS":
            %d
                    ',
          self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION":
            %s
                    ',
          tolower(self$`INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION`)
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_REST_URI`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_REST_URI":
            "%s"
                    ',
          self$`INSTRUMENT_TRADE_SPOT_REST_URI`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_REST_URL`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_REST_URL":
            "%s"
                    ',
          self$`INSTRUMENT_TRADE_SPOT_REST_URL`
          )
        },
        if (!is.null(self$`INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION`)) {
          sprintf(
          '"INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION":
            "%s"
                    ',
          self$`INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION`
          )
        },
        if (!is.null(self$`LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS`)) {
          sprintf(
          '"LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS":
            %d
                    ',
          self$`LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS`
          )
        },
        if (!is.null(self$`LAST_SEEN_ON_BLOB_TS`)) {
          sprintf(
          '"LAST_SEEN_ON_BLOB_TS":
            %d
                    ',
          self$`LAST_SEEN_ON_BLOB_TS`
          )
        },
        if (!is.null(self$`LAST_SEEN_ON_FIX_TS`)) {
          sprintf(
          '"LAST_SEEN_ON_FIX_TS":
            %d
                    ',
          self$`LAST_SEEN_ON_FIX_TS`
          )
        },
        if (!is.null(self$`LAST_SEEN_ON_HARDCODED_TS`)) {
          sprintf(
          '"LAST_SEEN_ON_HARDCODED_TS":
            %d
                    ',
          self$`LAST_SEEN_ON_HARDCODED_TS`
          )
        },
        if (!is.null(self$`LAST_SEEN_ON_INDEX_COMPOSITION_TS`)) {
          sprintf(
          '"LAST_SEEN_ON_INDEX_COMPOSITION_TS":
            %d
                    ',
          self$`LAST_SEEN_ON_INDEX_COMPOSITION_TS`
          )
        },
        if (!is.null(self$`LAST_SEEN_ON_NSQ_TS`)) {
          sprintf(
          '"LAST_SEEN_ON_NSQ_TS":
            %d
                    ',
          self$`LAST_SEEN_ON_NSQ_TS`
          )
        },
        if (!is.null(self$`LAST_SEEN_ON_POLLING_TS`)) {
          sprintf(
          '"LAST_SEEN_ON_POLLING_TS":
            %d
                    ',
          self$`LAST_SEEN_ON_POLLING_TS`
          )
        },
        if (!is.null(self$`LAST_SEEN_ON_STREAMING_TS`)) {
          sprintf(
          '"LAST_SEEN_ON_STREAMING_TS":
            %d
                    ',
          self$`LAST_SEEN_ON_STREAMING_TS`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_BACKFILL`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_BACKFILL":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_BACKFILL`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_BLOB`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_BLOB":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_BLOB`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_CALCULATED`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_CALCULATED":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_CALCULATED`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_FIX`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_FIX":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_FIX`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_FIX_EXTERNAL`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_FIX_EXTERNAL":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_FIX_EXTERNAL`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_GO`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_GO":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_GO`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_GO_EXTERNAL`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_GO_EXTERNAL":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_GO_EXTERNAL`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_POLLING`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_POLLING":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_POLLING`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_STREAMING`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_STREAMING":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_STREAMING`
          )
        },
        if (!is.null(self$`LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`)) {
          sprintf(
          '"LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL":
            "%s"
                    ',
          self$`LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`
          )
        },
        if (!is.null(self$`METADATA_VERSION`)) {
          sprintf(
          '"METADATA_VERSION":
            %d
                    ',
          self$`METADATA_VERSION`
          )
        },
        if (!is.null(self$`PROCESSING_TRADES_FROM_BLOB_STATUS`)) {
          sprintf(
          '"PROCESSING_TRADES_FROM_BLOB_STATUS":
            "%s"
                    ',
          self$`PROCESSING_TRADES_FROM_BLOB_STATUS`
          )
        },
        if (!is.null(self$`TOTAL_TRADES_SPOT`)) {
          sprintf(
          '"TOTAL_TRADES_SPOT":
            %d
                    ',
          self$`TOTAL_TRADES_SPOT`
          )
        },
        if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA`)) {
          sprintf(
          '"UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA":
            "%s"
                    ',
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA`
          )
        },
        if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA`)) {
          sprintf(
          '"UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA":
            "%s"
                    ',
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA`
          )
        },
        if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA`)) {
          sprintf(
          '"UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA":
            "%s"
                    ',
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA`
          )
        },
        if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA`)) {
          sprintf(
          '"UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA":
            "%s"
                    ',
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA`
          )
        },
        if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA`)) {
          sprintf(
          '"UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA":
            "%s"
                    ',
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA`
          )
        },
        if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA`)) {
          sprintf(
          '"UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA":
            "%s"
                    ',
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA`
          )
        },
        if (!is.null(self$`UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA`)) {
          sprintf(
          '"UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA":
            "%s"
                    ',
          self$`UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMETADATA
    #'
    #' @description
    #' Deserialize JSON string into an instance of SPOTINSTRUMENTMETADATA
    #'
    #' @param input_json the JSON input
    #' @return the instance of SPOTINSTRUMENTMETADATA
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`FIRST_SEEN_ON_BLOB_TS` <- this_object$`FIRST_SEEN_ON_BLOB_TS`
      self$`FIRST_SEEN_ON_FIX_TS` <- this_object$`FIRST_SEEN_ON_FIX_TS`
      self$`FIRST_SEEN_ON_HARDCODED_TS` <- this_object$`FIRST_SEEN_ON_HARDCODED_TS`
      self$`FIRST_SEEN_ON_INDEX_COMPOSITION_TS` <- this_object$`FIRST_SEEN_ON_INDEX_COMPOSITION_TS`
      self$`FIRST_SEEN_ON_NSQ_TS` <- this_object$`FIRST_SEEN_ON_NSQ_TS`
      self$`FIRST_SEEN_ON_POLLING_TS` <- this_object$`FIRST_SEEN_ON_POLLING_TS`
      self$`FIRST_SEEN_ON_STREAMING_TS` <- this_object$`FIRST_SEEN_ON_STREAMING_TS`
      self$`FIRST_TRADE_SPOT_FROM_BACKFILL` <- this_object$`FIRST_TRADE_SPOT_FROM_BACKFILL`
      self$`FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`
      self$`FIRST_TRADE_SPOT_FROM_BLOB` <- this_object$`FIRST_TRADE_SPOT_FROM_BLOB`
      self$`FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL`
      self$`FIRST_TRADE_SPOT_FROM_CALCULATED` <- this_object$`FIRST_TRADE_SPOT_FROM_CALCULATED`
      self$`FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`
      self$`FIRST_TRADE_SPOT_FROM_FIX` <- this_object$`FIRST_TRADE_SPOT_FROM_FIX`
      self$`FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL`
      self$`FIRST_TRADE_SPOT_FROM_GO` <- this_object$`FIRST_TRADE_SPOT_FROM_GO`
      self$`FIRST_TRADE_SPOT_FROM_GO_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_GO_EXTERNAL`
      self$`FIRST_TRADE_SPOT_FROM_POLLING` <- this_object$`FIRST_TRADE_SPOT_FROM_POLLING`
      self$`FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL`
      self$`FIRST_TRADE_SPOT_FROM_STREAMING` <- this_object$`FIRST_TRADE_SPOT_FROM_STREAMING`
      self$`FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL` <- this_object$`FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`
      self$`HOST_MIGRATION_DESTINATION` <- this_object$`HOST_MIGRATION_DESTINATION`
      self$`HOST_MIGRATION_SOURCE` <- this_object$`HOST_MIGRATION_SOURCE`
      self$`HOST_MIGRATION_STATUS` <- this_object$`HOST_MIGRATION_STATUS`
      self$`INSTRUMENT` <- this_object$`INSTRUMENT`
      self$`INSTRUMENT_EXTERNAL_DATA` <- this_object$`INSTRUMENT_EXTERNAL_DATA`
      self$`INSTRUMENT_MAPPING` <- this_object$`INSTRUMENT_MAPPING`
      self$`INSTRUMENT_MAPPING_HISTORY` <- ApiClient$new()$deserializeObj(this_object$`INSTRUMENT_MAPPING_HISTORY`, "array[character]", loadNamespace("openapi"))
      self$`INSTRUMENT_SOURCE_BACKFILL` <- this_object$`INSTRUMENT_SOURCE_BACKFILL`
      self$`INSTRUMENT_SOURCE_BLOB` <- this_object$`INSTRUMENT_SOURCE_BLOB`
      self$`INSTRUMENT_SOURCE_CALCULATED` <- this_object$`INSTRUMENT_SOURCE_CALCULATED`
      self$`INSTRUMENT_SOURCE_FIX` <- this_object$`INSTRUMENT_SOURCE_FIX`
      self$`INSTRUMENT_SOURCE_GO` <- this_object$`INSTRUMENT_SOURCE_GO`
      self$`INSTRUMENT_SOURCE_POLLING` <- this_object$`INSTRUMENT_SOURCE_POLLING`
      self$`INSTRUMENT_SOURCE_STREAMING` <- this_object$`INSTRUMENT_SOURCE_STREAMING`
      self$`INSTRUMENT_STATUS` <- this_object$`INSTRUMENT_STATUS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST`
      self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST`
      self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST`
      self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST`
      self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST`
      self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST`
      self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST`
      self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS`
      self$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS` <- this_object$`INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS`
      self$`INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION` <- this_object$`INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION`
      self$`INSTRUMENT_TRADE_SPOT_REST_URI` <- this_object$`INSTRUMENT_TRADE_SPOT_REST_URI`
      self$`INSTRUMENT_TRADE_SPOT_REST_URL` <- this_object$`INSTRUMENT_TRADE_SPOT_REST_URL`
      self$`INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION` <- this_object$`INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION`
      self$`LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS` <- this_object$`LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS`
      self$`LAST_SEEN_ON_BLOB_TS` <- this_object$`LAST_SEEN_ON_BLOB_TS`
      self$`LAST_SEEN_ON_FIX_TS` <- this_object$`LAST_SEEN_ON_FIX_TS`
      self$`LAST_SEEN_ON_HARDCODED_TS` <- this_object$`LAST_SEEN_ON_HARDCODED_TS`
      self$`LAST_SEEN_ON_INDEX_COMPOSITION_TS` <- this_object$`LAST_SEEN_ON_INDEX_COMPOSITION_TS`
      self$`LAST_SEEN_ON_NSQ_TS` <- this_object$`LAST_SEEN_ON_NSQ_TS`
      self$`LAST_SEEN_ON_POLLING_TS` <- this_object$`LAST_SEEN_ON_POLLING_TS`
      self$`LAST_SEEN_ON_STREAMING_TS` <- this_object$`LAST_SEEN_ON_STREAMING_TS`
      self$`LAST_TRADE_SPOT_FROM_BACKFILL` <- this_object$`LAST_TRADE_SPOT_FROM_BACKFILL`
      self$`LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL`
      self$`LAST_TRADE_SPOT_FROM_BLOB` <- this_object$`LAST_TRADE_SPOT_FROM_BLOB`
      self$`LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL`
      self$`LAST_TRADE_SPOT_FROM_CALCULATED` <- this_object$`LAST_TRADE_SPOT_FROM_CALCULATED`
      self$`LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL`
      self$`LAST_TRADE_SPOT_FROM_FIX` <- this_object$`LAST_TRADE_SPOT_FROM_FIX`
      self$`LAST_TRADE_SPOT_FROM_FIX_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_FIX_EXTERNAL`
      self$`LAST_TRADE_SPOT_FROM_GO` <- this_object$`LAST_TRADE_SPOT_FROM_GO`
      self$`LAST_TRADE_SPOT_FROM_GO_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_GO_EXTERNAL`
      self$`LAST_TRADE_SPOT_FROM_POLLING` <- this_object$`LAST_TRADE_SPOT_FROM_POLLING`
      self$`LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL`
      self$`LAST_TRADE_SPOT_FROM_STREAMING` <- this_object$`LAST_TRADE_SPOT_FROM_STREAMING`
      self$`LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL` <- this_object$`LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL`
      self$`METADATA_VERSION` <- this_object$`METADATA_VERSION`
      self$`PROCESSING_TRADES_FROM_BLOB_STATUS` <- this_object$`PROCESSING_TRADES_FROM_BLOB_STATUS`
      self$`TOTAL_TRADES_SPOT` <- this_object$`TOTAL_TRADES_SPOT`
      self$`UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA`
      self$`UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA`
      self$`UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA`
      self$`UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA`
      self$`UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA`
      self$`UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA`
      self$`UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA` <- this_object$`UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA`
      self
    },
    #' Validate JSON input with respect to SPOTINSTRUMENTMETADATA
    #'
    #' @description
    #' Validate JSON input with respect to SPOTINSTRUMENTMETADATA and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SPOTINSTRUMENTMETADATA
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# SPOTINSTRUMENTMETADATA$unlock()
#
## Below is an example to define the print function
# SPOTINSTRUMENTMETADATA$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SPOTINSTRUMENTMETADATA$lock()

