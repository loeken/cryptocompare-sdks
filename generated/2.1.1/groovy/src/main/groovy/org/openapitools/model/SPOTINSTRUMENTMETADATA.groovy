package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;

@Canonical
class SPOTINSTRUMENTMETADATA {
    /* This is the first time instrument was seen on instrumentListSourceType BLOB. */
    Integer FIRST_SEEN_ON_BLOB_TS
    /* This is the first time instrument was seen on instrumentListSourceType FIX. */
    Integer FIRST_SEEN_ON_FIX_TS
    /* This is the first time instrument was seen on instrumentListSourceType HARDCODED. */
    Integer FIRST_SEEN_ON_HARDCODED_TS
    /* This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. */
    Integer FIRST_SEEN_ON_INDEX_COMPOSITION_TS
    /* This is the first time instrument was seen on instrumentListSourceType NSQ. */
    Integer FIRST_SEEN_ON_NSQ_TS
    /* This is the first time instrument was seen on instrumentListSourceType POLLING. */
    Integer FIRST_SEEN_ON_POLLING_TS
    /* This is the first time instrument was seen on instrumentListSourceType STREAMING. */
    Integer FIRST_SEEN_ON_STREAMING_TS
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object FIRST_TRADE_SPOT_FROM_BACKFILL
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    Object FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object FIRST_TRADE_SPOT_FROM_BLOB
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    Object FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object FIRST_TRADE_SPOT_FROM_CALCULATED
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    Object FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object FIRST_TRADE_SPOT_FROM_FIX
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    Object FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object FIRST_TRADE_SPOT_FROM_GO
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    Object FIRST_TRADE_SPOT_FROM_GO_EXTERNAL
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object FIRST_TRADE_SPOT_FROM_POLLING
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    Object FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL
    /* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object FIRST_TRADE_SPOT_FROM_STREAMING
    /* This is the first TRADE_SPOT that we have seen on the specific source type in external format. */
    Object FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL
    /* The migration destination vm hostname. */
    String HOST_MIGRATION_DESTINATION
    /* The migration source vm hostname. */
    String HOST_MIGRATION_SOURCE
    /* The migration status of the symbol, we only poll / stream / connect empty or SETTLED */
    String HOST_MIGRATION_STATUS
    /* The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&? */
    String INSTRUMENT
    /* The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange. */
    String INSTRUMENT_EXTERNAL_DATA
    /* The current mapping information for this instrument */
    Object INSTRUMENT_MAPPING = {}
    /* Historical mapping information for this instrument */
    List<String> INSTRUMENT_MAPPING_HISTORY = new ArrayList<>()
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    String INSTRUMENT_SOURCE_BACKFILL
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    String INSTRUMENT_SOURCE_BLOB
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    String INSTRUMENT_SOURCE_CALCULATED
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    String INSTRUMENT_SOURCE_FIX
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    String INSTRUMENT_SOURCE_GO
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    String INSTRUMENT_SOURCE_POLLING
    /* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. */
    String INSTRUMENT_SOURCE_STREAMING
    /* The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data. */
    String INSTRUMENT_STATUS = "ACTIVE"
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    Object INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    Object INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    Object INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    Object INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    Object INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    Object INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS
    /* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. */
    Object INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST
    /* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS
    /* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS
    /* The next time we expect to make a request for TRADE_SPOT on this instrument. */
    Integer INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS
    /* This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration. */
    Boolean INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION = false
    /* This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT. */
    String INSTRUMENT_TRADE_SPOT_REST_URI
    /* The URL we send to the proxy swarm to get TRADE_SPOT for the instrument. */
    String INSTRUMENT_TRADE_SPOT_REST_URL
    /* This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument. */
    String INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION
    /* The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter */
    Integer LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS
    /* This is the last time instrument was seen on instrumentListSourceType BLOB. */
    Integer LAST_SEEN_ON_BLOB_TS
    /* This is the last time instrument was seen on instrumentListSourceType FIX. */
    Integer LAST_SEEN_ON_FIX_TS
    /* This is the last time instrument was seen on instrumentListSourceType HARDCODED. */
    Integer LAST_SEEN_ON_HARDCODED_TS
    /* This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. */
    Integer LAST_SEEN_ON_INDEX_COMPOSITION_TS
    /* This is the last time instrument was seen on instrumentListSourceType NSQ. */
    Integer LAST_SEEN_ON_NSQ_TS
    /* This is the last time instrument was seen on instrumentListSourceType POLLING. */
    Integer LAST_SEEN_ON_POLLING_TS
    /* This is the last time instrument was seen on instrumentListSourceType STREAMING. */
    Integer LAST_SEEN_ON_STREAMING_TS
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object LAST_TRADE_SPOT_FROM_BACKFILL
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    Object LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object LAST_TRADE_SPOT_FROM_BLOB
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    Object LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object LAST_TRADE_SPOT_FROM_CALCULATED
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    Object LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object LAST_TRADE_SPOT_FROM_FIX
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    Object LAST_TRADE_SPOT_FROM_FIX_EXTERNAL
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object LAST_TRADE_SPOT_FROM_GO
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    Object LAST_TRADE_SPOT_FROM_GO_EXTERNAL
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object LAST_TRADE_SPOT_FROM_POLLING
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    Object LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL
    /* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. */
    Object LAST_TRADE_SPOT_FROM_STREAMING
    /* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. */
    Object LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL
    /* The version of metadata, used for version conversions/migrates. */
    Integer METADATA_VERSION = 4
    /* This states the status of blob migration for this intrument on this exchange. */
    String PROCESSING_TRADES_FROM_BLOB_STATUS
    /* This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument */
    Integer TOTAL_TRADES_SPOT
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    Object UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    Object UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    Object UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    Object UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    Object UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    Object UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA
    /* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. */
    Object UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA
}
