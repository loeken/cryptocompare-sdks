#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "spot_instrument_trade_response.h"



spot_instrument_trade_response_t *spot_instrument_trade_response_create(
    list_t *data,
    object_t *err
    ) {
    spot_instrument_trade_response_t *spot_instrument_trade_response_local_var = malloc(sizeof(spot_instrument_trade_response_t));
    if (!spot_instrument_trade_response_local_var) {
        return NULL;
    }
    spot_instrument_trade_response_local_var->data = data;
    spot_instrument_trade_response_local_var->err = err;

    return spot_instrument_trade_response_local_var;
}


void spot_instrument_trade_response_free(spot_instrument_trade_response_t *spot_instrument_trade_response) {
    if(NULL == spot_instrument_trade_response){
        return ;
    }
    listEntry_t *listEntry;
    if (spot_instrument_trade_response->data) {
        list_ForEach(listEntry, spot_instrument_trade_response->data) {
            spot_instrument_trade_free(listEntry->data);
        }
        list_freeList(spot_instrument_trade_response->data);
        spot_instrument_trade_response->data = NULL;
    }
    if (spot_instrument_trade_response->err) {
        object_free(spot_instrument_trade_response->err);
        spot_instrument_trade_response->err = NULL;
    }
    free(spot_instrument_trade_response);
}

cJSON *spot_instrument_trade_response_convertToJSON(spot_instrument_trade_response_t *spot_instrument_trade_response) {
    cJSON *item = cJSON_CreateObject();

    // spot_instrument_trade_response->data
    if(spot_instrument_trade_response->data) {
    cJSON *data = cJSON_AddArrayToObject(item, "Data");
    if(data == NULL) {
    goto fail; //nonprimitive container
    }

    listEntry_t *dataListEntry;
    if (spot_instrument_trade_response->data) {
    list_ForEach(dataListEntry, spot_instrument_trade_response->data) {
    cJSON *itemLocal = spot_instrument_trade_convertToJSON(dataListEntry->data);
    if(itemLocal == NULL) {
    goto fail;
    }
    cJSON_AddItemToArray(data, itemLocal);
    }
    }
    }


    // spot_instrument_trade_response->err
    if(spot_instrument_trade_response->err) {
    cJSON *err_object = object_convertToJSON(spot_instrument_trade_response->err);
    if(err_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "Err", err_object);
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

spot_instrument_trade_response_t *spot_instrument_trade_response_parseFromJSON(cJSON *spot_instrument_trade_responseJSON){

    spot_instrument_trade_response_t *spot_instrument_trade_response_local_var = NULL;

    // define the local list for spot_instrument_trade_response->data
    list_t *dataList = NULL;

    // spot_instrument_trade_response->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(spot_instrument_trade_responseJSON, "Data");
    if (data) { 
    cJSON *data_local_nonprimitive = NULL;
    if(!cJSON_IsArray(data)){
        goto end; //nonprimitive container
    }

    dataList = list_createList();

    cJSON_ArrayForEach(data_local_nonprimitive,data )
    {
        if(!cJSON_IsObject(data_local_nonprimitive)){
            goto end;
        }
        spot_instrument_trade_t *dataItem = spot_instrument_trade_parseFromJSON(data_local_nonprimitive);

        list_addElement(dataList, dataItem);
    }
    }

    // spot_instrument_trade_response->err
    cJSON *err = cJSON_GetObjectItemCaseSensitive(spot_instrument_trade_responseJSON, "Err");
    object_t *err_local_object = NULL;
    if (err) { 
    err_local_object = object_parseFromJSON(err); //object
    }


    spot_instrument_trade_response_local_var = spot_instrument_trade_response_create (
        data ? dataList : NULL,
        err ? err_local_object : NULL
        );

    return spot_instrument_trade_response_local_var;
end:
    if (dataList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, dataList) {
            spot_instrument_trade_free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(dataList);
        dataList = NULL;
    }
    return NULL;

}
