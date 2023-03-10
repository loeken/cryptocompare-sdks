
# SPOTINSTRUMENTMETADATA

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FIRST_SEEN_ON_BLOB_TS** | **kotlin.Int** | This is the first time instrument was seen on instrumentListSourceType BLOB. |  [optional]
**FIRST_SEEN_ON_FIX_TS** | **kotlin.Int** | This is the first time instrument was seen on instrumentListSourceType FIX. |  [optional]
**FIRST_SEEN_ON_HARDCODED_TS** | **kotlin.Int** | This is the first time instrument was seen on instrumentListSourceType HARDCODED. |  [optional]
**FIRST_SEEN_ON_INDEX_COMPOSITION_TS** | **kotlin.Int** | This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. |  [optional]
**FIRST_SEEN_ON_NSQ_TS** | **kotlin.Int** | This is the first time instrument was seen on instrumentListSourceType NSQ. |  [optional]
**FIRST_SEEN_ON_POLLING_TS** | **kotlin.Int** | This is the first time instrument was seen on instrumentListSourceType POLLING. |  [optional]
**FIRST_SEEN_ON_STREAMING_TS** | **kotlin.Int** | This is the first time instrument was seen on instrumentListSourceType STREAMING. |  [optional]
**FIRST_TRADE_SPOT_FROM_BACKFILL** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional]
**FIRST_TRADE_SPOT_FROM_BLOB** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional]
**FIRST_TRADE_SPOT_FROM_CALCULATED** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional]
**FIRST_TRADE_SPOT_FROM_FIX** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional]
**FIRST_TRADE_SPOT_FROM_GO** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**FIRST_TRADE_SPOT_FROM_GO_EXTERNAL** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional]
**FIRST_TRADE_SPOT_FROM_POLLING** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional]
**FIRST_TRADE_SPOT_FROM_STREAMING** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL** | [**kotlin.Any**](.md) | This is the first TRADE_SPOT that we have seen on the specific source type in external format. |  [optional]
**HOST_MIGRATION_DESTINATION** | **kotlin.String** | The migration destination vm hostname. |  [optional]
**HOST_MIGRATION_SOURCE** | **kotlin.String** | The migration source vm hostname. |  [optional]
**HOST_MIGRATION_STATUS** | **kotlin.String** | The migration status of the symbol, we only poll / stream / connect empty or SETTLED |  [optional]
**INSTRUMENT** | **kotlin.String** | The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&amp;? |  [optional]
**INSTRUMENT_EXTERNAL_DATA** | **kotlin.String** | The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange. |  [optional]
**INSTRUMENT_MAPPING** | [**kotlin.Any**](.md) | The current mapping information for this instrument |  [optional]
**INSTRUMENT_MAPPING_HISTORY** | **kotlin.collections.List&lt;kotlin.String&gt;** | Historical mapping information for this instrument |  [optional]
**INSTRUMENT_SOURCE_BACKFILL** | **kotlin.String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional]
**INSTRUMENT_SOURCE_BLOB** | **kotlin.String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional]
**INSTRUMENT_SOURCE_CALCULATED** | **kotlin.String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional]
**INSTRUMENT_SOURCE_FIX** | **kotlin.String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional]
**INSTRUMENT_SOURCE_GO** | **kotlin.String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional]
**INSTRUMENT_SOURCE_POLLING** | **kotlin.String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional]
**INSTRUMENT_SOURCE_STREAMING** | **kotlin.String** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. |  [optional]
**INSTRUMENT_STATUS** | **kotlin.String** | The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST** | [**kotlin.Any**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS** | **kotlin.Int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS** | **kotlin.Int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS** | **kotlin.Int** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST** | [**kotlin.Any**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS** | **kotlin.Int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS** | **kotlin.Int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS** | **kotlin.Int** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST** | [**kotlin.Any**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS** | **kotlin.Int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS** | **kotlin.Int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS** | **kotlin.Int** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST** | [**kotlin.Any**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS** | **kotlin.Int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS** | **kotlin.Int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS** | **kotlin.Int** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST** | [**kotlin.Any**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS** | **kotlin.Int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS** | **kotlin.Int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS** | **kotlin.Int** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST** | [**kotlin.Any**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS** | **kotlin.Int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS** | **kotlin.Int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS** | **kotlin.Int** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST** | [**kotlin.Any**](.md) | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS** | **kotlin.Int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS** | **kotlin.Int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS** | **kotlin.Int** | The next time we expect to make a request for TRADE_SPOT on this instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION** | **kotlin.Boolean** | This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration. |  [optional]
**INSTRUMENT_TRADE_SPOT_REST_URI** | **kotlin.String** | This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT. |  [optional]
**INSTRUMENT_TRADE_SPOT_REST_URL** | **kotlin.String** | The URL we send to the proxy swarm to get TRADE_SPOT for the instrument. |  [optional]
**INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION** | **kotlin.String** | This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument. |  [optional]
**LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS** | **kotlin.Int** | The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter |  [optional]
**LAST_SEEN_ON_BLOB_TS** | **kotlin.Int** | This is the last time instrument was seen on instrumentListSourceType BLOB. |  [optional]
**LAST_SEEN_ON_FIX_TS** | **kotlin.Int** | This is the last time instrument was seen on instrumentListSourceType FIX. |  [optional]
**LAST_SEEN_ON_HARDCODED_TS** | **kotlin.Int** | This is the last time instrument was seen on instrumentListSourceType HARDCODED. |  [optional]
**LAST_SEEN_ON_INDEX_COMPOSITION_TS** | **kotlin.Int** | This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. |  [optional]
**LAST_SEEN_ON_NSQ_TS** | **kotlin.Int** | This is the last time instrument was seen on instrumentListSourceType NSQ. |  [optional]
**LAST_SEEN_ON_POLLING_TS** | **kotlin.Int** | This is the last time instrument was seen on instrumentListSourceType POLLING. |  [optional]
**LAST_SEEN_ON_STREAMING_TS** | **kotlin.Int** | This is the last time instrument was seen on instrumentListSourceType STREAMING. |  [optional]
**LAST_TRADE_SPOT_FROM_BACKFILL** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional]
**LAST_TRADE_SPOT_FROM_BLOB** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional]
**LAST_TRADE_SPOT_FROM_CALCULATED** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional]
**LAST_TRADE_SPOT_FROM_FIX** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**LAST_TRADE_SPOT_FROM_FIX_EXTERNAL** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional]
**LAST_TRADE_SPOT_FROM_GO** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**LAST_TRADE_SPOT_FROM_GO_EXTERNAL** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional]
**LAST_TRADE_SPOT_FROM_POLLING** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional]
**LAST_TRADE_SPOT_FROM_STREAMING** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. |  [optional]
**LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL** | [**kotlin.Any**](.md) | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. |  [optional]
**METADATA_VERSION** | **kotlin.Int** | The version of metadata, used for version conversions/migrates. |  [optional]
**PROCESSING_TRADES_FROM_BLOB_STATUS** | **kotlin.String** | This states the status of blob migration for this intrument on this exchange. |  [optional]
**TOTAL_TRADES_SPOT** | **kotlin.Int** | This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument |  [optional]
**UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA** | [**kotlin.Any**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional]
**UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA** | [**kotlin.Any**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional]
**UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA** | [**kotlin.Any**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional]
**UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA** | [**kotlin.Any**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional]
**UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA** | [**kotlin.Any**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional]
**UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA** | [**kotlin.Any**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional]
**UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA** | [**kotlin.Any**](.md) | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. |  [optional]



