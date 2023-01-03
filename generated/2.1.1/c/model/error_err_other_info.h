/*
 * error_err_other_info.h
 *
 * 
 */

#ifndef _error_err_other_info_H_
#define _error_err_other_info_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct error_err_other_info_t error_err_other_info_t;




typedef struct error_err_other_info_t {
    char *param; // string
    list_t *values; //primitive container

} error_err_other_info_t;

error_err_other_info_t *error_err_other_info_create(
    char *param,
    list_t *values
);

void error_err_other_info_free(error_err_other_info_t *error_err_other_info);

error_err_other_info_t *error_err_other_info_parseFromJSON(cJSON *error_err_other_infoJSON);

cJSON *error_err_other_info_convertToJSON(error_err_other_info_t *error_err_other_info);

#endif /* _error_err_other_info_H_ */

