#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "generic_response.h"



generic_response_t *generic_response_create(
    generic_response_data_t *data,
    object_t *err
    ) {
    generic_response_t *generic_response_local_var = malloc(sizeof(generic_response_t));
    if (!generic_response_local_var) {
        return NULL;
    }
    generic_response_local_var->data = data;
    generic_response_local_var->err = err;

    return generic_response_local_var;
}


void generic_response_free(generic_response_t *generic_response) {
    if(NULL == generic_response){
        return ;
    }
    listEntry_t *listEntry;
    if (generic_response->data) {
        generic_response_data_free(generic_response->data);
        generic_response->data = NULL;
    }
    if (generic_response->err) {
        object_free(generic_response->err);
        generic_response->err = NULL;
    }
    free(generic_response);
}

cJSON *generic_response_convertToJSON(generic_response_t *generic_response) {
    cJSON *item = cJSON_CreateObject();

    // generic_response->data
    if(generic_response->data) {
    cJSON *data_local_JSON = generic_response_data_convertToJSON(generic_response->data);
    if(data_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "Data", data_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // generic_response->err
    if(generic_response->err) {
    cJSON *err_object = object_convertToJSON(generic_response->err);
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

generic_response_t *generic_response_parseFromJSON(cJSON *generic_responseJSON){

    generic_response_t *generic_response_local_var = NULL;

    // define the local variable for generic_response->data
    generic_response_data_t *data_local_nonprim = NULL;

    // generic_response->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(generic_responseJSON, "Data");
    if (data) { 
    data_local_nonprim = generic_response_data_parseFromJSON(data); //nonprimitive
    }

    // generic_response->err
    cJSON *err = cJSON_GetObjectItemCaseSensitive(generic_responseJSON, "Err");
    object_t *err_local_object = NULL;
    if (err) { 
    err_local_object = object_parseFromJSON(err); //object
    }


    generic_response_local_var = generic_response_create (
        data ? data_local_nonprim : NULL,
        err ? err_local_object : NULL
        );

    return generic_response_local_var;
end:
    if (data_local_nonprim) {
        generic_response_data_free(data_local_nonprim);
        data_local_nonprim = NULL;
    }
    return NULL;

}
