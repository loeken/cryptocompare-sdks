#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "spot_instrument_market_data_response_err.h"



spot_instrument_market_data_response_err_t *spot_instrument_market_data_response_err_create(
    char *message,
    spot_instrument_market_data_response_err_other_info_t *other_info,
    int type
    ) {
    spot_instrument_market_data_response_err_t *spot_instrument_market_data_response_err_local_var = malloc(sizeof(spot_instrument_market_data_response_err_t));
    if (!spot_instrument_market_data_response_err_local_var) {
        return NULL;
    }
    spot_instrument_market_data_response_err_local_var->message = message;
    spot_instrument_market_data_response_err_local_var->other_info = other_info;
    spot_instrument_market_data_response_err_local_var->type = type;

    return spot_instrument_market_data_response_err_local_var;
}


void spot_instrument_market_data_response_err_free(spot_instrument_market_data_response_err_t *spot_instrument_market_data_response_err) {
    if(NULL == spot_instrument_market_data_response_err){
        return ;
    }
    listEntry_t *listEntry;
    if (spot_instrument_market_data_response_err->message) {
        free(spot_instrument_market_data_response_err->message);
        spot_instrument_market_data_response_err->message = NULL;
    }
    if (spot_instrument_market_data_response_err->other_info) {
        spot_instrument_market_data_response_err_other_info_free(spot_instrument_market_data_response_err->other_info);
        spot_instrument_market_data_response_err->other_info = NULL;
    }
    free(spot_instrument_market_data_response_err);
}

cJSON *spot_instrument_market_data_response_err_convertToJSON(spot_instrument_market_data_response_err_t *spot_instrument_market_data_response_err) {
    cJSON *item = cJSON_CreateObject();

    // spot_instrument_market_data_response_err->message
    if(spot_instrument_market_data_response_err->message) {
    if(cJSON_AddStringToObject(item, "message", spot_instrument_market_data_response_err->message) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_market_data_response_err->other_info
    if(spot_instrument_market_data_response_err->other_info) {
    cJSON *other_info_local_JSON = spot_instrument_market_data_response_err_other_info_convertToJSON(spot_instrument_market_data_response_err->other_info);
    if(other_info_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "other_info", other_info_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // spot_instrument_market_data_response_err->type
    if(spot_instrument_market_data_response_err->type) {
    if(cJSON_AddNumberToObject(item, "type", spot_instrument_market_data_response_err->type) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

spot_instrument_market_data_response_err_t *spot_instrument_market_data_response_err_parseFromJSON(cJSON *spot_instrument_market_data_response_errJSON){

    spot_instrument_market_data_response_err_t *spot_instrument_market_data_response_err_local_var = NULL;

    // define the local variable for spot_instrument_market_data_response_err->other_info
    spot_instrument_market_data_response_err_other_info_t *other_info_local_nonprim = NULL;

    // spot_instrument_market_data_response_err->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_data_response_errJSON, "message");
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // spot_instrument_market_data_response_err->other_info
    cJSON *other_info = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_data_response_errJSON, "other_info");
    if (other_info) { 
    other_info_local_nonprim = spot_instrument_market_data_response_err_other_info_parseFromJSON(other_info); //nonprimitive
    }

    // spot_instrument_market_data_response_err->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_data_response_errJSON, "type");
    if (type) { 
    if(!cJSON_IsNumber(type))
    {
    goto end; //Numeric
    }
    }


    spot_instrument_market_data_response_err_local_var = spot_instrument_market_data_response_err_create (
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        other_info ? other_info_local_nonprim : NULL,
        type ? type->valuedouble : 0
        );

    return spot_instrument_market_data_response_err_local_var;
end:
    if (other_info_local_nonprim) {
        spot_instrument_market_data_response_err_other_info_free(other_info_local_nonprim);
        other_info_local_nonprim = NULL;
    }
    return NULL;

}
