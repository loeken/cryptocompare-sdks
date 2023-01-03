/*
 * spot_instrument_trade.h
 *
 * 
 */

#ifndef _spot_instrument_trade_H_
#define _spot_instrument_trade_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct spot_instrument_trade_t spot_instrument_trade_t;




typedef struct spot_instrument_trade_t {
    char *base; // string
    int ccseq; //numeric
    char *id; // string
    char *instrument; // string
    char *mapped_instrument; // string
    char *market; // string
    int price; //numeric
    int quantity; //numeric
    char *quote; // string
    int quote_quantity; //numeric
    int received_timestamp; //numeric
    int received_timestamp_ns; //numeric
    char *side; // string
    char *source; // string
    int timestamp; //numeric
    int timestamp_ns; //numeric
    char *type; // string

} spot_instrument_trade_t;

spot_instrument_trade_t *spot_instrument_trade_create(
    char *base,
    int ccseq,
    char *id,
    char *instrument,
    char *mapped_instrument,
    char *market,
    int price,
    int quantity,
    char *quote,
    int quote_quantity,
    int received_timestamp,
    int received_timestamp_ns,
    char *side,
    char *source,
    int timestamp,
    int timestamp_ns,
    char *type
);

void spot_instrument_trade_free(spot_instrument_trade_t *spot_instrument_trade);

spot_instrument_trade_t *spot_instrument_trade_parseFromJSON(cJSON *spot_instrument_tradeJSON);

cJSON *spot_instrument_trade_convertToJSON(spot_instrument_trade_t *spot_instrument_trade);

#endif /* _spot_instrument_trade_H_ */

