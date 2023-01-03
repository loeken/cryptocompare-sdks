/*
 * error.h
 *
 * 
 */

#ifndef _error_H_
#define _error_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct error_t error_t;

#include "error_err.h"
#include "object.h"



typedef struct error_t {
    object_t *data; //object
    struct error_err_t *err; //model

} error_t;

error_t *error_create(
    object_t *data,
    error_err_t *err
);

void error_free(error_t *error);

error_t *error_parseFromJSON(cJSON *errorJSON);

cJSON *error_convertToJSON(error_t *error);

#endif /* _error_H_ */

