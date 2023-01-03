/*
 * spot_instrument_market_data_response_err.h
 *
 * 
 */

#ifndef _spot_instrument_market_data_response_err_H_
#define _spot_instrument_market_data_response_err_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct spot_instrument_market_data_response_err_t spot_instrument_market_data_response_err_t;

#include "spot_instrument_market_data_response_err_other_info.h"



typedef struct spot_instrument_market_data_response_err_t {
    char *message; // string
    struct spot_instrument_market_data_response_err_other_info_t *other_info; //model
    int type; //numeric

} spot_instrument_market_data_response_err_t;

spot_instrument_market_data_response_err_t *spot_instrument_market_data_response_err_create(
    char *message,
    spot_instrument_market_data_response_err_other_info_t *other_info,
    int type
);

void spot_instrument_market_data_response_err_free(spot_instrument_market_data_response_err_t *spot_instrument_market_data_response_err);

spot_instrument_market_data_response_err_t *spot_instrument_market_data_response_err_parseFromJSON(cJSON *spot_instrument_market_data_response_errJSON);

cJSON *spot_instrument_market_data_response_err_convertToJSON(spot_instrument_market_data_response_err_t *spot_instrument_market_data_response_err);

#endif /* _spot_instrument_market_data_response_err_H_ */

