#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "error_err.h"



error_err_t *error_err_create(
    char *message,
    error_err_other_info_t *other_info,
    int type
    ) {
    error_err_t *error_err_local_var = malloc(sizeof(error_err_t));
    if (!error_err_local_var) {
        return NULL;
    }
    error_err_local_var->message = message;
    error_err_local_var->other_info = other_info;
    error_err_local_var->type = type;

    return error_err_local_var;
}


void error_err_free(error_err_t *error_err) {
    if(NULL == error_err){
        return ;
    }
    listEntry_t *listEntry;
    if (error_err->message) {
        free(error_err->message);
        error_err->message = NULL;
    }
    if (error_err->other_info) {
        error_err_other_info_free(error_err->other_info);
        error_err->other_info = NULL;
    }
    free(error_err);
}

cJSON *error_err_convertToJSON(error_err_t *error_err) {
    cJSON *item = cJSON_CreateObject();

    // error_err->message
    if(error_err->message) {
    if(cJSON_AddStringToObject(item, "message", error_err->message) == NULL) {
    goto fail; //String
    }
    }


    // error_err->other_info
    if(error_err->other_info) {
    cJSON *other_info_local_JSON = error_err_other_info_convertToJSON(error_err->other_info);
    if(other_info_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "other_info", other_info_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // error_err->type
    if(error_err->type) {
    if(cJSON_AddNumberToObject(item, "type", error_err->type) == NULL) {
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

error_err_t *error_err_parseFromJSON(cJSON *error_errJSON){

    error_err_t *error_err_local_var = NULL;

    // define the local variable for error_err->other_info
    error_err_other_info_t *other_info_local_nonprim = NULL;

    // error_err->message
    cJSON *message = cJSON_GetObjectItemCaseSensitive(error_errJSON, "message");
    if (message) { 
    if(!cJSON_IsString(message) && !cJSON_IsNull(message))
    {
    goto end; //String
    }
    }

    // error_err->other_info
    cJSON *other_info = cJSON_GetObjectItemCaseSensitive(error_errJSON, "other_info");
    if (other_info) { 
    other_info_local_nonprim = error_err_other_info_parseFromJSON(other_info); //nonprimitive
    }

    // error_err->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(error_errJSON, "type");
    if (type) { 
    if(!cJSON_IsNumber(type))
    {
    goto end; //Numeric
    }
    }


    error_err_local_var = error_err_create (
        message && !cJSON_IsNull(message) ? strdup(message->valuestring) : NULL,
        other_info ? other_info_local_nonprim : NULL,
        type ? type->valuedouble : 0
        );

    return error_err_local_var;
end:
    if (other_info_local_nonprim) {
        error_err_other_info_free(other_info_local_nonprim);
        other_info_local_nonprim = NULL;
    }
    return NULL;

}
