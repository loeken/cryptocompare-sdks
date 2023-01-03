/*
 * generic_response.h
 *
 * 
 */

#ifndef _generic_response_H_
#define _generic_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct generic_response_t generic_response_t;

#include "generic_response_data.h"
#include "object.h"



typedef struct generic_response_t {
    struct generic_response_data_t *data; //model
    object_t *err; //object

} generic_response_t;

generic_response_t *generic_response_create(
    generic_response_data_t *data,
    object_t *err
);

void generic_response_free(generic_response_t *generic_response);

generic_response_t *generic_response_parseFromJSON(cJSON *generic_responseJSON);

cJSON *generic_response_convertToJSON(generic_response_t *generic_response);

#endif /* _generic_response_H_ */

