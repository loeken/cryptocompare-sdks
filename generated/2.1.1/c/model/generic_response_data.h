/*
 * generic_response_data.h
 *
 * 
 */

#ifndef _generic_response_data_H_
#define _generic_response_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct generic_response_data_t generic_response_data_t;




typedef struct generic_response_data_t {
    char *no_data; // string

} generic_response_data_t;

generic_response_data_t *generic_response_data_create(
    char *no_data
);

void generic_response_data_free(generic_response_data_t *generic_response_data);

generic_response_data_t *generic_response_data_parseFromJSON(cJSON *generic_response_dataJSON);

cJSON *generic_response_data_convertToJSON(generic_response_data_t *generic_response_data);

#endif /* _generic_response_data_H_ */

