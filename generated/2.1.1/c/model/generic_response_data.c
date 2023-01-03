#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "generic_response_data.h"



generic_response_data_t *generic_response_data_create(
    char *no_data
    ) {
    generic_response_data_t *generic_response_data_local_var = malloc(sizeof(generic_response_data_t));
    if (!generic_response_data_local_var) {
        return NULL;
    }
    generic_response_data_local_var->no_data = no_data;

    return generic_response_data_local_var;
}


void generic_response_data_free(generic_response_data_t *generic_response_data) {
    if(NULL == generic_response_data){
        return ;
    }
    listEntry_t *listEntry;
    if (generic_response_data->no_data) {
        free(generic_response_data->no_data);
        generic_response_data->no_data = NULL;
    }
    free(generic_response_data);
}

cJSON *generic_response_data_convertToJSON(generic_response_data_t *generic_response_data) {
    cJSON *item = cJSON_CreateObject();

    // generic_response_data->no_data
    if(generic_response_data->no_data) {
    if(cJSON_AddStringToObject(item, "NO_DATA", generic_response_data->no_data) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

generic_response_data_t *generic_response_data_parseFromJSON(cJSON *generic_response_dataJSON){

    generic_response_data_t *generic_response_data_local_var = NULL;

    // generic_response_data->no_data
    cJSON *no_data = cJSON_GetObjectItemCaseSensitive(generic_response_dataJSON, "NO_DATA");
    if (no_data) { 
    if(!cJSON_IsString(no_data) && !cJSON_IsNull(no_data))
    {
    goto end; //String
    }
    }


    generic_response_data_local_var = generic_response_data_create (
        no_data && !cJSON_IsNull(no_data) ? strdup(no_data->valuestring) : NULL
        );

    return generic_response_data_local_var;
end:
    return NULL;

}
