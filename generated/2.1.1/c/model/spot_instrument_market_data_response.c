#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "spot_instrument_market_data_response.h"



spot_instrument_market_data_response_t *spot_instrument_market_data_response_create(
    list_t* data,
    spot_instrument_market_data_response_err_t *err
    ) {
    spot_instrument_market_data_response_t *spot_instrument_market_data_response_local_var = malloc(sizeof(spot_instrument_market_data_response_t));
    if (!spot_instrument_market_data_response_local_var) {
        return NULL;
    }
    spot_instrument_market_data_response_local_var->data = data;
    spot_instrument_market_data_response_local_var->err = err;

    return spot_instrument_market_data_response_local_var;
}


void spot_instrument_market_data_response_free(spot_instrument_market_data_response_t *spot_instrument_market_data_response) {
    if(NULL == spot_instrument_market_data_response){
        return ;
    }
    listEntry_t *listEntry;
    if (spot_instrument_market_data_response->data) {
        list_ForEach(listEntry, spot_instrument_market_data_response->data) {
            keyValuePair_t *localKeyValue = (keyValuePair_t*) listEntry->data;
            free (localKeyValue->key);
            free (localKeyValue->value);
            keyValuePair_free(localKeyValue);
        }
        list_freeList(spot_instrument_market_data_response->data);
        spot_instrument_market_data_response->data = NULL;
    }
    if (spot_instrument_market_data_response->err) {
        spot_instrument_market_data_response_err_free(spot_instrument_market_data_response->err);
        spot_instrument_market_data_response->err = NULL;
    }
    free(spot_instrument_market_data_response);
}

cJSON *spot_instrument_market_data_response_convertToJSON(spot_instrument_market_data_response_t *spot_instrument_market_data_response) {
    cJSON *item = cJSON_CreateObject();

    // spot_instrument_market_data_response->data
    if(spot_instrument_market_data_response->data) {
    cJSON *data = cJSON_AddObjectToObject(item, "Data");
    if(data == NULL) {
        goto fail; //primitive map container
    }
    cJSON *localMapObject = data;
    listEntry_t *dataListEntry;
    if (spot_instrument_market_data_response->data) {
    list_ForEach(dataListEntry, spot_instrument_market_data_response->data) {
        keyValuePair_t *localKeyValue = (keyValuePair_t*)dataListEntry->data;
    }
    }
    }


    // spot_instrument_market_data_response->err
    if(spot_instrument_market_data_response->err) {
    cJSON *err_local_JSON = spot_instrument_market_data_response_err_convertToJSON(spot_instrument_market_data_response->err);
    if(err_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "Err", err_local_JSON);
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

spot_instrument_market_data_response_t *spot_instrument_market_data_response_parseFromJSON(cJSON *spot_instrument_market_data_responseJSON){

    spot_instrument_market_data_response_t *spot_instrument_market_data_response_local_var = NULL;

    // define the local map for spot_instrument_market_data_response->data
    list_t *dataList = NULL;

    // define the local variable for spot_instrument_market_data_response->err
    spot_instrument_market_data_response_err_t *err_local_nonprim = NULL;

    // spot_instrument_market_data_response->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_data_responseJSON, "Data");
    if (data) { 

    // The data type of the elements in spot_instrument_market_data_response->data is currently not supported.

    }

    // spot_instrument_market_data_response->err
    cJSON *err = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_data_responseJSON, "Err");
    if (err) { 
    err_local_nonprim = spot_instrument_market_data_response_err_parseFromJSON(err); //nonprimitive
    }


    spot_instrument_market_data_response_local_var = spot_instrument_market_data_response_create (
        data ? dataList : NULL,
        err ? err_local_nonprim : NULL
        );

    return spot_instrument_market_data_response_local_var;
end:

    // The data type of the elements in spot_instrument_market_data_response->data is currently not supported.

    if (err_local_nonprim) {
        spot_instrument_market_data_response_err_free(err_local_nonprim);
        err_local_nonprim = NULL;
    }
    return NULL;

}
