# SPOTINSTRUMENTMETADATA


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_seen_on_blob_ts** | **int** | This is the first time instrument was seen on instrumentListSourceType BLOB. | [optional] 
**first_seen_on_fix_ts** | **int** | This is the first time instrument was seen on instrumentListSourceType FIX. | [optional] 
**first_seen_on_hardcoded_ts** | **int** | This is the first time instrument was seen on instrumentListSourceType HARDCODED. | [optional] 
**first_seen_on_index_composition_ts** | **int** | This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. | [optional] 
**first_seen_on_nsq_ts** | **int** | This is the first time instrument was seen on instrumentListSourceType NSQ. | [optional] 
**first_seen_on_polling_ts** | **int** | This is the first time instrument was seen on instrumentListSourceType POLLING. | [optional] 
**first_seen_on_streaming_ts** | **int** | This is the first time instrument was seen on instrumentListSourceType STREAMING. | [optional] 
**first_trade_spot_from_backfill** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**first_trade_spot_from_backfill_external** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**first_trade_spot_from_blob** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**first_trade_spot_from_blob_external** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**first_trade_spot_from_calculated** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**first_trade_spot_from_calculated_external** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**first_trade_spot_from_fix** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**first_trade_spot_from_fix_external** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**first_trade_spot_from_go** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**first_trade_spot_from_go_external** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**first_trade_spot_from_polling** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**first_trade_spot_from_polling_external** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**first_trade_spot_from_streaming** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**first_trade_spot_from_streaming_external** | **object** | This is the first TRADE_SPOT that we have seen on the specific source type in external format. | [optional] 
**host_migration_destination** | **str** | The migration destination vm hostname. | [optional] 
**host_migration_source** | **str** | The migration source vm hostname. | [optional] 
**host_migration_status** | **str** | The migration status of the symbol, we only poll / stream / connect empty or SETTLED | [optional] 
**instrument** | **str** | The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&amp;? | [optional] 
**instrument_external_data** | **str** | The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange. | [optional] 
**instrument_mapping** | **object** | The current mapping information for this instrument | [optional] 
**instrument_mapping_history** | **List[str]** | Historical mapping information for this instrument | [optional] [default to []]
**instrument_source_backfill** | **str** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**instrument_source_blob** | **str** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**instrument_source_calculated** | **str** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**instrument_source_fix** | **str** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**instrument_source_go** | **str** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**instrument_source_polling** | **str** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**instrument_source_streaming** | **str** | Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. | [optional] 
**instrument_status** | **str** | The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data. | [optional] [default to 'ACTIVE']
**instrument_trade_spot_from_backfill_last_proxied_rest_request** | **object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_backfill_rest_uri_last_request_ts** | **int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_backfill_rest_uri_last_response_ts** | **int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**instrument_trade_spot_from_backfill_rest_uri_next_request_ts** | **int** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**instrument_trade_spot_from_blob_last_proxied_rest_request** | **object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_blob_rest_uri_last_request_ts** | **int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_blob_rest_uri_last_response_ts** | **int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**instrument_trade_spot_from_blob_rest_uri_next_request_ts** | **int** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**instrument_trade_spot_from_calculated_last_proxied_rest_request** | **object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_calculated_rest_uri_last_request_ts** | **int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_calculated_rest_uri_last_response_ts** | **int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**instrument_trade_spot_from_calculated_rest_uri_next_request_ts** | **int** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**instrument_trade_spot_from_fix_last_proxied_rest_request** | **object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_fix_rest_uri_last_request_ts** | **int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_fix_rest_uri_last_response_ts** | **int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**instrument_trade_spot_from_fix_rest_uri_next_request_ts** | **int** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**instrument_trade_spot_from_go_last_proxied_rest_request** | **object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_go_rest_uri_last_request_ts** | **int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_go_rest_uri_last_response_ts** | **int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**instrument_trade_spot_from_go_rest_uri_next_request_ts** | **int** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**instrument_trade_spot_from_polling_last_proxied_rest_request** | **object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_polling_rest_uri_last_request_ts** | **int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_polling_rest_uri_last_response_ts** | **int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**instrument_trade_spot_from_polling_rest_uri_next_request_ts** | **int** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**instrument_trade_spot_from_streaming_last_proxied_rest_request** | **object** | The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_streaming_rest_uri_last_request_ts** | **int** | The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_from_streaming_rest_uri_last_response_ts** | **int** | The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. | [optional] 
**instrument_trade_spot_from_streaming_rest_uri_next_request_ts** | **int** | The next time we expect to make a request for TRADE_SPOT on this instrument. | [optional] 
**instrument_trade_spot_is_ready_for_streaming_integration** | **bool** | This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration. | [optional] [default to False]
**instrument_trade_spot_rest_uri** | **str** | This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT. | [optional] 
**instrument_trade_spot_rest_url** | **str** | The URL we send to the proxy swarm to get TRADE_SPOT for the instrument. | [optional] 
**instrument_trade_spot_streaming_subscription** | **str** | This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument. | [optional] 
**last_concurrent_batch_of_trades_spot_ms** | **int** | The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter | [optional] 
**last_seen_on_blob_ts** | **int** | This is the last time instrument was seen on instrumentListSourceType BLOB. | [optional] 
**last_seen_on_fix_ts** | **int** | This is the last time instrument was seen on instrumentListSourceType FIX. | [optional] 
**last_seen_on_hardcoded_ts** | **int** | This is the last time instrument was seen on instrumentListSourceType HARDCODED. | [optional] 
**last_seen_on_index_composition_ts** | **int** | This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. | [optional] 
**last_seen_on_nsq_ts** | **int** | This is the last time instrument was seen on instrumentListSourceType NSQ. | [optional] 
**last_seen_on_polling_ts** | **int** | This is the last time instrument was seen on instrumentListSourceType POLLING. | [optional] 
**last_seen_on_streaming_ts** | **int** | This is the last time instrument was seen on instrumentListSourceType STREAMING. | [optional] 
**last_trade_spot_from_backfill** | **object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**last_trade_spot_from_backfill_external** | **object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**last_trade_spot_from_blob** | **object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**last_trade_spot_from_blob_external** | **object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**last_trade_spot_from_calculated** | **object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**last_trade_spot_from_calculated_external** | **object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**last_trade_spot_from_fix** | **object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**last_trade_spot_from_fix_external** | **object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**last_trade_spot_from_go** | **object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**last_trade_spot_from_go_external** | **object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**last_trade_spot_from_polling** | **object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**last_trade_spot_from_polling_external** | **object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**last_trade_spot_from_streaming** | **object** | This is the last TRADE_SPOT that we have seen on the specific source type in internal format. | [optional] 
**last_trade_spot_from_streaming_external** | **object** | This is the last TRADE_SPOT that we have seen on the specific trade source in external format. | [optional] 
**metadata_version** | **int** | The version of metadata, used for version conversions/migrates. | [optional] [default to 4]
**processing_trades_from_blob_status** | **str** | This states the status of blob migration for this intrument on this exchange. | [optional] 
**total_trades_spot** | **int** | This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument | [optional] 
**unstructured_trade_spot_from_backfill_internal_data** | **object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**unstructured_trade_spot_from_blob_internal_data** | **object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**unstructured_trade_spot_from_calculated_internal_data** | **object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**unstructured_trade_spot_from_fix_internal_data** | **object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**unstructured_trade_spot_from_go_internal_data** | **object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**unstructured_trade_spot_from_polling_internal_data** | **object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 
**unstructured_trade_spot_from_streaming_internal_data** | **object** | This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. | [optional] 

## Example

```python
from openapi_client.models.spotinstrumentmetadata import SPOTINSTRUMENTMETADATA

# TODO update the JSON string below
json = "{}"
# create an instance of SPOTINSTRUMENTMETADATA from a JSON string
spotinstrumentmetadata_instance = SPOTINSTRUMENTMETADATA.from_json(json)
# print the JSON string representation of the object
print SPOTINSTRUMENTMETADATA.to_json()

# convert the object into a dict
spotinstrumentmetadata_dict = spotinstrumentmetadata_instance.to_dict()
# create an instance of SPOTINSTRUMENTMETADATA from a dict
spotinstrumentmetadata_form_dict = spotinstrumentmetadata.from_dict(spotinstrumentmetadata_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


