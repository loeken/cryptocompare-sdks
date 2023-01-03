/*
 * spot_instrument_market_data_response_err_other_info.h
 *
 * 
 */

#ifndef _spot_instrument_market_data_response_err_other_info_H_
#define _spot_instrument_market_data_response_err_other_info_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct spot_instrument_market_data_response_err_other_info_t spot_instrument_market_data_response_err_other_info_t;




typedef struct spot_instrument_market_data_response_err_other_info_t {
    char *param; // string
    list_t *values; //primitive container

} spot_instrument_market_data_response_err_other_info_t;

spot_instrument_market_data_response_err_other_info_t *spot_instrument_market_data_response_err_other_info_create(
    char *param,
    list_t *values
);

void spot_instrument_market_data_response_err_other_info_free(spot_instrument_market_data_response_err_other_info_t *spot_instrument_market_data_response_err_other_info);

spot_instrument_market_data_response_err_other_info_t *spot_instrument_market_data_response_err_other_info_parseFromJSON(cJSON *spot_instrument_market_data_response_err_other_infoJSON);

cJSON *spot_instrument_market_data_response_err_other_info_convertToJSON(spot_instrument_market_data_response_err_other_info_t *spot_instrument_market_data_response_err_other_info);

#endif /* _spot_instrument_market_data_response_err_other_info_H_ */

