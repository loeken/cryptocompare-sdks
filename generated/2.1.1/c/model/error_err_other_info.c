#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "error_err_other_info.h"



error_err_other_info_t *error_err_other_info_create(
    char *param,
    list_t *values
    ) {
    error_err_other_info_t *error_err_other_info_local_var = malloc(sizeof(error_err_other_info_t));
    if (!error_err_other_info_local_var) {
        return NULL;
    }
    error_err_other_info_local_var->param = param;
    error_err_other_info_local_var->values = values;

    return error_err_other_info_local_var;
}


void error_err_other_info_free(error_err_other_info_t *error_err_other_info) {
    if(NULL == error_err_other_info){
        return ;
    }
    listEntry_t *listEntry;
    if (error_err_other_info->param) {
        free(error_err_other_info->param);
        error_err_other_info->param = NULL;
    }
    if (error_err_other_info->values) {
        list_ForEach(listEntry, error_err_other_info->values) {
            free(listEntry->data);
        }
        list_freeList(error_err_other_info->values);
        error_err_other_info->values = NULL;
    }
    free(error_err_other_info);
}

cJSON *error_err_other_info_convertToJSON(error_err_other_info_t *error_err_other_info) {
    cJSON *item = cJSON_CreateObject();

    // error_err_other_info->param
    if(error_err_other_info->param) {
    if(cJSON_AddStringToObject(item, "param", error_err_other_info->param) == NULL) {
    goto fail; //String
    }
    }


    // error_err_other_info->values
    if(error_err_other_info->values) {
    cJSON *values = cJSON_AddArrayToObject(item, "values");
    if(values == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *valuesListEntry;
    list_ForEach(valuesListEntry, error_err_other_info->values) {
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

error_err_other_info_t *error_err_other_info_parseFromJSON(cJSON *error_err_other_infoJSON){

    error_err_other_info_t *error_err_other_info_local_var = NULL;

    // define the local list for error_err_other_info->values
    list_t *valuesList = NULL;

    // error_err_other_info->param
    cJSON *param = cJSON_GetObjectItemCaseSensitive(error_err_other_infoJSON, "param");
    if (param) { 
    if(!cJSON_IsString(param) && !cJSON_IsNull(param))
    {
    goto end; //String
    }
    }

    // error_err_other_info->values
    cJSON *values = cJSON_GetObjectItemCaseSensitive(error_err_other_infoJSON, "values");
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


    error_err_other_info_local_var = error_err_other_info_create (
        param && !cJSON_IsNull(param) ? strdup(param->valuestring) : NULL,
        values ? valuesList : NULL
        );

    return error_err_other_info_local_var;
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
