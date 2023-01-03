/*
 * spot_instrument_market_data.h
 *
 * 
 */

#ifndef _spot_instrument_market_data_H_
#define _spot_instrument_market_data_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct spot_instrument_market_data_t spot_instrument_market_data_t;




typedef struct spot_instrument_market_data_t {
    char *base; // string
    int ccseq; //numeric
    int current_day_high; //numeric
    int current_day_low; //numeric
    int current_day_open; //numeric
    int current_day_quote_volume; //numeric
    int current_day_quote_volume_buy; //numeric
    int current_day_quote_volume_sell; //numeric
    int current_day_quote_volume_unknown; //numeric
    int current_day_total_trades; //numeric
    int current_day_total_trades_buy; //numeric
    int current_day_total_trades_sell; //numeric
    int current_day_total_trades_unknown; //numeric
    int current_day_volume; //numeric
    int current_day_volume_buy; //numeric
    int current_day_volume_sell; //numeric
    int current_day_volume_unknown; //numeric
    int current_hour_high; //numeric
    int current_hour_low; //numeric
    int current_hour_open; //numeric
    int current_hour_quote_volume; //numeric
    int current_hour_quote_volume_buy; //numeric
    int current_hour_quote_volume_sell; //numeric
    int current_hour_quote_volume_unknown; //numeric
    int current_hour_total_trades; //numeric
    int current_hour_total_trades_buy; //numeric
    int current_hour_total_trades_sell; //numeric
    int current_hour_total_trades_unknown; //numeric
    int current_hour_volume; //numeric
    int current_hour_volume_buy; //numeric
    int current_hour_volume_sell; //numeric
    int current_hour_volume_unknown; //numeric
    int current_month_high; //numeric
    int current_month_low; //numeric
    int current_month_open; //numeric
    int current_month_quote_volume; //numeric
    int current_month_quote_volume_buy; //numeric
    int current_month_quote_volume_sell; //numeric
    int current_month_quote_volume_unknown; //numeric
    int current_month_total_trades; //numeric
    int current_month_total_trades_buy; //numeric
    int current_month_total_trades_sell; //numeric
    int current_month_total_trades_unknown; //numeric
    int current_month_volume; //numeric
    int current_month_volume_buy; //numeric
    int current_month_volume_sell; //numeric
    int current_month_volume_unknown; //numeric
    int current_week_high; //numeric
    int current_week_low; //numeric
    int current_week_open; //numeric
    int current_week_quote_volume; //numeric
    int current_week_quote_volume_buy; //numeric
    int current_week_quote_volume_sell; //numeric
    int current_week_quote_volume_unknown; //numeric
    int current_week_total_trades; //numeric
    int current_week_total_trades_buy; //numeric
    int current_week_total_trades_sell; //numeric
    int current_week_total_trades_unknown; //numeric
    int current_week_volume; //numeric
    int current_week_volume_buy; //numeric
    int current_week_volume_sell; //numeric
    int current_week_volume_unknown; //numeric
    int current_year_high; //numeric
    int current_year_low; //numeric
    int current_year_open; //numeric
    int current_year_quote_volume; //numeric
    int current_year_quote_volume_buy; //numeric
    int current_year_quote_volume_sell; //numeric
    int current_year_quote_volume_unknown; //numeric
    int current_year_total_trades; //numeric
    int current_year_total_trades_buy; //numeric
    int current_year_total_trades_sell; //numeric
    int current_year_total_trades_unknown; //numeric
    int current_year_volume; //numeric
    int current_year_volume_buy; //numeric
    int current_year_volume_sell; //numeric
    int current_year_volume_unknown; //numeric
    char *instrument; // string
    char *last_processed_trade_ccseq; // string
    int last_processed_trade_price; //numeric
    int last_processed_trade_quantity; //numeric
    int last_processed_trade_quote_quantity; //numeric
    char *last_processed_trade_side; // string
    int last_processed_trade_ts; //numeric
    char *last_trade_ccseq; // string
    char *last_trade_id; // string
    int last_trade_quantity; //numeric
    int last_trade_quote_quantity; //numeric
    char *last_trade_side; // string
    int lifetime_first_trade_ts; //numeric
    int lifetime_high; //numeric
    int lifetime_high_ts; //numeric
    int lifetime_low; //numeric
    int lifetime_low_ts; //numeric
    int lifetime_open; //numeric
    int lifetime_quote_volume; //numeric
    int lifetime_quote_volume_buy; //numeric
    int lifetime_quote_volume_sell; //numeric
    int lifetime_quote_volume_unknown; //numeric
    int lifetime_total_trades; //numeric
    int lifetime_total_trades_buy; //numeric
    int lifetime_total_trades_sell; //numeric
    int lifetime_total_trades_unknown; //numeric
    int lifetime_volume; //numeric
    int lifetime_volume_buy; //numeric
    int lifetime_volume_sell; //numeric
    int lifetime_volume_unknown; //numeric
    char *mapped_instrument; // string
    char *market; // string
    int moving_180_day_high; //numeric
    int moving_180_day_low; //numeric
    int moving_180_day_open; //numeric
    int moving_180_day_quote_volume; //numeric
    int moving_180_day_quote_volume_buy; //numeric
    int moving_180_day_quote_volume_sell; //numeric
    int moving_180_day_quote_volume_unknown; //numeric
    int moving_180_day_total_trades; //numeric
    int moving_180_day_total_trades_buy; //numeric
    int moving_180_day_total_trades_sell; //numeric
    int moving_180_day_total_trades_unknown; //numeric
    int moving_180_day_volume; //numeric
    int moving_180_day_volume_buy; //numeric
    int moving_180_day_volume_sell; //numeric
    int moving_180_day_volume_unknown; //numeric
    int moving_24_hour_high; //numeric
    int moving_24_hour_low; //numeric
    int moving_24_hour_open; //numeric
    int moving_24_hour_quote_volume; //numeric
    int moving_24_hour_quote_volume_buy; //numeric
    int moving_24_hour_quote_volume_sell; //numeric
    int moving_24_hour_quote_volume_unknown; //numeric
    int moving_24_hour_total_trades; //numeric
    int moving_24_hour_total_trades_buy; //numeric
    int moving_24_hour_total_trades_sell; //numeric
    int moving_24_hour_total_trades_unknown; //numeric
    int moving_24_hour_volume; //numeric
    int moving_24_hour_volume_buy; //numeric
    int moving_24_hour_volume_sell; //numeric
    int moving_24_hour_volume_unknown; //numeric
    int moving_30_day_high; //numeric
    int moving_30_day_low; //numeric
    int moving_30_day_open; //numeric
    int moving_30_day_quote_volume; //numeric
    int moving_30_day_quote_volume_buy; //numeric
    int moving_30_day_quote_volume_sell; //numeric
    int moving_30_day_quote_volume_unknown; //numeric
    int moving_30_day_total_trades; //numeric
    int moving_30_day_total_trades_buy; //numeric
    int moving_30_day_total_trades_sell; //numeric
    int moving_30_day_total_trades_unknown; //numeric
    int moving_30_day_volume; //numeric
    int moving_30_day_volume_buy; //numeric
    int moving_30_day_volume_sell; //numeric
    int moving_30_day_volume_unknown; //numeric
    int moving_365_day_high; //numeric
    int moving_365_day_low; //numeric
    int moving_365_day_open; //numeric
    int moving_365_day_quote_volume; //numeric
    int moving_365_day_quote_volume_buy; //numeric
    int moving_365_day_quote_volume_sell; //numeric
    int moving_365_day_quote_volume_unknown; //numeric
    int moving_365_day_total_trades; //numeric
    int moving_365_day_total_trades_buy; //numeric
    int moving_365_day_total_trades_sell; //numeric
    int moving_365_day_total_trades_unknown; //numeric
    int moving_365_day_volume; //numeric
    int moving_365_day_volume_buy; //numeric
    int moving_365_day_volume_sell; //numeric
    int moving_365_day_volume_unknown; //numeric
    int moving_7_day_high; //numeric
    int moving_7_day_low; //numeric
    int moving_7_day_open; //numeric
    int moving_7_day_quote_volume; //numeric
    int moving_7_day_quote_volume_buy; //numeric
    int moving_7_day_quote_volume_sell; //numeric
    int moving_7_day_quote_volume_unknown; //numeric
    int moving_7_day_total_trades; //numeric
    int moving_7_day_total_trades_buy; //numeric
    int moving_7_day_total_trades_sell; //numeric
    int moving_7_day_total_trades_unknown; //numeric
    int moving_7_day_volume; //numeric
    int moving_7_day_volume_buy; //numeric
    int moving_7_day_volume_sell; //numeric
    int moving_7_day_volume_unknown; //numeric
    int moving_90_day_high; //numeric
    int moving_90_day_low; //numeric
    int moving_90_day_open; //numeric
    int moving_90_day_quote_volume; //numeric
    int moving_90_day_quote_volume_buy; //numeric
    int moving_90_day_quote_volume_sell; //numeric
    int moving_90_day_quote_volume_unknown; //numeric
    int moving_90_day_total_trades; //numeric
    int moving_90_day_total_trades_buy; //numeric
    int moving_90_day_total_trades_sell; //numeric
    int moving_90_day_total_trades_unknown; //numeric
    int moving_90_day_volume; //numeric
    int moving_90_day_volume_buy; //numeric
    int moving_90_day_volume_sell; //numeric
    int moving_90_day_volume_unknown; //numeric
    int price; //numeric
    char *price_flag; // string
    int price_last_update_ts; //numeric
    char *quote; // string
    int top_ask_last_update_ts; //numeric
    int top_ask_price; //numeric
    int top_ask_quantity; //numeric
    int top_bid_last_update_ts; //numeric
    int top_bid_price; //numeric
    int top_bid_quantity; //numeric
    char *type; // string

} spot_instrument_market_data_t;

spot_instrument_market_data_t *spot_instrument_market_data_create(
    char *base,
    int ccseq,
    int current_day_high,
    int current_day_low,
    int current_day_open,
    int current_day_quote_volume,
    int current_day_quote_volume_buy,
    int current_day_quote_volume_sell,
    int current_day_quote_volume_unknown,
    int current_day_total_trades,
    int current_day_total_trades_buy,
    int current_day_total_trades_sell,
    int current_day_total_trades_unknown,
    int current_day_volume,
    int current_day_volume_buy,
    int current_day_volume_sell,
    int current_day_volume_unknown,
    int current_hour_high,
    int current_hour_low,
    int current_hour_open,
    int current_hour_quote_volume,
    int current_hour_quote_volume_buy,
    int current_hour_quote_volume_sell,
    int current_hour_quote_volume_unknown,
    int current_hour_total_trades,
    int current_hour_total_trades_buy,
    int current_hour_total_trades_sell,
    int current_hour_total_trades_unknown,
    int current_hour_volume,
    int current_hour_volume_buy,
    int current_hour_volume_sell,
    int current_hour_volume_unknown,
    int current_month_high,
    int current_month_low,
    int current_month_open,
    int current_month_quote_volume,
    int current_month_quote_volume_buy,
    int current_month_quote_volume_sell,
    int current_month_quote_volume_unknown,
    int current_month_total_trades,
    int current_month_total_trades_buy,
    int current_month_total_trades_sell,
    int current_month_total_trades_unknown,
    int current_month_volume,
    int current_month_volume_buy,
    int current_month_volume_sell,
    int current_month_volume_unknown,
    int current_week_high,
    int current_week_low,
    int current_week_open,
    int current_week_quote_volume,
    int current_week_quote_volume_buy,
    int current_week_quote_volume_sell,
    int current_week_quote_volume_unknown,
    int current_week_total_trades,
    int current_week_total_trades_buy,
    int current_week_total_trades_sell,
    int current_week_total_trades_unknown,
    int current_week_volume,
    int current_week_volume_buy,
    int current_week_volume_sell,
    int current_week_volume_unknown,
    int current_year_high,
    int current_year_low,
    int current_year_open,
    int current_year_quote_volume,
    int current_year_quote_volume_buy,
    int current_year_quote_volume_sell,
    int current_year_quote_volume_unknown,
    int current_year_total_trades,
    int current_year_total_trades_buy,
    int current_year_total_trades_sell,
    int current_year_total_trades_unknown,
    int current_year_volume,
    int current_year_volume_buy,
    int current_year_volume_sell,
    int current_year_volume_unknown,
    char *instrument,
    char *last_processed_trade_ccseq,
    int last_processed_trade_price,
    int last_processed_trade_quantity,
    int last_processed_trade_quote_quantity,
    char *last_processed_trade_side,
    int last_processed_trade_ts,
    char *last_trade_ccseq,
    char *last_trade_id,
    int last_trade_quantity,
    int last_trade_quote_quantity,
    char *last_trade_side,
    int lifetime_first_trade_ts,
    int lifetime_high,
    int lifetime_high_ts,
    int lifetime_low,
    int lifetime_low_ts,
    int lifetime_open,
    int lifetime_quote_volume,
    int lifetime_quote_volume_buy,
    int lifetime_quote_volume_sell,
    int lifetime_quote_volume_unknown,
    int lifetime_total_trades,
    int lifetime_total_trades_buy,
    int lifetime_total_trades_sell,
    int lifetime_total_trades_unknown,
    int lifetime_volume,
    int lifetime_volume_buy,
    int lifetime_volume_sell,
    int lifetime_volume_unknown,
    char *mapped_instrument,
    char *market,
    int moving_180_day_high,
    int moving_180_day_low,
    int moving_180_day_open,
    int moving_180_day_quote_volume,
    int moving_180_day_quote_volume_buy,
    int moving_180_day_quote_volume_sell,
    int moving_180_day_quote_volume_unknown,
    int moving_180_day_total_trades,
    int moving_180_day_total_trades_buy,
    int moving_180_day_total_trades_sell,
    int moving_180_day_total_trades_unknown,
    int moving_180_day_volume,
    int moving_180_day_volume_buy,
    int moving_180_day_volume_sell,
    int moving_180_day_volume_unknown,
    int moving_24_hour_high,
    int moving_24_hour_low,
    int moving_24_hour_open,
    int moving_24_hour_quote_volume,
    int moving_24_hour_quote_volume_buy,
    int moving_24_hour_quote_volume_sell,
    int moving_24_hour_quote_volume_unknown,
    int moving_24_hour_total_trades,
    int moving_24_hour_total_trades_buy,
    int moving_24_hour_total_trades_sell,
    int moving_24_hour_total_trades_unknown,
    int moving_24_hour_volume,
    int moving_24_hour_volume_buy,
    int moving_24_hour_volume_sell,
    int moving_24_hour_volume_unknown,
    int moving_30_day_high,
    int moving_30_day_low,
    int moving_30_day_open,
    int moving_30_day_quote_volume,
    int moving_30_day_quote_volume_buy,
    int moving_30_day_quote_volume_sell,
    int moving_30_day_quote_volume_unknown,
    int moving_30_day_total_trades,
    int moving_30_day_total_trades_buy,
    int moving_30_day_total_trades_sell,
    int moving_30_day_total_trades_unknown,
    int moving_30_day_volume,
    int moving_30_day_volume_buy,
    int moving_30_day_volume_sell,
    int moving_30_day_volume_unknown,
    int moving_365_day_high,
    int moving_365_day_low,
    int moving_365_day_open,
    int moving_365_day_quote_volume,
    int moving_365_day_quote_volume_buy,
    int moving_365_day_quote_volume_sell,
    int moving_365_day_quote_volume_unknown,
    int moving_365_day_total_trades,
    int moving_365_day_total_trades_buy,
    int moving_365_day_total_trades_sell,
    int moving_365_day_total_trades_unknown,
    int moving_365_day_volume,
    int moving_365_day_volume_buy,
    int moving_365_day_volume_sell,
    int moving_365_day_volume_unknown,
    int moving_7_day_high,
    int moving_7_day_low,
    int moving_7_day_open,
    int moving_7_day_quote_volume,
    int moving_7_day_quote_volume_buy,
    int moving_7_day_quote_volume_sell,
    int moving_7_day_quote_volume_unknown,
    int moving_7_day_total_trades,
    int moving_7_day_total_trades_buy,
    int moving_7_day_total_trades_sell,
    int moving_7_day_total_trades_unknown,
    int moving_7_day_volume,
    int moving_7_day_volume_buy,
    int moving_7_day_volume_sell,
    int moving_7_day_volume_unknown,
    int moving_90_day_high,
    int moving_90_day_low,
    int moving_90_day_open,
    int moving_90_day_quote_volume,
    int moving_90_day_quote_volume_buy,
    int moving_90_day_quote_volume_sell,
    int moving_90_day_quote_volume_unknown,
    int moving_90_day_total_trades,
    int moving_90_day_total_trades_buy,
    int moving_90_day_total_trades_sell,
    int moving_90_day_total_trades_unknown,
    int moving_90_day_volume,
    int moving_90_day_volume_buy,
    int moving_90_day_volume_sell,
    int moving_90_day_volume_unknown,
    int price,
    char *price_flag,
    int price_last_update_ts,
    char *quote,
    int top_ask_last_update_ts,
    int top_ask_price,
    int top_ask_quantity,
    int top_bid_last_update_ts,
    int top_bid_price,
    int top_bid_quantity,
    char *type
);

void spot_instrument_market_data_free(spot_instrument_market_data_t *spot_instrument_market_data);

spot_instrument_market_data_t *spot_instrument_market_data_parseFromJSON(cJSON *spot_instrument_market_dataJSON);

cJSON *spot_instrument_market_data_convertToJSON(spot_instrument_market_data_t *spot_instrument_market_data);

#endif /* _spot_instrument_market_data_H_ */

