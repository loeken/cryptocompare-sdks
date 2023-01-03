package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SPOTINSTRUMENTMETADATA  {
  
  @ApiModelProperty(value = "This is the first time instrument was seen on instrumentListSourceType BLOB.")
 /**
   * This is the first time instrument was seen on instrumentListSourceType BLOB.
  **/
  private Integer FIRST_SEEN_ON_BLOB_TS;

  @ApiModelProperty(value = "This is the first time instrument was seen on instrumentListSourceType FIX.")
 /**
   * This is the first time instrument was seen on instrumentListSourceType FIX.
  **/
  private Integer FIRST_SEEN_ON_FIX_TS;

  @ApiModelProperty(value = "This is the first time instrument was seen on instrumentListSourceType HARDCODED.")
 /**
   * This is the first time instrument was seen on instrumentListSourceType HARDCODED.
  **/
  private Integer FIRST_SEEN_ON_HARDCODED_TS;

  @ApiModelProperty(value = "This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.")
 /**
   * This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
  **/
  private Integer FIRST_SEEN_ON_INDEX_COMPOSITION_TS;

  @ApiModelProperty(value = "This is the first time instrument was seen on instrumentListSourceType NSQ.")
 /**
   * This is the first time instrument was seen on instrumentListSourceType NSQ.
  **/
  private Integer FIRST_SEEN_ON_NSQ_TS;

  @ApiModelProperty(value = "This is the first time instrument was seen on instrumentListSourceType POLLING.")
 /**
   * This is the first time instrument was seen on instrumentListSourceType POLLING.
  **/
  private Integer FIRST_SEEN_ON_POLLING_TS;

  @ApiModelProperty(value = "This is the first time instrument was seen on instrumentListSourceType STREAMING.")
 /**
   * This is the first time instrument was seen on instrumentListSourceType STREAMING.
  **/
  private Integer FIRST_SEEN_ON_STREAMING_TS;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_BACKFILL;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in external format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_BLOB;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in external format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_CALCULATED;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in external format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_FIX;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in external format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_GO;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in external format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_GO_EXTERNAL;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_POLLING;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in external format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_STREAMING;

  @ApiModelProperty(value = "This is the first TRADE_SPOT that we have seen on the specific source type in external format.")
 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
  **/
  private Object FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;

  @ApiModelProperty(value = "The migration destination vm hostname.")
 /**
   * The migration destination vm hostname.
  **/
  private String HOST_MIGRATION_DESTINATION;

  @ApiModelProperty(value = "The migration source vm hostname.")
 /**
   * The migration source vm hostname.
  **/
  private String HOST_MIGRATION_SOURCE;

  @ApiModelProperty(value = "The migration status of the symbol, we only poll / stream / connect empty or SETTLED")
 /**
   * The migration status of the symbol, we only poll / stream / connect empty or SETTLED
  **/
  private String HOST_MIGRATION_STATUS;

  @ApiModelProperty(value = "The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&?")
 /**
   * The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&?
  **/
  private String INSTRUMENT;

  @ApiModelProperty(value = "The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange.")
 /**
   * The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange.
  **/
  private String INSTRUMENT_EXTERNAL_DATA;

  @ApiModelProperty(example = "{}", value = "The current mapping information for this instrument")
 /**
   * The current mapping information for this instrument
  **/
  private Object INSTRUMENT_MAPPING = {};

  @ApiModelProperty(example = "[]", value = "Historical mapping information for this instrument")
 /**
   * Historical mapping information for this instrument
  **/
  private List<String> INSTRUMENT_MAPPING_HISTORY = null;

  @ApiModelProperty(value = "Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.")
 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  **/
  private String INSTRUMENT_SOURCE_BACKFILL;

  @ApiModelProperty(value = "Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.")
 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  **/
  private String INSTRUMENT_SOURCE_BLOB;

  @ApiModelProperty(value = "Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.")
 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  **/
  private String INSTRUMENT_SOURCE_CALCULATED;

  @ApiModelProperty(value = "Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.")
 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  **/
  private String INSTRUMENT_SOURCE_FIX;

  @ApiModelProperty(value = "Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.")
 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  **/
  private String INSTRUMENT_SOURCE_GO;

  @ApiModelProperty(value = "Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.")
 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  **/
  private String INSTRUMENT_SOURCE_POLLING;

  @ApiModelProperty(value = "Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.")
 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
  **/
  private String INSTRUMENT_SOURCE_STREAMING;

  @ApiModelProperty(example = "ACTIVE", value = "The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data.")
 /**
   * The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data.
  **/
  private String INSTRUMENT_STATUS = "ACTIVE";

  @ApiModelProperty(value = "The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Object INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;

  @ApiModelProperty(value = "The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS;

  @ApiModelProperty(value = "The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.")
 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS;

  @ApiModelProperty(value = "The next time we expect to make a request for TRADE_SPOT on this instrument.")
 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS;

  @ApiModelProperty(value = "The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Object INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;

  @ApiModelProperty(value = "The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS;

  @ApiModelProperty(value = "The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.")
 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS;

  @ApiModelProperty(value = "The next time we expect to make a request for TRADE_SPOT on this instrument.")
 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS;

  @ApiModelProperty(value = "The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Object INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;

  @ApiModelProperty(value = "The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS;

  @ApiModelProperty(value = "The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.")
 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS;

  @ApiModelProperty(value = "The next time we expect to make a request for TRADE_SPOT on this instrument.")
 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS;

  @ApiModelProperty(value = "The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Object INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;

  @ApiModelProperty(value = "The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS;

  @ApiModelProperty(value = "The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.")
 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS;

  @ApiModelProperty(value = "The next time we expect to make a request for TRADE_SPOT on this instrument.")
 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS;

  @ApiModelProperty(value = "The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Object INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;

  @ApiModelProperty(value = "The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS;

  @ApiModelProperty(value = "The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.")
 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS;

  @ApiModelProperty(value = "The next time we expect to make a request for TRADE_SPOT on this instrument.")
 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS;

  @ApiModelProperty(value = "The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Object INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;

  @ApiModelProperty(value = "The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS;

  @ApiModelProperty(value = "The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.")
 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS;

  @ApiModelProperty(value = "The next time we expect to make a request for TRADE_SPOT on this instrument.")
 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS;

  @ApiModelProperty(value = "The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Object INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;

  @ApiModelProperty(value = "The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS;

  @ApiModelProperty(value = "The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.")
 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS;

  @ApiModelProperty(value = "The next time we expect to make a request for TRADE_SPOT on this instrument.")
 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
  **/
  private Integer INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS;

  @ApiModelProperty(example = "false", value = "This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration.")
 /**
   * This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration.
  **/
  private Boolean INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION = false;

  @ApiModelProperty(value = "This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT.")
 /**
   * This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT.
  **/
  private String INSTRUMENT_TRADE_SPOT_REST_URI;

  @ApiModelProperty(value = "The URL we send to the proxy swarm to get TRADE_SPOT for the instrument.")
 /**
   * The URL we send to the proxy swarm to get TRADE_SPOT for the instrument.
  **/
  private String INSTRUMENT_TRADE_SPOT_REST_URL;

  @ApiModelProperty(value = "This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument.")
 /**
   * This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument.
  **/
  private String INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION;

  @ApiModelProperty(value = "The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter")
 /**
   * The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter
  **/
  private Integer LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS;

  @ApiModelProperty(value = "This is the last time instrument was seen on instrumentListSourceType BLOB.")
 /**
   * This is the last time instrument was seen on instrumentListSourceType BLOB.
  **/
  private Integer LAST_SEEN_ON_BLOB_TS;

  @ApiModelProperty(value = "This is the last time instrument was seen on instrumentListSourceType FIX.")
 /**
   * This is the last time instrument was seen on instrumentListSourceType FIX.
  **/
  private Integer LAST_SEEN_ON_FIX_TS;

  @ApiModelProperty(value = "This is the last time instrument was seen on instrumentListSourceType HARDCODED.")
 /**
   * This is the last time instrument was seen on instrumentListSourceType HARDCODED.
  **/
  private Integer LAST_SEEN_ON_HARDCODED_TS;

  @ApiModelProperty(value = "This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.")
 /**
   * This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
  **/
  private Integer LAST_SEEN_ON_INDEX_COMPOSITION_TS;

  @ApiModelProperty(value = "This is the last time instrument was seen on instrumentListSourceType NSQ.")
 /**
   * This is the last time instrument was seen on instrumentListSourceType NSQ.
  **/
  private Integer LAST_SEEN_ON_NSQ_TS;

  @ApiModelProperty(value = "This is the last time instrument was seen on instrumentListSourceType POLLING.")
 /**
   * This is the last time instrument was seen on instrumentListSourceType POLLING.
  **/
  private Integer LAST_SEEN_ON_POLLING_TS;

  @ApiModelProperty(value = "This is the last time instrument was seen on instrumentListSourceType STREAMING.")
 /**
   * This is the last time instrument was seen on instrumentListSourceType STREAMING.
  **/
  private Integer LAST_SEEN_ON_STREAMING_TS;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object LAST_TRADE_SPOT_FROM_BACKFILL;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific trade source in external format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  **/
  private Object LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object LAST_TRADE_SPOT_FROM_BLOB;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific trade source in external format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  **/
  private Object LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object LAST_TRADE_SPOT_FROM_CALCULATED;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific trade source in external format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  **/
  private Object LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object LAST_TRADE_SPOT_FROM_FIX;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific trade source in external format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  **/
  private Object LAST_TRADE_SPOT_FROM_FIX_EXTERNAL;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object LAST_TRADE_SPOT_FROM_GO;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific trade source in external format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  **/
  private Object LAST_TRADE_SPOT_FROM_GO_EXTERNAL;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object LAST_TRADE_SPOT_FROM_POLLING;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific trade source in external format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  **/
  private Object LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific source type in internal format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
  **/
  private Object LAST_TRADE_SPOT_FROM_STREAMING;

  @ApiModelProperty(value = "This is the last TRADE_SPOT that we have seen on the specific trade source in external format.")
 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
  **/
  private Object LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;

  @ApiModelProperty(example = "4", value = "The version of metadata, used for version conversions/migrates.")
 /**
   * The version of metadata, used for version conversions/migrates.
  **/
  private Integer METADATA_VERSION = 4;

  @ApiModelProperty(value = "This states the status of blob migration for this intrument on this exchange.")
 /**
   * This states the status of blob migration for this intrument on this exchange.
  **/
  private String PROCESSING_TRADES_FROM_BLOB_STATUS;

  @ApiModelProperty(value = "This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument")
 /**
   * This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument
  **/
  private Integer TOTAL_TRADES_SPOT;

  @ApiModelProperty(value = "This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.")
 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  **/
  private Object UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;

  @ApiModelProperty(value = "This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.")
 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  **/
  private Object UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;

  @ApiModelProperty(value = "This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.")
 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  **/
  private Object UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;

  @ApiModelProperty(value = "This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.")
 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  **/
  private Object UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;

  @ApiModelProperty(value = "This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.")
 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  **/
  private Object UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;

  @ApiModelProperty(value = "This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.")
 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  **/
  private Object UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;

  @ApiModelProperty(value = "This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.")
 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
  **/
  private Object UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;
 /**
   * This is the first time instrument was seen on instrumentListSourceType BLOB.
   * @return FIRST_SEEN_ON_BLOB_TS
  **/
  @JsonProperty("FIRST_SEEN_ON_BLOB_TS")
  public Integer getFIRSTSEENONBLOBTS() {
    return FIRST_SEEN_ON_BLOB_TS;
  }

  public void setFIRSTSEENONBLOBTS(Integer FIRST_SEEN_ON_BLOB_TS) {
    this.FIRST_SEEN_ON_BLOB_TS = FIRST_SEEN_ON_BLOB_TS;
  }

  public SPOTINSTRUMENTMETADATA FIRST_SEEN_ON_BLOB_TS(Integer FIRST_SEEN_ON_BLOB_TS) {
    this.FIRST_SEEN_ON_BLOB_TS = FIRST_SEEN_ON_BLOB_TS;
    return this;
  }

 /**
   * This is the first time instrument was seen on instrumentListSourceType FIX.
   * @return FIRST_SEEN_ON_FIX_TS
  **/
  @JsonProperty("FIRST_SEEN_ON_FIX_TS")
  public Integer getFIRSTSEENONFIXTS() {
    return FIRST_SEEN_ON_FIX_TS;
  }

  public void setFIRSTSEENONFIXTS(Integer FIRST_SEEN_ON_FIX_TS) {
    this.FIRST_SEEN_ON_FIX_TS = FIRST_SEEN_ON_FIX_TS;
  }

  public SPOTINSTRUMENTMETADATA FIRST_SEEN_ON_FIX_TS(Integer FIRST_SEEN_ON_FIX_TS) {
    this.FIRST_SEEN_ON_FIX_TS = FIRST_SEEN_ON_FIX_TS;
    return this;
  }

 /**
   * This is the first time instrument was seen on instrumentListSourceType HARDCODED.
   * @return FIRST_SEEN_ON_HARDCODED_TS
  **/
  @JsonProperty("FIRST_SEEN_ON_HARDCODED_TS")
  public Integer getFIRSTSEENONHARDCODEDTS() {
    return FIRST_SEEN_ON_HARDCODED_TS;
  }

  public void setFIRSTSEENONHARDCODEDTS(Integer FIRST_SEEN_ON_HARDCODED_TS) {
    this.FIRST_SEEN_ON_HARDCODED_TS = FIRST_SEEN_ON_HARDCODED_TS;
  }

  public SPOTINSTRUMENTMETADATA FIRST_SEEN_ON_HARDCODED_TS(Integer FIRST_SEEN_ON_HARDCODED_TS) {
    this.FIRST_SEEN_ON_HARDCODED_TS = FIRST_SEEN_ON_HARDCODED_TS;
    return this;
  }

 /**
   * This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
   * @return FIRST_SEEN_ON_INDEX_COMPOSITION_TS
  **/
  @JsonProperty("FIRST_SEEN_ON_INDEX_COMPOSITION_TS")
  public Integer getFIRSTSEENONINDEXCOMPOSITIONTS() {
    return FIRST_SEEN_ON_INDEX_COMPOSITION_TS;
  }

  public void setFIRSTSEENONINDEXCOMPOSITIONTS(Integer FIRST_SEEN_ON_INDEX_COMPOSITION_TS) {
    this.FIRST_SEEN_ON_INDEX_COMPOSITION_TS = FIRST_SEEN_ON_INDEX_COMPOSITION_TS;
  }

  public SPOTINSTRUMENTMETADATA FIRST_SEEN_ON_INDEX_COMPOSITION_TS(Integer FIRST_SEEN_ON_INDEX_COMPOSITION_TS) {
    this.FIRST_SEEN_ON_INDEX_COMPOSITION_TS = FIRST_SEEN_ON_INDEX_COMPOSITION_TS;
    return this;
  }

 /**
   * This is the first time instrument was seen on instrumentListSourceType NSQ.
   * @return FIRST_SEEN_ON_NSQ_TS
  **/
  @JsonProperty("FIRST_SEEN_ON_NSQ_TS")
  public Integer getFIRSTSEENONNSQTS() {
    return FIRST_SEEN_ON_NSQ_TS;
  }

  public void setFIRSTSEENONNSQTS(Integer FIRST_SEEN_ON_NSQ_TS) {
    this.FIRST_SEEN_ON_NSQ_TS = FIRST_SEEN_ON_NSQ_TS;
  }

  public SPOTINSTRUMENTMETADATA FIRST_SEEN_ON_NSQ_TS(Integer FIRST_SEEN_ON_NSQ_TS) {
    this.FIRST_SEEN_ON_NSQ_TS = FIRST_SEEN_ON_NSQ_TS;
    return this;
  }

 /**
   * This is the first time instrument was seen on instrumentListSourceType POLLING.
   * @return FIRST_SEEN_ON_POLLING_TS
  **/
  @JsonProperty("FIRST_SEEN_ON_POLLING_TS")
  public Integer getFIRSTSEENONPOLLINGTS() {
    return FIRST_SEEN_ON_POLLING_TS;
  }

  public void setFIRSTSEENONPOLLINGTS(Integer FIRST_SEEN_ON_POLLING_TS) {
    this.FIRST_SEEN_ON_POLLING_TS = FIRST_SEEN_ON_POLLING_TS;
  }

  public SPOTINSTRUMENTMETADATA FIRST_SEEN_ON_POLLING_TS(Integer FIRST_SEEN_ON_POLLING_TS) {
    this.FIRST_SEEN_ON_POLLING_TS = FIRST_SEEN_ON_POLLING_TS;
    return this;
  }

 /**
   * This is the first time instrument was seen on instrumentListSourceType STREAMING.
   * @return FIRST_SEEN_ON_STREAMING_TS
  **/
  @JsonProperty("FIRST_SEEN_ON_STREAMING_TS")
  public Integer getFIRSTSEENONSTREAMINGTS() {
    return FIRST_SEEN_ON_STREAMING_TS;
  }

  public void setFIRSTSEENONSTREAMINGTS(Integer FIRST_SEEN_ON_STREAMING_TS) {
    this.FIRST_SEEN_ON_STREAMING_TS = FIRST_SEEN_ON_STREAMING_TS;
  }

  public SPOTINSTRUMENTMETADATA FIRST_SEEN_ON_STREAMING_TS(Integer FIRST_SEEN_ON_STREAMING_TS) {
    this.FIRST_SEEN_ON_STREAMING_TS = FIRST_SEEN_ON_STREAMING_TS;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return FIRST_TRADE_SPOT_FROM_BACKFILL
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_BACKFILL")
  public Object getFIRSTTRADESPOTFROMBACKFILL() {
    return FIRST_TRADE_SPOT_FROM_BACKFILL;
  }

  public void setFIRSTTRADESPOTFROMBACKFILL(Object FIRST_TRADE_SPOT_FROM_BACKFILL) {
    this.FIRST_TRADE_SPOT_FROM_BACKFILL = FIRST_TRADE_SPOT_FROM_BACKFILL;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_BACKFILL(Object FIRST_TRADE_SPOT_FROM_BACKFILL) {
    this.FIRST_TRADE_SPOT_FROM_BACKFILL = FIRST_TRADE_SPOT_FROM_BACKFILL;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
   * @return FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL")
  public Object getFIRSTTRADESPOTFROMBACKFILLEXTERNAL() {
    return FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
  }

  public void setFIRSTTRADESPOTFROMBACKFILLEXTERNAL(Object FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL(Object FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return FIRST_TRADE_SPOT_FROM_BLOB
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_BLOB")
  public Object getFIRSTTRADESPOTFROMBLOB() {
    return FIRST_TRADE_SPOT_FROM_BLOB;
  }

  public void setFIRSTTRADESPOTFROMBLOB(Object FIRST_TRADE_SPOT_FROM_BLOB) {
    this.FIRST_TRADE_SPOT_FROM_BLOB = FIRST_TRADE_SPOT_FROM_BLOB;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_BLOB(Object FIRST_TRADE_SPOT_FROM_BLOB) {
    this.FIRST_TRADE_SPOT_FROM_BLOB = FIRST_TRADE_SPOT_FROM_BLOB;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
   * @return FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL")
  public Object getFIRSTTRADESPOTFROMBLOBEXTERNAL() {
    return FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
  }

  public void setFIRSTTRADESPOTFROMBLOBEXTERNAL(Object FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL = FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL(Object FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL = FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return FIRST_TRADE_SPOT_FROM_CALCULATED
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_CALCULATED")
  public Object getFIRSTTRADESPOTFROMCALCULATED() {
    return FIRST_TRADE_SPOT_FROM_CALCULATED;
  }

  public void setFIRSTTRADESPOTFROMCALCULATED(Object FIRST_TRADE_SPOT_FROM_CALCULATED) {
    this.FIRST_TRADE_SPOT_FROM_CALCULATED = FIRST_TRADE_SPOT_FROM_CALCULATED;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_CALCULATED(Object FIRST_TRADE_SPOT_FROM_CALCULATED) {
    this.FIRST_TRADE_SPOT_FROM_CALCULATED = FIRST_TRADE_SPOT_FROM_CALCULATED;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
   * @return FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL")
  public Object getFIRSTTRADESPOTFROMCALCULATEDEXTERNAL() {
    return FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
  }

  public void setFIRSTTRADESPOTFROMCALCULATEDEXTERNAL(Object FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL(Object FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return FIRST_TRADE_SPOT_FROM_FIX
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_FIX")
  public Object getFIRSTTRADESPOTFROMFIX() {
    return FIRST_TRADE_SPOT_FROM_FIX;
  }

  public void setFIRSTTRADESPOTFROMFIX(Object FIRST_TRADE_SPOT_FROM_FIX) {
    this.FIRST_TRADE_SPOT_FROM_FIX = FIRST_TRADE_SPOT_FROM_FIX;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_FIX(Object FIRST_TRADE_SPOT_FROM_FIX) {
    this.FIRST_TRADE_SPOT_FROM_FIX = FIRST_TRADE_SPOT_FROM_FIX;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
   * @return FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL")
  public Object getFIRSTTRADESPOTFROMFIXEXTERNAL() {
    return FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;
  }

  public void setFIRSTTRADESPOTFROMFIXEXTERNAL(Object FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL = FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL(Object FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL = FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return FIRST_TRADE_SPOT_FROM_GO
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_GO")
  public Object getFIRSTTRADESPOTFROMGO() {
    return FIRST_TRADE_SPOT_FROM_GO;
  }

  public void setFIRSTTRADESPOTFROMGO(Object FIRST_TRADE_SPOT_FROM_GO) {
    this.FIRST_TRADE_SPOT_FROM_GO = FIRST_TRADE_SPOT_FROM_GO;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_GO(Object FIRST_TRADE_SPOT_FROM_GO) {
    this.FIRST_TRADE_SPOT_FROM_GO = FIRST_TRADE_SPOT_FROM_GO;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
   * @return FIRST_TRADE_SPOT_FROM_GO_EXTERNAL
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_GO_EXTERNAL")
  public Object getFIRSTTRADESPOTFROMGOEXTERNAL() {
    return FIRST_TRADE_SPOT_FROM_GO_EXTERNAL;
  }

  public void setFIRSTTRADESPOTFROMGOEXTERNAL(Object FIRST_TRADE_SPOT_FROM_GO_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_GO_EXTERNAL = FIRST_TRADE_SPOT_FROM_GO_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_GO_EXTERNAL(Object FIRST_TRADE_SPOT_FROM_GO_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_GO_EXTERNAL = FIRST_TRADE_SPOT_FROM_GO_EXTERNAL;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return FIRST_TRADE_SPOT_FROM_POLLING
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_POLLING")
  public Object getFIRSTTRADESPOTFROMPOLLING() {
    return FIRST_TRADE_SPOT_FROM_POLLING;
  }

  public void setFIRSTTRADESPOTFROMPOLLING(Object FIRST_TRADE_SPOT_FROM_POLLING) {
    this.FIRST_TRADE_SPOT_FROM_POLLING = FIRST_TRADE_SPOT_FROM_POLLING;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_POLLING(Object FIRST_TRADE_SPOT_FROM_POLLING) {
    this.FIRST_TRADE_SPOT_FROM_POLLING = FIRST_TRADE_SPOT_FROM_POLLING;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
   * @return FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL")
  public Object getFIRSTTRADESPOTFROMPOLLINGEXTERNAL() {
    return FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
  }

  public void setFIRSTTRADESPOTFROMPOLLINGEXTERNAL(Object FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL = FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL(Object FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL = FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return FIRST_TRADE_SPOT_FROM_STREAMING
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_STREAMING")
  public Object getFIRSTTRADESPOTFROMSTREAMING() {
    return FIRST_TRADE_SPOT_FROM_STREAMING;
  }

  public void setFIRSTTRADESPOTFROMSTREAMING(Object FIRST_TRADE_SPOT_FROM_STREAMING) {
    this.FIRST_TRADE_SPOT_FROM_STREAMING = FIRST_TRADE_SPOT_FROM_STREAMING;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_STREAMING(Object FIRST_TRADE_SPOT_FROM_STREAMING) {
    this.FIRST_TRADE_SPOT_FROM_STREAMING = FIRST_TRADE_SPOT_FROM_STREAMING;
    return this;
  }

 /**
   * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
   * @return FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL
  **/
  @JsonProperty("FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL")
  public Object getFIRSTTRADESPOTFROMSTREAMINGEXTERNAL() {
    return FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
  }

  public void setFIRSTTRADESPOTFROMSTREAMINGEXTERNAL(Object FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL(Object FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL) {
    this.FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
    return this;
  }

 /**
   * The migration destination vm hostname.
   * @return HOST_MIGRATION_DESTINATION
  **/
  @JsonProperty("HOST_MIGRATION_DESTINATION")
  public String getHOSTMIGRATIONDESTINATION() {
    return HOST_MIGRATION_DESTINATION;
  }

  public void setHOSTMIGRATIONDESTINATION(String HOST_MIGRATION_DESTINATION) {
    this.HOST_MIGRATION_DESTINATION = HOST_MIGRATION_DESTINATION;
  }

  public SPOTINSTRUMENTMETADATA HOST_MIGRATION_DESTINATION(String HOST_MIGRATION_DESTINATION) {
    this.HOST_MIGRATION_DESTINATION = HOST_MIGRATION_DESTINATION;
    return this;
  }

 /**
   * The migration source vm hostname.
   * @return HOST_MIGRATION_SOURCE
  **/
  @JsonProperty("HOST_MIGRATION_SOURCE")
  public String getHOSTMIGRATIONSOURCE() {
    return HOST_MIGRATION_SOURCE;
  }

  public void setHOSTMIGRATIONSOURCE(String HOST_MIGRATION_SOURCE) {
    this.HOST_MIGRATION_SOURCE = HOST_MIGRATION_SOURCE;
  }

  public SPOTINSTRUMENTMETADATA HOST_MIGRATION_SOURCE(String HOST_MIGRATION_SOURCE) {
    this.HOST_MIGRATION_SOURCE = HOST_MIGRATION_SOURCE;
    return this;
  }

 /**
   * The migration status of the symbol, we only poll / stream / connect empty or SETTLED
   * @return HOST_MIGRATION_STATUS
  **/
  @JsonProperty("HOST_MIGRATION_STATUS")
  public String getHOSTMIGRATIONSTATUS() {
    return HOST_MIGRATION_STATUS;
  }

  public void setHOSTMIGRATIONSTATUS(String HOST_MIGRATION_STATUS) {
    this.HOST_MIGRATION_STATUS = HOST_MIGRATION_STATUS;
  }

  public SPOTINSTRUMENTMETADATA HOST_MIGRATION_STATUS(String HOST_MIGRATION_STATUS) {
    this.HOST_MIGRATION_STATUS = HOST_MIGRATION_STATUS;
    return this;
  }

 /**
   * The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&amp;?
   * @return INSTRUMENT
  **/
  @JsonProperty("INSTRUMENT")
  public String getINSTRUMENT() {
    return INSTRUMENT;
  }

  public void setINSTRUMENT(String INSTRUMENT) {
    this.INSTRUMENT = INSTRUMENT;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT(String INSTRUMENT) {
    this.INSTRUMENT = INSTRUMENT;
    return this;
  }

 /**
   * The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange.
   * @return INSTRUMENT_EXTERNAL_DATA
  **/
  @JsonProperty("INSTRUMENT_EXTERNAL_DATA")
  public String getINSTRUMENTEXTERNALDATA() {
    return INSTRUMENT_EXTERNAL_DATA;
  }

  public void setINSTRUMENTEXTERNALDATA(String INSTRUMENT_EXTERNAL_DATA) {
    this.INSTRUMENT_EXTERNAL_DATA = INSTRUMENT_EXTERNAL_DATA;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_EXTERNAL_DATA(String INSTRUMENT_EXTERNAL_DATA) {
    this.INSTRUMENT_EXTERNAL_DATA = INSTRUMENT_EXTERNAL_DATA;
    return this;
  }

 /**
   * The current mapping information for this instrument
   * @return INSTRUMENT_MAPPING
  **/
  @JsonProperty("INSTRUMENT_MAPPING")
  public Object getINSTRUMENTMAPPING() {
    return INSTRUMENT_MAPPING;
  }

  public void setINSTRUMENTMAPPING(Object INSTRUMENT_MAPPING) {
    this.INSTRUMENT_MAPPING = INSTRUMENT_MAPPING;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_MAPPING(Object INSTRUMENT_MAPPING) {
    this.INSTRUMENT_MAPPING = INSTRUMENT_MAPPING;
    return this;
  }

 /**
   * Historical mapping information for this instrument
   * @return INSTRUMENT_MAPPING_HISTORY
  **/
  @JsonProperty("INSTRUMENT_MAPPING_HISTORY")
  public List<String> getINSTRUMENTMAPPINGHISTORY() {
    return INSTRUMENT_MAPPING_HISTORY;
  }

  public void setINSTRUMENTMAPPINGHISTORY(List<String> INSTRUMENT_MAPPING_HISTORY) {
    this.INSTRUMENT_MAPPING_HISTORY = INSTRUMENT_MAPPING_HISTORY;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_MAPPING_HISTORY(List<String> INSTRUMENT_MAPPING_HISTORY) {
    this.INSTRUMENT_MAPPING_HISTORY = INSTRUMENT_MAPPING_HISTORY;
    return this;
  }

  public SPOTINSTRUMENTMETADATA addINSTRUMENTMAPPINGHISTORYItem(String INSTRUMENT_MAPPING_HISTORYItem) {
    this.INSTRUMENT_MAPPING_HISTORY.add(INSTRUMENT_MAPPING_HISTORYItem);
    return this;
  }

 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
   * @return INSTRUMENT_SOURCE_BACKFILL
  **/
  @JsonProperty("INSTRUMENT_SOURCE_BACKFILL")
  public String getINSTRUMENTSOURCEBACKFILL() {
    return INSTRUMENT_SOURCE_BACKFILL;
  }

  public void setINSTRUMENTSOURCEBACKFILL(String INSTRUMENT_SOURCE_BACKFILL) {
    this.INSTRUMENT_SOURCE_BACKFILL = INSTRUMENT_SOURCE_BACKFILL;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_SOURCE_BACKFILL(String INSTRUMENT_SOURCE_BACKFILL) {
    this.INSTRUMENT_SOURCE_BACKFILL = INSTRUMENT_SOURCE_BACKFILL;
    return this;
  }

 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
   * @return INSTRUMENT_SOURCE_BLOB
  **/
  @JsonProperty("INSTRUMENT_SOURCE_BLOB")
  public String getINSTRUMENTSOURCEBLOB() {
    return INSTRUMENT_SOURCE_BLOB;
  }

  public void setINSTRUMENTSOURCEBLOB(String INSTRUMENT_SOURCE_BLOB) {
    this.INSTRUMENT_SOURCE_BLOB = INSTRUMENT_SOURCE_BLOB;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_SOURCE_BLOB(String INSTRUMENT_SOURCE_BLOB) {
    this.INSTRUMENT_SOURCE_BLOB = INSTRUMENT_SOURCE_BLOB;
    return this;
  }

 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
   * @return INSTRUMENT_SOURCE_CALCULATED
  **/
  @JsonProperty("INSTRUMENT_SOURCE_CALCULATED")
  public String getINSTRUMENTSOURCECALCULATED() {
    return INSTRUMENT_SOURCE_CALCULATED;
  }

  public void setINSTRUMENTSOURCECALCULATED(String INSTRUMENT_SOURCE_CALCULATED) {
    this.INSTRUMENT_SOURCE_CALCULATED = INSTRUMENT_SOURCE_CALCULATED;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_SOURCE_CALCULATED(String INSTRUMENT_SOURCE_CALCULATED) {
    this.INSTRUMENT_SOURCE_CALCULATED = INSTRUMENT_SOURCE_CALCULATED;
    return this;
  }

 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
   * @return INSTRUMENT_SOURCE_FIX
  **/
  @JsonProperty("INSTRUMENT_SOURCE_FIX")
  public String getINSTRUMENTSOURCEFIX() {
    return INSTRUMENT_SOURCE_FIX;
  }

  public void setINSTRUMENTSOURCEFIX(String INSTRUMENT_SOURCE_FIX) {
    this.INSTRUMENT_SOURCE_FIX = INSTRUMENT_SOURCE_FIX;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_SOURCE_FIX(String INSTRUMENT_SOURCE_FIX) {
    this.INSTRUMENT_SOURCE_FIX = INSTRUMENT_SOURCE_FIX;
    return this;
  }

 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
   * @return INSTRUMENT_SOURCE_GO
  **/
  @JsonProperty("INSTRUMENT_SOURCE_GO")
  public String getINSTRUMENTSOURCEGO() {
    return INSTRUMENT_SOURCE_GO;
  }

  public void setINSTRUMENTSOURCEGO(String INSTRUMENT_SOURCE_GO) {
    this.INSTRUMENT_SOURCE_GO = INSTRUMENT_SOURCE_GO;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_SOURCE_GO(String INSTRUMENT_SOURCE_GO) {
    this.INSTRUMENT_SOURCE_GO = INSTRUMENT_SOURCE_GO;
    return this;
  }

 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
   * @return INSTRUMENT_SOURCE_POLLING
  **/
  @JsonProperty("INSTRUMENT_SOURCE_POLLING")
  public String getINSTRUMENTSOURCEPOLLING() {
    return INSTRUMENT_SOURCE_POLLING;
  }

  public void setINSTRUMENTSOURCEPOLLING(String INSTRUMENT_SOURCE_POLLING) {
    this.INSTRUMENT_SOURCE_POLLING = INSTRUMENT_SOURCE_POLLING;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_SOURCE_POLLING(String INSTRUMENT_SOURCE_POLLING) {
    this.INSTRUMENT_SOURCE_POLLING = INSTRUMENT_SOURCE_POLLING;
    return this;
  }

 /**
   * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
   * @return INSTRUMENT_SOURCE_STREAMING
  **/
  @JsonProperty("INSTRUMENT_SOURCE_STREAMING")
  public String getINSTRUMENTSOURCESTREAMING() {
    return INSTRUMENT_SOURCE_STREAMING;
  }

  public void setINSTRUMENTSOURCESTREAMING(String INSTRUMENT_SOURCE_STREAMING) {
    this.INSTRUMENT_SOURCE_STREAMING = INSTRUMENT_SOURCE_STREAMING;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_SOURCE_STREAMING(String INSTRUMENT_SOURCE_STREAMING) {
    this.INSTRUMENT_SOURCE_STREAMING = INSTRUMENT_SOURCE_STREAMING;
    return this;
  }

 /**
   * The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data.
   * @return INSTRUMENT_STATUS
  **/
  @JsonProperty("INSTRUMENT_STATUS")
  public String getINSTRUMENTSTATUS() {
    return INSTRUMENT_STATUS;
  }

  public void setINSTRUMENTSTATUS(String INSTRUMENT_STATUS) {
    this.INSTRUMENT_STATUS = INSTRUMENT_STATUS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_STATUS(String INSTRUMENT_STATUS) {
    this.INSTRUMENT_STATUS = INSTRUMENT_STATUS;
    return this;
  }

 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST")
  public Object getINSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST() {
    return INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;
  }

  public void setINSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;
    return this;
  }

 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS;
    return this;
  }

 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS")
  public Integer getINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS() {
    return INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS(Integer INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS;
    return this;
  }

 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS;
    return this;
  }

 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST")
  public Object getINSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST() {
    return INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;
  }

  public void setINSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;
    return this;
  }

 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS;
    return this;
  }

 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS")
  public Integer getINSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS() {
    return INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS(Integer INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS;
    return this;
  }

 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS;
    return this;
  }

 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST")
  public Object getINSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST() {
    return INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;
  }

  public void setINSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;
    return this;
  }

 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS;
    return this;
  }

 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS")
  public Integer getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS() {
    return INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS(Integer INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS;
    return this;
  }

 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS;
    return this;
  }

 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST")
  public Object getINSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST() {
    return INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;
  }

  public void setINSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;
    return this;
  }

 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS;
    return this;
  }

 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS")
  public Integer getINSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS() {
    return INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS(Integer INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS;
    return this;
  }

 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS;
    return this;
  }

 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST")
  public Object getINSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST() {
    return INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;
  }

  public void setINSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;
    return this;
  }

 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS;
    return this;
  }

 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS")
  public Integer getINSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS() {
    return INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS(Integer INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS;
    return this;
  }

 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS;
    return this;
  }

 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST")
  public Object getINSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST() {
    return INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;
  }

  public void setINSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;
    return this;
  }

 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS;
    return this;
  }

 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS")
  public Integer getINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS() {
    return INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS(Integer INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS;
    return this;
  }

 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS;
    return this;
  }

 /**
   * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST")
  public Object getINSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST() {
    return INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;
  }

  public void setINSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST(Object INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST) {
    this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST = INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;
    return this;
  }

 /**
   * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS;
    return this;
  }

 /**
   * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS")
  public Integer getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS() {
    return INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS(Integer INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS = INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS;
    return this;
  }

 /**
   * The next time we expect to make a request for TRADE_SPOT on this instrument.
   * @return INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS")
  public Integer getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS() {
    return INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS;
  }

  public void setINSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS(Integer INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS(Integer INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS) {
    this.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS = INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS;
    return this;
  }

 /**
   * This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration.
   * @return INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION")
  public Boolean getINSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION() {
    return INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION;
  }

  public void setINSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION(Boolean INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION) {
    this.INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION = INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION(Boolean INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION) {
    this.INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION = INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION;
    return this;
  }

 /**
   * This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT.
   * @return INSTRUMENT_TRADE_SPOT_REST_URI
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_REST_URI")
  public String getINSTRUMENTTRADESPOTRESTURI() {
    return INSTRUMENT_TRADE_SPOT_REST_URI;
  }

  public void setINSTRUMENTTRADESPOTRESTURI(String INSTRUMENT_TRADE_SPOT_REST_URI) {
    this.INSTRUMENT_TRADE_SPOT_REST_URI = INSTRUMENT_TRADE_SPOT_REST_URI;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_REST_URI(String INSTRUMENT_TRADE_SPOT_REST_URI) {
    this.INSTRUMENT_TRADE_SPOT_REST_URI = INSTRUMENT_TRADE_SPOT_REST_URI;
    return this;
  }

 /**
   * The URL we send to the proxy swarm to get TRADE_SPOT for the instrument.
   * @return INSTRUMENT_TRADE_SPOT_REST_URL
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_REST_URL")
  public String getINSTRUMENTTRADESPOTRESTURL() {
    return INSTRUMENT_TRADE_SPOT_REST_URL;
  }

  public void setINSTRUMENTTRADESPOTRESTURL(String INSTRUMENT_TRADE_SPOT_REST_URL) {
    this.INSTRUMENT_TRADE_SPOT_REST_URL = INSTRUMENT_TRADE_SPOT_REST_URL;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_REST_URL(String INSTRUMENT_TRADE_SPOT_REST_URL) {
    this.INSTRUMENT_TRADE_SPOT_REST_URL = INSTRUMENT_TRADE_SPOT_REST_URL;
    return this;
  }

 /**
   * This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument.
   * @return INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION
  **/
  @JsonProperty("INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION")
  public String getINSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION() {
    return INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION;
  }

  public void setINSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION(String INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION) {
    this.INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION = INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION;
  }

  public SPOTINSTRUMENTMETADATA INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION(String INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION) {
    this.INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION = INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION;
    return this;
  }

 /**
   * The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter
   * @return LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS
  **/
  @JsonProperty("LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS")
  public Integer getLASTCONCURRENTBATCHOFTRADESSPOTMS() {
    return LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS;
  }

  public void setLASTCONCURRENTBATCHOFTRADESSPOTMS(Integer LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS) {
    this.LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS = LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS;
  }

  public SPOTINSTRUMENTMETADATA LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS(Integer LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS) {
    this.LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS = LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS;
    return this;
  }

 /**
   * This is the last time instrument was seen on instrumentListSourceType BLOB.
   * @return LAST_SEEN_ON_BLOB_TS
  **/
  @JsonProperty("LAST_SEEN_ON_BLOB_TS")
  public Integer getLASTSEENONBLOBTS() {
    return LAST_SEEN_ON_BLOB_TS;
  }

  public void setLASTSEENONBLOBTS(Integer LAST_SEEN_ON_BLOB_TS) {
    this.LAST_SEEN_ON_BLOB_TS = LAST_SEEN_ON_BLOB_TS;
  }

  public SPOTINSTRUMENTMETADATA LAST_SEEN_ON_BLOB_TS(Integer LAST_SEEN_ON_BLOB_TS) {
    this.LAST_SEEN_ON_BLOB_TS = LAST_SEEN_ON_BLOB_TS;
    return this;
  }

 /**
   * This is the last time instrument was seen on instrumentListSourceType FIX.
   * @return LAST_SEEN_ON_FIX_TS
  **/
  @JsonProperty("LAST_SEEN_ON_FIX_TS")
  public Integer getLASTSEENONFIXTS() {
    return LAST_SEEN_ON_FIX_TS;
  }

  public void setLASTSEENONFIXTS(Integer LAST_SEEN_ON_FIX_TS) {
    this.LAST_SEEN_ON_FIX_TS = LAST_SEEN_ON_FIX_TS;
  }

  public SPOTINSTRUMENTMETADATA LAST_SEEN_ON_FIX_TS(Integer LAST_SEEN_ON_FIX_TS) {
    this.LAST_SEEN_ON_FIX_TS = LAST_SEEN_ON_FIX_TS;
    return this;
  }

 /**
   * This is the last time instrument was seen on instrumentListSourceType HARDCODED.
   * @return LAST_SEEN_ON_HARDCODED_TS
  **/
  @JsonProperty("LAST_SEEN_ON_HARDCODED_TS")
  public Integer getLASTSEENONHARDCODEDTS() {
    return LAST_SEEN_ON_HARDCODED_TS;
  }

  public void setLASTSEENONHARDCODEDTS(Integer LAST_SEEN_ON_HARDCODED_TS) {
    this.LAST_SEEN_ON_HARDCODED_TS = LAST_SEEN_ON_HARDCODED_TS;
  }

  public SPOTINSTRUMENTMETADATA LAST_SEEN_ON_HARDCODED_TS(Integer LAST_SEEN_ON_HARDCODED_TS) {
    this.LAST_SEEN_ON_HARDCODED_TS = LAST_SEEN_ON_HARDCODED_TS;
    return this;
  }

 /**
   * This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
   * @return LAST_SEEN_ON_INDEX_COMPOSITION_TS
  **/
  @JsonProperty("LAST_SEEN_ON_INDEX_COMPOSITION_TS")
  public Integer getLASTSEENONINDEXCOMPOSITIONTS() {
    return LAST_SEEN_ON_INDEX_COMPOSITION_TS;
  }

  public void setLASTSEENONINDEXCOMPOSITIONTS(Integer LAST_SEEN_ON_INDEX_COMPOSITION_TS) {
    this.LAST_SEEN_ON_INDEX_COMPOSITION_TS = LAST_SEEN_ON_INDEX_COMPOSITION_TS;
  }

  public SPOTINSTRUMENTMETADATA LAST_SEEN_ON_INDEX_COMPOSITION_TS(Integer LAST_SEEN_ON_INDEX_COMPOSITION_TS) {
    this.LAST_SEEN_ON_INDEX_COMPOSITION_TS = LAST_SEEN_ON_INDEX_COMPOSITION_TS;
    return this;
  }

 /**
   * This is the last time instrument was seen on instrumentListSourceType NSQ.
   * @return LAST_SEEN_ON_NSQ_TS
  **/
  @JsonProperty("LAST_SEEN_ON_NSQ_TS")
  public Integer getLASTSEENONNSQTS() {
    return LAST_SEEN_ON_NSQ_TS;
  }

  public void setLASTSEENONNSQTS(Integer LAST_SEEN_ON_NSQ_TS) {
    this.LAST_SEEN_ON_NSQ_TS = LAST_SEEN_ON_NSQ_TS;
  }

  public SPOTINSTRUMENTMETADATA LAST_SEEN_ON_NSQ_TS(Integer LAST_SEEN_ON_NSQ_TS) {
    this.LAST_SEEN_ON_NSQ_TS = LAST_SEEN_ON_NSQ_TS;
    return this;
  }

 /**
   * This is the last time instrument was seen on instrumentListSourceType POLLING.
   * @return LAST_SEEN_ON_POLLING_TS
  **/
  @JsonProperty("LAST_SEEN_ON_POLLING_TS")
  public Integer getLASTSEENONPOLLINGTS() {
    return LAST_SEEN_ON_POLLING_TS;
  }

  public void setLASTSEENONPOLLINGTS(Integer LAST_SEEN_ON_POLLING_TS) {
    this.LAST_SEEN_ON_POLLING_TS = LAST_SEEN_ON_POLLING_TS;
  }

  public SPOTINSTRUMENTMETADATA LAST_SEEN_ON_POLLING_TS(Integer LAST_SEEN_ON_POLLING_TS) {
    this.LAST_SEEN_ON_POLLING_TS = LAST_SEEN_ON_POLLING_TS;
    return this;
  }

 /**
   * This is the last time instrument was seen on instrumentListSourceType STREAMING.
   * @return LAST_SEEN_ON_STREAMING_TS
  **/
  @JsonProperty("LAST_SEEN_ON_STREAMING_TS")
  public Integer getLASTSEENONSTREAMINGTS() {
    return LAST_SEEN_ON_STREAMING_TS;
  }

  public void setLASTSEENONSTREAMINGTS(Integer LAST_SEEN_ON_STREAMING_TS) {
    this.LAST_SEEN_ON_STREAMING_TS = LAST_SEEN_ON_STREAMING_TS;
  }

  public SPOTINSTRUMENTMETADATA LAST_SEEN_ON_STREAMING_TS(Integer LAST_SEEN_ON_STREAMING_TS) {
    this.LAST_SEEN_ON_STREAMING_TS = LAST_SEEN_ON_STREAMING_TS;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return LAST_TRADE_SPOT_FROM_BACKFILL
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_BACKFILL")
  public Object getLASTTRADESPOTFROMBACKFILL() {
    return LAST_TRADE_SPOT_FROM_BACKFILL;
  }

  public void setLASTTRADESPOTFROMBACKFILL(Object LAST_TRADE_SPOT_FROM_BACKFILL) {
    this.LAST_TRADE_SPOT_FROM_BACKFILL = LAST_TRADE_SPOT_FROM_BACKFILL;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_BACKFILL(Object LAST_TRADE_SPOT_FROM_BACKFILL) {
    this.LAST_TRADE_SPOT_FROM_BACKFILL = LAST_TRADE_SPOT_FROM_BACKFILL;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
   * @return LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL")
  public Object getLASTTRADESPOTFROMBACKFILLEXTERNAL() {
    return LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
  }

  public void setLASTTRADESPOTFROMBACKFILLEXTERNAL(Object LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL(Object LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return LAST_TRADE_SPOT_FROM_BLOB
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_BLOB")
  public Object getLASTTRADESPOTFROMBLOB() {
    return LAST_TRADE_SPOT_FROM_BLOB;
  }

  public void setLASTTRADESPOTFROMBLOB(Object LAST_TRADE_SPOT_FROM_BLOB) {
    this.LAST_TRADE_SPOT_FROM_BLOB = LAST_TRADE_SPOT_FROM_BLOB;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_BLOB(Object LAST_TRADE_SPOT_FROM_BLOB) {
    this.LAST_TRADE_SPOT_FROM_BLOB = LAST_TRADE_SPOT_FROM_BLOB;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
   * @return LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL")
  public Object getLASTTRADESPOTFROMBLOBEXTERNAL() {
    return LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
  }

  public void setLASTTRADESPOTFROMBLOBEXTERNAL(Object LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL = LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL(Object LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL = LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return LAST_TRADE_SPOT_FROM_CALCULATED
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_CALCULATED")
  public Object getLASTTRADESPOTFROMCALCULATED() {
    return LAST_TRADE_SPOT_FROM_CALCULATED;
  }

  public void setLASTTRADESPOTFROMCALCULATED(Object LAST_TRADE_SPOT_FROM_CALCULATED) {
    this.LAST_TRADE_SPOT_FROM_CALCULATED = LAST_TRADE_SPOT_FROM_CALCULATED;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_CALCULATED(Object LAST_TRADE_SPOT_FROM_CALCULATED) {
    this.LAST_TRADE_SPOT_FROM_CALCULATED = LAST_TRADE_SPOT_FROM_CALCULATED;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
   * @return LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL")
  public Object getLASTTRADESPOTFROMCALCULATEDEXTERNAL() {
    return LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
  }

  public void setLASTTRADESPOTFROMCALCULATEDEXTERNAL(Object LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL(Object LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return LAST_TRADE_SPOT_FROM_FIX
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_FIX")
  public Object getLASTTRADESPOTFROMFIX() {
    return LAST_TRADE_SPOT_FROM_FIX;
  }

  public void setLASTTRADESPOTFROMFIX(Object LAST_TRADE_SPOT_FROM_FIX) {
    this.LAST_TRADE_SPOT_FROM_FIX = LAST_TRADE_SPOT_FROM_FIX;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_FIX(Object LAST_TRADE_SPOT_FROM_FIX) {
    this.LAST_TRADE_SPOT_FROM_FIX = LAST_TRADE_SPOT_FROM_FIX;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
   * @return LAST_TRADE_SPOT_FROM_FIX_EXTERNAL
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_FIX_EXTERNAL")
  public Object getLASTTRADESPOTFROMFIXEXTERNAL() {
    return LAST_TRADE_SPOT_FROM_FIX_EXTERNAL;
  }

  public void setLASTTRADESPOTFROMFIXEXTERNAL(Object LAST_TRADE_SPOT_FROM_FIX_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_FIX_EXTERNAL = LAST_TRADE_SPOT_FROM_FIX_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_FIX_EXTERNAL(Object LAST_TRADE_SPOT_FROM_FIX_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_FIX_EXTERNAL = LAST_TRADE_SPOT_FROM_FIX_EXTERNAL;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return LAST_TRADE_SPOT_FROM_GO
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_GO")
  public Object getLASTTRADESPOTFROMGO() {
    return LAST_TRADE_SPOT_FROM_GO;
  }

  public void setLASTTRADESPOTFROMGO(Object LAST_TRADE_SPOT_FROM_GO) {
    this.LAST_TRADE_SPOT_FROM_GO = LAST_TRADE_SPOT_FROM_GO;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_GO(Object LAST_TRADE_SPOT_FROM_GO) {
    this.LAST_TRADE_SPOT_FROM_GO = LAST_TRADE_SPOT_FROM_GO;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
   * @return LAST_TRADE_SPOT_FROM_GO_EXTERNAL
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_GO_EXTERNAL")
  public Object getLASTTRADESPOTFROMGOEXTERNAL() {
    return LAST_TRADE_SPOT_FROM_GO_EXTERNAL;
  }

  public void setLASTTRADESPOTFROMGOEXTERNAL(Object LAST_TRADE_SPOT_FROM_GO_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_GO_EXTERNAL = LAST_TRADE_SPOT_FROM_GO_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_GO_EXTERNAL(Object LAST_TRADE_SPOT_FROM_GO_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_GO_EXTERNAL = LAST_TRADE_SPOT_FROM_GO_EXTERNAL;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return LAST_TRADE_SPOT_FROM_POLLING
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_POLLING")
  public Object getLASTTRADESPOTFROMPOLLING() {
    return LAST_TRADE_SPOT_FROM_POLLING;
  }

  public void setLASTTRADESPOTFROMPOLLING(Object LAST_TRADE_SPOT_FROM_POLLING) {
    this.LAST_TRADE_SPOT_FROM_POLLING = LAST_TRADE_SPOT_FROM_POLLING;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_POLLING(Object LAST_TRADE_SPOT_FROM_POLLING) {
    this.LAST_TRADE_SPOT_FROM_POLLING = LAST_TRADE_SPOT_FROM_POLLING;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
   * @return LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL")
  public Object getLASTTRADESPOTFROMPOLLINGEXTERNAL() {
    return LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
  }

  public void setLASTTRADESPOTFROMPOLLINGEXTERNAL(Object LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL = LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL(Object LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL = LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
   * @return LAST_TRADE_SPOT_FROM_STREAMING
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_STREAMING")
  public Object getLASTTRADESPOTFROMSTREAMING() {
    return LAST_TRADE_SPOT_FROM_STREAMING;
  }

  public void setLASTTRADESPOTFROMSTREAMING(Object LAST_TRADE_SPOT_FROM_STREAMING) {
    this.LAST_TRADE_SPOT_FROM_STREAMING = LAST_TRADE_SPOT_FROM_STREAMING;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_STREAMING(Object LAST_TRADE_SPOT_FROM_STREAMING) {
    this.LAST_TRADE_SPOT_FROM_STREAMING = LAST_TRADE_SPOT_FROM_STREAMING;
    return this;
  }

 /**
   * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
   * @return LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL
  **/
  @JsonProperty("LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL")
  public Object getLASTTRADESPOTFROMSTREAMINGEXTERNAL() {
    return LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
  }

  public void setLASTTRADESPOTFROMSTREAMINGEXTERNAL(Object LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
  }

  public SPOTINSTRUMENTMETADATA LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL(Object LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL) {
    this.LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
    return this;
  }

 /**
   * The version of metadata, used for version conversions/migrates.
   * @return METADATA_VERSION
  **/
  @JsonProperty("METADATA_VERSION")
  public Integer getMETADATAVERSION() {
    return METADATA_VERSION;
  }

  public void setMETADATAVERSION(Integer METADATA_VERSION) {
    this.METADATA_VERSION = METADATA_VERSION;
  }

  public SPOTINSTRUMENTMETADATA METADATA_VERSION(Integer METADATA_VERSION) {
    this.METADATA_VERSION = METADATA_VERSION;
    return this;
  }

 /**
   * This states the status of blob migration for this intrument on this exchange.
   * @return PROCESSING_TRADES_FROM_BLOB_STATUS
  **/
  @JsonProperty("PROCESSING_TRADES_FROM_BLOB_STATUS")
  public String getPROCESSINGTRADESFROMBLOBSTATUS() {
    return PROCESSING_TRADES_FROM_BLOB_STATUS;
  }

  public void setPROCESSINGTRADESFROMBLOBSTATUS(String PROCESSING_TRADES_FROM_BLOB_STATUS) {
    this.PROCESSING_TRADES_FROM_BLOB_STATUS = PROCESSING_TRADES_FROM_BLOB_STATUS;
  }

  public SPOTINSTRUMENTMETADATA PROCESSING_TRADES_FROM_BLOB_STATUS(String PROCESSING_TRADES_FROM_BLOB_STATUS) {
    this.PROCESSING_TRADES_FROM_BLOB_STATUS = PROCESSING_TRADES_FROM_BLOB_STATUS;
    return this;
  }

 /**
   * This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument
   * @return TOTAL_TRADES_SPOT
  **/
  @JsonProperty("TOTAL_TRADES_SPOT")
  public Integer getTOTALTRADESSPOT() {
    return TOTAL_TRADES_SPOT;
  }

  public void setTOTALTRADESSPOT(Integer TOTAL_TRADES_SPOT) {
    this.TOTAL_TRADES_SPOT = TOTAL_TRADES_SPOT;
  }

  public SPOTINSTRUMENTMETADATA TOTAL_TRADES_SPOT(Integer TOTAL_TRADES_SPOT) {
    this.TOTAL_TRADES_SPOT = TOTAL_TRADES_SPOT;
    return this;
  }

 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
   * @return UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA
  **/
  @JsonProperty("UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA")
  public Object getUNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA() {
    return UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;
  }

  public void setUNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;
  }

  public SPOTINSTRUMENTMETADATA UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;
    return this;
  }

 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
   * @return UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA
  **/
  @JsonProperty("UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA")
  public Object getUNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA() {
    return UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;
  }

  public void setUNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;
  }

  public SPOTINSTRUMENTMETADATA UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;
    return this;
  }

 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
   * @return UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA
  **/
  @JsonProperty("UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA")
  public Object getUNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA() {
    return UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;
  }

  public void setUNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;
  }

  public SPOTINSTRUMENTMETADATA UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;
    return this;
  }

 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
   * @return UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA
  **/
  @JsonProperty("UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA")
  public Object getUNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA() {
    return UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;
  }

  public void setUNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;
  }

  public SPOTINSTRUMENTMETADATA UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;
    return this;
  }

 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
   * @return UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA
  **/
  @JsonProperty("UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA")
  public Object getUNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA() {
    return UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;
  }

  public void setUNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;
  }

  public SPOTINSTRUMENTMETADATA UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;
    return this;
  }

 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
   * @return UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA
  **/
  @JsonProperty("UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA")
  public Object getUNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA() {
    return UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;
  }

  public void setUNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;
  }

  public SPOTINSTRUMENTMETADATA UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;
    return this;
  }

 /**
   * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
   * @return UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA
  **/
  @JsonProperty("UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA")
  public Object getUNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA() {
    return UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;
  }

  public void setUNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;
  }

  public SPOTINSTRUMENTMETADATA UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA(Object UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA) {
    this.UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA = UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;
    return this;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SPOTINSTRUMENTMETADATA SPOT_INSTRUMENT_METADATA = (SPOTINSTRUMENTMETADATA) o;
    return Objects.equals(FIRST_SEEN_ON_BLOB_TS, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_BLOB_TS) &&
        Objects.equals(FIRST_SEEN_ON_FIX_TS, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_FIX_TS) &&
        Objects.equals(FIRST_SEEN_ON_HARDCODED_TS, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_HARDCODED_TS) &&
        Objects.equals(FIRST_SEEN_ON_INDEX_COMPOSITION_TS, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_INDEX_COMPOSITION_TS) &&
        Objects.equals(FIRST_SEEN_ON_NSQ_TS, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_NSQ_TS) &&
        Objects.equals(FIRST_SEEN_ON_POLLING_TS, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_POLLING_TS) &&
        Objects.equals(FIRST_SEEN_ON_STREAMING_TS, SPOT_INSTRUMENT_METADATA.FIRST_SEEN_ON_STREAMING_TS) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_BACKFILL, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_BACKFILL) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_BLOB, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_BLOB) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_CALCULATED, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_CALCULATED) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_FIX, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_FIX) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_GO, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_GO) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_GO_EXTERNAL, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_GO_EXTERNAL) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_POLLING, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_POLLING) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_STREAMING, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_STREAMING) &&
        Objects.equals(FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL, SPOT_INSTRUMENT_METADATA.FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL) &&
        Objects.equals(HOST_MIGRATION_DESTINATION, SPOT_INSTRUMENT_METADATA.HOST_MIGRATION_DESTINATION) &&
        Objects.equals(HOST_MIGRATION_SOURCE, SPOT_INSTRUMENT_METADATA.HOST_MIGRATION_SOURCE) &&
        Objects.equals(HOST_MIGRATION_STATUS, SPOT_INSTRUMENT_METADATA.HOST_MIGRATION_STATUS) &&
        Objects.equals(INSTRUMENT, SPOT_INSTRUMENT_METADATA.INSTRUMENT) &&
        Objects.equals(INSTRUMENT_EXTERNAL_DATA, SPOT_INSTRUMENT_METADATA.INSTRUMENT_EXTERNAL_DATA) &&
        Objects.equals(INSTRUMENT_MAPPING, SPOT_INSTRUMENT_METADATA.INSTRUMENT_MAPPING) &&
        Objects.equals(INSTRUMENT_MAPPING_HISTORY, SPOT_INSTRUMENT_METADATA.INSTRUMENT_MAPPING_HISTORY) &&
        Objects.equals(INSTRUMENT_SOURCE_BACKFILL, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_BACKFILL) &&
        Objects.equals(INSTRUMENT_SOURCE_BLOB, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_BLOB) &&
        Objects.equals(INSTRUMENT_SOURCE_CALCULATED, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_CALCULATED) &&
        Objects.equals(INSTRUMENT_SOURCE_FIX, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_FIX) &&
        Objects.equals(INSTRUMENT_SOURCE_GO, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_GO) &&
        Objects.equals(INSTRUMENT_SOURCE_POLLING, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_POLLING) &&
        Objects.equals(INSTRUMENT_SOURCE_STREAMING, SPOT_INSTRUMENT_METADATA.INSTRUMENT_SOURCE_STREAMING) &&
        Objects.equals(INSTRUMENT_STATUS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_STATUS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_REST_URI, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_REST_URI) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_REST_URL, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_REST_URL) &&
        Objects.equals(INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION, SPOT_INSTRUMENT_METADATA.INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION) &&
        Objects.equals(LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS, SPOT_INSTRUMENT_METADATA.LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS) &&
        Objects.equals(LAST_SEEN_ON_BLOB_TS, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_BLOB_TS) &&
        Objects.equals(LAST_SEEN_ON_FIX_TS, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_FIX_TS) &&
        Objects.equals(LAST_SEEN_ON_HARDCODED_TS, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_HARDCODED_TS) &&
        Objects.equals(LAST_SEEN_ON_INDEX_COMPOSITION_TS, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_INDEX_COMPOSITION_TS) &&
        Objects.equals(LAST_SEEN_ON_NSQ_TS, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_NSQ_TS) &&
        Objects.equals(LAST_SEEN_ON_POLLING_TS, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_POLLING_TS) &&
        Objects.equals(LAST_SEEN_ON_STREAMING_TS, SPOT_INSTRUMENT_METADATA.LAST_SEEN_ON_STREAMING_TS) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_BACKFILL, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_BACKFILL) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_BLOB, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_BLOB) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_CALCULATED, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_CALCULATED) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_FIX, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_FIX) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_FIX_EXTERNAL, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_FIX_EXTERNAL) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_GO, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_GO) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_GO_EXTERNAL, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_GO_EXTERNAL) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_POLLING, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_POLLING) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_STREAMING, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_STREAMING) &&
        Objects.equals(LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL, SPOT_INSTRUMENT_METADATA.LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL) &&
        Objects.equals(METADATA_VERSION, SPOT_INSTRUMENT_METADATA.METADATA_VERSION) &&
        Objects.equals(PROCESSING_TRADES_FROM_BLOB_STATUS, SPOT_INSTRUMENT_METADATA.PROCESSING_TRADES_FROM_BLOB_STATUS) &&
        Objects.equals(TOTAL_TRADES_SPOT, SPOT_INSTRUMENT_METADATA.TOTAL_TRADES_SPOT) &&
        Objects.equals(UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA) &&
        Objects.equals(UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA) &&
        Objects.equals(UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA) &&
        Objects.equals(UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA) &&
        Objects.equals(UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA) &&
        Objects.equals(UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA) &&
        Objects.equals(UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA, SPOT_INSTRUMENT_METADATA.UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA);
  }

  @Override
  public int hashCode() {
    return Objects.hash(FIRST_SEEN_ON_BLOB_TS, FIRST_SEEN_ON_FIX_TS, FIRST_SEEN_ON_HARDCODED_TS, FIRST_SEEN_ON_INDEX_COMPOSITION_TS, FIRST_SEEN_ON_NSQ_TS, FIRST_SEEN_ON_POLLING_TS, FIRST_SEEN_ON_STREAMING_TS, FIRST_TRADE_SPOT_FROM_BACKFILL, FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL, FIRST_TRADE_SPOT_FROM_BLOB, FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL, FIRST_TRADE_SPOT_FROM_CALCULATED, FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL, FIRST_TRADE_SPOT_FROM_FIX, FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL, FIRST_TRADE_SPOT_FROM_GO, FIRST_TRADE_SPOT_FROM_GO_EXTERNAL, FIRST_TRADE_SPOT_FROM_POLLING, FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL, FIRST_TRADE_SPOT_FROM_STREAMING, FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL, HOST_MIGRATION_DESTINATION, HOST_MIGRATION_SOURCE, HOST_MIGRATION_STATUS, INSTRUMENT, INSTRUMENT_EXTERNAL_DATA, INSTRUMENT_MAPPING, INSTRUMENT_MAPPING_HISTORY, INSTRUMENT_SOURCE_BACKFILL, INSTRUMENT_SOURCE_BLOB, INSTRUMENT_SOURCE_CALCULATED, INSTRUMENT_SOURCE_FIX, INSTRUMENT_SOURCE_GO, INSTRUMENT_SOURCE_POLLING, INSTRUMENT_SOURCE_STREAMING, INSTRUMENT_STATUS, INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST, INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS, INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS, INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS, INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION, INSTRUMENT_TRADE_SPOT_REST_URI, INSTRUMENT_TRADE_SPOT_REST_URL, INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION, LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS, LAST_SEEN_ON_BLOB_TS, LAST_SEEN_ON_FIX_TS, LAST_SEEN_ON_HARDCODED_TS, LAST_SEEN_ON_INDEX_COMPOSITION_TS, LAST_SEEN_ON_NSQ_TS, LAST_SEEN_ON_POLLING_TS, LAST_SEEN_ON_STREAMING_TS, LAST_TRADE_SPOT_FROM_BACKFILL, LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL, LAST_TRADE_SPOT_FROM_BLOB, LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL, LAST_TRADE_SPOT_FROM_CALCULATED, LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL, LAST_TRADE_SPOT_FROM_FIX, LAST_TRADE_SPOT_FROM_FIX_EXTERNAL, LAST_TRADE_SPOT_FROM_GO, LAST_TRADE_SPOT_FROM_GO_EXTERNAL, LAST_TRADE_SPOT_FROM_POLLING, LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL, LAST_TRADE_SPOT_FROM_STREAMING, LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL, METADATA_VERSION, PROCESSING_TRADES_FROM_BLOB_STATUS, TOTAL_TRADES_SPOT, UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA, UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SPOTINSTRUMENTMETADATA {\n");
    
    sb.append("    FIRST_SEEN_ON_BLOB_TS: ").append(toIndentedString(FIRST_SEEN_ON_BLOB_TS)).append("\n");
    sb.append("    FIRST_SEEN_ON_FIX_TS: ").append(toIndentedString(FIRST_SEEN_ON_FIX_TS)).append("\n");
    sb.append("    FIRST_SEEN_ON_HARDCODED_TS: ").append(toIndentedString(FIRST_SEEN_ON_HARDCODED_TS)).append("\n");
    sb.append("    FIRST_SEEN_ON_INDEX_COMPOSITION_TS: ").append(toIndentedString(FIRST_SEEN_ON_INDEX_COMPOSITION_TS)).append("\n");
    sb.append("    FIRST_SEEN_ON_NSQ_TS: ").append(toIndentedString(FIRST_SEEN_ON_NSQ_TS)).append("\n");
    sb.append("    FIRST_SEEN_ON_POLLING_TS: ").append(toIndentedString(FIRST_SEEN_ON_POLLING_TS)).append("\n");
    sb.append("    FIRST_SEEN_ON_STREAMING_TS: ").append(toIndentedString(FIRST_SEEN_ON_STREAMING_TS)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_BACKFILL: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_BACKFILL)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_BLOB: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_BLOB)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_CALCULATED: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_CALCULATED)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_FIX: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_FIX)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_GO: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_GO)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_GO_EXTERNAL: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_GO_EXTERNAL)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_POLLING: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_POLLING)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_STREAMING: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_STREAMING)).append("\n");
    sb.append("    FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL: ").append(toIndentedString(FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL)).append("\n");
    sb.append("    HOST_MIGRATION_DESTINATION: ").append(toIndentedString(HOST_MIGRATION_DESTINATION)).append("\n");
    sb.append("    HOST_MIGRATION_SOURCE: ").append(toIndentedString(HOST_MIGRATION_SOURCE)).append("\n");
    sb.append("    HOST_MIGRATION_STATUS: ").append(toIndentedString(HOST_MIGRATION_STATUS)).append("\n");
    sb.append("    INSTRUMENT: ").append(toIndentedString(INSTRUMENT)).append("\n");
    sb.append("    INSTRUMENT_EXTERNAL_DATA: ").append(toIndentedString(INSTRUMENT_EXTERNAL_DATA)).append("\n");
    sb.append("    INSTRUMENT_MAPPING: ").append(toIndentedString(INSTRUMENT_MAPPING)).append("\n");
    sb.append("    INSTRUMENT_MAPPING_HISTORY: ").append(toIndentedString(INSTRUMENT_MAPPING_HISTORY)).append("\n");
    sb.append("    INSTRUMENT_SOURCE_BACKFILL: ").append(toIndentedString(INSTRUMENT_SOURCE_BACKFILL)).append("\n");
    sb.append("    INSTRUMENT_SOURCE_BLOB: ").append(toIndentedString(INSTRUMENT_SOURCE_BLOB)).append("\n");
    sb.append("    INSTRUMENT_SOURCE_CALCULATED: ").append(toIndentedString(INSTRUMENT_SOURCE_CALCULATED)).append("\n");
    sb.append("    INSTRUMENT_SOURCE_FIX: ").append(toIndentedString(INSTRUMENT_SOURCE_FIX)).append("\n");
    sb.append("    INSTRUMENT_SOURCE_GO: ").append(toIndentedString(INSTRUMENT_SOURCE_GO)).append("\n");
    sb.append("    INSTRUMENT_SOURCE_POLLING: ").append(toIndentedString(INSTRUMENT_SOURCE_POLLING)).append("\n");
    sb.append("    INSTRUMENT_SOURCE_STREAMING: ").append(toIndentedString(INSTRUMENT_SOURCE_STREAMING)).append("\n");
    sb.append("    INSTRUMENT_STATUS: ").append(toIndentedString(INSTRUMENT_STATUS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_REST_URI: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_REST_URI)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_REST_URL: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_REST_URL)).append("\n");
    sb.append("    INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION: ").append(toIndentedString(INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION)).append("\n");
    sb.append("    LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS: ").append(toIndentedString(LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS)).append("\n");
    sb.append("    LAST_SEEN_ON_BLOB_TS: ").append(toIndentedString(LAST_SEEN_ON_BLOB_TS)).append("\n");
    sb.append("    LAST_SEEN_ON_FIX_TS: ").append(toIndentedString(LAST_SEEN_ON_FIX_TS)).append("\n");
    sb.append("    LAST_SEEN_ON_HARDCODED_TS: ").append(toIndentedString(LAST_SEEN_ON_HARDCODED_TS)).append("\n");
    sb.append("    LAST_SEEN_ON_INDEX_COMPOSITION_TS: ").append(toIndentedString(LAST_SEEN_ON_INDEX_COMPOSITION_TS)).append("\n");
    sb.append("    LAST_SEEN_ON_NSQ_TS: ").append(toIndentedString(LAST_SEEN_ON_NSQ_TS)).append("\n");
    sb.append("    LAST_SEEN_ON_POLLING_TS: ").append(toIndentedString(LAST_SEEN_ON_POLLING_TS)).append("\n");
    sb.append("    LAST_SEEN_ON_STREAMING_TS: ").append(toIndentedString(LAST_SEEN_ON_STREAMING_TS)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_BACKFILL: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_BACKFILL)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_BLOB: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_BLOB)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_CALCULATED: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_CALCULATED)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_FIX: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_FIX)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_FIX_EXTERNAL: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_FIX_EXTERNAL)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_GO: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_GO)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_GO_EXTERNAL: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_GO_EXTERNAL)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_POLLING: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_POLLING)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_STREAMING: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_STREAMING)).append("\n");
    sb.append("    LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL: ").append(toIndentedString(LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL)).append("\n");
    sb.append("    METADATA_VERSION: ").append(toIndentedString(METADATA_VERSION)).append("\n");
    sb.append("    PROCESSING_TRADES_FROM_BLOB_STATUS: ").append(toIndentedString(PROCESSING_TRADES_FROM_BLOB_STATUS)).append("\n");
    sb.append("    TOTAL_TRADES_SPOT: ").append(toIndentedString(TOTAL_TRADES_SPOT)).append("\n");
    sb.append("    UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA: ").append(toIndentedString(UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA)).append("\n");
    sb.append("    UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA: ").append(toIndentedString(UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA)).append("\n");
    sb.append("    UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA: ").append(toIndentedString(UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA)).append("\n");
    sb.append("    UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA: ").append(toIndentedString(UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA)).append("\n");
    sb.append("    UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA: ").append(toIndentedString(UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA)).append("\n");
    sb.append("    UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA: ").append(toIndentedString(UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA)).append("\n");
    sb.append("    UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA: ").append(toIndentedString(UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

