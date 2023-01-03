/*
 * spot_instrument_trade_response.h
 *
 * 
 */

#ifndef _spot_instrument_trade_response_H_
#define _spot_instrument_trade_response_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct spot_instrument_trade_response_t spot_instrument_trade_response_t;

#include "object.h"
#include "spot_instrument_trade.h"



typedef struct spot_instrument_trade_response_t {
    list_t *data; //nonprimitive container
    object_t *err; //object

} spot_instrument_trade_response_t;

spot_instrument_trade_response_t *spot_instrument_trade_response_create(
    list_t *data,
    object_t *err
);

void spot_instrument_trade_response_free(spot_instrument_trade_response_t *spot_instrument_trade_response);

spot_instrument_trade_response_t *spot_instrument_trade_response_parseFromJSON(cJSON *spot_instrument_trade_responseJSON);

cJSON *spot_instrument_trade_response_convertToJSON(spot_instrument_trade_response_t *spot_instrument_trade_response);

#endif /* _spot_instrument_trade_response_H_ */

