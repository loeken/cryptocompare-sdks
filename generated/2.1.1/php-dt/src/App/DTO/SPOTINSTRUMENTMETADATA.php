<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class SPOTINSTRUMENTMETADATA
{
    /**
     * This is the first time instrument was seen on instrumentListSourceType BLOB.
     * @DTA\Data(field="FIRST_SEEN_ON_BLOB_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $first_seen_on_blob_ts;

    /**
     * This is the first time instrument was seen on instrumentListSourceType FIX.
     * @DTA\Data(field="FIRST_SEEN_ON_FIX_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $first_seen_on_fix_ts;

    /**
     * This is the first time instrument was seen on instrumentListSourceType HARDCODED.
     * @DTA\Data(field="FIRST_SEEN_ON_HARDCODED_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $first_seen_on_hardcoded_ts;

    /**
     * This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
     * @DTA\Data(field="FIRST_SEEN_ON_INDEX_COMPOSITION_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $first_seen_on_index_composition_ts;

    /**
     * This is the first time instrument was seen on instrumentListSourceType NSQ.
     * @DTA\Data(field="FIRST_SEEN_ON_NSQ_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $first_seen_on_nsq_ts;

    /**
     * This is the first time instrument was seen on instrumentListSourceType POLLING.
     * @DTA\Data(field="FIRST_SEEN_ON_POLLING_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $first_seen_on_polling_ts;

    /**
     * This is the first time instrument was seen on instrumentListSourceType STREAMING.
     * @DTA\Data(field="FIRST_SEEN_ON_STREAMING_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $first_seen_on_streaming_ts;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_BACKFILL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_backfill;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_backfill_external;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_BLOB", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_blob;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_blob_external;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_CALCULATED", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_calculated;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_calculated_external;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_FIX", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_fix;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_fix_external;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_GO", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_go;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_GO_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_go_external;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_POLLING", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_polling;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_polling_external;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_STREAMING", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_streaming;

    /**
     * This is the first TRADE_SPOT that we have seen on the specific source type in external format.
     * @DTA\Data(field="FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $first_trade_spot_from_streaming_external;

    /**
     * The migration destination vm hostname.
     * @DTA\Data(field="HOST_MIGRATION_DESTINATION", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $host_migration_destination;

    /**
     * The migration source vm hostname.
     * @DTA\Data(field="HOST_MIGRATION_SOURCE", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $host_migration_source;

    /**
     * The migration status of the symbol, we only poll / stream / connect empty or SETTLED
     * @DTA\Data(field="HOST_MIGRATION_STATUS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $host_migration_status;

    /**
     * The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&amp;?
     * @DTA\Data(field="INSTRUMENT", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument;

    /**
     * The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange.
     * @DTA\Data(field="INSTRUMENT_EXTERNAL_DATA", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument_external_data;

    /**
     * The current mapping information for this instrument
     * @DTA\Data(field="INSTRUMENT_MAPPING", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $instrument_mapping;

    /**
     * Historical mapping information for this instrument
     * @DTA\Data(field="INSTRUMENT_MAPPING_HISTORY", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection605::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection605::class})
     * @var \App\DTO\Collection605|null
     */
    public $instrument_mapping_history;

    /**
     * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
     * @DTA\Data(field="INSTRUMENT_SOURCE_BACKFILL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument_source_backfill;

    /**
     * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
     * @DTA\Data(field="INSTRUMENT_SOURCE_BLOB", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument_source_blob;

    /**
     * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
     * @DTA\Data(field="INSTRUMENT_SOURCE_CALCULATED", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument_source_calculated;

    /**
     * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
     * @DTA\Data(field="INSTRUMENT_SOURCE_FIX", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument_source_fix;

    /**
     * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
     * @DTA\Data(field="INSTRUMENT_SOURCE_GO", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument_source_go;

    /**
     * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
     * @DTA\Data(field="INSTRUMENT_SOURCE_POLLING", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument_source_polling;

    /**
     * Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
     * @DTA\Data(field="INSTRUMENT_SOURCE_STREAMING", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument_source_streaming;

    /**
     * The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data.
     * @DTA\Data(field="INSTRUMENT_STATUS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument_status;

    /**
     * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $instrument_trade_spot_from_backfill_last_proxied_rest_request;

    /**
     * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_backfill_rest_uri_last_request_ts;

    /**
     * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_backfill_rest_uri_last_response_ts;

    /**
     * The next time we expect to make a request for TRADE_SPOT on this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_backfill_rest_uri_next_request_ts;

    /**
     * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $instrument_trade_spot_from_blob_last_proxied_rest_request;

    /**
     * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_blob_rest_uri_last_request_ts;

    /**
     * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_blob_rest_uri_last_response_ts;

    /**
     * The next time we expect to make a request for TRADE_SPOT on this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_blob_rest_uri_next_request_ts;

    /**
     * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $instrument_trade_spot_from_calculated_last_proxied_rest_request;

    /**
     * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_calculated_rest_uri_last_request_ts;

    /**
     * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_calculated_rest_uri_last_response_ts;

    /**
     * The next time we expect to make a request for TRADE_SPOT on this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_calculated_rest_uri_next_request_ts;

    /**
     * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $instrument_trade_spot_from_fix_last_proxied_rest_request;

    /**
     * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_fix_rest_uri_last_request_ts;

    /**
     * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_fix_rest_uri_last_response_ts;

    /**
     * The next time we expect to make a request for TRADE_SPOT on this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_fix_rest_uri_next_request_ts;

    /**
     * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $instrument_trade_spot_from_go_last_proxied_rest_request;

    /**
     * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_go_rest_uri_last_request_ts;

    /**
     * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_go_rest_uri_last_response_ts;

    /**
     * The next time we expect to make a request for TRADE_SPOT on this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_go_rest_uri_next_request_ts;

    /**
     * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $instrument_trade_spot_from_polling_last_proxied_rest_request;

    /**
     * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_polling_rest_uri_last_request_ts;

    /**
     * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_polling_rest_uri_last_response_ts;

    /**
     * The next time we expect to make a request for TRADE_SPOT on this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_polling_rest_uri_next_request_ts;

    /**
     * The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $instrument_trade_spot_from_streaming_last_proxied_rest_request;

    /**
     * The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_streaming_rest_uri_last_request_ts;

    /**
     * The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_streaming_rest_uri_last_response_ts;

    /**
     * The next time we expect to make a request for TRADE_SPOT on this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $instrument_trade_spot_from_streaming_rest_uri_next_request_ts;

    /**
     * This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"bool"})
     * @var bool|null
     */
    public $instrument_trade_spot_is_ready_for_streaming_integration;

    /**
     * This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_REST_URI", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument_trade_spot_rest_uri;

    /**
     * The URL we send to the proxy swarm to get TRADE_SPOT for the instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_REST_URL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument_trade_spot_rest_url;

    /**
     * This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument.
     * @DTA\Data(field="INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $instrument_trade_spot_streaming_subscription;

    /**
     * The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter
     * @DTA\Data(field="LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_concurrent_batch_of_trades_spot_ms;

    /**
     * This is the last time instrument was seen on instrumentListSourceType BLOB.
     * @DTA\Data(field="LAST_SEEN_ON_BLOB_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_seen_on_blob_ts;

    /**
     * This is the last time instrument was seen on instrumentListSourceType FIX.
     * @DTA\Data(field="LAST_SEEN_ON_FIX_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_seen_on_fix_ts;

    /**
     * This is the last time instrument was seen on instrumentListSourceType HARDCODED.
     * @DTA\Data(field="LAST_SEEN_ON_HARDCODED_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_seen_on_hardcoded_ts;

    /**
     * This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
     * @DTA\Data(field="LAST_SEEN_ON_INDEX_COMPOSITION_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_seen_on_index_composition_ts;

    /**
     * This is the last time instrument was seen on instrumentListSourceType NSQ.
     * @DTA\Data(field="LAST_SEEN_ON_NSQ_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_seen_on_nsq_ts;

    /**
     * This is the last time instrument was seen on instrumentListSourceType POLLING.
     * @DTA\Data(field="LAST_SEEN_ON_POLLING_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_seen_on_polling_ts;

    /**
     * This is the last time instrument was seen on instrumentListSourceType STREAMING.
     * @DTA\Data(field="LAST_SEEN_ON_STREAMING_TS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $last_seen_on_streaming_ts;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_BACKFILL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_backfill;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_backfill_external;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_BLOB", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_blob;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_blob_external;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_CALCULATED", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_calculated;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_calculated_external;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_FIX", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_fix;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_FIX_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_fix_external;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_GO", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_go;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_GO_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_go_external;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_POLLING", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_polling;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_polling_external;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_STREAMING", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_streaming;

    /**
     * This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
     * @DTA\Data(field="LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $last_trade_spot_from_streaming_external;

    /**
     * The version of metadata, used for version conversions/migrates.
     * @DTA\Data(field="METADATA_VERSION", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $metadata_version;

    /**
     * This states the status of blob migration for this intrument on this exchange.
     * @DTA\Data(field="PROCESSING_TRADES_FROM_BLOB_STATUS", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $processing_trades_from_blob_status;

    /**
     * This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument
     * @DTA\Data(field="TOTAL_TRADES_SPOT", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $total_trades_spot;

    /**
     * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
     * @DTA\Data(field="UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $unstructured_trade_spot_from_backfill_internal_data;

    /**
     * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
     * @DTA\Data(field="UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $unstructured_trade_spot_from_blob_internal_data;

    /**
     * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
     * @DTA\Data(field="UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $unstructured_trade_spot_from_calculated_internal_data;

    /**
     * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
     * @DTA\Data(field="UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $unstructured_trade_spot_from_fix_internal_data;

    /**
     * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
     * @DTA\Data(field="UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $unstructured_trade_spot_from_go_internal_data;

    /**
     * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
     * @DTA\Data(field="UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $unstructured_trade_spot_from_polling_internal_data;

    /**
     * This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
     * @DTA\Data(field="UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $unstructured_trade_spot_from_streaming_internal_data;

}
