/*
 * spot_instrument_metadata_response.h
 *
 * 
 */

#ifndef _spot_instrument_metadata_response_H_
#define _spot_instrument_metadata_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct spot_instrument_metadata_response_t spot_instrument_metadata_response_t;

#include "spot_instrument_market_data_response_err.h"
#include "spot_instrument_metadata.h"



typedef struct spot_instrument_metadata_response_t {
    list_t* data; //map
    struct spot_instrument_market_data_response_err_t *err; //model

} spot_instrument_metadata_response_t;

spot_instrument_metadata_response_t *spot_instrument_metadata_response_create(
    list_t* data,
    spot_instrument_market_data_response_err_t *err
);

void spot_instrument_metadata_response_free(spot_instrument_metadata_response_t *spot_instrument_metadata_response);

spot_instrument_metadata_response_t *spot_instrument_metadata_response_parseFromJSON(cJSON *spot_instrument_metadata_responseJSON);

cJSON *spot_instrument_metadata_response_convertToJSON(spot_instrument_metadata_response_t *spot_instrument_metadata_response);

#endif /* _spot_instrument_metadata_response_H_ */

