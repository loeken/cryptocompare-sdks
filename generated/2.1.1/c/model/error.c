#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "error.h"



error_t *error_create(
    object_t *data,
    error_err_t *err
    ) {
    error_t *error_local_var = malloc(sizeof(error_t));
    if (!error_local_var) {
        return NULL;
    }
    error_local_var->data = data;
    error_local_var->err = err;

    return error_local_var;
}


void error_free(error_t *error) {
    if(NULL == error){
        return ;
    }
    listEntry_t *listEntry;
    if (error->data) {
        object_free(error->data);
        error->data = NULL;
    }
    if (error->err) {
        error_err_free(error->err);
        error->err = NULL;
    }
    free(error);
}

cJSON *error_convertToJSON(error_t *error) {
    cJSON *item = cJSON_CreateObject();

    // error->data
    if(error->data) {
    cJSON *data_object = object_convertToJSON(error->data);
    if(data_object == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "Data", data_object);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // error->err
    if(error->err) {
    cJSON *err_local_JSON = error_err_convertToJSON(error->err);
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

error_t *error_parseFromJSON(cJSON *errorJSON){

    error_t *error_local_var = NULL;

    // define the local variable for error->err
    error_err_t *err_local_nonprim = NULL;

    // error->data
    cJSON *data = cJSON_GetObjectItemCaseSensitive(errorJSON, "Data");
    object_t *data_local_object = NULL;
    if (data) { 
    data_local_object = object_parseFromJSON(data); //object
    }

    // error->err
    cJSON *err = cJSON_GetObjectItemCaseSensitive(errorJSON, "Err");
    if (err) { 
    err_local_nonprim = error_err_parseFromJSON(err); //nonprimitive
    }


    error_local_var = error_create (
        data ? data_local_object : NULL,
        err ? err_local_nonprim : NULL
        );

    return error_local_var;
end:
    if (err_local_nonprim) {
        error_err_free(err_local_nonprim);
        err_local_nonprim = NULL;
    }
    return NULL;

}
