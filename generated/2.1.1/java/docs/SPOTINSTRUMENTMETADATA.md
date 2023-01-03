

# SPOTINSTRUMENTMETADATA


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**FIRST_SEEN_ON_BLOB_TS** | **Integer** | This is the first time instrument was seen on instrumentListSourceType BLOB. |  [optional] |
|**FIRST_SEEN_ON_FIX_TS** | **Integer** | This is the first time instrument was seen on instrumentListSourceType FIX. |  [optional] |
|**FIRST_SEEN_ON_HARDCODED_TS** | **Integer** | This is the first time instrument was seen on instrumentListSourceType HARDCODED. |  [optional] |
|**FIRST_SEEN_ON_INDEX_COMPOSITION_TS** | **Integer** | This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. |  [optional] |
|**FIRST_SEEN_ON_NSQ_TS** | **Integer** | This is the first time instrument was seen on instrumentListSourceType NSQ. |  [optional] |
|**FIRST_SEEN_ON_POLLING_TS** | **Integer** | This is the first time instrument was seen on instrumentListSourceType POLLING. |  [optional] |
|**FIRST_SEEN_ON_STREAMING_TS** | **Integer** | This is the first time instrument was seen on instrumentListSourceType STREAMING. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_BACKFILL** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_BLOB** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_CALCULATED** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_FIX** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_GO** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_GO_EXTERNAL** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_POLLING** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_STREAMING** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL** | **Object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional] |
|**HOST_MIGRATION_DESTINATION** | **String** | The migration destination vm hostname. |  [optional] |
|**HOST_MIGRATION_SOURCE** | **String** | The migration source vm hostname. |  [optional] |
|**HOST_MIGRATION_STATUS** | **String** | The migration status of the symbol, we only poll / stream / connect empty or SETTLED |  [optional] |
|**INSTRUMENT** | **String** | The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&amp;? |  [optional] |
|**INSTRUMENT_EXTERNAL_DATA** | **String** | The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange. |  [optional] |
|**INSTRUMENT_MAPPING** | **Object** | The current mapping information for this instrument |  [optional] |
|**INSTRUMENT_MAPPING_HISTORY** | **List&lt;String&gt;** | Historical mapping information for this instrument |  [optional] |
|**INSTRUMENT_SOURCE_BACKFILL** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional] |
|**INSTRUMENT_SOURCE_BLOB** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional] |
|**INSTRUMENT_SOURCE_CALCULATED** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional] |
|**INSTRUMENT_SOURCE_FIX** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional] |
|**INSTRUMENT_SOURCE_GO** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional] |
|**INSTRUMENT_SOURCE_POLLING** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional] |
|**INSTRUMENT_SOURCE_STREAMING** | **String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional] |
|**INSTRUMENT_STATUS** | **String** | The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST** | **Object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS** | **Integer** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS** | **Integer** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS** | **Integer** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION** | **Boolean** | This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_REST_URI** | **String** | This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_REST_URL** | **String** | The URL we send to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional] |
|**INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION** | **String** | This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument. |  [optional] |
|**LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS** | **Integer** | The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter |  [optional] |
|**LAST_SEEN_ON_BLOB_TS** | **Integer** | This is the last time instrument was seen on instrumentListSourceType BLOB. |  [optional] |
|**LAST_SEEN_ON_FIX_TS** | **Integer** | This is the last time instrument was seen on instrumentListSourceType FIX. |  [optional] |
|**LAST_SEEN_ON_HARDCODED_TS** | **Integer** | This is the last time instrument was seen on instrumentListSourceType HARDCODED. |  [optional] |
|**LAST_SEEN_ON_INDEX_COMPOSITION_TS** | **Integer** | This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. |  [optional] |
|**LAST_SEEN_ON_NSQ_TS** | **Integer** | This is the last time instrument was seen on instrumentListSourceType NSQ. |  [optional] |
|**LAST_SEEN_ON_POLLING_TS** | **Integer** | This is the last time instrument was seen on instrumentListSourceType POLLING. |  [optional] |
|**LAST_SEEN_ON_STREAMING_TS** | **Integer** | This is the last time instrument was seen on instrumentListSourceType STREAMING. |  [optional] |
|**LAST_TRADE_SPOT_FROM_BACKFILL** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional] |
|**LAST_TRADE_SPOT_FROM_BLOB** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional] |
|**LAST_TRADE_SPOT_FROM_CALCULATED** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional] |
|**LAST_TRADE_SPOT_FROM_FIX** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**LAST_TRADE_SPOT_FROM_FIX_EXTERNAL** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional] |
|**LAST_TRADE_SPOT_FROM_GO** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**LAST_TRADE_SPOT_FROM_GO_EXTERNAL** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional] |
|**LAST_TRADE_SPOT_FROM_POLLING** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional] |
|**LAST_TRADE_SPOT_FROM_STREAMING** | **Object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional] |
|**LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL** | **Object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional] |
|**METADATA_VERSION** | **Integer** | The version of metadata, used for version conversions/migrates. |  [optional] |
|**PROCESSING_TRADES_FROM_BLOB_STATUS** | **String** | This states the status of blob migration for this intrument on this exchange. |  [optional] |
|**TOTAL_TRADES_SPOT** | **Integer** | This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument |  [optional] |
|**UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional] |
|**UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional] |
|**UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional] |
|**UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional] |
|**UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional] |
|**UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional] |
|**UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA** | **Object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional] |


