# openapi_client.model.spotinstrumentmetadata.SPOTINSTRUMENTMETADATA

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**FIRST_SEEN_ON_BLOB_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the first time instrument was seen on instrumentListSourceType BLOB. | [optional] 
**FIRST_SEEN_ON_FIX_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the first time instrument was seen on instrumentListSourceType FIX. | [optional] 
**FIRST_SEEN_ON_HARDCODED_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the first time instrument was seen on instrumentListSourceType HARDCODED. | [optional] 
**FIRST_SEEN_ON_INDEX_COMPOSITION_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. | [optional] 
**FIRST_SEEN_ON_NSQ_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the first time instrument was seen on instrumentListSourceType NSQ. | [optional] 
**FIRST_SEEN_ON_POLLING_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the first time instrument was seen on instrumentListSourceType POLLING. | [optional] 
**FIRST_SEEN_ON_STREAMING_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the first time instrument was seen on instrumentListSourceType STREAMING. | [optional] 
**[FIRST_TRADE_SPOT_FROM_BACKFILL](#FIRST_TRADE_SPOT_FROM_BACKFILL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL](#FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**[FIRST_TRADE_SPOT_FROM_BLOB](#FIRST_TRADE_SPOT_FROM_BLOB)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL](#FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**[FIRST_TRADE_SPOT_FROM_CALCULATED](#FIRST_TRADE_SPOT_FROM_CALCULATED)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL](#FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**[FIRST_TRADE_SPOT_FROM_FIX](#FIRST_TRADE_SPOT_FROM_FIX)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL](#FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**[FIRST_TRADE_SPOT_FROM_GO](#FIRST_TRADE_SPOT_FROM_GO)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[FIRST_TRADE_SPOT_FROM_GO_EXTERNAL](#FIRST_TRADE_SPOT_FROM_GO_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**[FIRST_TRADE_SPOT_FROM_POLLING](#FIRST_TRADE_SPOT_FROM_POLLING)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL](#FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**[FIRST_TRADE_SPOT_FROM_STREAMING](#FIRST_TRADE_SPOT_FROM_STREAMING)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL](#FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**HOST_MIGRATION_DESTINATION** | str,  | str,  | The migration destination vm hostname. | [optional] 
**HOST_MIGRATION_SOURCE** | str,  | str,  | The migration source vm hostname. | [optional] 
**HOST_MIGRATION_STATUS** | str,  | str,  | The migration status of the symbol, we only poll / stream / connect empty or SETTLED | [optional] 
**INSTRUMENT** | str,  | str,  | The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&amp;? | [optional] 
**INSTRUMENT_EXTERNAL_DATA** | str,  | str,  | The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange. | [optional] 
**[INSTRUMENT_MAPPING](#INSTRUMENT_MAPPING)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | The current mapping information for this instrument | [optional] if omitted the server will use the default value of {}
**[INSTRUMENT_MAPPING_HISTORY](#INSTRUMENT_MAPPING_HISTORY)** | list, tuple,  | tuple,  | Historical mapping information for this instrument | [optional] 
**INSTRUMENT_SOURCE_BACKFILL** | str,  | str,  | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_SOURCE_BLOB** | str,  | str,  | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_SOURCE_CALCULATED** | str,  | str,  | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_SOURCE_FIX** | str,  | str,  | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_SOURCE_GO** | str,  | str,  | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_SOURCE_POLLING** | str,  | str,  | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_SOURCE_STREAMING** | str,  | str,  | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_STATUS** | str,  | str,  | The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data. | [optional] if omitted the server will use the default value of "ACTIVE"
**[INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST](#INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**[INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST](#INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**[INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST](#INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**[INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST](#INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**[INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST](#INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**[INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST](#INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**[INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST](#INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS** | decimal.Decimal, int,  | decimal.Decimal,  | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION** | bool,  | BoolClass,  | This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration. | [optional] if omitted the server will use the default value of False
**INSTRUMENT_TRADE_SPOT_REST_URI** | str,  | str,  | This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT. | [optional] 
**INSTRUMENT_TRADE_SPOT_REST_URL** | str,  | str,  | The URL we send to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION** | str,  | str,  | This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument. | [optional] 
**LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS** | decimal.Decimal, int,  | decimal.Decimal,  | The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter | [optional] 
**LAST_SEEN_ON_BLOB_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the last time instrument was seen on instrumentListSourceType BLOB. | [optional] 
**LAST_SEEN_ON_FIX_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the last time instrument was seen on instrumentListSourceType FIX. | [optional] 
**LAST_SEEN_ON_HARDCODED_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the last time instrument was seen on instrumentListSourceType HARDCODED. | [optional] 
**LAST_SEEN_ON_INDEX_COMPOSITION_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. | [optional] 
**LAST_SEEN_ON_NSQ_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the last time instrument was seen on instrumentListSourceType NSQ. | [optional] 
**LAST_SEEN_ON_POLLING_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the last time instrument was seen on instrumentListSourceType POLLING. | [optional] 
**LAST_SEEN_ON_STREAMING_TS** | decimal.Decimal, int,  | decimal.Decimal,  | This is the last time instrument was seen on instrumentListSourceType STREAMING. | [optional] 
**[LAST_TRADE_SPOT_FROM_BACKFILL](#LAST_TRADE_SPOT_FROM_BACKFILL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL](#LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**[LAST_TRADE_SPOT_FROM_BLOB](#LAST_TRADE_SPOT_FROM_BLOB)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL](#LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**[LAST_TRADE_SPOT_FROM_CALCULATED](#LAST_TRADE_SPOT_FROM_CALCULATED)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL](#LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**[LAST_TRADE_SPOT_FROM_FIX](#LAST_TRADE_SPOT_FROM_FIX)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[LAST_TRADE_SPOT_FROM_FIX_EXTERNAL](#LAST_TRADE_SPOT_FROM_FIX_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**[LAST_TRADE_SPOT_FROM_GO](#LAST_TRADE_SPOT_FROM_GO)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[LAST_TRADE_SPOT_FROM_GO_EXTERNAL](#LAST_TRADE_SPOT_FROM_GO_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**[LAST_TRADE_SPOT_FROM_POLLING](#LAST_TRADE_SPOT_FROM_POLLING)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL](#LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**[LAST_TRADE_SPOT_FROM_STREAMING](#LAST_TRADE_SPOT_FROM_STREAMING)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**[LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL](#LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**METADATA_VERSION** | decimal.Decimal, int,  | decimal.Decimal,  | The version of metadata, used for version conversions/migrates. | [optional] if omitted the server will use the default value of 4
**PROCESSING_TRADES_FROM_BLOB_STATUS** | str,  | str,  | This states the status of blob migration for this intrument on this exchange. | [optional] 
**TOTAL_TRADES_SPOT** | decimal.Decimal, int,  | decimal.Decimal,  | This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument | [optional] 
**[UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA](#UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**[UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA](#UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**[UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA](#UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**[UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA](#UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**[UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA](#UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**[UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA](#UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**[UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA](#UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA)** | dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# FIRST_TRADE_SPOT_FROM_BACKFILL

This is the first TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | 

# FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL

This is the first TRADE_SPOT that we have seen on the specific source type in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | 

# FIRST_TRADE_SPOT_FROM_BLOB

This is the first TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | 

# FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL

This is the first TRADE_SPOT that we have seen on the specific source type in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | 

# FIRST_TRADE_SPOT_FROM_CALCULATED

This is the first TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | 

# FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL

This is the first TRADE_SPOT that we have seen on the specific source type in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | 

# FIRST_TRADE_SPOT_FROM_FIX

This is the first TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | 

# FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL

This is the first TRADE_SPOT that we have seen on the specific source type in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | 

# FIRST_TRADE_SPOT_FROM_GO

This is the first TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | 

# FIRST_TRADE_SPOT_FROM_GO_EXTERNAL

This is the first TRADE_SPOT that we have seen on the specific source type in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | 

# FIRST_TRADE_SPOT_FROM_POLLING

This is the first TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | 

# FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL

This is the first TRADE_SPOT that we have seen on the specific source type in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | 

# FIRST_TRADE_SPOT_FROM_STREAMING

This is the first TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | 

# FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL

This is the first TRADE_SPOT that we have seen on the specific source type in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | 

# INSTRUMENT_MAPPING

The current mapping information for this instrument

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The current mapping information for this instrument | if omitted the server will use the default value of {}

# INSTRUMENT_MAPPING_HISTORY

Historical mapping information for this instrument

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  | Historical mapping information for this instrument | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

# INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST

The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | 

# INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST

The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | 

# INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST

The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | 

# INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST

The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | 

# INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST

The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | 

# INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST

The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | 

# INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST

The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | 

# LAST_TRADE_SPOT_FROM_BACKFILL

This is the last TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | 

# LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL

This is the last TRADE_SPOT that we have seen on the specific trade source in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | 

# LAST_TRADE_SPOT_FROM_BLOB

This is the last TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | 

# LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL

This is the last TRADE_SPOT that we have seen on the specific trade source in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | 

# LAST_TRADE_SPOT_FROM_CALCULATED

This is the last TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | 

# LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL

This is the last TRADE_SPOT that we have seen on the specific trade source in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | 

# LAST_TRADE_SPOT_FROM_FIX

This is the last TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | 

# LAST_TRADE_SPOT_FROM_FIX_EXTERNAL

This is the last TRADE_SPOT that we have seen on the specific trade source in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | 

# LAST_TRADE_SPOT_FROM_GO

This is the last TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | 

# LAST_TRADE_SPOT_FROM_GO_EXTERNAL

This is the last TRADE_SPOT that we have seen on the specific trade source in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | 

# LAST_TRADE_SPOT_FROM_POLLING

This is the last TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | 

# LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL

This is the last TRADE_SPOT that we have seen on the specific trade source in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | 

# LAST_TRADE_SPOT_FROM_STREAMING

This is the last TRADE_SPOT that we have seen on the specific source type in internal format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | 

# LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL

This is the last TRADE_SPOT that we have seen on the specific trade source in external format.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | 

# UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA

This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | 

# UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA

This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | 

# UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA

This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | 

# UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA

This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | 

# UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA

This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | 

# UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA

This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | 

# UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA

This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

