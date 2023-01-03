#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "spot_instrument_market_data_response_err_other_info.h"



spot_instrument_market_data_response_err_other_info_t *spot_instrument_market_data_response_err_other_info_create(
    char *param,
    list_t *values
    ) {
    spot_instrument_market_data_response_err_other_info_t *spot_instrument_market_data_response_err_other_info_local_var = malloc(sizeof(spot_instrument_market_data_response_err_other_info_t));
    if (!spot_instrument_market_data_response_err_other_info_local_var) {
        return NULL;
    }
    spot_instrument_market_data_response_err_other_info_local_var->param = param;
    spot_instrument_market_data_response_err_other_info_local_var->values = values;

    return spot_instrument_market_data_response_err_other_info_local_var;
}


void spot_instrument_market_data_response_err_other_info_free(spot_instrument_market_data_response_err_other_info_t *spot_instrument_market_data_response_err_other_info) {
    if(NULL == spot_instrument_market_data_response_err_other_info){
        return ;
    }
    listEntry_t *listEntry;
    if (spot_instrument_market_data_response_err_other_info->param) {
        free(spot_instrument_market_data_response_err_other_info->param);
        spot_instrument_market_data_response_err_other_info->param = NULL;
    }
    if (spot_instrument_market_data_response_err_other_info->values) {
        list_ForEach(listEntry, spot_instrument_market_data_response_err_other_info->values) {
            free(listEntry->data);
        }
        list_freeList(spot_instrument_market_data_response_err_other_info->values);
        spot_instrument_market_data_response_err_other_info->values = NULL;
    }
    free(spot_instrument_market_data_response_err_other_info);
}

cJSON *spot_instrument_market_data_response_err_other_info_convertToJSON(spot_instrument_market_data_response_err_other_info_t *spot_instrument_market_data_response_err_other_info) {
    cJSON *item = cJSON_CreateObject();

    // spot_instrument_market_data_response_err_other_info->param
    if(spot_instrument_market_data_response_err_other_info->param) {
    if(cJSON_AddStringToObject(item, "param", spot_instrument_market_data_response_err_other_info->param) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_market_data_response_err_other_info->values
    if(spot_instrument_market_data_response_err_other_info->values) {
    cJSON *values = cJSON_AddArrayToObject(item, "values");
    if(values == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *valuesListEntry;
    list_ForEach(valuesListEntry, spot_instrument_market_data_response_err_other_info->values) {
    if(cJSON_AddStringToObject(values, "", (char*)valuesListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

spot_instrument_market_data_response_err_other_info_t *spot_instrument_market_data_response_err_other_info_parseFromJSON(cJSON *spot_instrument_market_data_response_err_other_infoJSON){

    spot_instrument_market_data_response_err_other_info_t *spot_instrument_market_data_response_err_other_info_local_var = NULL;

    // define the local list for spot_instrument_market_data_response_err_other_info->values
    list_t *valuesList = NULL;

    // spot_instrument_market_data_response_err_other_info->param
    cJSON *param = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_data_response_err_other_infoJSON, "param");
    if (param) { 
    if(!cJSON_IsString(param) && !cJSON_IsNull(param))
    {
    goto end; //String
    }
    }

    // spot_instrument_market_data_response_err_other_info->values
    cJSON *values = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_data_response_err_other_infoJSON, "values");
    if (values) { 
    cJSON *values_local = NULL;
    if(!cJSON_IsArray(values)) {
        goto end;//primitive container
    }
    valuesList = list_createList();

    cJSON_ArrayForEach(values_local, values)
    {
        if(!cJSON_IsString(values_local))
        {
            goto end;
        }
        list_addElement(valuesList , strdup(values_local->valuestring));
    }
    }


    spot_instrument_market_data_response_err_other_info_local_var = spot_instrument_market_data_response_err_other_info_create (
        param && !cJSON_IsNull(param) ? strdup(param->valuestring) : NULL,
        values ? valuesList : NULL
        );

    return spot_instrument_market_data_response_err_other_info_local_var;
end:
    if (valuesList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, valuesList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(valuesList);
        valuesList = NULL;
    }
    return NULL;

}
