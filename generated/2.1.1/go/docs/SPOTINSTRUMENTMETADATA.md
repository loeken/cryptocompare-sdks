# SPOTINSTRUMENTMETADATA

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FIRST_SEEN_ON_BLOB_TS** | Pointer to **int32** | This is the first time instrument was seen on instrumentListSourceType BLOB. | [optional] 
**FIRST_SEEN_ON_FIX_TS** | Pointer to **int32** | This is the first time instrument was seen on instrumentListSourceType FIX. | [optional] 
**FIRST_SEEN_ON_HARDCODED_TS** | Pointer to **int32** | This is the first time instrument was seen on instrumentListSourceType HARDCODED. | [optional] 
**FIRST_SEEN_ON_INDEX_COMPOSITION_TS** | Pointer to **int32** | This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. | [optional] 
**FIRST_SEEN_ON_NSQ_TS** | Pointer to **int32** | This is the first time instrument was seen on instrumentListSourceType NSQ. | [optional] 
**FIRST_SEEN_ON_POLLING_TS** | Pointer to **int32** | This is the first time instrument was seen on instrumentListSourceType POLLING. | [optional] 
**FIRST_SEEN_ON_STREAMING_TS** | Pointer to **int32** | This is the first time instrument was seen on instrumentListSourceType STREAMING. | [optional] 
**FIRST_TRADE_SPOT_FROM_BACKFILL** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**FIRST_TRADE_SPOT_FROM_BLOB** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**FIRST_TRADE_SPOT_FROM_CALCULATED** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**FIRST_TRADE_SPOT_FROM_FIX** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**FIRST_TRADE_SPOT_FROM_GO** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRST_TRADE_SPOT_FROM_GO_EXTERNAL** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**FIRST_TRADE_SPOT_FROM_POLLING** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**FIRST_TRADE_SPOT_FROM_STREAMING** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL** | Pointer to **map[string]interface{}** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**HOST_MIGRATION_DESTINATION** | Pointer to **string** | The migration destination vm hostname. | [optional] 
**HOST_MIGRATION_SOURCE** | Pointer to **string** | The migration source vm hostname. | [optional] 
**HOST_MIGRATION_STATUS** | Pointer to **string** | The migration status of the symbol, we only poll / stream / connect empty or SETTLED | [optional] 
**INSTRUMENT** | Pointer to **string** | The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&amp;? | [optional] 
**INSTRUMENT_EXTERNAL_DATA** | Pointer to **string** | The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange. | [optional] 
**INSTRUMENT_MAPPING** | Pointer to **map[string]interface{}** | The current mapping information for this instrument | [optional] [default to {}]
**INSTRUMENT_MAPPING_HISTORY** | Pointer to **[]string** | Historical mapping information for this instrument | [optional] [default to []]
**INSTRUMENT_SOURCE_BACKFILL** | Pointer to **string** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_SOURCE_BLOB** | Pointer to **string** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_SOURCE_CALCULATED** | Pointer to **string** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_SOURCE_FIX** | Pointer to **string** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_SOURCE_GO** | Pointer to **string** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_SOURCE_POLLING** | Pointer to **string** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_SOURCE_STREAMING** | Pointer to **string** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**INSTRUMENT_STATUS** | Pointer to **string** | The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data. | [optional] [default to "ACTIVE"]
**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST** | Pointer to **map[string]interface{}** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS** | Pointer to **int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS** | Pointer to **int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS** | Pointer to **int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST** | Pointer to **map[string]interface{}** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS** | Pointer to **int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS** | Pointer to **int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS** | Pointer to **int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST** | Pointer to **map[string]interface{}** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS** | Pointer to **int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS** | Pointer to **int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS** | Pointer to **int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST** | Pointer to **map[string]interface{}** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS** | Pointer to **int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS** | Pointer to **int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS** | Pointer to **int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST** | Pointer to **map[string]interface{}** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS** | Pointer to **int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS** | Pointer to **int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS** | Pointer to **int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST** | Pointer to **map[string]interface{}** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS** | Pointer to **int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS** | Pointer to **int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS** | Pointer to **int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST** | Pointer to **map[string]interface{}** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS** | Pointer to **int32** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS** | Pointer to **int32** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS** | Pointer to **int32** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION** | Pointer to **bool** | This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration. | [optional] [default to false]
**INSTRUMENT_TRADE_SPOT_REST_URI** | Pointer to **string** | This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT. | [optional] 
**INSTRUMENT_TRADE_SPOT_REST_URL** | Pointer to **string** | The URL we send to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION** | Pointer to **string** | This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument. | [optional] 
**LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS** | Pointer to **int32** | The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter | [optional] 
**LAST_SEEN_ON_BLOB_TS** | Pointer to **int32** | This is the last time instrument was seen on instrumentListSourceType BLOB. | [optional] 
**LAST_SEEN_ON_FIX_TS** | Pointer to **int32** | This is the last time instrument was seen on instrumentListSourceType FIX. | [optional] 
**LAST_SEEN_ON_HARDCODED_TS** | Pointer to **int32** | This is the last time instrument was seen on instrumentListSourceType HARDCODED. | [optional] 
**LAST_SEEN_ON_INDEX_COMPOSITION_TS** | Pointer to **int32** | This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. | [optional] 
**LAST_SEEN_ON_NSQ_TS** | Pointer to **int32** | This is the last time instrument was seen on instrumentListSourceType NSQ. | [optional] 
**LAST_SEEN_ON_POLLING_TS** | Pointer to **int32** | This is the last time instrument was seen on instrumentListSourceType POLLING. | [optional] 
**LAST_SEEN_ON_STREAMING_TS** | Pointer to **int32** | This is the last time instrument was seen on instrumentListSourceType STREAMING. | [optional] 
**LAST_TRADE_SPOT_FROM_BACKFILL** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**LAST_TRADE_SPOT_FROM_BLOB** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**LAST_TRADE_SPOT_FROM_CALCULATED** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**LAST_TRADE_SPOT_FROM_FIX** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LAST_TRADE_SPOT_FROM_FIX_EXTERNAL** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**LAST_TRADE_SPOT_FROM_GO** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LAST_TRADE_SPOT_FROM_GO_EXTERNAL** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**LAST_TRADE_SPOT_FROM_POLLING** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**LAST_TRADE_SPOT_FROM_STREAMING** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL** | Pointer to **map[string]interface{}** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**METADATA_VERSION** | Pointer to **int32** | The version of metadata, used for version conversions/migrates. | [optional] [default to 4]
**PROCESSING_TRADES_FROM_BLOB_STATUS** | Pointer to **string** | This states the status of blob migration for this intrument on this exchange. | [optional] 
**TOTAL_TRADES_SPOT** | Pointer to **int32** | This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument | [optional] 
**UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA** | Pointer to **map[string]interface{}** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA** | Pointer to **map[string]interface{}** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA** | Pointer to **map[string]interface{}** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA** | Pointer to **map[string]interface{}** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA** | Pointer to **map[string]interface{}** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA** | Pointer to **map[string]interface{}** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA** | Pointer to **map[string]interface{}** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 

## Methods

### NewSPOTINSTRUMENTMETADATA

`func NewSPOTINSTRUMENTMETADATA() *SPOTINSTRUMENTMETADATA`

NewSPOTINSTRUMENTMETADATA instantiates a new SPOTINSTRUMENTMETADATA object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSPOTINSTRUMENTMETADATAWithDefaults

`func NewSPOTINSTRUMENTMETADATAWithDefaults() *SPOTINSTRUMENTMETADATA`

NewSPOTINSTRUMENTMETADATAWithDefaults instantiates a new SPOTINSTRUMENTMETADATA object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFIRST_SEEN_ON_BLOB_TS

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_BLOB_TS() int32`

GetFIRST_SEEN_ON_BLOB_TS returns the FIRST_SEEN_ON_BLOB_TS field if non-nil, zero value otherwise.

### GetFIRST_SEEN_ON_BLOB_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_BLOB_TSOk() (*int32, bool)`

GetFIRST_SEEN_ON_BLOB_TSOk returns a tuple with the FIRST_SEEN_ON_BLOB_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_SEEN_ON_BLOB_TS

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_SEEN_ON_BLOB_TS(v int32)`

SetFIRST_SEEN_ON_BLOB_TS sets FIRST_SEEN_ON_BLOB_TS field to given value.

### HasFIRST_SEEN_ON_BLOB_TS

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_SEEN_ON_BLOB_TS() bool`

HasFIRST_SEEN_ON_BLOB_TS returns a boolean if a field has been set.

### GetFIRST_SEEN_ON_FIX_TS

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_FIX_TS() int32`

GetFIRST_SEEN_ON_FIX_TS returns the FIRST_SEEN_ON_FIX_TS field if non-nil, zero value otherwise.

### GetFIRST_SEEN_ON_FIX_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_FIX_TSOk() (*int32, bool)`

GetFIRST_SEEN_ON_FIX_TSOk returns a tuple with the FIRST_SEEN_ON_FIX_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_SEEN_ON_FIX_TS

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_SEEN_ON_FIX_TS(v int32)`

SetFIRST_SEEN_ON_FIX_TS sets FIRST_SEEN_ON_FIX_TS field to given value.

### HasFIRST_SEEN_ON_FIX_TS

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_SEEN_ON_FIX_TS() bool`

HasFIRST_SEEN_ON_FIX_TS returns a boolean if a field has been set.

### GetFIRST_SEEN_ON_HARDCODED_TS

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_HARDCODED_TS() int32`

GetFIRST_SEEN_ON_HARDCODED_TS returns the FIRST_SEEN_ON_HARDCODED_TS field if non-nil, zero value otherwise.

### GetFIRST_SEEN_ON_HARDCODED_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_HARDCODED_TSOk() (*int32, bool)`

GetFIRST_SEEN_ON_HARDCODED_TSOk returns a tuple with the FIRST_SEEN_ON_HARDCODED_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_SEEN_ON_HARDCODED_TS

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_SEEN_ON_HARDCODED_TS(v int32)`

SetFIRST_SEEN_ON_HARDCODED_TS sets FIRST_SEEN_ON_HARDCODED_TS field to given value.

### HasFIRST_SEEN_ON_HARDCODED_TS

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_SEEN_ON_HARDCODED_TS() bool`

HasFIRST_SEEN_ON_HARDCODED_TS returns a boolean if a field has been set.

### GetFIRST_SEEN_ON_INDEX_COMPOSITION_TS

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_INDEX_COMPOSITION_TS() int32`

GetFIRST_SEEN_ON_INDEX_COMPOSITION_TS returns the FIRST_SEEN_ON_INDEX_COMPOSITION_TS field if non-nil, zero value otherwise.

### GetFIRST_SEEN_ON_INDEX_COMPOSITION_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_INDEX_COMPOSITION_TSOk() (*int32, bool)`

GetFIRST_SEEN_ON_INDEX_COMPOSITION_TSOk returns a tuple with the FIRST_SEEN_ON_INDEX_COMPOSITION_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_SEEN_ON_INDEX_COMPOSITION_TS

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_SEEN_ON_INDEX_COMPOSITION_TS(v int32)`

SetFIRST_SEEN_ON_INDEX_COMPOSITION_TS sets FIRST_SEEN_ON_INDEX_COMPOSITION_TS field to given value.

### HasFIRST_SEEN_ON_INDEX_COMPOSITION_TS

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_SEEN_ON_INDEX_COMPOSITION_TS() bool`

HasFIRST_SEEN_ON_INDEX_COMPOSITION_TS returns a boolean if a field has been set.

### GetFIRST_SEEN_ON_NSQ_TS

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_NSQ_TS() int32`

GetFIRST_SEEN_ON_NSQ_TS returns the FIRST_SEEN_ON_NSQ_TS field if non-nil, zero value otherwise.

### GetFIRST_SEEN_ON_NSQ_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_NSQ_TSOk() (*int32, bool)`

GetFIRST_SEEN_ON_NSQ_TSOk returns a tuple with the FIRST_SEEN_ON_NSQ_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_SEEN_ON_NSQ_TS

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_SEEN_ON_NSQ_TS(v int32)`

SetFIRST_SEEN_ON_NSQ_TS sets FIRST_SEEN_ON_NSQ_TS field to given value.

### HasFIRST_SEEN_ON_NSQ_TS

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_SEEN_ON_NSQ_TS() bool`

HasFIRST_SEEN_ON_NSQ_TS returns a boolean if a field has been set.

### GetFIRST_SEEN_ON_POLLING_TS

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_POLLING_TS() int32`

GetFIRST_SEEN_ON_POLLING_TS returns the FIRST_SEEN_ON_POLLING_TS field if non-nil, zero value otherwise.

### GetFIRST_SEEN_ON_POLLING_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_POLLING_TSOk() (*int32, bool)`

GetFIRST_SEEN_ON_POLLING_TSOk returns a tuple with the FIRST_SEEN_ON_POLLING_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_SEEN_ON_POLLING_TS

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_SEEN_ON_POLLING_TS(v int32)`

SetFIRST_SEEN_ON_POLLING_TS sets FIRST_SEEN_ON_POLLING_TS field to given value.

### HasFIRST_SEEN_ON_POLLING_TS

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_SEEN_ON_POLLING_TS() bool`

HasFIRST_SEEN_ON_POLLING_TS returns a boolean if a field has been set.

### GetFIRST_SEEN_ON_STREAMING_TS

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_STREAMING_TS() int32`

GetFIRST_SEEN_ON_STREAMING_TS returns the FIRST_SEEN_ON_STREAMING_TS field if non-nil, zero value otherwise.

### GetFIRST_SEEN_ON_STREAMING_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_SEEN_ON_STREAMING_TSOk() (*int32, bool)`

GetFIRST_SEEN_ON_STREAMING_TSOk returns a tuple with the FIRST_SEEN_ON_STREAMING_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_SEEN_ON_STREAMING_TS

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_SEEN_ON_STREAMING_TS(v int32)`

SetFIRST_SEEN_ON_STREAMING_TS sets FIRST_SEEN_ON_STREAMING_TS field to given value.

### HasFIRST_SEEN_ON_STREAMING_TS

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_SEEN_ON_STREAMING_TS() bool`

HasFIRST_SEEN_ON_STREAMING_TS returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_BACKFILL

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_BACKFILL() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_BACKFILL returns the FIRST_TRADE_SPOT_FROM_BACKFILL field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_BACKFILLOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_BACKFILLOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_BACKFILLOk returns a tuple with the FIRST_TRADE_SPOT_FROM_BACKFILL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_BACKFILL

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_BACKFILL(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_BACKFILL sets FIRST_TRADE_SPOT_FROM_BACKFILL field to given value.

### HasFIRST_TRADE_SPOT_FROM_BACKFILL

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_BACKFILL() bool`

HasFIRST_TRADE_SPOT_FROM_BACKFILL returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL returns the FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNALOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNALOk returns a tuple with the FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL sets FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL field to given value.

### HasFIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL() bool`

HasFIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_BLOB

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_BLOB() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_BLOB returns the FIRST_TRADE_SPOT_FROM_BLOB field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_BLOBOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_BLOBOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_BLOBOk returns a tuple with the FIRST_TRADE_SPOT_FROM_BLOB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_BLOB

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_BLOB(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_BLOB sets FIRST_TRADE_SPOT_FROM_BLOB field to given value.

### HasFIRST_TRADE_SPOT_FROM_BLOB

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_BLOB() bool`

HasFIRST_TRADE_SPOT_FROM_BLOB returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL returns the FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_BLOB_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_BLOB_EXTERNALOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_BLOB_EXTERNALOk returns a tuple with the FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL sets FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL field to given value.

### HasFIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL() bool`

HasFIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_CALCULATED

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_CALCULATED() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_CALCULATED returns the FIRST_TRADE_SPOT_FROM_CALCULATED field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_CALCULATEDOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_CALCULATEDOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_CALCULATEDOk returns a tuple with the FIRST_TRADE_SPOT_FROM_CALCULATED field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_CALCULATED

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_CALCULATED(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_CALCULATED sets FIRST_TRADE_SPOT_FROM_CALCULATED field to given value.

### HasFIRST_TRADE_SPOT_FROM_CALCULATED

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_CALCULATED() bool`

HasFIRST_TRADE_SPOT_FROM_CALCULATED returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL returns the FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNALOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNALOk returns a tuple with the FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL sets FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL field to given value.

### HasFIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL() bool`

HasFIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_FIX

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_FIX() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_FIX returns the FIRST_TRADE_SPOT_FROM_FIX field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_FIXOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_FIXOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_FIXOk returns a tuple with the FIRST_TRADE_SPOT_FROM_FIX field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_FIX

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_FIX(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_FIX sets FIRST_TRADE_SPOT_FROM_FIX field to given value.

### HasFIRST_TRADE_SPOT_FROM_FIX

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_FIX() bool`

HasFIRST_TRADE_SPOT_FROM_FIX returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_FIX_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_FIX_EXTERNAL() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_FIX_EXTERNAL returns the FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_FIX_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_FIX_EXTERNALOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_FIX_EXTERNALOk returns a tuple with the FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_FIX_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_FIX_EXTERNAL(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_FIX_EXTERNAL sets FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL field to given value.

### HasFIRST_TRADE_SPOT_FROM_FIX_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_FIX_EXTERNAL() bool`

HasFIRST_TRADE_SPOT_FROM_FIX_EXTERNAL returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_GO

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_GO() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_GO returns the FIRST_TRADE_SPOT_FROM_GO field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_GOOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_GOOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_GOOk returns a tuple with the FIRST_TRADE_SPOT_FROM_GO field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_GO

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_GO(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_GO sets FIRST_TRADE_SPOT_FROM_GO field to given value.

### HasFIRST_TRADE_SPOT_FROM_GO

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_GO() bool`

HasFIRST_TRADE_SPOT_FROM_GO returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_GO_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_GO_EXTERNAL() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_GO_EXTERNAL returns the FIRST_TRADE_SPOT_FROM_GO_EXTERNAL field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_GO_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_GO_EXTERNALOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_GO_EXTERNALOk returns a tuple with the FIRST_TRADE_SPOT_FROM_GO_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_GO_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_GO_EXTERNAL(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_GO_EXTERNAL sets FIRST_TRADE_SPOT_FROM_GO_EXTERNAL field to given value.

### HasFIRST_TRADE_SPOT_FROM_GO_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_GO_EXTERNAL() bool`

HasFIRST_TRADE_SPOT_FROM_GO_EXTERNAL returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_POLLING

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_POLLING() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_POLLING returns the FIRST_TRADE_SPOT_FROM_POLLING field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_POLLINGOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_POLLINGOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_POLLINGOk returns a tuple with the FIRST_TRADE_SPOT_FROM_POLLING field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_POLLING

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_POLLING(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_POLLING sets FIRST_TRADE_SPOT_FROM_POLLING field to given value.

### HasFIRST_TRADE_SPOT_FROM_POLLING

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_POLLING() bool`

HasFIRST_TRADE_SPOT_FROM_POLLING returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL returns the FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_POLLING_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_POLLING_EXTERNALOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_POLLING_EXTERNALOk returns a tuple with the FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL sets FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL field to given value.

### HasFIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL() bool`

HasFIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_STREAMING

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_STREAMING() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_STREAMING returns the FIRST_TRADE_SPOT_FROM_STREAMING field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_STREAMINGOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_STREAMINGOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_STREAMINGOk returns a tuple with the FIRST_TRADE_SPOT_FROM_STREAMING field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_STREAMING

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_STREAMING(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_STREAMING sets FIRST_TRADE_SPOT_FROM_STREAMING field to given value.

### HasFIRST_TRADE_SPOT_FROM_STREAMING

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_STREAMING() bool`

HasFIRST_TRADE_SPOT_FROM_STREAMING returns a boolean if a field has been set.

### GetFIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL() map[string]interface{}`

GetFIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL returns the FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL field if non-nil, zero value otherwise.

### GetFIRST_TRADE_SPOT_FROM_STREAMING_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetFIRST_TRADE_SPOT_FROM_STREAMING_EXTERNALOk() (*map[string]interface{}, bool)`

GetFIRST_TRADE_SPOT_FROM_STREAMING_EXTERNALOk returns a tuple with the FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetFIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL(v map[string]interface{})`

SetFIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL sets FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL field to given value.

### HasFIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasFIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL() bool`

HasFIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL returns a boolean if a field has been set.

### GetHOST_MIGRATION_DESTINATION

`func (o *SPOTINSTRUMENTMETADATA) GetHOST_MIGRATION_DESTINATION() string`

GetHOST_MIGRATION_DESTINATION returns the HOST_MIGRATION_DESTINATION field if non-nil, zero value otherwise.

### GetHOST_MIGRATION_DESTINATIONOk

`func (o *SPOTINSTRUMENTMETADATA) GetHOST_MIGRATION_DESTINATIONOk() (*string, bool)`

GetHOST_MIGRATION_DESTINATIONOk returns a tuple with the HOST_MIGRATION_DESTINATION field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHOST_MIGRATION_DESTINATION

`func (o *SPOTINSTRUMENTMETADATA) SetHOST_MIGRATION_DESTINATION(v string)`

SetHOST_MIGRATION_DESTINATION sets HOST_MIGRATION_DESTINATION field to given value.

### HasHOST_MIGRATION_DESTINATION

`func (o *SPOTINSTRUMENTMETADATA) HasHOST_MIGRATION_DESTINATION() bool`

HasHOST_MIGRATION_DESTINATION returns a boolean if a field has been set.

### GetHOST_MIGRATION_SOURCE

`func (o *SPOTINSTRUMENTMETADATA) GetHOST_MIGRATION_SOURCE() string`

GetHOST_MIGRATION_SOURCE returns the HOST_MIGRATION_SOURCE field if non-nil, zero value otherwise.

### GetHOST_MIGRATION_SOURCEOk

`func (o *SPOTINSTRUMENTMETADATA) GetHOST_MIGRATION_SOURCEOk() (*string, bool)`

GetHOST_MIGRATION_SOURCEOk returns a tuple with the HOST_MIGRATION_SOURCE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHOST_MIGRATION_SOURCE

`func (o *SPOTINSTRUMENTMETADATA) SetHOST_MIGRATION_SOURCE(v string)`

SetHOST_MIGRATION_SOURCE sets HOST_MIGRATION_SOURCE field to given value.

### HasHOST_MIGRATION_SOURCE

`func (o *SPOTINSTRUMENTMETADATA) HasHOST_MIGRATION_SOURCE() bool`

HasHOST_MIGRATION_SOURCE returns a boolean if a field has been set.

### GetHOST_MIGRATION_STATUS

`func (o *SPOTINSTRUMENTMETADATA) GetHOST_MIGRATION_STATUS() string`

GetHOST_MIGRATION_STATUS returns the HOST_MIGRATION_STATUS field if non-nil, zero value otherwise.

### GetHOST_MIGRATION_STATUSOk

`func (o *SPOTINSTRUMENTMETADATA) GetHOST_MIGRATION_STATUSOk() (*string, bool)`

GetHOST_MIGRATION_STATUSOk returns a tuple with the HOST_MIGRATION_STATUS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHOST_MIGRATION_STATUS

`func (o *SPOTINSTRUMENTMETADATA) SetHOST_MIGRATION_STATUS(v string)`

SetHOST_MIGRATION_STATUS sets HOST_MIGRATION_STATUS field to given value.

### HasHOST_MIGRATION_STATUS

`func (o *SPOTINSTRUMENTMETADATA) HasHOST_MIGRATION_STATUS() bool`

HasHOST_MIGRATION_STATUS returns a boolean if a field has been set.

### GetINSTRUMENT

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT() string`

GetINSTRUMENT returns the INSTRUMENT field if non-nil, zero value otherwise.

### GetINSTRUMENTOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENTOk() (*string, bool)`

GetINSTRUMENTOk returns a tuple with the INSTRUMENT field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT(v string)`

SetINSTRUMENT sets INSTRUMENT field to given value.

### HasINSTRUMENT

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT() bool`

HasINSTRUMENT returns a boolean if a field has been set.

### GetINSTRUMENT_EXTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_EXTERNAL_DATA() string`

GetINSTRUMENT_EXTERNAL_DATA returns the INSTRUMENT_EXTERNAL_DATA field if non-nil, zero value otherwise.

### GetINSTRUMENT_EXTERNAL_DATAOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_EXTERNAL_DATAOk() (*string, bool)`

GetINSTRUMENT_EXTERNAL_DATAOk returns a tuple with the INSTRUMENT_EXTERNAL_DATA field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_EXTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_EXTERNAL_DATA(v string)`

SetINSTRUMENT_EXTERNAL_DATA sets INSTRUMENT_EXTERNAL_DATA field to given value.

### HasINSTRUMENT_EXTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_EXTERNAL_DATA() bool`

HasINSTRUMENT_EXTERNAL_DATA returns a boolean if a field has been set.

### GetINSTRUMENT_MAPPING

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_MAPPING() map[string]interface{}`

GetINSTRUMENT_MAPPING returns the INSTRUMENT_MAPPING field if non-nil, zero value otherwise.

### GetINSTRUMENT_MAPPINGOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_MAPPINGOk() (*map[string]interface{}, bool)`

GetINSTRUMENT_MAPPINGOk returns a tuple with the INSTRUMENT_MAPPING field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_MAPPING

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_MAPPING(v map[string]interface{})`

SetINSTRUMENT_MAPPING sets INSTRUMENT_MAPPING field to given value.

### HasINSTRUMENT_MAPPING

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_MAPPING() bool`

HasINSTRUMENT_MAPPING returns a boolean if a field has been set.

### GetINSTRUMENT_MAPPING_HISTORY

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_MAPPING_HISTORY() []string`

GetINSTRUMENT_MAPPING_HISTORY returns the INSTRUMENT_MAPPING_HISTORY field if non-nil, zero value otherwise.

### GetINSTRUMENT_MAPPING_HISTORYOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_MAPPING_HISTORYOk() (*[]string, bool)`

GetINSTRUMENT_MAPPING_HISTORYOk returns a tuple with the INSTRUMENT_MAPPING_HISTORY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_MAPPING_HISTORY

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_MAPPING_HISTORY(v []string)`

SetINSTRUMENT_MAPPING_HISTORY sets INSTRUMENT_MAPPING_HISTORY field to given value.

### HasINSTRUMENT_MAPPING_HISTORY

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_MAPPING_HISTORY() bool`

HasINSTRUMENT_MAPPING_HISTORY returns a boolean if a field has been set.

### GetINSTRUMENT_SOURCE_BACKFILL

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_BACKFILL() string`

GetINSTRUMENT_SOURCE_BACKFILL returns the INSTRUMENT_SOURCE_BACKFILL field if non-nil, zero value otherwise.

### GetINSTRUMENT_SOURCE_BACKFILLOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_BACKFILLOk() (*string, bool)`

GetINSTRUMENT_SOURCE_BACKFILLOk returns a tuple with the INSTRUMENT_SOURCE_BACKFILL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_SOURCE_BACKFILL

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_SOURCE_BACKFILL(v string)`

SetINSTRUMENT_SOURCE_BACKFILL sets INSTRUMENT_SOURCE_BACKFILL field to given value.

### HasINSTRUMENT_SOURCE_BACKFILL

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_SOURCE_BACKFILL() bool`

HasINSTRUMENT_SOURCE_BACKFILL returns a boolean if a field has been set.

### GetINSTRUMENT_SOURCE_BLOB

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_BLOB() string`

GetINSTRUMENT_SOURCE_BLOB returns the INSTRUMENT_SOURCE_BLOB field if non-nil, zero value otherwise.

### GetINSTRUMENT_SOURCE_BLOBOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_BLOBOk() (*string, bool)`

GetINSTRUMENT_SOURCE_BLOBOk returns a tuple with the INSTRUMENT_SOURCE_BLOB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_SOURCE_BLOB

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_SOURCE_BLOB(v string)`

SetINSTRUMENT_SOURCE_BLOB sets INSTRUMENT_SOURCE_BLOB field to given value.

### HasINSTRUMENT_SOURCE_BLOB

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_SOURCE_BLOB() bool`

HasINSTRUMENT_SOURCE_BLOB returns a boolean if a field has been set.

### GetINSTRUMENT_SOURCE_CALCULATED

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_CALCULATED() string`

GetINSTRUMENT_SOURCE_CALCULATED returns the INSTRUMENT_SOURCE_CALCULATED field if non-nil, zero value otherwise.

### GetINSTRUMENT_SOURCE_CALCULATEDOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_CALCULATEDOk() (*string, bool)`

GetINSTRUMENT_SOURCE_CALCULATEDOk returns a tuple with the INSTRUMENT_SOURCE_CALCULATED field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_SOURCE_CALCULATED

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_SOURCE_CALCULATED(v string)`

SetINSTRUMENT_SOURCE_CALCULATED sets INSTRUMENT_SOURCE_CALCULATED field to given value.

### HasINSTRUMENT_SOURCE_CALCULATED

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_SOURCE_CALCULATED() bool`

HasINSTRUMENT_SOURCE_CALCULATED returns a boolean if a field has been set.

### GetINSTRUMENT_SOURCE_FIX

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_FIX() string`

GetINSTRUMENT_SOURCE_FIX returns the INSTRUMENT_SOURCE_FIX field if non-nil, zero value otherwise.

### GetINSTRUMENT_SOURCE_FIXOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_FIXOk() (*string, bool)`

GetINSTRUMENT_SOURCE_FIXOk returns a tuple with the INSTRUMENT_SOURCE_FIX field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_SOURCE_FIX

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_SOURCE_FIX(v string)`

SetINSTRUMENT_SOURCE_FIX sets INSTRUMENT_SOURCE_FIX field to given value.

### HasINSTRUMENT_SOURCE_FIX

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_SOURCE_FIX() bool`

HasINSTRUMENT_SOURCE_FIX returns a boolean if a field has been set.

### GetINSTRUMENT_SOURCE_GO

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_GO() string`

GetINSTRUMENT_SOURCE_GO returns the INSTRUMENT_SOURCE_GO field if non-nil, zero value otherwise.

### GetINSTRUMENT_SOURCE_GOOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_GOOk() (*string, bool)`

GetINSTRUMENT_SOURCE_GOOk returns a tuple with the INSTRUMENT_SOURCE_GO field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_SOURCE_GO

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_SOURCE_GO(v string)`

SetINSTRUMENT_SOURCE_GO sets INSTRUMENT_SOURCE_GO field to given value.

### HasINSTRUMENT_SOURCE_GO

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_SOURCE_GO() bool`

HasINSTRUMENT_SOURCE_GO returns a boolean if a field has been set.

### GetINSTRUMENT_SOURCE_POLLING

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_POLLING() string`

GetINSTRUMENT_SOURCE_POLLING returns the INSTRUMENT_SOURCE_POLLING field if non-nil, zero value otherwise.

### GetINSTRUMENT_SOURCE_POLLINGOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_POLLINGOk() (*string, bool)`

GetINSTRUMENT_SOURCE_POLLINGOk returns a tuple with the INSTRUMENT_SOURCE_POLLING field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_SOURCE_POLLING

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_SOURCE_POLLING(v string)`

SetINSTRUMENT_SOURCE_POLLING sets INSTRUMENT_SOURCE_POLLING field to given value.

### HasINSTRUMENT_SOURCE_POLLING

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_SOURCE_POLLING() bool`

HasINSTRUMENT_SOURCE_POLLING returns a boolean if a field has been set.

### GetINSTRUMENT_SOURCE_STREAMING

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_STREAMING() string`

GetINSTRUMENT_SOURCE_STREAMING returns the INSTRUMENT_SOURCE_STREAMING field if non-nil, zero value otherwise.

### GetINSTRUMENT_SOURCE_STREAMINGOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_SOURCE_STREAMINGOk() (*string, bool)`

GetINSTRUMENT_SOURCE_STREAMINGOk returns a tuple with the INSTRUMENT_SOURCE_STREAMING field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_SOURCE_STREAMING

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_SOURCE_STREAMING(v string)`

SetINSTRUMENT_SOURCE_STREAMING sets INSTRUMENT_SOURCE_STREAMING field to given value.

### HasINSTRUMENT_SOURCE_STREAMING

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_SOURCE_STREAMING() bool`

HasINSTRUMENT_SOURCE_STREAMING returns a boolean if a field has been set.

### GetINSTRUMENT_STATUS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_STATUS() string`

GetINSTRUMENT_STATUS returns the INSTRUMENT_STATUS field if non-nil, zero value otherwise.

### GetINSTRUMENT_STATUSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_STATUSOk() (*string, bool)`

GetINSTRUMENT_STATUSOk returns a tuple with the INSTRUMENT_STATUS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_STATUS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_STATUS(v string)`

SetINSTRUMENT_STATUS sets INSTRUMENT_STATUS field to given value.

### HasINSTRUMENT_STATUS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_STATUS() bool`

HasINSTRUMENT_STATUS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST() map[string]interface{}`

GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST returns the INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUESTOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUESTOk() (*map[string]interface{}, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUESTOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST(v map[string]interface{})`

SetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST sets INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS returns the INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS sets INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST() map[string]interface{}`

GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST returns the INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUESTOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUESTOk() (*map[string]interface{}, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUESTOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST(v map[string]interface{})`

SetINSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST sets INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS returns the INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS sets INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST() map[string]interface{}`

GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST returns the INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUESTOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUESTOk() (*map[string]interface{}, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUESTOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST(v map[string]interface{})`

SetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST sets INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS returns the INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS sets INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST() map[string]interface{}`

GetINSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST returns the INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUESTOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUESTOk() (*map[string]interface{}, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUESTOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST(v map[string]interface{})`

SetINSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST sets INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS returns the INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS sets INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST() map[string]interface{}`

GetINSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST returns the INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUESTOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUESTOk() (*map[string]interface{}, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUESTOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST(v map[string]interface{})`

SetINSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST sets INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS returns the INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS sets INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST() map[string]interface{}`

GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST returns the INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUESTOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUESTOk() (*map[string]interface{}, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUESTOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST(v map[string]interface{})`

SetINSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST sets INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS returns the INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS sets INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST() map[string]interface{}`

GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST returns the INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUESTOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUESTOk() (*map[string]interface{}, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUESTOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST(v map[string]interface{})`

SetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST sets INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS returns the INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS sets INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS() int32`

GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS returns the INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TSOk() (*int32, bool)`

GetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TSOk returns a tuple with the INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS(v int32)`

SetINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS sets INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS field to given value.

### HasINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS() bool`

HasINSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION() bool`

GetINSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION returns the INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATIONOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATIONOk() (*bool, bool)`

GetINSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATIONOk returns a tuple with the INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION(v bool)`

SetINSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION sets INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION field to given value.

### HasINSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION() bool`

HasINSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_REST_URI

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_REST_URI() string`

GetINSTRUMENT_TRADE_SPOT_REST_URI returns the INSTRUMENT_TRADE_SPOT_REST_URI field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_REST_URIOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_REST_URIOk() (*string, bool)`

GetINSTRUMENT_TRADE_SPOT_REST_URIOk returns a tuple with the INSTRUMENT_TRADE_SPOT_REST_URI field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_REST_URI

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_REST_URI(v string)`

SetINSTRUMENT_TRADE_SPOT_REST_URI sets INSTRUMENT_TRADE_SPOT_REST_URI field to given value.

### HasINSTRUMENT_TRADE_SPOT_REST_URI

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_REST_URI() bool`

HasINSTRUMENT_TRADE_SPOT_REST_URI returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_REST_URL

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_REST_URL() string`

GetINSTRUMENT_TRADE_SPOT_REST_URL returns the INSTRUMENT_TRADE_SPOT_REST_URL field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_REST_URLOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_REST_URLOk() (*string, bool)`

GetINSTRUMENT_TRADE_SPOT_REST_URLOk returns a tuple with the INSTRUMENT_TRADE_SPOT_REST_URL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_REST_URL

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_REST_URL(v string)`

SetINSTRUMENT_TRADE_SPOT_REST_URL sets INSTRUMENT_TRADE_SPOT_REST_URL field to given value.

### HasINSTRUMENT_TRADE_SPOT_REST_URL

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_REST_URL() bool`

HasINSTRUMENT_TRADE_SPOT_REST_URL returns a boolean if a field has been set.

### GetINSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION() string`

GetINSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION returns the INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION field if non-nil, zero value otherwise.

### GetINSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTIONOk

`func (o *SPOTINSTRUMENTMETADATA) GetINSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTIONOk() (*string, bool)`

GetINSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTIONOk returns a tuple with the INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION

`func (o *SPOTINSTRUMENTMETADATA) SetINSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION(v string)`

SetINSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION sets INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION field to given value.

### HasINSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION

`func (o *SPOTINSTRUMENTMETADATA) HasINSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION() bool`

HasINSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION returns a boolean if a field has been set.

### GetLAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS() int32`

GetLAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS returns the LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS field if non-nil, zero value otherwise.

### GetLAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MSOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MSOk() (*int32, bool)`

GetLAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MSOk returns a tuple with the LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS(v int32)`

SetLAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS sets LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS field to given value.

### HasLAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS() bool`

HasLAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS returns a boolean if a field has been set.

### GetLAST_SEEN_ON_BLOB_TS

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_BLOB_TS() int32`

GetLAST_SEEN_ON_BLOB_TS returns the LAST_SEEN_ON_BLOB_TS field if non-nil, zero value otherwise.

### GetLAST_SEEN_ON_BLOB_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_BLOB_TSOk() (*int32, bool)`

GetLAST_SEEN_ON_BLOB_TSOk returns a tuple with the LAST_SEEN_ON_BLOB_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_SEEN_ON_BLOB_TS

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_SEEN_ON_BLOB_TS(v int32)`

SetLAST_SEEN_ON_BLOB_TS sets LAST_SEEN_ON_BLOB_TS field to given value.

### HasLAST_SEEN_ON_BLOB_TS

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_SEEN_ON_BLOB_TS() bool`

HasLAST_SEEN_ON_BLOB_TS returns a boolean if a field has been set.

### GetLAST_SEEN_ON_FIX_TS

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_FIX_TS() int32`

GetLAST_SEEN_ON_FIX_TS returns the LAST_SEEN_ON_FIX_TS field if non-nil, zero value otherwise.

### GetLAST_SEEN_ON_FIX_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_FIX_TSOk() (*int32, bool)`

GetLAST_SEEN_ON_FIX_TSOk returns a tuple with the LAST_SEEN_ON_FIX_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_SEEN_ON_FIX_TS

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_SEEN_ON_FIX_TS(v int32)`

SetLAST_SEEN_ON_FIX_TS sets LAST_SEEN_ON_FIX_TS field to given value.

### HasLAST_SEEN_ON_FIX_TS

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_SEEN_ON_FIX_TS() bool`

HasLAST_SEEN_ON_FIX_TS returns a boolean if a field has been set.

### GetLAST_SEEN_ON_HARDCODED_TS

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_HARDCODED_TS() int32`

GetLAST_SEEN_ON_HARDCODED_TS returns the LAST_SEEN_ON_HARDCODED_TS field if non-nil, zero value otherwise.

### GetLAST_SEEN_ON_HARDCODED_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_HARDCODED_TSOk() (*int32, bool)`

GetLAST_SEEN_ON_HARDCODED_TSOk returns a tuple with the LAST_SEEN_ON_HARDCODED_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_SEEN_ON_HARDCODED_TS

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_SEEN_ON_HARDCODED_TS(v int32)`

SetLAST_SEEN_ON_HARDCODED_TS sets LAST_SEEN_ON_HARDCODED_TS field to given value.

### HasLAST_SEEN_ON_HARDCODED_TS

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_SEEN_ON_HARDCODED_TS() bool`

HasLAST_SEEN_ON_HARDCODED_TS returns a boolean if a field has been set.

### GetLAST_SEEN_ON_INDEX_COMPOSITION_TS

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_INDEX_COMPOSITION_TS() int32`

GetLAST_SEEN_ON_INDEX_COMPOSITION_TS returns the LAST_SEEN_ON_INDEX_COMPOSITION_TS field if non-nil, zero value otherwise.

### GetLAST_SEEN_ON_INDEX_COMPOSITION_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_INDEX_COMPOSITION_TSOk() (*int32, bool)`

GetLAST_SEEN_ON_INDEX_COMPOSITION_TSOk returns a tuple with the LAST_SEEN_ON_INDEX_COMPOSITION_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_SEEN_ON_INDEX_COMPOSITION_TS

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_SEEN_ON_INDEX_COMPOSITION_TS(v int32)`

SetLAST_SEEN_ON_INDEX_COMPOSITION_TS sets LAST_SEEN_ON_INDEX_COMPOSITION_TS field to given value.

### HasLAST_SEEN_ON_INDEX_COMPOSITION_TS

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_SEEN_ON_INDEX_COMPOSITION_TS() bool`

HasLAST_SEEN_ON_INDEX_COMPOSITION_TS returns a boolean if a field has been set.

### GetLAST_SEEN_ON_NSQ_TS

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_NSQ_TS() int32`

GetLAST_SEEN_ON_NSQ_TS returns the LAST_SEEN_ON_NSQ_TS field if non-nil, zero value otherwise.

### GetLAST_SEEN_ON_NSQ_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_NSQ_TSOk() (*int32, bool)`

GetLAST_SEEN_ON_NSQ_TSOk returns a tuple with the LAST_SEEN_ON_NSQ_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_SEEN_ON_NSQ_TS

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_SEEN_ON_NSQ_TS(v int32)`

SetLAST_SEEN_ON_NSQ_TS sets LAST_SEEN_ON_NSQ_TS field to given value.

### HasLAST_SEEN_ON_NSQ_TS

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_SEEN_ON_NSQ_TS() bool`

HasLAST_SEEN_ON_NSQ_TS returns a boolean if a field has been set.

### GetLAST_SEEN_ON_POLLING_TS

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_POLLING_TS() int32`

GetLAST_SEEN_ON_POLLING_TS returns the LAST_SEEN_ON_POLLING_TS field if non-nil, zero value otherwise.

### GetLAST_SEEN_ON_POLLING_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_POLLING_TSOk() (*int32, bool)`

GetLAST_SEEN_ON_POLLING_TSOk returns a tuple with the LAST_SEEN_ON_POLLING_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_SEEN_ON_POLLING_TS

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_SEEN_ON_POLLING_TS(v int32)`

SetLAST_SEEN_ON_POLLING_TS sets LAST_SEEN_ON_POLLING_TS field to given value.

### HasLAST_SEEN_ON_POLLING_TS

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_SEEN_ON_POLLING_TS() bool`

HasLAST_SEEN_ON_POLLING_TS returns a boolean if a field has been set.

### GetLAST_SEEN_ON_STREAMING_TS

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_STREAMING_TS() int32`

GetLAST_SEEN_ON_STREAMING_TS returns the LAST_SEEN_ON_STREAMING_TS field if non-nil, zero value otherwise.

### GetLAST_SEEN_ON_STREAMING_TSOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_SEEN_ON_STREAMING_TSOk() (*int32, bool)`

GetLAST_SEEN_ON_STREAMING_TSOk returns a tuple with the LAST_SEEN_ON_STREAMING_TS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_SEEN_ON_STREAMING_TS

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_SEEN_ON_STREAMING_TS(v int32)`

SetLAST_SEEN_ON_STREAMING_TS sets LAST_SEEN_ON_STREAMING_TS field to given value.

### HasLAST_SEEN_ON_STREAMING_TS

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_SEEN_ON_STREAMING_TS() bool`

HasLAST_SEEN_ON_STREAMING_TS returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_BACKFILL

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_BACKFILL() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_BACKFILL returns the LAST_TRADE_SPOT_FROM_BACKFILL field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_BACKFILLOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_BACKFILLOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_BACKFILLOk returns a tuple with the LAST_TRADE_SPOT_FROM_BACKFILL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_BACKFILL

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_BACKFILL(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_BACKFILL sets LAST_TRADE_SPOT_FROM_BACKFILL field to given value.

### HasLAST_TRADE_SPOT_FROM_BACKFILL

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_BACKFILL() bool`

HasLAST_TRADE_SPOT_FROM_BACKFILL returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL returns the LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_BACKFILL_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_BACKFILL_EXTERNALOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_BACKFILL_EXTERNALOk returns a tuple with the LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL sets LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL field to given value.

### HasLAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL() bool`

HasLAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_BLOB

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_BLOB() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_BLOB returns the LAST_TRADE_SPOT_FROM_BLOB field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_BLOBOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_BLOBOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_BLOBOk returns a tuple with the LAST_TRADE_SPOT_FROM_BLOB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_BLOB

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_BLOB(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_BLOB sets LAST_TRADE_SPOT_FROM_BLOB field to given value.

### HasLAST_TRADE_SPOT_FROM_BLOB

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_BLOB() bool`

HasLAST_TRADE_SPOT_FROM_BLOB returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_BLOB_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_BLOB_EXTERNAL() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_BLOB_EXTERNAL returns the LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_BLOB_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_BLOB_EXTERNALOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_BLOB_EXTERNALOk returns a tuple with the LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_BLOB_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_BLOB_EXTERNAL(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_BLOB_EXTERNAL sets LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL field to given value.

### HasLAST_TRADE_SPOT_FROM_BLOB_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_BLOB_EXTERNAL() bool`

HasLAST_TRADE_SPOT_FROM_BLOB_EXTERNAL returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_CALCULATED

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_CALCULATED() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_CALCULATED returns the LAST_TRADE_SPOT_FROM_CALCULATED field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_CALCULATEDOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_CALCULATEDOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_CALCULATEDOk returns a tuple with the LAST_TRADE_SPOT_FROM_CALCULATED field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_CALCULATED

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_CALCULATED(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_CALCULATED sets LAST_TRADE_SPOT_FROM_CALCULATED field to given value.

### HasLAST_TRADE_SPOT_FROM_CALCULATED

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_CALCULATED() bool`

HasLAST_TRADE_SPOT_FROM_CALCULATED returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL returns the LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_CALCULATED_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_CALCULATED_EXTERNALOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_CALCULATED_EXTERNALOk returns a tuple with the LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL sets LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL field to given value.

### HasLAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL() bool`

HasLAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_FIX

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_FIX() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_FIX returns the LAST_TRADE_SPOT_FROM_FIX field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_FIXOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_FIXOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_FIXOk returns a tuple with the LAST_TRADE_SPOT_FROM_FIX field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_FIX

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_FIX(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_FIX sets LAST_TRADE_SPOT_FROM_FIX field to given value.

### HasLAST_TRADE_SPOT_FROM_FIX

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_FIX() bool`

HasLAST_TRADE_SPOT_FROM_FIX returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_FIX_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_FIX_EXTERNAL() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_FIX_EXTERNAL returns the LAST_TRADE_SPOT_FROM_FIX_EXTERNAL field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_FIX_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_FIX_EXTERNALOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_FIX_EXTERNALOk returns a tuple with the LAST_TRADE_SPOT_FROM_FIX_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_FIX_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_FIX_EXTERNAL(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_FIX_EXTERNAL sets LAST_TRADE_SPOT_FROM_FIX_EXTERNAL field to given value.

### HasLAST_TRADE_SPOT_FROM_FIX_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_FIX_EXTERNAL() bool`

HasLAST_TRADE_SPOT_FROM_FIX_EXTERNAL returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_GO

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_GO() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_GO returns the LAST_TRADE_SPOT_FROM_GO field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_GOOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_GOOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_GOOk returns a tuple with the LAST_TRADE_SPOT_FROM_GO field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_GO

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_GO(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_GO sets LAST_TRADE_SPOT_FROM_GO field to given value.

### HasLAST_TRADE_SPOT_FROM_GO

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_GO() bool`

HasLAST_TRADE_SPOT_FROM_GO returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_GO_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_GO_EXTERNAL() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_GO_EXTERNAL returns the LAST_TRADE_SPOT_FROM_GO_EXTERNAL field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_GO_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_GO_EXTERNALOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_GO_EXTERNALOk returns a tuple with the LAST_TRADE_SPOT_FROM_GO_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_GO_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_GO_EXTERNAL(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_GO_EXTERNAL sets LAST_TRADE_SPOT_FROM_GO_EXTERNAL field to given value.

### HasLAST_TRADE_SPOT_FROM_GO_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_GO_EXTERNAL() bool`

HasLAST_TRADE_SPOT_FROM_GO_EXTERNAL returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_POLLING

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_POLLING() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_POLLING returns the LAST_TRADE_SPOT_FROM_POLLING field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_POLLINGOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_POLLINGOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_POLLINGOk returns a tuple with the LAST_TRADE_SPOT_FROM_POLLING field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_POLLING

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_POLLING(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_POLLING sets LAST_TRADE_SPOT_FROM_POLLING field to given value.

### HasLAST_TRADE_SPOT_FROM_POLLING

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_POLLING() bool`

HasLAST_TRADE_SPOT_FROM_POLLING returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_POLLING_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_POLLING_EXTERNAL() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_POLLING_EXTERNAL returns the LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_POLLING_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_POLLING_EXTERNALOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_POLLING_EXTERNALOk returns a tuple with the LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_POLLING_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_POLLING_EXTERNAL(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_POLLING_EXTERNAL sets LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL field to given value.

### HasLAST_TRADE_SPOT_FROM_POLLING_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_POLLING_EXTERNAL() bool`

HasLAST_TRADE_SPOT_FROM_POLLING_EXTERNAL returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_STREAMING

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_STREAMING() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_STREAMING returns the LAST_TRADE_SPOT_FROM_STREAMING field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_STREAMINGOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_STREAMINGOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_STREAMINGOk returns a tuple with the LAST_TRADE_SPOT_FROM_STREAMING field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_STREAMING

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_STREAMING(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_STREAMING sets LAST_TRADE_SPOT_FROM_STREAMING field to given value.

### HasLAST_TRADE_SPOT_FROM_STREAMING

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_STREAMING() bool`

HasLAST_TRADE_SPOT_FROM_STREAMING returns a boolean if a field has been set.

### GetLAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL() map[string]interface{}`

GetLAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL returns the LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL field if non-nil, zero value otherwise.

### GetLAST_TRADE_SPOT_FROM_STREAMING_EXTERNALOk

`func (o *SPOTINSTRUMENTMETADATA) GetLAST_TRADE_SPOT_FROM_STREAMING_EXTERNALOk() (*map[string]interface{}, bool)`

GetLAST_TRADE_SPOT_FROM_STREAMING_EXTERNALOk returns a tuple with the LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) SetLAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL(v map[string]interface{})`

SetLAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL sets LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL field to given value.

### HasLAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL

`func (o *SPOTINSTRUMENTMETADATA) HasLAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL() bool`

HasLAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL returns a boolean if a field has been set.

### GetMETADATA_VERSION

`func (o *SPOTINSTRUMENTMETADATA) GetMETADATA_VERSION() int32`

GetMETADATA_VERSION returns the METADATA_VERSION field if non-nil, zero value otherwise.

### GetMETADATA_VERSIONOk

`func (o *SPOTINSTRUMENTMETADATA) GetMETADATA_VERSIONOk() (*int32, bool)`

GetMETADATA_VERSIONOk returns a tuple with the METADATA_VERSION field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMETADATA_VERSION

`func (o *SPOTINSTRUMENTMETADATA) SetMETADATA_VERSION(v int32)`

SetMETADATA_VERSION sets METADATA_VERSION field to given value.

### HasMETADATA_VERSION

`func (o *SPOTINSTRUMENTMETADATA) HasMETADATA_VERSION() bool`

HasMETADATA_VERSION returns a boolean if a field has been set.

### GetPROCESSING_TRADES_FROM_BLOB_STATUS

`func (o *SPOTINSTRUMENTMETADATA) GetPROCESSING_TRADES_FROM_BLOB_STATUS() string`

GetPROCESSING_TRADES_FROM_BLOB_STATUS returns the PROCESSING_TRADES_FROM_BLOB_STATUS field if non-nil, zero value otherwise.

### GetPROCESSING_TRADES_FROM_BLOB_STATUSOk

`func (o *SPOTINSTRUMENTMETADATA) GetPROCESSING_TRADES_FROM_BLOB_STATUSOk() (*string, bool)`

GetPROCESSING_TRADES_FROM_BLOB_STATUSOk returns a tuple with the PROCESSING_TRADES_FROM_BLOB_STATUS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPROCESSING_TRADES_FROM_BLOB_STATUS

`func (o *SPOTINSTRUMENTMETADATA) SetPROCESSING_TRADES_FROM_BLOB_STATUS(v string)`

SetPROCESSING_TRADES_FROM_BLOB_STATUS sets PROCESSING_TRADES_FROM_BLOB_STATUS field to given value.

### HasPROCESSING_TRADES_FROM_BLOB_STATUS

`func (o *SPOTINSTRUMENTMETADATA) HasPROCESSING_TRADES_FROM_BLOB_STATUS() bool`

HasPROCESSING_TRADES_FROM_BLOB_STATUS returns a boolean if a field has been set.

### GetTOTAL_TRADES_SPOT

`func (o *SPOTINSTRUMENTMETADATA) GetTOTAL_TRADES_SPOT() int32`

GetTOTAL_TRADES_SPOT returns the TOTAL_TRADES_SPOT field if non-nil, zero value otherwise.

### GetTOTAL_TRADES_SPOTOk

`func (o *SPOTINSTRUMENTMETADATA) GetTOTAL_TRADES_SPOTOk() (*int32, bool)`

GetTOTAL_TRADES_SPOTOk returns a tuple with the TOTAL_TRADES_SPOT field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTOTAL_TRADES_SPOT

`func (o *SPOTINSTRUMENTMETADATA) SetTOTAL_TRADES_SPOT(v int32)`

SetTOTAL_TRADES_SPOT sets TOTAL_TRADES_SPOT field to given value.

### HasTOTAL_TRADES_SPOT

`func (o *SPOTINSTRUMENTMETADATA) HasTOTAL_TRADES_SPOT() bool`

HasTOTAL_TRADES_SPOT returns a boolean if a field has been set.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA() map[string]interface{}`

GetUNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA returns the UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA field if non-nil, zero value otherwise.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATAOk

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATAOk() (*map[string]interface{}, bool)`

GetUNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATAOk returns a tuple with the UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) SetUNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA(v map[string]interface{})`

SetUNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA sets UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA field to given value.

### HasUNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) HasUNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA() bool`

HasUNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA returns a boolean if a field has been set.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA() map[string]interface{}`

GetUNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA returns the UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA field if non-nil, zero value otherwise.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATAOk

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATAOk() (*map[string]interface{}, bool)`

GetUNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATAOk returns a tuple with the UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) SetUNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA(v map[string]interface{})`

SetUNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA sets UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA field to given value.

### HasUNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) HasUNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA() bool`

HasUNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA returns a boolean if a field has been set.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA() map[string]interface{}`

GetUNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA returns the UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA field if non-nil, zero value otherwise.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATAOk

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATAOk() (*map[string]interface{}, bool)`

GetUNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATAOk returns a tuple with the UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) SetUNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA(v map[string]interface{})`

SetUNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA sets UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA field to given value.

### HasUNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) HasUNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA() bool`

HasUNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA returns a boolean if a field has been set.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA() map[string]interface{}`

GetUNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA returns the UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA field if non-nil, zero value otherwise.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATAOk

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATAOk() (*map[string]interface{}, bool)`

GetUNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATAOk returns a tuple with the UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) SetUNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA(v map[string]interface{})`

SetUNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA sets UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA field to given value.

### HasUNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) HasUNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA() bool`

HasUNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA returns a boolean if a field has been set.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA() map[string]interface{}`

GetUNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA returns the UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA field if non-nil, zero value otherwise.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATAOk

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATAOk() (*map[string]interface{}, bool)`

GetUNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATAOk returns a tuple with the UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) SetUNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA(v map[string]interface{})`

SetUNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA sets UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA field to given value.

### HasUNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) HasUNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA() bool`

HasUNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA returns a boolean if a field has been set.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA() map[string]interface{}`

GetUNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA returns the UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA field if non-nil, zero value otherwise.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATAOk

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATAOk() (*map[string]interface{}, bool)`

GetUNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATAOk returns a tuple with the UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) SetUNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA(v map[string]interface{})`

SetUNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA sets UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA field to given value.

### HasUNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) HasUNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA() bool`

HasUNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA returns a boolean if a field has been set.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA() map[string]interface{}`

GetUNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA returns the UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA field if non-nil, zero value otherwise.

### GetUNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATAOk

`func (o *SPOTINSTRUMENTMETADATA) GetUNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATAOk() (*map[string]interface{}, bool)`

GetUNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATAOk returns a tuple with the UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) SetUNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA(v map[string]interface{})`

SetUNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA sets UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA field to given value.

### HasUNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA

`func (o *SPOTINSTRUMENTMETADATA) HasUNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA() bool`

HasUNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


