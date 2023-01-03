/*
 * spot_instrument_metadata.h
 *
 * 
 */

#ifndef _spot_instrument_metadata_H_
#define _spot_instrument_metadata_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct spot_instrument_metadata_t spot_instrument_metadata_t;

#include "object.h"



typedef struct spot_instrument_metadata_t {
    int first_seen_on_blob_ts; //numeric
    int first_seen_on_fix_ts; //numeric
    int first_seen_on_hardcoded_ts; //numeric
    int first_seen_on_index_composition_ts; //numeric
    int first_seen_on_nsq_ts; //numeric
    int first_seen_on_polling_ts; //numeric
    int first_seen_on_streaming_ts; //numeric
    object_t *first_trade_spot_from_backfill; //object
    object_t *first_trade_spot_from_backfill_external; //object
    object_t *first_trade_spot_from_blob; //object
    object_t *first_trade_spot_from_blob_external; //object
    object_t *first_trade_spot_from_calculated; //object
    object_t *first_trade_spot_from_calculated_external; //object
    object_t *first_trade_spot_from_fix; //object
    object_t *first_trade_spot_from_fix_external; //object
    object_t *first_trade_spot_from_go; //object
    object_t *first_trade_spot_from_go_external; //object
    object_t *first_trade_spot_from_polling; //object
    object_t *first_trade_spot_from_polling_external; //object
    object_t *first_trade_spot_from_streaming; //object
    object_t *first_trade_spot_from_streaming_external; //object
    char *host_migration_destination; // string
    char *host_migration_source; // string
    char *host_migration_status; // string
    char *instrument; // string
    char *instrument_external_data; // string
    object_t *instrument_mapping; //object
    list_t *instrument_mapping_history; //primitive container
    char *instrument_source_backfill; // string
    char *instrument_source_blob; // string
    char *instrument_source_calculated; // string
    char *instrument_source_fix; // string
    char *instrument_source_go; // string
    char *instrument_source_polling; // string
    char *instrument_source_streaming; // string
    char *instrument_status; // string
    object_t *instrument_trade_spot_from_backfill_last_proxied_rest_request; //object
    int instrument_trade_spot_from_backfill_rest_uri_last_request_ts; //numeric
    int instrument_trade_spot_from_backfill_rest_uri_last_response_ts; //numeric
    int instrument_trade_spot_from_backfill_rest_uri_next_request_ts; //numeric
    object_t *instrument_trade_spot_from_blob_last_proxied_rest_request; //object
    int instrument_trade_spot_from_blob_rest_uri_last_request_ts; //numeric
    int instrument_trade_spot_from_blob_rest_uri_last_response_ts; //numeric
    int instrument_trade_spot_from_blob_rest_uri_next_request_ts; //numeric
    object_t *instrument_trade_spot_from_calculated_last_proxied_rest_request; //object
    int instrument_trade_spot_from_calculated_rest_uri_last_request_ts; //numeric
    int instrument_trade_spot_from_calculated_rest_uri_last_response_ts; //numeric
    int instrument_trade_spot_from_calculated_rest_uri_next_request_ts; //numeric
    object_t *instrument_trade_spot_from_fix_last_proxied_rest_request; //object
    int instrument_trade_spot_from_fix_rest_uri_last_request_ts; //numeric
    int instrument_trade_spot_from_fix_rest_uri_last_response_ts; //numeric
    int instrument_trade_spot_from_fix_rest_uri_next_request_ts; //numeric
    object_t *instrument_trade_spot_from_go_last_proxied_rest_request; //object
    int instrument_trade_spot_from_go_rest_uri_last_request_ts; //numeric
    int instrument_trade_spot_from_go_rest_uri_last_response_ts; //numeric
    int instrument_trade_spot_from_go_rest_uri_next_request_ts; //numeric
    object_t *instrument_trade_spot_from_polling_last_proxied_rest_request; //object
    int instrument_trade_spot_from_polling_rest_uri_last_request_ts; //numeric
    int instrument_trade_spot_from_polling_rest_uri_last_response_ts; //numeric
    int instrument_trade_spot_from_polling_rest_uri_next_request_ts; //numeric
    object_t *instrument_trade_spot_from_streaming_last_proxied_rest_request; //object
    int instrument_trade_spot_from_streaming_rest_uri_last_request_ts; //numeric
    int instrument_trade_spot_from_streaming_rest_uri_last_response_ts; //numeric
    int instrument_trade_spot_from_streaming_rest_uri_next_request_ts; //numeric
    int instrument_trade_spot_is_ready_for_streaming_integration; //boolean
    char *instrument_trade_spot_rest_uri; // string
    char *instrument_trade_spot_rest_url; // string
    char *instrument_trade_spot_streaming_subscription; // string
    int last_concurrent_batch_of_trades_spot_ms; //numeric
    int last_seen_on_blob_ts; //numeric
    int last_seen_on_fix_ts; //numeric
    int last_seen_on_hardcoded_ts; //numeric
    int last_seen_on_index_composition_ts; //numeric
    int last_seen_on_nsq_ts; //numeric
    int last_seen_on_polling_ts; //numeric
    int last_seen_on_streaming_ts; //numeric
    object_t *last_trade_spot_from_backfill; //object
    object_t *last_trade_spot_from_backfill_external; //object
    object_t *last_trade_spot_from_blob; //object
    object_t *last_trade_spot_from_blob_external; //object
    object_t *last_trade_spot_from_calculated; //object
    object_t *last_trade_spot_from_calculated_external; //object
    object_t *last_trade_spot_from_fix; //object
    object_t *last_trade_spot_from_fix_external; //object
    object_t *last_trade_spot_from_go; //object
    object_t *last_trade_spot_from_go_external; //object
    object_t *last_trade_spot_from_polling; //object
    object_t *last_trade_spot_from_polling_external; //object
    object_t *last_trade_spot_from_streaming; //object
    object_t *last_trade_spot_from_streaming_external; //object
    int metadata_version; //numeric
    char *processing_trades_from_blob_status; // string
    int total_trades_spot; //numeric
    object_t *unstructured_trade_spot_from_backfill_internal_data; //object
    object_t *unstructured_trade_spot_from_blob_internal_data; //object
    object_t *unstructured_trade_spot_from_calculated_internal_data; //object
    object_t *unstructured_trade_spot_from_fix_internal_data; //object
    object_t *unstructured_trade_spot_from_go_internal_data; //object
    object_t *unstructured_trade_spot_from_polling_internal_data; //object
    object_t *unstructured_trade_spot_from_streaming_internal_data; //object

} spot_instrument_metadata_t;

spot_instrument_metadata_t *spot_instrument_metadata_create(
    int first_seen_on_blob_ts,
    int first_seen_on_fix_ts,
    int first_seen_on_hardcoded_ts,
    int first_seen_on_index_composition_ts,
    int first_seen_on_nsq_ts,
    int first_seen_on_polling_ts,
    int first_seen_on_streaming_ts,
    object_t *first_trade_spot_from_backfill,
    object_t *first_trade_spot_from_backfill_external,
    object_t *first_trade_spot_from_blob,
    object_t *first_trade_spot_from_blob_external,
    object_t *first_trade_spot_from_calculated,
    object_t *first_trade_spot_from_calculated_external,
    object_t *first_trade_spot_from_fix,
    object_t *first_trade_spot_from_fix_external,
    object_t *first_trade_spot_from_go,
    object_t *first_trade_spot_from_go_external,
    object_t *first_trade_spot_from_polling,
    object_t *first_trade_spot_from_polling_external,
    object_t *first_trade_spot_from_streaming,
    object_t *first_trade_spot_from_streaming_external,
    char *host_migration_destination,
    char *host_migration_source,
    char *host_migration_status,
    char *instrument,
    char *instrument_external_data,
    object_t *instrument_mapping,
    list_t *instrument_mapping_history,
    char *instrument_source_backfill,
    char *instrument_source_blob,
    char *instrument_source_calculated,
    char *instrument_source_fix,
    char *instrument_source_go,
    char *instrument_source_polling,
    char *instrument_source_streaming,
    char *instrument_status,
    object_t *instrument_trade_spot_from_backfill_last_proxied_rest_request,
    int instrument_trade_spot_from_backfill_rest_uri_last_request_ts,
    int instrument_trade_spot_from_backfill_rest_uri_last_response_ts,
    int instrument_trade_spot_from_backfill_rest_uri_next_request_ts,
    object_t *instrument_trade_spot_from_blob_last_proxied_rest_request,
    int instrument_trade_spot_from_blob_rest_uri_last_request_ts,
    int instrument_trade_spot_from_blob_rest_uri_last_response_ts,
    int instrument_trade_spot_from_blob_rest_uri_next_request_ts,
    object_t *instrument_trade_spot_from_calculated_last_proxied_rest_request,
    int instrument_trade_spot_from_calculated_rest_uri_last_request_ts,
    int instrument_trade_spot_from_calculated_rest_uri_last_response_ts,
    int instrument_trade_spot_from_calculated_rest_uri_next_request_ts,
    object_t *instrument_trade_spot_from_fix_last_proxied_rest_request,
    int instrument_trade_spot_from_fix_rest_uri_last_request_ts,
    int instrument_trade_spot_from_fix_rest_uri_last_response_ts,
    int instrument_trade_spot_from_fix_rest_uri_next_request_ts,
    object_t *instrument_trade_spot_from_go_last_proxied_rest_request,
    int instrument_trade_spot_from_go_rest_uri_last_request_ts,
    int instrument_trade_spot_from_go_rest_uri_last_response_ts,
    int instrument_trade_spot_from_go_rest_uri_next_request_ts,
    object_t *instrument_trade_spot_from_polling_last_proxied_rest_request,
    int instrument_trade_spot_from_polling_rest_uri_last_request_ts,
    int instrument_trade_spot_from_polling_rest_uri_last_response_ts,
    int instrument_trade_spot_from_polling_rest_uri_next_request_ts,
    object_t *instrument_trade_spot_from_streaming_last_proxied_rest_request,
    int instrument_trade_spot_from_streaming_rest_uri_last_request_ts,
    int instrument_trade_spot_from_streaming_rest_uri_last_response_ts,
    int instrument_trade_spot_from_streaming_rest_uri_next_request_ts,
    int instrument_trade_spot_is_ready_for_streaming_integration,
    char *instrument_trade_spot_rest_uri,
    char *instrument_trade_spot_rest_url,
    char *instrument_trade_spot_streaming_subscription,
    int last_concurrent_batch_of_trades_spot_ms,
    int last_seen_on_blob_ts,
    int last_seen_on_fix_ts,
    int last_seen_on_hardcoded_ts,
    int last_seen_on_index_composition_ts,
    int last_seen_on_nsq_ts,
    int last_seen_on_polling_ts,
    int last_seen_on_streaming_ts,
    object_t *last_trade_spot_from_backfill,
    object_t *last_trade_spot_from_backfill_external,
    object_t *last_trade_spot_from_blob,
    object_t *last_trade_spot_from_blob_external,
    object_t *last_trade_spot_from_calculated,
    object_t *last_trade_spot_from_calculated_external,
    object_t *last_trade_spot_from_fix,
    object_t *last_trade_spot_from_fix_external,
    object_t *last_trade_spot_from_go,
    object_t *last_trade_spot_from_go_external,
    object_t *last_trade_spot_from_polling,
    object_t *last_trade_spot_from_polling_external,
    object_t *last_trade_spot_from_streaming,
    object_t *last_trade_spot_from_streaming_external,
    int metadata_version,
    char *processing_trades_from_blob_status,
    int total_trades_spot,
    object_t *unstructured_trade_spot_from_backfill_internal_data,
    object_t *unstructured_trade_spot_from_blob_internal_data,
    object_t *unstructured_trade_spot_from_calculated_internal_data,
    object_t *unstructured_trade_spot_from_fix_internal_data,
    object_t *unstructured_trade_spot_from_go_internal_data,
    object_t *unstructured_trade_spot_from_polling_internal_data,
    object_t *unstructured_trade_spot_from_streaming_internal_data
);

void spot_instrument_metadata_free(spot_instrument_metadata_t *spot_instrument_metadata);

spot_instrument_metadata_t *spot_instrument_metadata_parseFromJSON(cJSON *spot_instrument_metadataJSON);

cJSON *spot_instrument_metadata_convertToJSON(spot_instrument_metadata_t *spot_instrument_metadata);

#endif /* _spot_instrument_metadata_H_ */

