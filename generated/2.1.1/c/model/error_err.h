/*
 * error_err.h
 *
 * 
 */

#ifndef _error_err_H_
#define _error_err_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct error_err_t error_err_t;

#include "error_err_other_info.h"



typedef struct error_err_t {
    char *message; // string
    struct error_err_other_info_t *other_info; //model
    int type; //numeric

} error_err_t;

error_err_t *error_err_create(
    char *message,
    error_err_other_info_t *other_info,
    int type
);

void error_err_free(error_err_t *error_err);

error_err_t *error_err_parseFromJSON(cJSON *error_errJSON);

cJSON *error_err_convertToJSON(error_err_t *error_err);

#endif /* _error_err_H_ */

