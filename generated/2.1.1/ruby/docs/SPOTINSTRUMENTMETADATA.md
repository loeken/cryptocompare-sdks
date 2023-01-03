# OpenapiClient::SPOTINSTRUMENTMETADATA

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_seen_on_blob_ts** | **Integer** | This is the first time instrument was seen on instrumentListSourceType BLOB. | [optional] |
| **first_seen_on_fix_ts** | **Integer** | This is the first time instrument was seen on instrumentListSourceType FIX. | [optional] |
| **first_seen_on_hardcoded_ts** | **Integer** | This is the first time instrument was seen on instrumentListSourceType HARDCODED. | [optional] |
| **first_seen_on_index_composition_ts** | **Integer** | This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. | [optional] |
| **first_seen_on_nsq_ts** | **Integer** | This is the first time instrument was seen on instrumentListSourceType NSQ. | [optional] |
| **first_seen_on_polling_ts** | **Integer** | This is the first time instrument was seen on instrumentListSourceType POLLING. | [optional] |
| **first_seen_on_streaming_ts** | **Integer** | This is the first time instrument was seen on instrumentListSourceType STREAMING. | [optional] |
| **first_trade_spot_from_backfill** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **first_trade_spot_from_backfill_external** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] |
| **first_trade_spot_from_blob** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **first_trade_spot_from_blob_external** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] |
| **first_trade_spot_from_calculated** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **first_trade_spot_from_calculated_external** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] |
| **first_trade_spot_from_fix** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **first_trade_spot_from_fix_external** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] |
| **first_trade_spot_from_go** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **first_trade_spot_from_go_external** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] |
| **first_trade_spot_from_polling** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **first_trade_spot_from_polling_external** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] |
| **first_trade_spot_from_streaming** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **first_trade_spot_from_streaming_external** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] |
| **host_migration_destination** | **String** | The migration destination vm hostname. | [optional] |
| **host_migration_source** | **String** | The migration source vm hostname. | [optional] |
| **host_migration_status** | **String** | The migration status of the symbol, we only poll / stream / connect empty or SETTLED | [optional] |
| **instrument** | **String** | The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&amp;? | [optional] |
| **instrument_external_data** | **String** | The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange. | [optional] |
| **instrument_mapping** | **Object** | The current mapping information for this instrument | [optional] |
| **instrument_mapping_history** | **Array&lt;String&gt;** | Historical mapping information for this instrument | [optional] |
| **instrument_source_backfill** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] |
| **instrument_source_blob** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] |
| **instrument_source_calculated** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] |
| **instrument_source_fix** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] |
| **instrument_source_go** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] |
| **instrument_source_polling** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] |
| **instrument_source_streaming** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] |
| **instrument_status** | **String** | The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data. | [optional][default to &#39;ACTIVE&#39;] |
| **instrument_trade_spot_from_backfill_last_proxied_rest_request** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_backfill_rest_uri_last_request_ts** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_backfill_rest_uri_last_response_ts** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] |
| **instrument_trade_spot_from_backfill_rest_uri_next_request_ts** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] |
| **instrument_trade_spot_from_blob_last_proxied_rest_request** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_blob_rest_uri_last_request_ts** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_blob_rest_uri_last_response_ts** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] |
| **instrument_trade_spot_from_blob_rest_uri_next_request_ts** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] |
| **instrument_trade_spot_from_calculated_last_proxied_rest_request** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_calculated_rest_uri_last_request_ts** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_calculated_rest_uri_last_response_ts** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] |
| **instrument_trade_spot_from_calculated_rest_uri_next_request_ts** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] |
| **instrument_trade_spot_from_fix_last_proxied_rest_request** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_fix_rest_uri_last_request_ts** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_fix_rest_uri_last_response_ts** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] |
| **instrument_trade_spot_from_fix_rest_uri_next_request_ts** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] |
| **instrument_trade_spot_from_go_last_proxied_rest_request** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_go_rest_uri_last_request_ts** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_go_rest_uri_last_response_ts** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] |
| **instrument_trade_spot_from_go_rest_uri_next_request_ts** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] |
| **instrument_trade_spot_from_polling_last_proxied_rest_request** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_polling_rest_uri_last_request_ts** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_polling_rest_uri_last_response_ts** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] |
| **instrument_trade_spot_from_polling_rest_uri_next_request_ts** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] |
| **instrument_trade_spot_from_streaming_last_proxied_rest_request** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_streaming_rest_uri_last_request_ts** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_from_streaming_rest_uri_last_response_ts** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] |
| **instrument_trade_spot_from_streaming_rest_uri_next_request_ts** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] |
| **instrument_trade_spot_is_ready_for_streaming_integration** | **Boolean** | This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration. | [optional][default to false] |
| **instrument_trade_spot_rest_uri** | **String** | This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT. | [optional] |
| **instrument_trade_spot_rest_url** | **String** | The URL we send to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] |
| **instrument_trade_spot_streaming_subscription** | **String** | This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument. | [optional] |
| **last_concurrent_batch_of_trades_spot_ms** | **Integer** | The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter | [optional] |
| **last_seen_on_blob_ts** | **Integer** | This is the last time instrument was seen on instrumentListSourceType BLOB. | [optional] |
| **last_seen_on_fix_ts** | **Integer** | This is the last time instrument was seen on instrumentListSourceType FIX. | [optional] |
| **last_seen_on_hardcoded_ts** | **Integer** | This is the last time instrument was seen on instrumentListSourceType HARDCODED. | [optional] |
| **last_seen_on_index_composition_ts** | **Integer** | This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. | [optional] |
| **last_seen_on_nsq_ts** | **Integer** | This is the last time instrument was seen on instrumentListSourceType NSQ. | [optional] |
| **last_seen_on_polling_ts** | **Integer** | This is the last time instrument was seen on instrumentListSourceType POLLING. | [optional] |
| **last_seen_on_streaming_ts** | **Integer** | This is the last time instrument was seen on instrumentListSourceType STREAMING. | [optional] |
| **last_trade_spot_from_backfill** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **last_trade_spot_from_backfill_external** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] |
| **last_trade_spot_from_blob** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **last_trade_spot_from_blob_external** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] |
| **last_trade_spot_from_calculated** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **last_trade_spot_from_calculated_external** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] |
| **last_trade_spot_from_fix** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **last_trade_spot_from_fix_external** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] |
| **last_trade_spot_from_go** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **last_trade_spot_from_go_external** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] |
| **last_trade_spot_from_polling** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **last_trade_spot_from_polling_external** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] |
| **last_trade_spot_from_streaming** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] |
| **last_trade_spot_from_streaming_external** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] |
| **metadata_version** | **Integer** | The version of metadata, used for version conversions/migrates. | [optional][default to 4] |
| **processing_trades_from_blob_status** | **String** | This states the status of blob migration for this intrument on this exchange. | [optional] |
| **total_trades_spot** | **Integer** | This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument | [optional] |
| **unstructured_trade_spot_from_backfill_internal_data** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] |
| **unstructured_trade_spot_from_blob_internal_data** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] |
| **unstructured_trade_spot_from_calculated_internal_data** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] |
| **unstructured_trade_spot_from_fix_internal_data** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] |
| **unstructured_trade_spot_from_go_internal_data** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] |
| **unstructured_trade_spot_from_polling_internal_data** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] |
| **unstructured_trade_spot_from_streaming_internal_data** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SPOTINSTRUMENTMETADATA.new(
  first_seen_on_blob_ts: null,
  first_seen_on_fix_ts: null,
  first_seen_on_hardcoded_ts: null,
  first_seen_on_index_composition_ts: null,
  first_seen_on_nsq_ts: null,
  first_seen_on_polling_ts: null,
  first_seen_on_streaming_ts: null,
  first_trade_spot_from_backfill: null,
  first_trade_spot_from_backfill_external: null,
  first_trade_spot_from_blob: null,
  first_trade_spot_from_blob_external: null,
  first_trade_spot_from_calculated: null,
  first_trade_spot_from_calculated_external: null,
  first_trade_spot_from_fix: null,
  first_trade_spot_from_fix_external: null,
  first_trade_spot_from_go: null,
  first_trade_spot_from_go_external: null,
  first_trade_spot_from_polling: null,
  first_trade_spot_from_polling_external: null,
  first_trade_spot_from_streaming: null,
  first_trade_spot_from_streaming_external: null,
  host_migration_destination: null,
  host_migration_source: null,
  host_migration_status: null,
  instrument: null,
  instrument_external_data: null,
  instrument_mapping: {},
  instrument_mapping_history: [],
  instrument_source_backfill: null,
  instrument_source_blob: null,
  instrument_source_calculated: null,
  instrument_source_fix: null,
  instrument_source_go: null,
  instrument_source_polling: null,
  instrument_source_streaming: null,
  instrument_status: ACTIVE,
  instrument_trade_spot_from_backfill_last_proxied_rest_request: null,
  instrument_trade_spot_from_backfill_rest_uri_last_request_ts: null,
  instrument_trade_spot_from_backfill_rest_uri_last_response_ts: null,
  instrument_trade_spot_from_backfill_rest_uri_next_request_ts: null,
  instrument_trade_spot_from_blob_last_proxied_rest_request: null,
  instrument_trade_spot_from_blob_rest_uri_last_request_ts: null,
  instrument_trade_spot_from_blob_rest_uri_last_response_ts: null,
  instrument_trade_spot_from_blob_rest_uri_next_request_ts: null,
  instrument_trade_spot_from_calculated_last_proxied_rest_request: null,
  instrument_trade_spot_from_calculated_rest_uri_last_request_ts: null,
  instrument_trade_spot_from_calculated_rest_uri_last_response_ts: null,
  instrument_trade_spot_from_calculated_rest_uri_next_request_ts: null,
  instrument_trade_spot_from_fix_last_proxied_rest_request: null,
  instrument_trade_spot_from_fix_rest_uri_last_request_ts: null,
  instrument_trade_spot_from_fix_rest_uri_last_response_ts: null,
  instrument_trade_spot_from_fix_rest_uri_next_request_ts: null,
  instrument_trade_spot_from_go_last_proxied_rest_request: null,
  instrument_trade_spot_from_go_rest_uri_last_request_ts: null,
  instrument_trade_spot_from_go_rest_uri_last_response_ts: null,
  instrument_trade_spot_from_go_rest_uri_next_request_ts: null,
  instrument_trade_spot_from_polling_last_proxied_rest_request: null,
  instrument_trade_spot_from_polling_rest_uri_last_request_ts: null,
  instrument_trade_spot_from_polling_rest_uri_last_response_ts: null,
  instrument_trade_spot_from_polling_rest_uri_next_request_ts: null,
  instrument_trade_spot_from_streaming_last_proxied_rest_request: null,
  instrument_trade_spot_from_streaming_rest_uri_last_request_ts: null,
  instrument_trade_spot_from_streaming_rest_uri_last_response_ts: null,
  instrument_trade_spot_from_streaming_rest_uri_next_request_ts: null,
  instrument_trade_spot_is_ready_for_streaming_integration: false,
  instrument_trade_spot_rest_uri: null,
  instrument_trade_spot_rest_url: null,
  instrument_trade_spot_streaming_subscription: null,
  last_concurrent_batch_of_trades_spot_ms: null,
  last_seen_on_blob_ts: null,
  last_seen_on_fix_ts: null,
  last_seen_on_hardcoded_ts: null,
  last_seen_on_index_composition_ts: null,
  last_seen_on_nsq_ts: null,
  last_seen_on_polling_ts: null,
  last_seen_on_streaming_ts: null,
  last_trade_spot_from_backfill: null,
  last_trade_spot_from_backfill_external: null,
  last_trade_spot_from_blob: null,
  last_trade_spot_from_blob_external: null,
  last_trade_spot_from_calculated: null,
  last_trade_spot_from_calculated_external: null,
  last_trade_spot_from_fix: null,
  last_trade_spot_from_fix_external: null,
  last_trade_spot_from_go: null,
  last_trade_spot_from_go_external: null,
  last_trade_spot_from_polling: null,
  last_trade_spot_from_polling_external: null,
  last_trade_spot_from_streaming: null,
  last_trade_spot_from_streaming_external: null,
  metadata_version: 4,
  processing_trades_from_blob_status: null,
  total_trades_spot: null,
  unstructured_trade_spot_from_backfill_internal_data: null,
  unstructured_trade_spot_from_blob_internal_data: null,
  unstructured_trade_spot_from_calculated_internal_data: null,
  unstructured_trade_spot_from_fix_internal_data: null,
  unstructured_trade_spot_from_go_internal_data: null,
  unstructured_trade_spot_from_polling_internal_data: null,
  unstructured_trade_spot_from_streaming_internal_data: null
)
```

