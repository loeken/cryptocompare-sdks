#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "spot_instrument_metadata.h"



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
    ) {
    spot_instrument_metadata_t *spot_instrument_metadata_local_var = malloc(sizeof(spot_instrument_metadata_t));
    if (!spot_instrument_metadata_local_var) {
        return NULL;
    }
    spot_instrument_metadata_local_var->first_seen_on_blob_ts = first_seen_on_blob_ts;
    spot_instrument_metadata_local_var->first_seen_on_fix_ts = first_seen_on_fix_ts;
    spot_instrument_metadata_local_var->first_seen_on_hardcoded_ts = first_seen_on_hardcoded_ts;
    spot_instrument_metadata_local_var->first_seen_on_index_composition_ts = first_seen_on_index_composition_ts;
    spot_instrument_metadata_local_var->first_seen_on_nsq_ts = first_seen_on_nsq_ts;
    spot_instrument_metadata_local_var->first_seen_on_polling_ts = first_seen_on_polling_ts;
    spot_instrument_metadata_local_var->first_seen_on_streaming_ts = first_seen_on_streaming_ts;
    spot_instrument_metadata_local_var->first_trade_spot_from_backfill = first_trade_spot_from_backfill;
    spot_instrument_metadata_local_var->first_trade_spot_from_backfill_external = first_trade_spot_from_backfill_external;
    spot_instrument_metadata_local_var->first_trade_spot_from_blob = first_trade_spot_from_blob;
    spot_instrument_metadata_local_var->first_trade_spot_from_blob_external = first_trade_spot_from_blob_external;
    spot_instrument_metadata_local_var->first_trade_spot_from_calculated = first_trade_spot_from_calculated;
    spot_instrument_metadata_local_var->first_trade_spot_from_calculated_external = first_trade_spot_from_calculated_external;
    spot_instrument_metadata_local_var->first_trade_spot_from_fix = first_trade_spot_from_fix;
    spot_instrument_metadata_local_var->first_trade_spot_from_fix_external = first_trade_spot_from_fix_external;
    spot_instrument_metadata_local_var->first_trade_spot_from_go = first_trade_spot_from_go;
    spot_instrument_metadata_local_var->first_trade_spot_from_go_external = first_trade_spot_from_go_external;
    spot_instrument_metadata_local_var->first_trade_spot_from_polling = first_trade_spot_from_polling;
    spot_instrument_metadata_local_var->first_trade_spot_from_polling_external = first_trade_spot_from_polling_external;
    spot_instrument_metadata_local_var->first_trade_spot_from_streaming = first_trade_spot_from_streaming;
    spot_instrument_metadata_local_var->first_trade_spot_from_streaming_external = first_trade_spot_from_streaming_external;
    spot_instrument_metadata_local_var->host_migration_destination = host_migration_destination;
    spot_instrument_metadata_local_var->host_migration_source = host_migration_source;
    spot_instrument_metadata_local_var->host_migration_status = host_migration_status;
    spot_instrument_metadata_local_var->instrument = instrument;
    spot_instrument_metadata_local_var->instrument_external_data = instrument_external_data;
    spot_instrument_metadata_local_var->instrument_mapping = instrument_mapping;
    spot_instrument_metadata_local_var->instrument_mapping_history = instrument_mapping_history;
    spot_instrument_metadata_local_var->instrument_source_backfill = instrument_source_backfill;
    spot_instrument_metadata_local_var->instrument_source_blob = instrument_source_blob;
    spot_instrument_metadata_local_var->instrument_source_calculated = instrument_source_calculated;
    spot_instrument_metadata_local_var->instrument_source_fix = instrument_source_fix;
    spot_instrument_metadata_local_var->instrument_source_go = instrument_source_go;
    spot_instrument_metadata_local_var->instrument_source_polling = instrument_source_polling;
    spot_instrument_metadata_local_var->instrument_source_streaming = instrument_source_streaming;
    spot_instrument_metadata_local_var->instrument_status = instrument_status;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_backfill_last_proxied_rest_request = instrument_trade_spot_from_backfill_last_proxied_rest_request;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_backfill_rest_uri_last_request_ts = instrument_trade_spot_from_backfill_rest_uri_last_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_backfill_rest_uri_last_response_ts = instrument_trade_spot_from_backfill_rest_uri_last_response_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_backfill_rest_uri_next_request_ts = instrument_trade_spot_from_backfill_rest_uri_next_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_blob_last_proxied_rest_request = instrument_trade_spot_from_blob_last_proxied_rest_request;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_blob_rest_uri_last_request_ts = instrument_trade_spot_from_blob_rest_uri_last_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_blob_rest_uri_last_response_ts = instrument_trade_spot_from_blob_rest_uri_last_response_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_blob_rest_uri_next_request_ts = instrument_trade_spot_from_blob_rest_uri_next_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_calculated_last_proxied_rest_request = instrument_trade_spot_from_calculated_last_proxied_rest_request;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_calculated_rest_uri_last_request_ts = instrument_trade_spot_from_calculated_rest_uri_last_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_calculated_rest_uri_last_response_ts = instrument_trade_spot_from_calculated_rest_uri_last_response_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_calculated_rest_uri_next_request_ts = instrument_trade_spot_from_calculated_rest_uri_next_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_fix_last_proxied_rest_request = instrument_trade_spot_from_fix_last_proxied_rest_request;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_fix_rest_uri_last_request_ts = instrument_trade_spot_from_fix_rest_uri_last_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_fix_rest_uri_last_response_ts = instrument_trade_spot_from_fix_rest_uri_last_response_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_fix_rest_uri_next_request_ts = instrument_trade_spot_from_fix_rest_uri_next_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_go_last_proxied_rest_request = instrument_trade_spot_from_go_last_proxied_rest_request;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_go_rest_uri_last_request_ts = instrument_trade_spot_from_go_rest_uri_last_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_go_rest_uri_last_response_ts = instrument_trade_spot_from_go_rest_uri_last_response_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_go_rest_uri_next_request_ts = instrument_trade_spot_from_go_rest_uri_next_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_polling_last_proxied_rest_request = instrument_trade_spot_from_polling_last_proxied_rest_request;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_polling_rest_uri_last_request_ts = instrument_trade_spot_from_polling_rest_uri_last_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_polling_rest_uri_last_response_ts = instrument_trade_spot_from_polling_rest_uri_last_response_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_polling_rest_uri_next_request_ts = instrument_trade_spot_from_polling_rest_uri_next_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_streaming_last_proxied_rest_request = instrument_trade_spot_from_streaming_last_proxied_rest_request;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_streaming_rest_uri_last_request_ts = instrument_trade_spot_from_streaming_rest_uri_last_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_streaming_rest_uri_last_response_ts = instrument_trade_spot_from_streaming_rest_uri_last_response_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_from_streaming_rest_uri_next_request_ts = instrument_trade_spot_from_streaming_rest_uri_next_request_ts;
    spot_instrument_metadata_local_var->instrument_trade_spot_is_ready_for_streaming_integration = instrument_trade_spot_is_ready_for_streaming_integration;
    spot_instrument_metadata_local_var->instrument_trade_spot_rest_uri = instrument_trade_spot_rest_uri;
    spot_instrument_metadata_local_var->instrument_trade_spot_rest_url = instrument_trade_spot_rest_url;
    spot_instrument_metadata_local_var->instrument_trade_spot_streaming_subscription = instrument_trade_spot_streaming_subscription;
    spot_instrument_metadata_local_var->last_concurrent_batch_of_trades_spot_ms = last_concurrent_batch_of_trades_spot_ms;
    spot_instrument_metadata_local_var->last_seen_on_blob_ts = last_seen_on_blob_ts;
    spot_instrument_metadata_local_var->last_seen_on_fix_ts = last_seen_on_fix_ts;
    spot_instrument_metadata_local_var->last_seen_on_hardcoded_ts = last_seen_on_hardcoded_ts;
    spot_instrument_metadata_local_var->last_seen_on_index_composition_ts = last_seen_on_index_composition_ts;
    spot_instrument_metadata_local_var->last_seen_on_nsq_ts = last_seen_on_nsq_ts;
    spot_instrument_metadata_local_var->last_seen_on_polling_ts = last_seen_on_polling_ts;
    spot_instrument_metadata_local_var->last_seen_on_streaming_ts = last_seen_on_streaming_ts;
    spot_instrument_metadata_local_var->last_trade_spot_from_backfill = last_trade_spot_from_backfill;
    spot_instrument_metadata_local_var->last_trade_spot_from_backfill_external = last_trade_spot_from_backfill_external;
    spot_instrument_metadata_local_var->last_trade_spot_from_blob = last_trade_spot_from_blob;
    spot_instrument_metadata_local_var->last_trade_spot_from_blob_external = last_trade_spot_from_blob_external;
    spot_instrument_metadata_local_var->last_trade_spot_from_calculated = last_trade_spot_from_calculated;
    spot_instrument_metadata_local_var->last_trade_spot_from_calculated_external = last_trade_spot_from_calculated_external;
    spot_instrument_metadata_local_var->last_trade_spot_from_fix = last_trade_spot_from_fix;
    spot_instrument_metadata_local_var->last_trade_spot_from_fix_external = last_trade_spot_from_fix_external;
    spot_instrument_metadata_local_var->last_trade_spot_from_go = last_trade_spot_from_go;
    spot_instrument_metadata_local_var->last_trade_spot_from_go_external = last_trade_spot_from_go_external;
    spot_instrument_metadata_local_var->last_trade_spot_from_polling = last_trade_spot_from_polling;
    spot_instrument_metadata_local_var->last_trade_spot_from_polling_external = last_trade_spot_from_polling_external;
    spot_instrument_metadata_local_var->last_trade_spot_from_streaming = last_trade_spot_from_streaming;
    spot_instrument_metadata_local_var->last_trade_spot_from_streaming_external = last_trade_spot_from_streaming_external;
    spot_instrument_metadata_local_var->metadata_version = metadata_version;
    spot_instrument_metadata_local_var->processing_trades_from_blob_status = processing_trades_from_blob_status;
    spot_instrument_metadata_local_var->total_trades_spot = total_trades_spot;
    spot_instrument_metadata_local_var->unstructured_trade_spot_from_backfill_internal_data = unstructured_trade_spot_from_backfill_internal_data;
    spot_instrument_metadata_local_var->unstructured_trade_spot_from_blob_internal_data = unstructured_trade_spot_from_blob_internal_data;
    spot_instrument_metadata_local_var->unstructured_trade_spot_from_calculated_internal_data = unstructured_trade_spot_from_calculated_internal_data;
    spot_instrument_metadata_local_var->unstructured_trade_spot_from_fix_internal_data = unstructured_trade_spot_from_fix_internal_data;
    spot_instrument_metadata_local_var->unstructured_trade_spot_from_go_internal_data = unstructured_trade_spot_from_go_internal_data;
    spot_instrument_metadata_local_var->unstructured_trade_spot_from_polling_internal_data = unstructured_trade_spot_from_polling_internal_data;
    spot_instrument_metadata_local_var->unstructured_trade_spot_from_streaming_internal_data = unstructured_trade_spot_from_streaming_internal_data;

    return spot_instrument_metadata_local_var;
}


void spot_instrument_metadata_free(spot_instrument_metadata_t *spot_instrument_metadata) {
    if(NULL == spot_instrument_metadata){
        return ;
    }
    listEntry_t *listEntry;
    if (spot_instrument_metadata->first_trade_spot_from_backfill) {
        object_free(spot_instrument_metadata->first_trade_spot_from_backfill);
        spot_instrument_metadata->first_trade_spot_from_backfill = NULL;
    }
    if (spot_instrument_metadata->first_trade_spot_from_backfill_external) {
        object_free(spot_instrument_metadata->first_trade_spot_from_backfill_external);
        spot_instrument_metadata->first_trade_spot_from_backfill_external = NULL;
    }
    if (spot_instrument_metadata->first_trade_spot_from_blob) {
        object_free(spot_instrument_metadata->first_trade_spot_from_blob);
        spot_instrument_metadata->first_trade_spot_from_blob = NULL;
    }
    if (spot_instrument_metadata->first_trade_spot_from_blob_external) {
        object_free(spot_instrument_metadata->first_trade_spot_from_blob_external);
        spot_instrument_metadata->first_trade_spot_from_blob_external = NULL;
    }
    if (spot_instrument_metadata->first_trade_spot_from_calculated) {
        object_free(spot_instrument_metadata->first_trade_spot_from_calculated);
        spot_instrument_metadata->first_trade_spot_from_calculated = NULL;
    }
    if (spot_instrument_metadata->first_trade_spot_from_calculated_external) {
        object_free(spot_instrument_metadata->first_trade_spot_from_calculated_external);
        spot_instrument_metadata->first_trade_spot_from_calculated_external = NULL;
    }
    if (spot_instrument_metadata->first_trade_spot_from_fix) {
        object_free(spot_instrument_metadata->first_trade_spot_from_fix);
        spot_instrument_metadata->first_trade_spot_from_fix = NULL;
    }
    if (spot_instrument_metadata->first_trade_spot_from_fix_external) {
        object_free(spot_instrument_metadata->first_trade_spot_from_fix_external);
        spot_instrument_metadata->first_trade_spot_from_fix_external = NULL;
    }
    if (spot_instrument_metadata->first_trade_spot_from_go) {
        object_free(spot_instrument_metadata->first_trade_spot_from_go);
        spot_instrument_metadata->first_trade_spot_from_go = NULL;
    }
    if (spot_instrument_metadata->first_trade_spot_from_go_external) {
        object_free(spot_instrument_metadata->first_trade_spot_from_go_external);
        spot_instrument_metadata->first_trade_spot_from_go_external = NULL;
    }
    if (spot_instrument_metadata->first_trade_spot_from_polling) {
        object_free(spot_instrument_metadata->first_trade_spot_from_polling);
        spot_instrument_metadata->first_trade_spot_from_polling = NULL;
    }
    if (spot_instrument_metadata->first_trade_spot_from_polling_external) {
        object_free(spot_instrument_metadata->first_trade_spot_from_polling_external);
        spot_instrument_metadata->first_trade_spot_from_polling_external = NULL;
    }
    if (spot_instrument_metadata->first_trade_spot_from_streaming) {
        object_free(spot_instrument_metadata->first_trade_spot_from_streaming);
        spot_instrument_metadata->first_trade_spot_from_streaming = NULL;
    }
    if (spot_instrument_metadata->first_trade_spot_from_streaming_external) {
        object_free(spot_instrument_metadata->first_trade_spot_from_streaming_external);
        spot_instrument_metadata->first_trade_spot_from_streaming_external = NULL;
    }
    if (spot_instrument_metadata->host_migration_destination) {
        free(spot_instrument_metadata->host_migration_destination);
        spot_instrument_metadata->host_migration_destination = NULL;
    }
    if (spot_instrument_metadata->host_migration_source) {
        free(spot_instrument_metadata->host_migration_source);
        spot_instrument_metadata->host_migration_source = NULL;
    }
    if (spot_instrument_metadata->host_migration_status) {
        free(spot_instrument_metadata->host_migration_status);
        spot_instrument_metadata->host_migration_status = NULL;
    }
    if (spot_instrument_metadata->instrument) {
        free(spot_instrument_metadata->instrument);
        spot_instrument_metadata->instrument = NULL;
    }
    if (spot_instrument_metadata->instrument_external_data) {
        free(spot_instrument_metadata->instrument_external_data);
        spot_instrument_metadata->instrument_external_data = NULL;
    }
    if (spot_instrument_metadata->instrument_mapping) {
        object_free(spot_instrument_metadata->instrument_mapping);
        spot_instrument_metadata->instrument_mapping = NULL;
    }
    if (spot_instrument_metadata->instrument_mapping_history) {
        list_ForEach(listEntry, spot_instrument_metadata->instrument_mapping_history) {
            free(listEntry->data);
        }
        list_freeList(spot_instrument_metadata->instrument_mapping_history);
        spot_instrument_metadata->instrument_mapping_history = NULL;
    }
    if (spot_instrument_metadata->instrument_source_backfill) {
        free(spot_instrument_metadata->instrument_source_backfill);
        spot_instrument_metadata->instrument_source_backfill = NULL;
    }
    if (spot_instrument_metadata->instrument_source_blob) {
        free(spot_instrument_metadata->instrument_source_blob);
        spot_instrument_metadata->instrument_source_blob = NULL;
    }
    if (spot_instrument_metadata->instrument_source_calculated) {
        free(spot_instrument_metadata->instrument_source_calculated);
        spot_instrument_metadata->instrument_source_calculated = NULL;
    }
    if (spot_instrument_metadata->instrument_source_fix) {
        free(spot_instrument_metadata->instrument_source_fix);
        spot_instrument_metadata->instrument_source_fix = NULL;
    }
    if (spot_instrument_metadata->instrument_source_go) {
        free(spot_instrument_metadata->instrument_source_go);
        spot_instrument_metadata->instrument_source_go = NULL;
    }
    if (spot_instrument_metadata->instrument_source_polling) {
        free(spot_instrument_metadata->instrument_source_polling);
        spot_instrument_metadata->instrument_source_polling = NULL;
    }
    if (spot_instrument_metadata->instrument_source_streaming) {
        free(spot_instrument_metadata->instrument_source_streaming);
        spot_instrument_metadata->instrument_source_streaming = NULL;
    }
    if (spot_instrument_metadata->instrument_status) {
        free(spot_instrument_metadata->instrument_status);
        spot_instrument_metadata->instrument_status = NULL;
    }
    if (spot_instrument_metadata->instrument_trade_spot_from_backfill_last_proxied_rest_request) {
        object_free(spot_instrument_metadata->instrument_trade_spot_from_backfill_last_proxied_rest_request);
        spot_instrument_metadata->instrument_trade_spot_from_backfill_last_proxied_rest_request = NULL;
    }
    if (spot_instrument_metadata->instrument_trade_spot_from_blob_last_proxied_rest_request) {
        object_free(spot_instrument_metadata->instrument_trade_spot_from_blob_last_proxied_rest_request);
        spot_instrument_metadata->instrument_trade_spot_from_blob_last_proxied_rest_request = NULL;
    }
    if (spot_instrument_metadata->instrument_trade_spot_from_calculated_last_proxied_rest_request) {
        object_free(spot_instrument_metadata->instrument_trade_spot_from_calculated_last_proxied_rest_request);
        spot_instrument_metadata->instrument_trade_spot_from_calculated_last_proxied_rest_request = NULL;
    }
    if (spot_instrument_metadata->instrument_trade_spot_from_fix_last_proxied_rest_request) {
        object_free(spot_instrument_metadata->instrument_trade_spot_from_fix_last_proxied_rest_request);
        spot_instrument_metadata->instrument_trade_spot_from_fix_last_proxied_rest_request = NULL;
    }
    if (spot_instrument_metadata->instrument_trade_spot_from_go_last_proxied_rest_request) {
        object_free(spot_instrument_metadata->instrument_trade_spot_from_go_last_proxied_rest_request);
        spot_instrument_metadata->instrument_trade_spot_from_go_last_proxied_rest_request = NULL;
    }
    if (spot_instrument_metadata->instrument_trade_spot_from_polling_last_proxied_rest_request) {
        object_free(spot_instrument_metadata->instrument_trade_spot_from_polling_last_proxied_rest_request);
        spot_instrument_metadata->instrument_trade_spot_from_polling_last_proxied_rest_request = NULL;
    }
    if (spot_instrument_metadata->instrument_trade_spot_from_streaming_last_proxied_rest_request) {
        object_free(spot_instrument_metadata->instrument_trade_spot_from_streaming_last_proxied_rest_request);
        spot_instrument_metadata->instrument_trade_spot_from_streaming_last_proxied_rest_request = NULL;
    }
    if (spot_instrument_metadata->instrument_trade_spot_rest_uri) {
        free(spot_instrument_metadata->instrument_trade_spot_rest_uri);
        spot_instrument_metadata->instrument_trade_spot_rest_uri = NULL;
    }
    if (spot_instrument_metadata->instrument_trade_spot_rest_url) {
        free(spot_instrument_metadata->instrument_trade_spot_rest_url);
        spot_instrument_metadata->instrument_trade_spot_rest_url = NULL;
    }
    if (spot_instrument_metadata->instrument_trade_spot_streaming_subscription) {
        free(spot_instrument_metadata->instrument_trade_spot_streaming_subscription);
        spot_instrument_metadata->instrument_trade_spot_streaming_subscription = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_backfill) {
        object_free(spot_instrument_metadata->last_trade_spot_from_backfill);
        spot_instrument_metadata->last_trade_spot_from_backfill = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_backfill_external) {
        object_free(spot_instrument_metadata->last_trade_spot_from_backfill_external);
        spot_instrument_metadata->last_trade_spot_from_backfill_external = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_blob) {
        object_free(spot_instrument_metadata->last_trade_spot_from_blob);
        spot_instrument_metadata->last_trade_spot_from_blob = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_blob_external) {
        object_free(spot_instrument_metadata->last_trade_spot_from_blob_external);
        spot_instrument_metadata->last_trade_spot_from_blob_external = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_calculated) {
        object_free(spot_instrument_metadata->last_trade_spot_from_calculated);
        spot_instrument_metadata->last_trade_spot_from_calculated = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_calculated_external) {
        object_free(spot_instrument_metadata->last_trade_spot_from_calculated_external);
        spot_instrument_metadata->last_trade_spot_from_calculated_external = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_fix) {
        object_free(spot_instrument_metadata->last_trade_spot_from_fix);
        spot_instrument_metadata->last_trade_spot_from_fix = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_fix_external) {
        object_free(spot_instrument_metadata->last_trade_spot_from_fix_external);
        spot_instrument_metadata->last_trade_spot_from_fix_external = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_go) {
        object_free(spot_instrument_metadata->last_trade_spot_from_go);
        spot_instrument_metadata->last_trade_spot_from_go = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_go_external) {
        object_free(spot_instrument_metadata->last_trade_spot_from_go_external);
        spot_instrument_metadata->last_trade_spot_from_go_external = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_polling) {
        object_free(spot_instrument_metadata->last_trade_spot_from_polling);
        spot_instrument_metadata->last_trade_spot_from_polling = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_polling_external) {
        object_free(spot_instrument_metadata->last_trade_spot_from_polling_external);
        spot_instrument_metadata->last_trade_spot_from_polling_external = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_streaming) {
        object_free(spot_instrument_metadata->last_trade_spot_from_streaming);
        spot_instrument_metadata->last_trade_spot_from_streaming = NULL;
    }
    if (spot_instrument_metadata->last_trade_spot_from_streaming_external) {
        object_free(spot_instrument_metadata->last_trade_spot_from_streaming_external);
        spot_instrument_metadata->last_trade_spot_from_streaming_external = NULL;
    }
    if (spot_instrument_metadata->processing_trades_from_blob_status) {
        free(spot_instrument_metadata->processing_trades_from_blob_status);
        spot_instrument_metadata->processing_trades_from_blob_status = NULL;
    }
    if (spot_instrument_metadata->unstructured_trade_spot_from_backfill_internal_data) {
        object_free(spot_instrument_metadata->unstructured_trade_spot_from_backfill_internal_data);
        spot_instrument_metadata->unstructured_trade_spot_from_backfill_internal_data = NULL;
    }
    if (spot_instrument_metadata->unstructured_trade_spot_from_blob_internal_data) {
        object_free(spot_instrument_metadata->unstructured_trade_spot_from_blob_internal_data);
        spot_instrument_metadata->unstructured_trade_spot_from_blob_internal_data = NULL;
    }
    if (spot_instrument_metadata->unstructured_trade_spot_from_calculated_internal_data) {
        object_free(spot_instrument_metadata->unstructured_trade_spot_from_calculated_internal_data);
        spot_instrument_metadata->unstructured_trade_spot_from_calculated_internal_data = NULL;
    }
    if (spot_instrument_metadata->unstructured_trade_spot_from_fix_internal_data) {
        object_free(spot_instrument_metadata->unstructured_trade_spot_from_fix_internal_data);
        spot_instrument_metadata->unstructured_trade_spot_from_fix_internal_data = NULL;
    }
    if (spot_instrument_metadata->unstructured_trade_spot_from_go_internal_data) {
        object_free(spot_instrument_metadata->unstructured_trade_spot_from_go_internal_data);
        spot_instrument_metadata->unstructured_trade_spot_from_go_internal_data = NULL;
    }
    if (spot_instrument_metadata->unstructured_trade_spot_from_polling_internal_data) {
        object_free(spot_instrument_metadata->unstructured_trade_spot_from_polling_internal_data);
        spot_instrument_metadata->unstructured_trade_spot_from_polling_internal_data = NULL;
    }
    if (spot_instrument_metadata->unstructured_trade_spot_from_streaming_internal_data) {
        object_free(spot_instrument_metadata->unstructured_trade_spot_from_streaming_internal_data);
        spot_instrument_metadata->unstructured_trade_spot_from_streaming_internal_data = NULL;
    }
    free(spot_instrument_metadata);
}

cJSON *spot_instrument_metadata_convertToJSON(spot_instrument_metadata_t *spot_instrument_metadata) {
    cJSON *item = cJSON_CreateObject();

    // spot_instrument_metadata->first_seen_on_blob_ts
    if(spot_instrument_metadata->first_seen_on_blob_ts) {
    if(cJSON_AddNumberToObject(item, "FIRST_SEEN_ON_BLOB_TS", spot_instrument_metadata->first_seen_on_blob_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->first_seen_on_fix_ts
    if(spot_instrument_metadata->first_seen_on_fix_ts) {
    if(cJSON_AddNumberToObject(item, "FIRST_SEEN_ON_FIX_TS", spot_instrument_metadata->first_seen_on_fix_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->first_seen_on_hardcoded_ts
    if(spot_instrument_metadata->first_seen_on_hardcoded_ts) {
    if(cJSON_AddNumberToObject(item, "FIRST_SEEN_ON_HARDCODED_TS", spot_instrument_metadata->first_seen_on_hardcoded_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->first_seen_on_index_composition_ts
    if(spot_instrument_metadata->first_seen_on_index_composition_ts) {
    if(cJSON_AddNumberToObject(item, "FIRST_SEEN_ON_INDEX_COMPOSITION_TS", spot_instrument_metadata->first_seen_on_index_composition_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->first_seen_on_nsq_ts
    if(spot_instrument_metadata->first_seen_on_nsq_ts) {
    if(cJSON_AddNumberToObject(item, "FIRST_SEEN_ON_NSQ_TS", spot_instrument_metadata->first_seen_on_nsq_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->first_seen_on_polling_ts
    if(spot_instrument_metadata->first_seen_on_polling_ts) {
    if(cJSON_AddNumberToObject(item, "FIRST_SEEN_ON_POLLING_TS", spot_instrument_metadata->first_seen_on_polling_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->first_seen_on_streaming_ts
    if(spot_instrument_metadata->first_seen_on_streaming_ts) {
    if(cJSON_AddNumberToObject(item, "FIRST_SEEN_ON_STREAMING_TS", spot_instrument_metadata->first_seen_on_streaming_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_backfill
    if(spot_instrument_metadata->first_trade_spot_from_backfill) {
    cJSON *first_trade_spot_from_backfill_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_backfill);
    if(first_trade_spot_from_backfill_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_BACKFILL", first_trade_spot_from_backfill_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_backfill_external
    if(spot_instrument_metadata->first_trade_spot_from_backfill_external) {
    cJSON *first_trade_spot_from_backfill_external_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_backfill_external);
    if(first_trade_spot_from_backfill_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL", first_trade_spot_from_backfill_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_blob
    if(spot_instrument_metadata->first_trade_spot_from_blob) {
    cJSON *first_trade_spot_from_blob_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_blob);
    if(first_trade_spot_from_blob_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_BLOB", first_trade_spot_from_blob_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_blob_external
    if(spot_instrument_metadata->first_trade_spot_from_blob_external) {
    cJSON *first_trade_spot_from_blob_external_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_blob_external);
    if(first_trade_spot_from_blob_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL", first_trade_spot_from_blob_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_calculated
    if(spot_instrument_metadata->first_trade_spot_from_calculated) {
    cJSON *first_trade_spot_from_calculated_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_calculated);
    if(first_trade_spot_from_calculated_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_CALCULATED", first_trade_spot_from_calculated_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_calculated_external
    if(spot_instrument_metadata->first_trade_spot_from_calculated_external) {
    cJSON *first_trade_spot_from_calculated_external_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_calculated_external);
    if(first_trade_spot_from_calculated_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL", first_trade_spot_from_calculated_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_fix
    if(spot_instrument_metadata->first_trade_spot_from_fix) {
    cJSON *first_trade_spot_from_fix_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_fix);
    if(first_trade_spot_from_fix_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_FIX", first_trade_spot_from_fix_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_fix_external
    if(spot_instrument_metadata->first_trade_spot_from_fix_external) {
    cJSON *first_trade_spot_from_fix_external_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_fix_external);
    if(first_trade_spot_from_fix_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL", first_trade_spot_from_fix_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_go
    if(spot_instrument_metadata->first_trade_spot_from_go) {
    cJSON *first_trade_spot_from_go_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_go);
    if(first_trade_spot_from_go_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_GO", first_trade_spot_from_go_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_go_external
    if(spot_instrument_metadata->first_trade_spot_from_go_external) {
    cJSON *first_trade_spot_from_go_external_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_go_external);
    if(first_trade_spot_from_go_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_GO_EXTERNAL", first_trade_spot_from_go_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_polling
    if(spot_instrument_metadata->first_trade_spot_from_polling) {
    cJSON *first_trade_spot_from_polling_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_polling);
    if(first_trade_spot_from_polling_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_POLLING", first_trade_spot_from_polling_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_polling_external
    if(spot_instrument_metadata->first_trade_spot_from_polling_external) {
    cJSON *first_trade_spot_from_polling_external_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_polling_external);
    if(first_trade_spot_from_polling_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL", first_trade_spot_from_polling_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_streaming
    if(spot_instrument_metadata->first_trade_spot_from_streaming) {
    cJSON *first_trade_spot_from_streaming_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_streaming);
    if(first_trade_spot_from_streaming_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_STREAMING", first_trade_spot_from_streaming_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->first_trade_spot_from_streaming_external
    if(spot_instrument_metadata->first_trade_spot_from_streaming_external) {
    cJSON *first_trade_spot_from_streaming_external_object = object_convertToJSON(spot_instrument_metadata->first_trade_spot_from_streaming_external);
    if(first_trade_spot_from_streaming_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL", first_trade_spot_from_streaming_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->host_migration_destination
    if(spot_instrument_metadata->host_migration_destination) {
    if(cJSON_AddStringToObject(item, "HOST_MIGRATION_DESTINATION", spot_instrument_metadata->host_migration_destination) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->host_migration_source
    if(spot_instrument_metadata->host_migration_source) {
    if(cJSON_AddStringToObject(item, "HOST_MIGRATION_SOURCE", spot_instrument_metadata->host_migration_source) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->host_migration_status
    if(spot_instrument_metadata->host_migration_status) {
    if(cJSON_AddStringToObject(item, "HOST_MIGRATION_STATUS", spot_instrument_metadata->host_migration_status) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->instrument
    if(spot_instrument_metadata->instrument) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT", spot_instrument_metadata->instrument) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->instrument_external_data
    if(spot_instrument_metadata->instrument_external_data) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT_EXTERNAL_DATA", spot_instrument_metadata->instrument_external_data) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->instrument_mapping
    if(spot_instrument_metadata->instrument_mapping) {
    cJSON *instrument_mapping_object = object_convertToJSON(spot_instrument_metadata->instrument_mapping);
    if(instrument_mapping_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "INSTRUMENT_MAPPING", instrument_mapping_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->instrument_mapping_history
    if(spot_instrument_metadata->instrument_mapping_history) {
    cJSON *instrument_mapping_history = cJSON_AddArrayToObject(item, "INSTRUMENT_MAPPING_HISTORY");
    if(instrument_mapping_history == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *instrument_mapping_historyListEntry;
    list_ForEach(instrument_mapping_historyListEntry, spot_instrument_metadata->instrument_mapping_history) {
    if(cJSON_AddStringToObject(instrument_mapping_history, "", (char*)instrument_mapping_historyListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // spot_instrument_metadata->instrument_source_backfill
    if(spot_instrument_metadata->instrument_source_backfill) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT_SOURCE_BACKFILL", spot_instrument_metadata->instrument_source_backfill) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->instrument_source_blob
    if(spot_instrument_metadata->instrument_source_blob) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT_SOURCE_BLOB", spot_instrument_metadata->instrument_source_blob) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->instrument_source_calculated
    if(spot_instrument_metadata->instrument_source_calculated) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT_SOURCE_CALCULATED", spot_instrument_metadata->instrument_source_calculated) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->instrument_source_fix
    if(spot_instrument_metadata->instrument_source_fix) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT_SOURCE_FIX", spot_instrument_metadata->instrument_source_fix) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->instrument_source_go
    if(spot_instrument_metadata->instrument_source_go) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT_SOURCE_GO", spot_instrument_metadata->instrument_source_go) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->instrument_source_polling
    if(spot_instrument_metadata->instrument_source_polling) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT_SOURCE_POLLING", spot_instrument_metadata->instrument_source_polling) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->instrument_source_streaming
    if(spot_instrument_metadata->instrument_source_streaming) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT_SOURCE_STREAMING", spot_instrument_metadata->instrument_source_streaming) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->instrument_status
    if(spot_instrument_metadata->instrument_status) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT_STATUS", spot_instrument_metadata->instrument_status) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_backfill_last_proxied_rest_request
    if(spot_instrument_metadata->instrument_trade_spot_from_backfill_last_proxied_rest_request) {
    cJSON *instrument_trade_spot_from_backfill_last_proxied_rest_request_object = object_convertToJSON(spot_instrument_metadata->instrument_trade_spot_from_backfill_last_proxied_rest_request);
    if(instrument_trade_spot_from_backfill_last_proxied_rest_request_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST", instrument_trade_spot_from_backfill_last_proxied_rest_request_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_backfill_rest_uri_last_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_backfill_rest_uri_last_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_backfill_rest_uri_last_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_backfill_rest_uri_last_response_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_backfill_rest_uri_last_response_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS", spot_instrument_metadata->instrument_trade_spot_from_backfill_rest_uri_last_response_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_backfill_rest_uri_next_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_backfill_rest_uri_next_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_backfill_rest_uri_next_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_blob_last_proxied_rest_request
    if(spot_instrument_metadata->instrument_trade_spot_from_blob_last_proxied_rest_request) {
    cJSON *instrument_trade_spot_from_blob_last_proxied_rest_request_object = object_convertToJSON(spot_instrument_metadata->instrument_trade_spot_from_blob_last_proxied_rest_request);
    if(instrument_trade_spot_from_blob_last_proxied_rest_request_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST", instrument_trade_spot_from_blob_last_proxied_rest_request_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_blob_rest_uri_last_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_blob_rest_uri_last_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_blob_rest_uri_last_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_blob_rest_uri_last_response_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_blob_rest_uri_last_response_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS", spot_instrument_metadata->instrument_trade_spot_from_blob_rest_uri_last_response_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_blob_rest_uri_next_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_blob_rest_uri_next_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_blob_rest_uri_next_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_calculated_last_proxied_rest_request
    if(spot_instrument_metadata->instrument_trade_spot_from_calculated_last_proxied_rest_request) {
    cJSON *instrument_trade_spot_from_calculated_last_proxied_rest_request_object = object_convertToJSON(spot_instrument_metadata->instrument_trade_spot_from_calculated_last_proxied_rest_request);
    if(instrument_trade_spot_from_calculated_last_proxied_rest_request_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST", instrument_trade_spot_from_calculated_last_proxied_rest_request_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_calculated_rest_uri_last_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_calculated_rest_uri_last_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_calculated_rest_uri_last_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_calculated_rest_uri_last_response_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_calculated_rest_uri_last_response_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS", spot_instrument_metadata->instrument_trade_spot_from_calculated_rest_uri_last_response_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_calculated_rest_uri_next_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_calculated_rest_uri_next_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_calculated_rest_uri_next_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_fix_last_proxied_rest_request
    if(spot_instrument_metadata->instrument_trade_spot_from_fix_last_proxied_rest_request) {
    cJSON *instrument_trade_spot_from_fix_last_proxied_rest_request_object = object_convertToJSON(spot_instrument_metadata->instrument_trade_spot_from_fix_last_proxied_rest_request);
    if(instrument_trade_spot_from_fix_last_proxied_rest_request_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST", instrument_trade_spot_from_fix_last_proxied_rest_request_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_fix_rest_uri_last_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_fix_rest_uri_last_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_fix_rest_uri_last_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_fix_rest_uri_last_response_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_fix_rest_uri_last_response_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS", spot_instrument_metadata->instrument_trade_spot_from_fix_rest_uri_last_response_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_fix_rest_uri_next_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_fix_rest_uri_next_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_fix_rest_uri_next_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_go_last_proxied_rest_request
    if(spot_instrument_metadata->instrument_trade_spot_from_go_last_proxied_rest_request) {
    cJSON *instrument_trade_spot_from_go_last_proxied_rest_request_object = object_convertToJSON(spot_instrument_metadata->instrument_trade_spot_from_go_last_proxied_rest_request);
    if(instrument_trade_spot_from_go_last_proxied_rest_request_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST", instrument_trade_spot_from_go_last_proxied_rest_request_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_go_rest_uri_last_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_go_rest_uri_last_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_go_rest_uri_last_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_go_rest_uri_last_response_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_go_rest_uri_last_response_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS", spot_instrument_metadata->instrument_trade_spot_from_go_rest_uri_last_response_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_go_rest_uri_next_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_go_rest_uri_next_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_go_rest_uri_next_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_polling_last_proxied_rest_request
    if(spot_instrument_metadata->instrument_trade_spot_from_polling_last_proxied_rest_request) {
    cJSON *instrument_trade_spot_from_polling_last_proxied_rest_request_object = object_convertToJSON(spot_instrument_metadata->instrument_trade_spot_from_polling_last_proxied_rest_request);
    if(instrument_trade_spot_from_polling_last_proxied_rest_request_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST", instrument_trade_spot_from_polling_last_proxied_rest_request_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_polling_rest_uri_last_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_polling_rest_uri_last_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_polling_rest_uri_last_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_polling_rest_uri_last_response_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_polling_rest_uri_last_response_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS", spot_instrument_metadata->instrument_trade_spot_from_polling_rest_uri_last_response_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_polling_rest_uri_next_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_polling_rest_uri_next_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_polling_rest_uri_next_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_streaming_last_proxied_rest_request
    if(spot_instrument_metadata->instrument_trade_spot_from_streaming_last_proxied_rest_request) {
    cJSON *instrument_trade_spot_from_streaming_last_proxied_rest_request_object = object_convertToJSON(spot_instrument_metadata->instrument_trade_spot_from_streaming_last_proxied_rest_request);
    if(instrument_trade_spot_from_streaming_last_proxied_rest_request_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST", instrument_trade_spot_from_streaming_last_proxied_rest_request_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_streaming_rest_uri_last_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_streaming_rest_uri_last_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_streaming_rest_uri_last_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_streaming_rest_uri_last_response_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_streaming_rest_uri_last_response_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS", spot_instrument_metadata->instrument_trade_spot_from_streaming_rest_uri_last_response_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_from_streaming_rest_uri_next_request_ts
    if(spot_instrument_metadata->instrument_trade_spot_from_streaming_rest_uri_next_request_ts) {
    if(cJSON_AddNumberToObject(item, "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS", spot_instrument_metadata->instrument_trade_spot_from_streaming_rest_uri_next_request_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_is_ready_for_streaming_integration
    if(spot_instrument_metadata->instrument_trade_spot_is_ready_for_streaming_integration) {
    if(cJSON_AddBoolToObject(item, "INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION", spot_instrument_metadata->instrument_trade_spot_is_ready_for_streaming_integration) == NULL) {
    goto fail; //Bool
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_rest_uri
    if(spot_instrument_metadata->instrument_trade_spot_rest_uri) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT_TRADE_SPOT_REST_URI", spot_instrument_metadata->instrument_trade_spot_rest_uri) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_rest_url
    if(spot_instrument_metadata->instrument_trade_spot_rest_url) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT_TRADE_SPOT_REST_URL", spot_instrument_metadata->instrument_trade_spot_rest_url) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->instrument_trade_spot_streaming_subscription
    if(spot_instrument_metadata->instrument_trade_spot_streaming_subscription) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION", spot_instrument_metadata->instrument_trade_spot_streaming_subscription) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->last_concurrent_batch_of_trades_spot_ms
    if(spot_instrument_metadata->last_concurrent_batch_of_trades_spot_ms) {
    if(cJSON_AddNumberToObject(item, "LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS", spot_instrument_metadata->last_concurrent_batch_of_trades_spot_ms) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->last_seen_on_blob_ts
    if(spot_instrument_metadata->last_seen_on_blob_ts) {
    if(cJSON_AddNumberToObject(item, "LAST_SEEN_ON_BLOB_TS", spot_instrument_metadata->last_seen_on_blob_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->last_seen_on_fix_ts
    if(spot_instrument_metadata->last_seen_on_fix_ts) {
    if(cJSON_AddNumberToObject(item, "LAST_SEEN_ON_FIX_TS", spot_instrument_metadata->last_seen_on_fix_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->last_seen_on_hardcoded_ts
    if(spot_instrument_metadata->last_seen_on_hardcoded_ts) {
    if(cJSON_AddNumberToObject(item, "LAST_SEEN_ON_HARDCODED_TS", spot_instrument_metadata->last_seen_on_hardcoded_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->last_seen_on_index_composition_ts
    if(spot_instrument_metadata->last_seen_on_index_composition_ts) {
    if(cJSON_AddNumberToObject(item, "LAST_SEEN_ON_INDEX_COMPOSITION_TS", spot_instrument_metadata->last_seen_on_index_composition_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->last_seen_on_nsq_ts
    if(spot_instrument_metadata->last_seen_on_nsq_ts) {
    if(cJSON_AddNumberToObject(item, "LAST_SEEN_ON_NSQ_TS", spot_instrument_metadata->last_seen_on_nsq_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->last_seen_on_polling_ts
    if(spot_instrument_metadata->last_seen_on_polling_ts) {
    if(cJSON_AddNumberToObject(item, "LAST_SEEN_ON_POLLING_TS", spot_instrument_metadata->last_seen_on_polling_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->last_seen_on_streaming_ts
    if(spot_instrument_metadata->last_seen_on_streaming_ts) {
    if(cJSON_AddNumberToObject(item, "LAST_SEEN_ON_STREAMING_TS", spot_instrument_metadata->last_seen_on_streaming_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_backfill
    if(spot_instrument_metadata->last_trade_spot_from_backfill) {
    cJSON *last_trade_spot_from_backfill_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_backfill);
    if(last_trade_spot_from_backfill_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_BACKFILL", last_trade_spot_from_backfill_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_backfill_external
    if(spot_instrument_metadata->last_trade_spot_from_backfill_external) {
    cJSON *last_trade_spot_from_backfill_external_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_backfill_external);
    if(last_trade_spot_from_backfill_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL", last_trade_spot_from_backfill_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_blob
    if(spot_instrument_metadata->last_trade_spot_from_blob) {
    cJSON *last_trade_spot_from_blob_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_blob);
    if(last_trade_spot_from_blob_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_BLOB", last_trade_spot_from_blob_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_blob_external
    if(spot_instrument_metadata->last_trade_spot_from_blob_external) {
    cJSON *last_trade_spot_from_blob_external_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_blob_external);
    if(last_trade_spot_from_blob_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL", last_trade_spot_from_blob_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_calculated
    if(spot_instrument_metadata->last_trade_spot_from_calculated) {
    cJSON *last_trade_spot_from_calculated_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_calculated);
    if(last_trade_spot_from_calculated_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_CALCULATED", last_trade_spot_from_calculated_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_calculated_external
    if(spot_instrument_metadata->last_trade_spot_from_calculated_external) {
    cJSON *last_trade_spot_from_calculated_external_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_calculated_external);
    if(last_trade_spot_from_calculated_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL", last_trade_spot_from_calculated_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_fix
    if(spot_instrument_metadata->last_trade_spot_from_fix) {
    cJSON *last_trade_spot_from_fix_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_fix);
    if(last_trade_spot_from_fix_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_FIX", last_trade_spot_from_fix_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_fix_external
    if(spot_instrument_metadata->last_trade_spot_from_fix_external) {
    cJSON *last_trade_spot_from_fix_external_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_fix_external);
    if(last_trade_spot_from_fix_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_FIX_EXTERNAL", last_trade_spot_from_fix_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_go
    if(spot_instrument_metadata->last_trade_spot_from_go) {
    cJSON *last_trade_spot_from_go_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_go);
    if(last_trade_spot_from_go_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_GO", last_trade_spot_from_go_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_go_external
    if(spot_instrument_metadata->last_trade_spot_from_go_external) {
    cJSON *last_trade_spot_from_go_external_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_go_external);
    if(last_trade_spot_from_go_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_GO_EXTERNAL", last_trade_spot_from_go_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_polling
    if(spot_instrument_metadata->last_trade_spot_from_polling) {
    cJSON *last_trade_spot_from_polling_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_polling);
    if(last_trade_spot_from_polling_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_POLLING", last_trade_spot_from_polling_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_polling_external
    if(spot_instrument_metadata->last_trade_spot_from_polling_external) {
    cJSON *last_trade_spot_from_polling_external_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_polling_external);
    if(last_trade_spot_from_polling_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL", last_trade_spot_from_polling_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_streaming
    if(spot_instrument_metadata->last_trade_spot_from_streaming) {
    cJSON *last_trade_spot_from_streaming_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_streaming);
    if(last_trade_spot_from_streaming_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_STREAMING", last_trade_spot_from_streaming_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->last_trade_spot_from_streaming_external
    if(spot_instrument_metadata->last_trade_spot_from_streaming_external) {
    cJSON *last_trade_spot_from_streaming_external_object = object_convertToJSON(spot_instrument_metadata->last_trade_spot_from_streaming_external);
    if(last_trade_spot_from_streaming_external_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL", last_trade_spot_from_streaming_external_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->metadata_version
    if(spot_instrument_metadata->metadata_version) {
    if(cJSON_AddNumberToObject(item, "METADATA_VERSION", spot_instrument_metadata->metadata_version) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->processing_trades_from_blob_status
    if(spot_instrument_metadata->processing_trades_from_blob_status) {
    if(cJSON_AddStringToObject(item, "PROCESSING_TRADES_FROM_BLOB_STATUS", spot_instrument_metadata->processing_trades_from_blob_status) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_metadata->total_trades_spot
    if(spot_instrument_metadata->total_trades_spot) {
    if(cJSON_AddNumberToObject(item, "TOTAL_TRADES_SPOT", spot_instrument_metadata->total_trades_spot) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_metadata->unstructured_trade_spot_from_backfill_internal_data
    if(spot_instrument_metadata->unstructured_trade_spot_from_backfill_internal_data) {
    cJSON *unstructured_trade_spot_from_backfill_internal_data_object = object_convertToJSON(spot_instrument_metadata->unstructured_trade_spot_from_backfill_internal_data);
    if(unstructured_trade_spot_from_backfill_internal_data_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA", unstructured_trade_spot_from_backfill_internal_data_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->unstructured_trade_spot_from_blob_internal_data
    if(spot_instrument_metadata->unstructured_trade_spot_from_blob_internal_data) {
    cJSON *unstructured_trade_spot_from_blob_internal_data_object = object_convertToJSON(spot_instrument_metadata->unstructured_trade_spot_from_blob_internal_data);
    if(unstructured_trade_spot_from_blob_internal_data_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA", unstructured_trade_spot_from_blob_internal_data_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->unstructured_trade_spot_from_calculated_internal_data
    if(spot_instrument_metadata->unstructured_trade_spot_from_calculated_internal_data) {
    cJSON *unstructured_trade_spot_from_calculated_internal_data_object = object_convertToJSON(spot_instrument_metadata->unstructured_trade_spot_from_calculated_internal_data);
    if(unstructured_trade_spot_from_calculated_internal_data_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA", unstructured_trade_spot_from_calculated_internal_data_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->unstructured_trade_spot_from_fix_internal_data
    if(spot_instrument_metadata->unstructured_trade_spot_from_fix_internal_data) {
    cJSON *unstructured_trade_spot_from_fix_internal_data_object = object_convertToJSON(spot_instrument_metadata->unstructured_trade_spot_from_fix_internal_data);
    if(unstructured_trade_spot_from_fix_internal_data_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA", unstructured_trade_spot_from_fix_internal_data_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->unstructured_trade_spot_from_go_internal_data
    if(spot_instrument_metadata->unstructured_trade_spot_from_go_internal_data) {
    cJSON *unstructured_trade_spot_from_go_internal_data_object = object_convertToJSON(spot_instrument_metadata->unstructured_trade_spot_from_go_internal_data);
    if(unstructured_trade_spot_from_go_internal_data_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA", unstructured_trade_spot_from_go_internal_data_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->unstructured_trade_spot_from_polling_internal_data
    if(spot_instrument_metadata->unstructured_trade_spot_from_polling_internal_data) {
    cJSON *unstructured_trade_spot_from_polling_internal_data_object = object_convertToJSON(spot_instrument_metadata->unstructured_trade_spot_from_polling_internal_data);
    if(unstructured_trade_spot_from_polling_internal_data_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA", unstructured_trade_spot_from_polling_internal_data_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_metadata->unstructured_trade_spot_from_streaming_internal_data
    if(spot_instrument_metadata->unstructured_trade_spot_from_streaming_internal_data) {
    cJSON *unstructured_trade_spot_from_streaming_internal_data_object = object_convertToJSON(spot_instrument_metadata->unstructured_trade_spot_from_streaming_internal_data);
    if(unstructured_trade_spot_from_streaming_internal_data_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA", unstructured_trade_spot_from_streaming_internal_data_object);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

spot_instrument_metadata_t *spot_instrument_metadata_parseFromJSON(cJSON *spot_instrument_metadataJSON){

    spot_instrument_metadata_t *spot_instrument_metadata_local_var = NULL;

    // define the local list for spot_instrument_metadata->instrument_mapping_history
    list_t *instrument_mapping_historyList = NULL;

    // spot_instrument_metadata->first_seen_on_blob_ts
    cJSON *first_seen_on_blob_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_SEEN_ON_BLOB_TS");
    if (first_seen_on_blob_ts) { 
    if(!cJSON_IsNumber(first_seen_on_blob_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->first_seen_on_fix_ts
    cJSON *first_seen_on_fix_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_SEEN_ON_FIX_TS");
    if (first_seen_on_fix_ts) { 
    if(!cJSON_IsNumber(first_seen_on_fix_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->first_seen_on_hardcoded_ts
    cJSON *first_seen_on_hardcoded_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_SEEN_ON_HARDCODED_TS");
    if (first_seen_on_hardcoded_ts) { 
    if(!cJSON_IsNumber(first_seen_on_hardcoded_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->first_seen_on_index_composition_ts
    cJSON *first_seen_on_index_composition_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_SEEN_ON_INDEX_COMPOSITION_TS");
    if (first_seen_on_index_composition_ts) { 
    if(!cJSON_IsNumber(first_seen_on_index_composition_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->first_seen_on_nsq_ts
    cJSON *first_seen_on_nsq_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_SEEN_ON_NSQ_TS");
    if (first_seen_on_nsq_ts) { 
    if(!cJSON_IsNumber(first_seen_on_nsq_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->first_seen_on_polling_ts
    cJSON *first_seen_on_polling_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_SEEN_ON_POLLING_TS");
    if (first_seen_on_polling_ts) { 
    if(!cJSON_IsNumber(first_seen_on_polling_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->first_seen_on_streaming_ts
    cJSON *first_seen_on_streaming_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_SEEN_ON_STREAMING_TS");
    if (first_seen_on_streaming_ts) { 
    if(!cJSON_IsNumber(first_seen_on_streaming_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->first_trade_spot_from_backfill
    cJSON *first_trade_spot_from_backfill = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_BACKFILL");
    object_t *first_trade_spot_from_backfill_local_object = NULL;
    if (first_trade_spot_from_backfill) { 
    first_trade_spot_from_backfill_local_object = object_parseFromJSON(first_trade_spot_from_backfill); //object
    }

    // spot_instrument_metadata->first_trade_spot_from_backfill_external
    cJSON *first_trade_spot_from_backfill_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL");
    object_t *first_trade_spot_from_backfill_external_local_object = NULL;
    if (first_trade_spot_from_backfill_external) { 
    first_trade_spot_from_backfill_external_local_object = object_parseFromJSON(first_trade_spot_from_backfill_external); //object
    }

    // spot_instrument_metadata->first_trade_spot_from_blob
    cJSON *first_trade_spot_from_blob = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_BLOB");
    object_t *first_trade_spot_from_blob_local_object = NULL;
    if (first_trade_spot_from_blob) { 
    first_trade_spot_from_blob_local_object = object_parseFromJSON(first_trade_spot_from_blob); //object
    }

    // spot_instrument_metadata->first_trade_spot_from_blob_external
    cJSON *first_trade_spot_from_blob_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL");
    object_t *first_trade_spot_from_blob_external_local_object = NULL;
    if (first_trade_spot_from_blob_external) { 
    first_trade_spot_from_blob_external_local_object = object_parseFromJSON(first_trade_spot_from_blob_external); //object
    }

    // spot_instrument_metadata->first_trade_spot_from_calculated
    cJSON *first_trade_spot_from_calculated = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_CALCULATED");
    object_t *first_trade_spot_from_calculated_local_object = NULL;
    if (first_trade_spot_from_calculated) { 
    first_trade_spot_from_calculated_local_object = object_parseFromJSON(first_trade_spot_from_calculated); //object
    }

    // spot_instrument_metadata->first_trade_spot_from_calculated_external
    cJSON *first_trade_spot_from_calculated_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL");
    object_t *first_trade_spot_from_calculated_external_local_object = NULL;
    if (first_trade_spot_from_calculated_external) { 
    first_trade_spot_from_calculated_external_local_object = object_parseFromJSON(first_trade_spot_from_calculated_external); //object
    }

    // spot_instrument_metadata->first_trade_spot_from_fix
    cJSON *first_trade_spot_from_fix = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_FIX");
    object_t *first_trade_spot_from_fix_local_object = NULL;
    if (first_trade_spot_from_fix) { 
    first_trade_spot_from_fix_local_object = object_parseFromJSON(first_trade_spot_from_fix); //object
    }

    // spot_instrument_metadata->first_trade_spot_from_fix_external
    cJSON *first_trade_spot_from_fix_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL");
    object_t *first_trade_spot_from_fix_external_local_object = NULL;
    if (first_trade_spot_from_fix_external) { 
    first_trade_spot_from_fix_external_local_object = object_parseFromJSON(first_trade_spot_from_fix_external); //object
    }

    // spot_instrument_metadata->first_trade_spot_from_go
    cJSON *first_trade_spot_from_go = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_GO");
    object_t *first_trade_spot_from_go_local_object = NULL;
    if (first_trade_spot_from_go) { 
    first_trade_spot_from_go_local_object = object_parseFromJSON(first_trade_spot_from_go); //object
    }

    // spot_instrument_metadata->first_trade_spot_from_go_external
    cJSON *first_trade_spot_from_go_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_GO_EXTERNAL");
    object_t *first_trade_spot_from_go_external_local_object = NULL;
    if (first_trade_spot_from_go_external) { 
    first_trade_spot_from_go_external_local_object = object_parseFromJSON(first_trade_spot_from_go_external); //object
    }

    // spot_instrument_metadata->first_trade_spot_from_polling
    cJSON *first_trade_spot_from_polling = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_POLLING");
    object_t *first_trade_spot_from_polling_local_object = NULL;
    if (first_trade_spot_from_polling) { 
    first_trade_spot_from_polling_local_object = object_parseFromJSON(first_trade_spot_from_polling); //object
    }

    // spot_instrument_metadata->first_trade_spot_from_polling_external
    cJSON *first_trade_spot_from_polling_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL");
    object_t *first_trade_spot_from_polling_external_local_object = NULL;
    if (first_trade_spot_from_polling_external) { 
    first_trade_spot_from_polling_external_local_object = object_parseFromJSON(first_trade_spot_from_polling_external); //object
    }

    // spot_instrument_metadata->first_trade_spot_from_streaming
    cJSON *first_trade_spot_from_streaming = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_STREAMING");
    object_t *first_trade_spot_from_streaming_local_object = NULL;
    if (first_trade_spot_from_streaming) { 
    first_trade_spot_from_streaming_local_object = object_parseFromJSON(first_trade_spot_from_streaming); //object
    }

    // spot_instrument_metadata->first_trade_spot_from_streaming_external
    cJSON *first_trade_spot_from_streaming_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL");
    object_t *first_trade_spot_from_streaming_external_local_object = NULL;
    if (first_trade_spot_from_streaming_external) { 
    first_trade_spot_from_streaming_external_local_object = object_parseFromJSON(first_trade_spot_from_streaming_external); //object
    }

    // spot_instrument_metadata->host_migration_destination
    cJSON *host_migration_destination = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "HOST_MIGRATION_DESTINATION");
    if (host_migration_destination) { 
    if(!cJSON_IsString(host_migration_destination) && !cJSON_IsNull(host_migration_destination))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->host_migration_source
    cJSON *host_migration_source = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "HOST_MIGRATION_SOURCE");
    if (host_migration_source) { 
    if(!cJSON_IsString(host_migration_source) && !cJSON_IsNull(host_migration_source))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->host_migration_status
    cJSON *host_migration_status = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "HOST_MIGRATION_STATUS");
    if (host_migration_status) { 
    if(!cJSON_IsString(host_migration_status) && !cJSON_IsNull(host_migration_status))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->instrument
    cJSON *instrument = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT");
    if (instrument) { 
    if(!cJSON_IsString(instrument) && !cJSON_IsNull(instrument))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->instrument_external_data
    cJSON *instrument_external_data = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_EXTERNAL_DATA");
    if (instrument_external_data) { 
    if(!cJSON_IsString(instrument_external_data) && !cJSON_IsNull(instrument_external_data))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->instrument_mapping
    cJSON *instrument_mapping = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_MAPPING");
    object_t *instrument_mapping_local_object = NULL;
    if (instrument_mapping) { 
    instrument_mapping_local_object = object_parseFromJSON(instrument_mapping); //object
    }

    // spot_instrument_metadata->instrument_mapping_history
    cJSON *instrument_mapping_history = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_MAPPING_HISTORY");
    if (instrument_mapping_history) { 
    cJSON *instrument_mapping_history_local = NULL;
    if(!cJSON_IsArray(instrument_mapping_history)) {
        goto end;//primitive container
    }
    instrument_mapping_historyList = list_createList();

    cJSON_ArrayForEach(instrument_mapping_history_local, instrument_mapping_history)
    {
        if(!cJSON_IsString(instrument_mapping_history_local))
        {
            goto end;
        }
        list_addElement(instrument_mapping_historyList , strdup(instrument_mapping_history_local->valuestring));
    }
    }

    // spot_instrument_metadata->instrument_source_backfill
    cJSON *instrument_source_backfill = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_SOURCE_BACKFILL");
    if (instrument_source_backfill) { 
    if(!cJSON_IsString(instrument_source_backfill) && !cJSON_IsNull(instrument_source_backfill))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->instrument_source_blob
    cJSON *instrument_source_blob = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_SOURCE_BLOB");
    if (instrument_source_blob) { 
    if(!cJSON_IsString(instrument_source_blob) && !cJSON_IsNull(instrument_source_blob))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->instrument_source_calculated
    cJSON *instrument_source_calculated = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_SOURCE_CALCULATED");
    if (instrument_source_calculated) { 
    if(!cJSON_IsString(instrument_source_calculated) && !cJSON_IsNull(instrument_source_calculated))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->instrument_source_fix
    cJSON *instrument_source_fix = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_SOURCE_FIX");
    if (instrument_source_fix) { 
    if(!cJSON_IsString(instrument_source_fix) && !cJSON_IsNull(instrument_source_fix))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->instrument_source_go
    cJSON *instrument_source_go = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_SOURCE_GO");
    if (instrument_source_go) { 
    if(!cJSON_IsString(instrument_source_go) && !cJSON_IsNull(instrument_source_go))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->instrument_source_polling
    cJSON *instrument_source_polling = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_SOURCE_POLLING");
    if (instrument_source_polling) { 
    if(!cJSON_IsString(instrument_source_polling) && !cJSON_IsNull(instrument_source_polling))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->instrument_source_streaming
    cJSON *instrument_source_streaming = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_SOURCE_STREAMING");
    if (instrument_source_streaming) { 
    if(!cJSON_IsString(instrument_source_streaming) && !cJSON_IsNull(instrument_source_streaming))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->instrument_status
    cJSON *instrument_status = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_STATUS");
    if (instrument_status) { 
    if(!cJSON_IsString(instrument_status) && !cJSON_IsNull(instrument_status))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_backfill_last_proxied_rest_request
    cJSON *instrument_trade_spot_from_backfill_last_proxied_rest_request = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST");
    object_t *instrument_trade_spot_from_backfill_last_proxied_rest_request_local_object = NULL;
    if (instrument_trade_spot_from_backfill_last_proxied_rest_request) { 
    instrument_trade_spot_from_backfill_last_proxied_rest_request_local_object = object_parseFromJSON(instrument_trade_spot_from_backfill_last_proxied_rest_request); //object
    }

    // spot_instrument_metadata->instrument_trade_spot_from_backfill_rest_uri_last_request_ts
    cJSON *instrument_trade_spot_from_backfill_rest_uri_last_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS");
    if (instrument_trade_spot_from_backfill_rest_uri_last_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_backfill_rest_uri_last_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_backfill_rest_uri_last_response_ts
    cJSON *instrument_trade_spot_from_backfill_rest_uri_last_response_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS");
    if (instrument_trade_spot_from_backfill_rest_uri_last_response_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_backfill_rest_uri_last_response_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_backfill_rest_uri_next_request_ts
    cJSON *instrument_trade_spot_from_backfill_rest_uri_next_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS");
    if (instrument_trade_spot_from_backfill_rest_uri_next_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_backfill_rest_uri_next_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_blob_last_proxied_rest_request
    cJSON *instrument_trade_spot_from_blob_last_proxied_rest_request = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST");
    object_t *instrument_trade_spot_from_blob_last_proxied_rest_request_local_object = NULL;
    if (instrument_trade_spot_from_blob_last_proxied_rest_request) { 
    instrument_trade_spot_from_blob_last_proxied_rest_request_local_object = object_parseFromJSON(instrument_trade_spot_from_blob_last_proxied_rest_request); //object
    }

    // spot_instrument_metadata->instrument_trade_spot_from_blob_rest_uri_last_request_ts
    cJSON *instrument_trade_spot_from_blob_rest_uri_last_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS");
    if (instrument_trade_spot_from_blob_rest_uri_last_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_blob_rest_uri_last_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_blob_rest_uri_last_response_ts
    cJSON *instrument_trade_spot_from_blob_rest_uri_last_response_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS");
    if (instrument_trade_spot_from_blob_rest_uri_last_response_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_blob_rest_uri_last_response_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_blob_rest_uri_next_request_ts
    cJSON *instrument_trade_spot_from_blob_rest_uri_next_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS");
    if (instrument_trade_spot_from_blob_rest_uri_next_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_blob_rest_uri_next_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_calculated_last_proxied_rest_request
    cJSON *instrument_trade_spot_from_calculated_last_proxied_rest_request = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST");
    object_t *instrument_trade_spot_from_calculated_last_proxied_rest_request_local_object = NULL;
    if (instrument_trade_spot_from_calculated_last_proxied_rest_request) { 
    instrument_trade_spot_from_calculated_last_proxied_rest_request_local_object = object_parseFromJSON(instrument_trade_spot_from_calculated_last_proxied_rest_request); //object
    }

    // spot_instrument_metadata->instrument_trade_spot_from_calculated_rest_uri_last_request_ts
    cJSON *instrument_trade_spot_from_calculated_rest_uri_last_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS");
    if (instrument_trade_spot_from_calculated_rest_uri_last_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_calculated_rest_uri_last_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_calculated_rest_uri_last_response_ts
    cJSON *instrument_trade_spot_from_calculated_rest_uri_last_response_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS");
    if (instrument_trade_spot_from_calculated_rest_uri_last_response_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_calculated_rest_uri_last_response_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_calculated_rest_uri_next_request_ts
    cJSON *instrument_trade_spot_from_calculated_rest_uri_next_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS");
    if (instrument_trade_spot_from_calculated_rest_uri_next_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_calculated_rest_uri_next_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_fix_last_proxied_rest_request
    cJSON *instrument_trade_spot_from_fix_last_proxied_rest_request = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST");
    object_t *instrument_trade_spot_from_fix_last_proxied_rest_request_local_object = NULL;
    if (instrument_trade_spot_from_fix_last_proxied_rest_request) { 
    instrument_trade_spot_from_fix_last_proxied_rest_request_local_object = object_parseFromJSON(instrument_trade_spot_from_fix_last_proxied_rest_request); //object
    }

    // spot_instrument_metadata->instrument_trade_spot_from_fix_rest_uri_last_request_ts
    cJSON *instrument_trade_spot_from_fix_rest_uri_last_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS");
    if (instrument_trade_spot_from_fix_rest_uri_last_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_fix_rest_uri_last_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_fix_rest_uri_last_response_ts
    cJSON *instrument_trade_spot_from_fix_rest_uri_last_response_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS");
    if (instrument_trade_spot_from_fix_rest_uri_last_response_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_fix_rest_uri_last_response_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_fix_rest_uri_next_request_ts
    cJSON *instrument_trade_spot_from_fix_rest_uri_next_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS");
    if (instrument_trade_spot_from_fix_rest_uri_next_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_fix_rest_uri_next_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_go_last_proxied_rest_request
    cJSON *instrument_trade_spot_from_go_last_proxied_rest_request = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST");
    object_t *instrument_trade_spot_from_go_last_proxied_rest_request_local_object = NULL;
    if (instrument_trade_spot_from_go_last_proxied_rest_request) { 
    instrument_trade_spot_from_go_last_proxied_rest_request_local_object = object_parseFromJSON(instrument_trade_spot_from_go_last_proxied_rest_request); //object
    }

    // spot_instrument_metadata->instrument_trade_spot_from_go_rest_uri_last_request_ts
    cJSON *instrument_trade_spot_from_go_rest_uri_last_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS");
    if (instrument_trade_spot_from_go_rest_uri_last_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_go_rest_uri_last_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_go_rest_uri_last_response_ts
    cJSON *instrument_trade_spot_from_go_rest_uri_last_response_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS");
    if (instrument_trade_spot_from_go_rest_uri_last_response_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_go_rest_uri_last_response_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_go_rest_uri_next_request_ts
    cJSON *instrument_trade_spot_from_go_rest_uri_next_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS");
    if (instrument_trade_spot_from_go_rest_uri_next_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_go_rest_uri_next_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_polling_last_proxied_rest_request
    cJSON *instrument_trade_spot_from_polling_last_proxied_rest_request = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST");
    object_t *instrument_trade_spot_from_polling_last_proxied_rest_request_local_object = NULL;
    if (instrument_trade_spot_from_polling_last_proxied_rest_request) { 
    instrument_trade_spot_from_polling_last_proxied_rest_request_local_object = object_parseFromJSON(instrument_trade_spot_from_polling_last_proxied_rest_request); //object
    }

    // spot_instrument_metadata->instrument_trade_spot_from_polling_rest_uri_last_request_ts
    cJSON *instrument_trade_spot_from_polling_rest_uri_last_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS");
    if (instrument_trade_spot_from_polling_rest_uri_last_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_polling_rest_uri_last_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_polling_rest_uri_last_response_ts
    cJSON *instrument_trade_spot_from_polling_rest_uri_last_response_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS");
    if (instrument_trade_spot_from_polling_rest_uri_last_response_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_polling_rest_uri_last_response_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_polling_rest_uri_next_request_ts
    cJSON *instrument_trade_spot_from_polling_rest_uri_next_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS");
    if (instrument_trade_spot_from_polling_rest_uri_next_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_polling_rest_uri_next_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_streaming_last_proxied_rest_request
    cJSON *instrument_trade_spot_from_streaming_last_proxied_rest_request = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST");
    object_t *instrument_trade_spot_from_streaming_last_proxied_rest_request_local_object = NULL;
    if (instrument_trade_spot_from_streaming_last_proxied_rest_request) { 
    instrument_trade_spot_from_streaming_last_proxied_rest_request_local_object = object_parseFromJSON(instrument_trade_spot_from_streaming_last_proxied_rest_request); //object
    }

    // spot_instrument_metadata->instrument_trade_spot_from_streaming_rest_uri_last_request_ts
    cJSON *instrument_trade_spot_from_streaming_rest_uri_last_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS");
    if (instrument_trade_spot_from_streaming_rest_uri_last_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_streaming_rest_uri_last_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_streaming_rest_uri_last_response_ts
    cJSON *instrument_trade_spot_from_streaming_rest_uri_last_response_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS");
    if (instrument_trade_spot_from_streaming_rest_uri_last_response_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_streaming_rest_uri_last_response_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_from_streaming_rest_uri_next_request_ts
    cJSON *instrument_trade_spot_from_streaming_rest_uri_next_request_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS");
    if (instrument_trade_spot_from_streaming_rest_uri_next_request_ts) { 
    if(!cJSON_IsNumber(instrument_trade_spot_from_streaming_rest_uri_next_request_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_is_ready_for_streaming_integration
    cJSON *instrument_trade_spot_is_ready_for_streaming_integration = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION");
    if (instrument_trade_spot_is_ready_for_streaming_integration) { 
    if(!cJSON_IsBool(instrument_trade_spot_is_ready_for_streaming_integration))
    {
    goto end; //Bool
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_rest_uri
    cJSON *instrument_trade_spot_rest_uri = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_REST_URI");
    if (instrument_trade_spot_rest_uri) { 
    if(!cJSON_IsString(instrument_trade_spot_rest_uri) && !cJSON_IsNull(instrument_trade_spot_rest_uri))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_rest_url
    cJSON *instrument_trade_spot_rest_url = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_REST_URL");
    if (instrument_trade_spot_rest_url) { 
    if(!cJSON_IsString(instrument_trade_spot_rest_url) && !cJSON_IsNull(instrument_trade_spot_rest_url))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->instrument_trade_spot_streaming_subscription
    cJSON *instrument_trade_spot_streaming_subscription = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION");
    if (instrument_trade_spot_streaming_subscription) { 
    if(!cJSON_IsString(instrument_trade_spot_streaming_subscription) && !cJSON_IsNull(instrument_trade_spot_streaming_subscription))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->last_concurrent_batch_of_trades_spot_ms
    cJSON *last_concurrent_batch_of_trades_spot_ms = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS");
    if (last_concurrent_batch_of_trades_spot_ms) { 
    if(!cJSON_IsNumber(last_concurrent_batch_of_trades_spot_ms))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->last_seen_on_blob_ts
    cJSON *last_seen_on_blob_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_SEEN_ON_BLOB_TS");
    if (last_seen_on_blob_ts) { 
    if(!cJSON_IsNumber(last_seen_on_blob_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->last_seen_on_fix_ts
    cJSON *last_seen_on_fix_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_SEEN_ON_FIX_TS");
    if (last_seen_on_fix_ts) { 
    if(!cJSON_IsNumber(last_seen_on_fix_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->last_seen_on_hardcoded_ts
    cJSON *last_seen_on_hardcoded_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_SEEN_ON_HARDCODED_TS");
    if (last_seen_on_hardcoded_ts) { 
    if(!cJSON_IsNumber(last_seen_on_hardcoded_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->last_seen_on_index_composition_ts
    cJSON *last_seen_on_index_composition_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_SEEN_ON_INDEX_COMPOSITION_TS");
    if (last_seen_on_index_composition_ts) { 
    if(!cJSON_IsNumber(last_seen_on_index_composition_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->last_seen_on_nsq_ts
    cJSON *last_seen_on_nsq_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_SEEN_ON_NSQ_TS");
    if (last_seen_on_nsq_ts) { 
    if(!cJSON_IsNumber(last_seen_on_nsq_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->last_seen_on_polling_ts
    cJSON *last_seen_on_polling_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_SEEN_ON_POLLING_TS");
    if (last_seen_on_polling_ts) { 
    if(!cJSON_IsNumber(last_seen_on_polling_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->last_seen_on_streaming_ts
    cJSON *last_seen_on_streaming_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_SEEN_ON_STREAMING_TS");
    if (last_seen_on_streaming_ts) { 
    if(!cJSON_IsNumber(last_seen_on_streaming_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->last_trade_spot_from_backfill
    cJSON *last_trade_spot_from_backfill = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_BACKFILL");
    object_t *last_trade_spot_from_backfill_local_object = NULL;
    if (last_trade_spot_from_backfill) { 
    last_trade_spot_from_backfill_local_object = object_parseFromJSON(last_trade_spot_from_backfill); //object
    }

    // spot_instrument_metadata->last_trade_spot_from_backfill_external
    cJSON *last_trade_spot_from_backfill_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL");
    object_t *last_trade_spot_from_backfill_external_local_object = NULL;
    if (last_trade_spot_from_backfill_external) { 
    last_trade_spot_from_backfill_external_local_object = object_parseFromJSON(last_trade_spot_from_backfill_external); //object
    }

    // spot_instrument_metadata->last_trade_spot_from_blob
    cJSON *last_trade_spot_from_blob = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_BLOB");
    object_t *last_trade_spot_from_blob_local_object = NULL;
    if (last_trade_spot_from_blob) { 
    last_trade_spot_from_blob_local_object = object_parseFromJSON(last_trade_spot_from_blob); //object
    }

    // spot_instrument_metadata->last_trade_spot_from_blob_external
    cJSON *last_trade_spot_from_blob_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL");
    object_t *last_trade_spot_from_blob_external_local_object = NULL;
    if (last_trade_spot_from_blob_external) { 
    last_trade_spot_from_blob_external_local_object = object_parseFromJSON(last_trade_spot_from_blob_external); //object
    }

    // spot_instrument_metadata->last_trade_spot_from_calculated
    cJSON *last_trade_spot_from_calculated = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_CALCULATED");
    object_t *last_trade_spot_from_calculated_local_object = NULL;
    if (last_trade_spot_from_calculated) { 
    last_trade_spot_from_calculated_local_object = object_parseFromJSON(last_trade_spot_from_calculated); //object
    }

    // spot_instrument_metadata->last_trade_spot_from_calculated_external
    cJSON *last_trade_spot_from_calculated_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL");
    object_t *last_trade_spot_from_calculated_external_local_object = NULL;
    if (last_trade_spot_from_calculated_external) { 
    last_trade_spot_from_calculated_external_local_object = object_parseFromJSON(last_trade_spot_from_calculated_external); //object
    }

    // spot_instrument_metadata->last_trade_spot_from_fix
    cJSON *last_trade_spot_from_fix = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_FIX");
    object_t *last_trade_spot_from_fix_local_object = NULL;
    if (last_trade_spot_from_fix) { 
    last_trade_spot_from_fix_local_object = object_parseFromJSON(last_trade_spot_from_fix); //object
    }

    // spot_instrument_metadata->last_trade_spot_from_fix_external
    cJSON *last_trade_spot_from_fix_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_FIX_EXTERNAL");
    object_t *last_trade_spot_from_fix_external_local_object = NULL;
    if (last_trade_spot_from_fix_external) { 
    last_trade_spot_from_fix_external_local_object = object_parseFromJSON(last_trade_spot_from_fix_external); //object
    }

    // spot_instrument_metadata->last_trade_spot_from_go
    cJSON *last_trade_spot_from_go = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_GO");
    object_t *last_trade_spot_from_go_local_object = NULL;
    if (last_trade_spot_from_go) { 
    last_trade_spot_from_go_local_object = object_parseFromJSON(last_trade_spot_from_go); //object
    }

    // spot_instrument_metadata->last_trade_spot_from_go_external
    cJSON *last_trade_spot_from_go_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_GO_EXTERNAL");
    object_t *last_trade_spot_from_go_external_local_object = NULL;
    if (last_trade_spot_from_go_external) { 
    last_trade_spot_from_go_external_local_object = object_parseFromJSON(last_trade_spot_from_go_external); //object
    }

    // spot_instrument_metadata->last_trade_spot_from_polling
    cJSON *last_trade_spot_from_polling = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_POLLING");
    object_t *last_trade_spot_from_polling_local_object = NULL;
    if (last_trade_spot_from_polling) { 
    last_trade_spot_from_polling_local_object = object_parseFromJSON(last_trade_spot_from_polling); //object
    }

    // spot_instrument_metadata->last_trade_spot_from_polling_external
    cJSON *last_trade_spot_from_polling_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL");
    object_t *last_trade_spot_from_polling_external_local_object = NULL;
    if (last_trade_spot_from_polling_external) { 
    last_trade_spot_from_polling_external_local_object = object_parseFromJSON(last_trade_spot_from_polling_external); //object
    }

    // spot_instrument_metadata->last_trade_spot_from_streaming
    cJSON *last_trade_spot_from_streaming = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_STREAMING");
    object_t *last_trade_spot_from_streaming_local_object = NULL;
    if (last_trade_spot_from_streaming) { 
    last_trade_spot_from_streaming_local_object = object_parseFromJSON(last_trade_spot_from_streaming); //object
    }

    // spot_instrument_metadata->last_trade_spot_from_streaming_external
    cJSON *last_trade_spot_from_streaming_external = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL");
    object_t *last_trade_spot_from_streaming_external_local_object = NULL;
    if (last_trade_spot_from_streaming_external) { 
    last_trade_spot_from_streaming_external_local_object = object_parseFromJSON(last_trade_spot_from_streaming_external); //object
    }

    // spot_instrument_metadata->metadata_version
    cJSON *metadata_version = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "METADATA_VERSION");
    if (metadata_version) { 
    if(!cJSON_IsNumber(metadata_version))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->processing_trades_from_blob_status
    cJSON *processing_trades_from_blob_status = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "PROCESSING_TRADES_FROM_BLOB_STATUS");
    if (processing_trades_from_blob_status) { 
    if(!cJSON_IsString(processing_trades_from_blob_status) && !cJSON_IsNull(processing_trades_from_blob_status))
    {
    goto end; //String
    }
    }

    // spot_instrument_metadata->total_trades_spot
    cJSON *total_trades_spot = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "TOTAL_TRADES_SPOT");
    if (total_trades_spot) { 
    if(!cJSON_IsNumber(total_trades_spot))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_metadata->unstructured_trade_spot_from_backfill_internal_data
    cJSON *unstructured_trade_spot_from_backfill_internal_data = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA");
    object_t *unstructured_trade_spot_from_backfill_internal_data_local_object = NULL;
    if (unstructured_trade_spot_from_backfill_internal_data) { 
    unstructured_trade_spot_from_backfill_internal_data_local_object = object_parseFromJSON(unstructured_trade_spot_from_backfill_internal_data); //object
    }

    // spot_instrument_metadata->unstructured_trade_spot_from_blob_internal_data
    cJSON *unstructured_trade_spot_from_blob_internal_data = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA");
    object_t *unstructured_trade_spot_from_blob_internal_data_local_object = NULL;
    if (unstructured_trade_spot_from_blob_internal_data) { 
    unstructured_trade_spot_from_blob_internal_data_local_object = object_parseFromJSON(unstructured_trade_spot_from_blob_internal_data); //object
    }

    // spot_instrument_metadata->unstructured_trade_spot_from_calculated_internal_data
    cJSON *unstructured_trade_spot_from_calculated_internal_data = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA");
    object_t *unstructured_trade_spot_from_calculated_internal_data_local_object = NULL;
    if (unstructured_trade_spot_from_calculated_internal_data) { 
    unstructured_trade_spot_from_calculated_internal_data_local_object = object_parseFromJSON(unstructured_trade_spot_from_calculated_internal_data); //object
    }

    // spot_instrument_metadata->unstructured_trade_spot_from_fix_internal_data
    cJSON *unstructured_trade_spot_from_fix_internal_data = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA");
    object_t *unstructured_trade_spot_from_fix_internal_data_local_object = NULL;
    if (unstructured_trade_spot_from_fix_internal_data) { 
    unstructured_trade_spot_from_fix_internal_data_local_object = object_parseFromJSON(unstructured_trade_spot_from_fix_internal_data); //object
    }

    // spot_instrument_metadata->unstructured_trade_spot_from_go_internal_data
    cJSON *unstructured_trade_spot_from_go_internal_data = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA");
    object_t *unstructured_trade_spot_from_go_internal_data_local_object = NULL;
    if (unstructured_trade_spot_from_go_internal_data) { 
    unstructured_trade_spot_from_go_internal_data_local_object = object_parseFromJSON(unstructured_trade_spot_from_go_internal_data); //object
    }

    // spot_instrument_metadata->unstructured_trade_spot_from_polling_internal_data
    cJSON *unstructured_trade_spot_from_polling_internal_data = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA");
    object_t *unstructured_trade_spot_from_polling_internal_data_local_object = NULL;
    if (unstructured_trade_spot_from_polling_internal_data) { 
    unstructured_trade_spot_from_polling_internal_data_local_object = object_parseFromJSON(unstructured_trade_spot_from_polling_internal_data); //object
    }

    // spot_instrument_metadata->unstructured_trade_spot_from_streaming_internal_data
    cJSON *unstructured_trade_spot_from_streaming_internal_data = cJSON_GetObjectItemCaseSensitive(spot_instrument_metadataJSON, "UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA");
    object_t *unstructured_trade_spot_from_streaming_internal_data_local_object = NULL;
    if (unstructured_trade_spot_from_streaming_internal_data) { 
    unstructured_trade_spot_from_streaming_internal_data_local_object = object_parseFromJSON(unstructured_trade_spot_from_streaming_internal_data); //object
    }


    spot_instrument_metadata_local_var = spot_instrument_metadata_create (
        first_seen_on_blob_ts ? first_seen_on_blob_ts->valuedouble : 0,
        first_seen_on_fix_ts ? first_seen_on_fix_ts->valuedouble : 0,
        first_seen_on_hardcoded_ts ? first_seen_on_hardcoded_ts->valuedouble : 0,
        first_seen_on_index_composition_ts ? first_seen_on_index_composition_ts->valuedouble : 0,
        first_seen_on_nsq_ts ? first_seen_on_nsq_ts->valuedouble : 0,
        first_seen_on_polling_ts ? first_seen_on_polling_ts->valuedouble : 0,
        first_seen_on_streaming_ts ? first_seen_on_streaming_ts->valuedouble : 0,
        first_trade_spot_from_backfill ? first_trade_spot_from_backfill_local_object : NULL,
        first_trade_spot_from_backfill_external ? first_trade_spot_from_backfill_external_local_object : NULL,
        first_trade_spot_from_blob ? first_trade_spot_from_blob_local_object : NULL,
        first_trade_spot_from_blob_external ? first_trade_spot_from_blob_external_local_object : NULL,
        first_trade_spot_from_calculated ? first_trade_spot_from_calculated_local_object : NULL,
        first_trade_spot_from_calculated_external ? first_trade_spot_from_calculated_external_local_object : NULL,
        first_trade_spot_from_fix ? first_trade_spot_from_fix_local_object : NULL,
        first_trade_spot_from_fix_external ? first_trade_spot_from_fix_external_local_object : NULL,
        first_trade_spot_from_go ? first_trade_spot_from_go_local_object : NULL,
        first_trade_spot_from_go_external ? first_trade_spot_from_go_external_local_object : NULL,
        first_trade_spot_from_polling ? first_trade_spot_from_polling_local_object : NULL,
        first_trade_spot_from_polling_external ? first_trade_spot_from_polling_external_local_object : NULL,
        first_trade_spot_from_streaming ? first_trade_spot_from_streaming_local_object : NULL,
        first_trade_spot_from_streaming_external ? first_trade_spot_from_streaming_external_local_object : NULL,
        host_migration_destination && !cJSON_IsNull(host_migration_destination) ? strdup(host_migration_destination->valuestring) : NULL,
        host_migration_source && !cJSON_IsNull(host_migration_source) ? strdup(host_migration_source->valuestring) : NULL,
        host_migration_status && !cJSON_IsNull(host_migration_status) ? strdup(host_migration_status->valuestring) : NULL,
        instrument && !cJSON_IsNull(instrument) ? strdup(instrument->valuestring) : NULL,
        instrument_external_data && !cJSON_IsNull(instrument_external_data) ? strdup(instrument_external_data->valuestring) : NULL,
        instrument_mapping ? instrument_mapping_local_object : NULL,
        instrument_mapping_history ? instrument_mapping_historyList : NULL,
        instrument_source_backfill && !cJSON_IsNull(instrument_source_backfill) ? strdup(instrument_source_backfill->valuestring) : NULL,
        instrument_source_blob && !cJSON_IsNull(instrument_source_blob) ? strdup(instrument_source_blob->valuestring) : NULL,
        instrument_source_calculated && !cJSON_IsNull(instrument_source_calculated) ? strdup(instrument_source_calculated->valuestring) : NULL,
        instrument_source_fix && !cJSON_IsNull(instrument_source_fix) ? strdup(instrument_source_fix->valuestring) : NULL,
        instrument_source_go && !cJSON_IsNull(instrument_source_go) ? strdup(instrument_source_go->valuestring) : NULL,
        instrument_source_polling && !cJSON_IsNull(instrument_source_polling) ? strdup(instrument_source_polling->valuestring) : NULL,
        instrument_source_streaming && !cJSON_IsNull(instrument_source_streaming) ? strdup(instrument_source_streaming->valuestring) : NULL,
        instrument_status && !cJSON_IsNull(instrument_status) ? strdup(instrument_status->valuestring) : NULL,
        instrument_trade_spot_from_backfill_last_proxied_rest_request ? instrument_trade_spot_from_backfill_last_proxied_rest_request_local_object : NULL,
        instrument_trade_spot_from_backfill_rest_uri_last_request_ts ? instrument_trade_spot_from_backfill_rest_uri_last_request_ts->valuedouble : 0,
        instrument_trade_spot_from_backfill_rest_uri_last_response_ts ? instrument_trade_spot_from_backfill_rest_uri_last_response_ts->valuedouble : 0,
        instrument_trade_spot_from_backfill_rest_uri_next_request_ts ? instrument_trade_spot_from_backfill_rest_uri_next_request_ts->valuedouble : 0,
        instrument_trade_spot_from_blob_last_proxied_rest_request ? instrument_trade_spot_from_blob_last_proxied_rest_request_local_object : NULL,
        instrument_trade_spot_from_blob_rest_uri_last_request_ts ? instrument_trade_spot_from_blob_rest_uri_last_request_ts->valuedouble : 0,
        instrument_trade_spot_from_blob_rest_uri_last_response_ts ? instrument_trade_spot_from_blob_rest_uri_last_response_ts->valuedouble : 0,
        instrument_trade_spot_from_blob_rest_uri_next_request_ts ? instrument_trade_spot_from_blob_rest_uri_next_request_ts->valuedouble : 0,
        instrument_trade_spot_from_calculated_last_proxied_rest_request ? instrument_trade_spot_from_calculated_last_proxied_rest_request_local_object : NULL,
        instrument_trade_spot_from_calculated_rest_uri_last_request_ts ? instrument_trade_spot_from_calculated_rest_uri_last_request_ts->valuedouble : 0,
        instrument_trade_spot_from_calculated_rest_uri_last_response_ts ? instrument_trade_spot_from_calculated_rest_uri_last_response_ts->valuedouble : 0,
        instrument_trade_spot_from_calculated_rest_uri_next_request_ts ? instrument_trade_spot_from_calculated_rest_uri_next_request_ts->valuedouble : 0,
        instrument_trade_spot_from_fix_last_proxied_rest_request ? instrument_trade_spot_from_fix_last_proxied_rest_request_local_object : NULL,
        instrument_trade_spot_from_fix_rest_uri_last_request_ts ? instrument_trade_spot_from_fix_rest_uri_last_request_ts->valuedouble : 0,
        instrument_trade_spot_from_fix_rest_uri_last_response_ts ? instrument_trade_spot_from_fix_rest_uri_last_response_ts->valuedouble : 0,
        instrument_trade_spot_from_fix_rest_uri_next_request_ts ? instrument_trade_spot_from_fix_rest_uri_next_request_ts->valuedouble : 0,
        instrument_trade_spot_from_go_last_proxied_rest_request ? instrument_trade_spot_from_go_last_proxied_rest_request_local_object : NULL,
        instrument_trade_spot_from_go_rest_uri_last_request_ts ? instrument_trade_spot_from_go_rest_uri_last_request_ts->valuedouble : 0,
        instrument_trade_spot_from_go_rest_uri_last_response_ts ? instrument_trade_spot_from_go_rest_uri_last_response_ts->valuedouble : 0,
        instrument_trade_spot_from_go_rest_uri_next_request_ts ? instrument_trade_spot_from_go_rest_uri_next_request_ts->valuedouble : 0,
        instrument_trade_spot_from_polling_last_proxied_rest_request ? instrument_trade_spot_from_polling_last_proxied_rest_request_local_object : NULL,
        instrument_trade_spot_from_polling_rest_uri_last_request_ts ? instrument_trade_spot_from_polling_rest_uri_last_request_ts->valuedouble : 0,
        instrument_trade_spot_from_polling_rest_uri_last_response_ts ? instrument_trade_spot_from_polling_rest_uri_last_response_ts->valuedouble : 0,
        instrument_trade_spot_from_polling_rest_uri_next_request_ts ? instrument_trade_spot_from_polling_rest_uri_next_request_ts->valuedouble : 0,
        instrument_trade_spot_from_streaming_last_proxied_rest_request ? instrument_trade_spot_from_streaming_last_proxied_rest_request_local_object : NULL,
        instrument_trade_spot_from_streaming_rest_uri_last_request_ts ? instrument_trade_spot_from_streaming_rest_uri_last_request_ts->valuedouble : 0,
        instrument_trade_spot_from_streaming_rest_uri_last_response_ts ? instrument_trade_spot_from_streaming_rest_uri_last_response_ts->valuedouble : 0,
        instrument_trade_spot_from_streaming_rest_uri_next_request_ts ? instrument_trade_spot_from_streaming_rest_uri_next_request_ts->valuedouble : 0,
        instrument_trade_spot_is_ready_for_streaming_integration ? instrument_trade_spot_is_ready_for_streaming_integration->valueint : 0,
        instrument_trade_spot_rest_uri && !cJSON_IsNull(instrument_trade_spot_rest_uri) ? strdup(instrument_trade_spot_rest_uri->valuestring) : NULL,
        instrument_trade_spot_rest_url && !cJSON_IsNull(instrument_trade_spot_rest_url) ? strdup(instrument_trade_spot_rest_url->valuestring) : NULL,
        instrument_trade_spot_streaming_subscription && !cJSON_IsNull(instrument_trade_spot_streaming_subscription) ? strdup(instrument_trade_spot_streaming_subscription->valuestring) : NULL,
        last_concurrent_batch_of_trades_spot_ms ? last_concurrent_batch_of_trades_spot_ms->valuedouble : 0,
        last_seen_on_blob_ts ? last_seen_on_blob_ts->valuedouble : 0,
        last_seen_on_fix_ts ? last_seen_on_fix_ts->valuedouble : 0,
        last_seen_on_hardcoded_ts ? last_seen_on_hardcoded_ts->valuedouble : 0,
        last_seen_on_index_composition_ts ? last_seen_on_index_composition_ts->valuedouble : 0,
        last_seen_on_nsq_ts ? last_seen_on_nsq_ts->valuedouble : 0,
        last_seen_on_polling_ts ? last_seen_on_polling_ts->valuedouble : 0,
        last_seen_on_streaming_ts ? last_seen_on_streaming_ts->valuedouble : 0,
        last_trade_spot_from_backfill ? last_trade_spot_from_backfill_local_object : NULL,
        last_trade_spot_from_backfill_external ? last_trade_spot_from_backfill_external_local_object : NULL,
        last_trade_spot_from_blob ? last_trade_spot_from_blob_local_object : NULL,
        last_trade_spot_from_blob_external ? last_trade_spot_from_blob_external_local_object : NULL,
        last_trade_spot_from_calculated ? last_trade_spot_from_calculated_local_object : NULL,
        last_trade_spot_from_calculated_external ? last_trade_spot_from_calculated_external_local_object : NULL,
        last_trade_spot_from_fix ? last_trade_spot_from_fix_local_object : NULL,
        last_trade_spot_from_fix_external ? last_trade_spot_from_fix_external_local_object : NULL,
        last_trade_spot_from_go ? last_trade_spot_from_go_local_object : NULL,
        last_trade_spot_from_go_external ? last_trade_spot_from_go_external_local_object : NULL,
        last_trade_spot_from_polling ? last_trade_spot_from_polling_local_object : NULL,
        last_trade_spot_from_polling_external ? last_trade_spot_from_polling_external_local_object : NULL,
        last_trade_spot_from_streaming ? last_trade_spot_from_streaming_local_object : NULL,
        last_trade_spot_from_streaming_external ? last_trade_spot_from_streaming_external_local_object : NULL,
        metadata_version ? metadata_version->valuedouble : 0,
        processing_trades_from_blob_status && !cJSON_IsNull(processing_trades_from_blob_status) ? strdup(processing_trades_from_blob_status->valuestring) : NULL,
        total_trades_spot ? total_trades_spot->valuedouble : 0,
        unstructured_trade_spot_from_backfill_internal_data ? unstructured_trade_spot_from_backfill_internal_data_local_object : NULL,
        unstructured_trade_spot_from_blob_internal_data ? unstructured_trade_spot_from_blob_internal_data_local_object : NULL,
        unstructured_trade_spot_from_calculated_internal_data ? unstructured_trade_spot_from_calculated_internal_data_local_object : NULL,
        unstructured_trade_spot_from_fix_internal_data ? unstructured_trade_spot_from_fix_internal_data_local_object : NULL,
        unstructured_trade_spot_from_go_internal_data ? unstructured_trade_spot_from_go_internal_data_local_object : NULL,
        unstructured_trade_spot_from_polling_internal_data ? unstructured_trade_spot_from_polling_internal_data_local_object : NULL,
        unstructured_trade_spot_from_streaming_internal_data ? unstructured_trade_spot_from_streaming_internal_data_local_object : NULL
        );

    return spot_instrument_metadata_local_var;
end:
    if (instrument_mapping_historyList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, instrument_mapping_historyList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(instrument_mapping_historyList);
        instrument_mapping_historyList = NULL;
    }
    return NULL;

}
