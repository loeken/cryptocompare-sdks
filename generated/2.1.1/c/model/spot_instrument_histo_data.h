/*
 * spot_instrument_histo_data.h
 *
 * 
 */

#ifndef _spot_instrument_histo_data_H_
#define _spot_instrument_histo_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct spot_instrument_histo_data_t spot_instrument_histo_data_t;




typedef struct spot_instrument_histo_data_t {
    char *base; // string
    int close; //numeric
    int first_trade_price; //numeric
    int first_trade_timestamp; //numeric
    int high; //numeric
    int high_trade_price; //numeric
    int high_trade_timestamp; //numeric
    char *instrument; // string
    int last_trade_price; //numeric
    int last_trade_timestamp; //numeric
    int low; //numeric
    int low_trade_price; //numeric
    int low_trade_timestamp; //numeric
    char *mapped_instrument; // string
    char *market; // string
    int open; //numeric
    char *quote; // string
    int quote_volume; //numeric
    int quote_volume_buy; //numeric
    int quote_volume_sell; //numeric
    int quote_volume_unknown; //numeric
    int timestamp; //numeric
    int total_trades; //numeric
    int total_trades_buy; //numeric
    int total_trades_sell; //numeric
    int total_trades_unknown; //numeric
    char *type; // string
    char *unit; // string
    int volume; //numeric
    int volume_buy; //numeric
    int volume_sell; //numeric
    int volume_unknown; //numeric

} spot_instrument_histo_data_t;

spot_instrument_histo_data_t *spot_instrument_histo_data_create(
    char *base,
    int close,
    int first_trade_price,
    int first_trade_timestamp,
    int high,
    int high_trade_price,
    int high_trade_timestamp,
    char *instrument,
    int last_trade_price,
    int last_trade_timestamp,
    int low,
    int low_trade_price,
    int low_trade_timestamp,
    char *mapped_instrument,
    char *market,
    int open,
    char *quote,
    int quote_volume,
    int quote_volume_buy,
    int quote_volume_sell,
    int quote_volume_unknown,
    int timestamp,
    int total_trades,
    int total_trades_buy,
    int total_trades_sell,
    int total_trades_unknown,
    char *type,
    char *unit,
    int volume,
    int volume_buy,
    int volume_sell,
    int volume_unknown
);

void spot_instrument_histo_data_free(spot_instrument_histo_data_t *spot_instrument_histo_data);

spot_instrument_histo_data_t *spot_instrument_histo_data_parseFromJSON(cJSON *spot_instrument_histo_dataJSON);

cJSON *spot_instrument_histo_data_convertToJSON(spot_instrument_histo_data_t *spot_instrument_histo_data);

#endif /* _spot_instrument_histo_data_H_ */

