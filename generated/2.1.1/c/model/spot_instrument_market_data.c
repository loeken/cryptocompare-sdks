#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "spot_instrument_market_data.h"



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
    ) {
    spot_instrument_market_data_t *spot_instrument_market_data_local_var = malloc(sizeof(spot_instrument_market_data_t));
    if (!spot_instrument_market_data_local_var) {
        return NULL;
    }
    spot_instrument_market_data_local_var->base = base;
    spot_instrument_market_data_local_var->ccseq = ccseq;
    spot_instrument_market_data_local_var->current_day_high = current_day_high;
    spot_instrument_market_data_local_var->current_day_low = current_day_low;
    spot_instrument_market_data_local_var->current_day_open = current_day_open;
    spot_instrument_market_data_local_var->current_day_quote_volume = current_day_quote_volume;
    spot_instrument_market_data_local_var->current_day_quote_volume_buy = current_day_quote_volume_buy;
    spot_instrument_market_data_local_var->current_day_quote_volume_sell = current_day_quote_volume_sell;
    spot_instrument_market_data_local_var->current_day_quote_volume_unknown = current_day_quote_volume_unknown;
    spot_instrument_market_data_local_var->current_day_total_trades = current_day_total_trades;
    spot_instrument_market_data_local_var->current_day_total_trades_buy = current_day_total_trades_buy;
    spot_instrument_market_data_local_var->current_day_total_trades_sell = current_day_total_trades_sell;
    spot_instrument_market_data_local_var->current_day_total_trades_unknown = current_day_total_trades_unknown;
    spot_instrument_market_data_local_var->current_day_volume = current_day_volume;
    spot_instrument_market_data_local_var->current_day_volume_buy = current_day_volume_buy;
    spot_instrument_market_data_local_var->current_day_volume_sell = current_day_volume_sell;
    spot_instrument_market_data_local_var->current_day_volume_unknown = current_day_volume_unknown;
    spot_instrument_market_data_local_var->current_hour_high = current_hour_high;
    spot_instrument_market_data_local_var->current_hour_low = current_hour_low;
    spot_instrument_market_data_local_var->current_hour_open = current_hour_open;
    spot_instrument_market_data_local_var->current_hour_quote_volume = current_hour_quote_volume;
    spot_instrument_market_data_local_var->current_hour_quote_volume_buy = current_hour_quote_volume_buy;
    spot_instrument_market_data_local_var->current_hour_quote_volume_sell = current_hour_quote_volume_sell;
    spot_instrument_market_data_local_var->current_hour_quote_volume_unknown = current_hour_quote_volume_unknown;
    spot_instrument_market_data_local_var->current_hour_total_trades = current_hour_total_trades;
    spot_instrument_market_data_local_var->current_hour_total_trades_buy = current_hour_total_trades_buy;
    spot_instrument_market_data_local_var->current_hour_total_trades_sell = current_hour_total_trades_sell;
    spot_instrument_market_data_local_var->current_hour_total_trades_unknown = current_hour_total_trades_unknown;
    spot_instrument_market_data_local_var->current_hour_volume = current_hour_volume;
    spot_instrument_market_data_local_var->current_hour_volume_buy = current_hour_volume_buy;
    spot_instrument_market_data_local_var->current_hour_volume_sell = current_hour_volume_sell;
    spot_instrument_market_data_local_var->current_hour_volume_unknown = current_hour_volume_unknown;
    spot_instrument_market_data_local_var->current_month_high = current_month_high;
    spot_instrument_market_data_local_var->current_month_low = current_month_low;
    spot_instrument_market_data_local_var->current_month_open = current_month_open;
    spot_instrument_market_data_local_var->current_month_quote_volume = current_month_quote_volume;
    spot_instrument_market_data_local_var->current_month_quote_volume_buy = current_month_quote_volume_buy;
    spot_instrument_market_data_local_var->current_month_quote_volume_sell = current_month_quote_volume_sell;
    spot_instrument_market_data_local_var->current_month_quote_volume_unknown = current_month_quote_volume_unknown;
    spot_instrument_market_data_local_var->current_month_total_trades = current_month_total_trades;
    spot_instrument_market_data_local_var->current_month_total_trades_buy = current_month_total_trades_buy;
    spot_instrument_market_data_local_var->current_month_total_trades_sell = current_month_total_trades_sell;
    spot_instrument_market_data_local_var->current_month_total_trades_unknown = current_month_total_trades_unknown;
    spot_instrument_market_data_local_var->current_month_volume = current_month_volume;
    spot_instrument_market_data_local_var->current_month_volume_buy = current_month_volume_buy;
    spot_instrument_market_data_local_var->current_month_volume_sell = current_month_volume_sell;
    spot_instrument_market_data_local_var->current_month_volume_unknown = current_month_volume_unknown;
    spot_instrument_market_data_local_var->current_week_high = current_week_high;
    spot_instrument_market_data_local_var->current_week_low = current_week_low;
    spot_instrument_market_data_local_var->current_week_open = current_week_open;
    spot_instrument_market_data_local_var->current_week_quote_volume = current_week_quote_volume;
    spot_instrument_market_data_local_var->current_week_quote_volume_buy = current_week_quote_volume_buy;
    spot_instrument_market_data_local_var->current_week_quote_volume_sell = current_week_quote_volume_sell;
    spot_instrument_market_data_local_var->current_week_quote_volume_unknown = current_week_quote_volume_unknown;
    spot_instrument_market_data_local_var->current_week_total_trades = current_week_total_trades;
    spot_instrument_market_data_local_var->current_week_total_trades_buy = current_week_total_trades_buy;
    spot_instrument_market_data_local_var->current_week_total_trades_sell = current_week_total_trades_sell;
    spot_instrument_market_data_local_var->current_week_total_trades_unknown = current_week_total_trades_unknown;
    spot_instrument_market_data_local_var->current_week_volume = current_week_volume;
    spot_instrument_market_data_local_var->current_week_volume_buy = current_week_volume_buy;
    spot_instrument_market_data_local_var->current_week_volume_sell = current_week_volume_sell;
    spot_instrument_market_data_local_var->current_week_volume_unknown = current_week_volume_unknown;
    spot_instrument_market_data_local_var->current_year_high = current_year_high;
    spot_instrument_market_data_local_var->current_year_low = current_year_low;
    spot_instrument_market_data_local_var->current_year_open = current_year_open;
    spot_instrument_market_data_local_var->current_year_quote_volume = current_year_quote_volume;
    spot_instrument_market_data_local_var->current_year_quote_volume_buy = current_year_quote_volume_buy;
    spot_instrument_market_data_local_var->current_year_quote_volume_sell = current_year_quote_volume_sell;
    spot_instrument_market_data_local_var->current_year_quote_volume_unknown = current_year_quote_volume_unknown;
    spot_instrument_market_data_local_var->current_year_total_trades = current_year_total_trades;
    spot_instrument_market_data_local_var->current_year_total_trades_buy = current_year_total_trades_buy;
    spot_instrument_market_data_local_var->current_year_total_trades_sell = current_year_total_trades_sell;
    spot_instrument_market_data_local_var->current_year_total_trades_unknown = current_year_total_trades_unknown;
    spot_instrument_market_data_local_var->current_year_volume = current_year_volume;
    spot_instrument_market_data_local_var->current_year_volume_buy = current_year_volume_buy;
    spot_instrument_market_data_local_var->current_year_volume_sell = current_year_volume_sell;
    spot_instrument_market_data_local_var->current_year_volume_unknown = current_year_volume_unknown;
    spot_instrument_market_data_local_var->instrument = instrument;
    spot_instrument_market_data_local_var->last_processed_trade_ccseq = last_processed_trade_ccseq;
    spot_instrument_market_data_local_var->last_processed_trade_price = last_processed_trade_price;
    spot_instrument_market_data_local_var->last_processed_trade_quantity = last_processed_trade_quantity;
    spot_instrument_market_data_local_var->last_processed_trade_quote_quantity = last_processed_trade_quote_quantity;
    spot_instrument_market_data_local_var->last_processed_trade_side = last_processed_trade_side;
    spot_instrument_market_data_local_var->last_processed_trade_ts = last_processed_trade_ts;
    spot_instrument_market_data_local_var->last_trade_ccseq = last_trade_ccseq;
    spot_instrument_market_data_local_var->last_trade_id = last_trade_id;
    spot_instrument_market_data_local_var->last_trade_quantity = last_trade_quantity;
    spot_instrument_market_data_local_var->last_trade_quote_quantity = last_trade_quote_quantity;
    spot_instrument_market_data_local_var->last_trade_side = last_trade_side;
    spot_instrument_market_data_local_var->lifetime_first_trade_ts = lifetime_first_trade_ts;
    spot_instrument_market_data_local_var->lifetime_high = lifetime_high;
    spot_instrument_market_data_local_var->lifetime_high_ts = lifetime_high_ts;
    spot_instrument_market_data_local_var->lifetime_low = lifetime_low;
    spot_instrument_market_data_local_var->lifetime_low_ts = lifetime_low_ts;
    spot_instrument_market_data_local_var->lifetime_open = lifetime_open;
    spot_instrument_market_data_local_var->lifetime_quote_volume = lifetime_quote_volume;
    spot_instrument_market_data_local_var->lifetime_quote_volume_buy = lifetime_quote_volume_buy;
    spot_instrument_market_data_local_var->lifetime_quote_volume_sell = lifetime_quote_volume_sell;
    spot_instrument_market_data_local_var->lifetime_quote_volume_unknown = lifetime_quote_volume_unknown;
    spot_instrument_market_data_local_var->lifetime_total_trades = lifetime_total_trades;
    spot_instrument_market_data_local_var->lifetime_total_trades_buy = lifetime_total_trades_buy;
    spot_instrument_market_data_local_var->lifetime_total_trades_sell = lifetime_total_trades_sell;
    spot_instrument_market_data_local_var->lifetime_total_trades_unknown = lifetime_total_trades_unknown;
    spot_instrument_market_data_local_var->lifetime_volume = lifetime_volume;
    spot_instrument_market_data_local_var->lifetime_volume_buy = lifetime_volume_buy;
    spot_instrument_market_data_local_var->lifetime_volume_sell = lifetime_volume_sell;
    spot_instrument_market_data_local_var->lifetime_volume_unknown = lifetime_volume_unknown;
    spot_instrument_market_data_local_var->mapped_instrument = mapped_instrument;
    spot_instrument_market_data_local_var->market = market;
    spot_instrument_market_data_local_var->moving_180_day_high = moving_180_day_high;
    spot_instrument_market_data_local_var->moving_180_day_low = moving_180_day_low;
    spot_instrument_market_data_local_var->moving_180_day_open = moving_180_day_open;
    spot_instrument_market_data_local_var->moving_180_day_quote_volume = moving_180_day_quote_volume;
    spot_instrument_market_data_local_var->moving_180_day_quote_volume_buy = moving_180_day_quote_volume_buy;
    spot_instrument_market_data_local_var->moving_180_day_quote_volume_sell = moving_180_day_quote_volume_sell;
    spot_instrument_market_data_local_var->moving_180_day_quote_volume_unknown = moving_180_day_quote_volume_unknown;
    spot_instrument_market_data_local_var->moving_180_day_total_trades = moving_180_day_total_trades;
    spot_instrument_market_data_local_var->moving_180_day_total_trades_buy = moving_180_day_total_trades_buy;
    spot_instrument_market_data_local_var->moving_180_day_total_trades_sell = moving_180_day_total_trades_sell;
    spot_instrument_market_data_local_var->moving_180_day_total_trades_unknown = moving_180_day_total_trades_unknown;
    spot_instrument_market_data_local_var->moving_180_day_volume = moving_180_day_volume;
    spot_instrument_market_data_local_var->moving_180_day_volume_buy = moving_180_day_volume_buy;
    spot_instrument_market_data_local_var->moving_180_day_volume_sell = moving_180_day_volume_sell;
    spot_instrument_market_data_local_var->moving_180_day_volume_unknown = moving_180_day_volume_unknown;
    spot_instrument_market_data_local_var->moving_24_hour_high = moving_24_hour_high;
    spot_instrument_market_data_local_var->moving_24_hour_low = moving_24_hour_low;
    spot_instrument_market_data_local_var->moving_24_hour_open = moving_24_hour_open;
    spot_instrument_market_data_local_var->moving_24_hour_quote_volume = moving_24_hour_quote_volume;
    spot_instrument_market_data_local_var->moving_24_hour_quote_volume_buy = moving_24_hour_quote_volume_buy;
    spot_instrument_market_data_local_var->moving_24_hour_quote_volume_sell = moving_24_hour_quote_volume_sell;
    spot_instrument_market_data_local_var->moving_24_hour_quote_volume_unknown = moving_24_hour_quote_volume_unknown;
    spot_instrument_market_data_local_var->moving_24_hour_total_trades = moving_24_hour_total_trades;
    spot_instrument_market_data_local_var->moving_24_hour_total_trades_buy = moving_24_hour_total_trades_buy;
    spot_instrument_market_data_local_var->moving_24_hour_total_trades_sell = moving_24_hour_total_trades_sell;
    spot_instrument_market_data_local_var->moving_24_hour_total_trades_unknown = moving_24_hour_total_trades_unknown;
    spot_instrument_market_data_local_var->moving_24_hour_volume = moving_24_hour_volume;
    spot_instrument_market_data_local_var->moving_24_hour_volume_buy = moving_24_hour_volume_buy;
    spot_instrument_market_data_local_var->moving_24_hour_volume_sell = moving_24_hour_volume_sell;
    spot_instrument_market_data_local_var->moving_24_hour_volume_unknown = moving_24_hour_volume_unknown;
    spot_instrument_market_data_local_var->moving_30_day_high = moving_30_day_high;
    spot_instrument_market_data_local_var->moving_30_day_low = moving_30_day_low;
    spot_instrument_market_data_local_var->moving_30_day_open = moving_30_day_open;
    spot_instrument_market_data_local_var->moving_30_day_quote_volume = moving_30_day_quote_volume;
    spot_instrument_market_data_local_var->moving_30_day_quote_volume_buy = moving_30_day_quote_volume_buy;
    spot_instrument_market_data_local_var->moving_30_day_quote_volume_sell = moving_30_day_quote_volume_sell;
    spot_instrument_market_data_local_var->moving_30_day_quote_volume_unknown = moving_30_day_quote_volume_unknown;
    spot_instrument_market_data_local_var->moving_30_day_total_trades = moving_30_day_total_trades;
    spot_instrument_market_data_local_var->moving_30_day_total_trades_buy = moving_30_day_total_trades_buy;
    spot_instrument_market_data_local_var->moving_30_day_total_trades_sell = moving_30_day_total_trades_sell;
    spot_instrument_market_data_local_var->moving_30_day_total_trades_unknown = moving_30_day_total_trades_unknown;
    spot_instrument_market_data_local_var->moving_30_day_volume = moving_30_day_volume;
    spot_instrument_market_data_local_var->moving_30_day_volume_buy = moving_30_day_volume_buy;
    spot_instrument_market_data_local_var->moving_30_day_volume_sell = moving_30_day_volume_sell;
    spot_instrument_market_data_local_var->moving_30_day_volume_unknown = moving_30_day_volume_unknown;
    spot_instrument_market_data_local_var->moving_365_day_high = moving_365_day_high;
    spot_instrument_market_data_local_var->moving_365_day_low = moving_365_day_low;
    spot_instrument_market_data_local_var->moving_365_day_open = moving_365_day_open;
    spot_instrument_market_data_local_var->moving_365_day_quote_volume = moving_365_day_quote_volume;
    spot_instrument_market_data_local_var->moving_365_day_quote_volume_buy = moving_365_day_quote_volume_buy;
    spot_instrument_market_data_local_var->moving_365_day_quote_volume_sell = moving_365_day_quote_volume_sell;
    spot_instrument_market_data_local_var->moving_365_day_quote_volume_unknown = moving_365_day_quote_volume_unknown;
    spot_instrument_market_data_local_var->moving_365_day_total_trades = moving_365_day_total_trades;
    spot_instrument_market_data_local_var->moving_365_day_total_trades_buy = moving_365_day_total_trades_buy;
    spot_instrument_market_data_local_var->moving_365_day_total_trades_sell = moving_365_day_total_trades_sell;
    spot_instrument_market_data_local_var->moving_365_day_total_trades_unknown = moving_365_day_total_trades_unknown;
    spot_instrument_market_data_local_var->moving_365_day_volume = moving_365_day_volume;
    spot_instrument_market_data_local_var->moving_365_day_volume_buy = moving_365_day_volume_buy;
    spot_instrument_market_data_local_var->moving_365_day_volume_sell = moving_365_day_volume_sell;
    spot_instrument_market_data_local_var->moving_365_day_volume_unknown = moving_365_day_volume_unknown;
    spot_instrument_market_data_local_var->moving_7_day_high = moving_7_day_high;
    spot_instrument_market_data_local_var->moving_7_day_low = moving_7_day_low;
    spot_instrument_market_data_local_var->moving_7_day_open = moving_7_day_open;
    spot_instrument_market_data_local_var->moving_7_day_quote_volume = moving_7_day_quote_volume;
    spot_instrument_market_data_local_var->moving_7_day_quote_volume_buy = moving_7_day_quote_volume_buy;
    spot_instrument_market_data_local_var->moving_7_day_quote_volume_sell = moving_7_day_quote_volume_sell;
    spot_instrument_market_data_local_var->moving_7_day_quote_volume_unknown = moving_7_day_quote_volume_unknown;
    spot_instrument_market_data_local_var->moving_7_day_total_trades = moving_7_day_total_trades;
    spot_instrument_market_data_local_var->moving_7_day_total_trades_buy = moving_7_day_total_trades_buy;
    spot_instrument_market_data_local_var->moving_7_day_total_trades_sell = moving_7_day_total_trades_sell;
    spot_instrument_market_data_local_var->moving_7_day_total_trades_unknown = moving_7_day_total_trades_unknown;
    spot_instrument_market_data_local_var->moving_7_day_volume = moving_7_day_volume;
    spot_instrument_market_data_local_var->moving_7_day_volume_buy = moving_7_day_volume_buy;
    spot_instrument_market_data_local_var->moving_7_day_volume_sell = moving_7_day_volume_sell;
    spot_instrument_market_data_local_var->moving_7_day_volume_unknown = moving_7_day_volume_unknown;
    spot_instrument_market_data_local_var->moving_90_day_high = moving_90_day_high;
    spot_instrument_market_data_local_var->moving_90_day_low = moving_90_day_low;
    spot_instrument_market_data_local_var->moving_90_day_open = moving_90_day_open;
    spot_instrument_market_data_local_var->moving_90_day_quote_volume = moving_90_day_quote_volume;
    spot_instrument_market_data_local_var->moving_90_day_quote_volume_buy = moving_90_day_quote_volume_buy;
    spot_instrument_market_data_local_var->moving_90_day_quote_volume_sell = moving_90_day_quote_volume_sell;
    spot_instrument_market_data_local_var->moving_90_day_quote_volume_unknown = moving_90_day_quote_volume_unknown;
    spot_instrument_market_data_local_var->moving_90_day_total_trades = moving_90_day_total_trades;
    spot_instrument_market_data_local_var->moving_90_day_total_trades_buy = moving_90_day_total_trades_buy;
    spot_instrument_market_data_local_var->moving_90_day_total_trades_sell = moving_90_day_total_trades_sell;
    spot_instrument_market_data_local_var->moving_90_day_total_trades_unknown = moving_90_day_total_trades_unknown;
    spot_instrument_market_data_local_var->moving_90_day_volume = moving_90_day_volume;
    spot_instrument_market_data_local_var->moving_90_day_volume_buy = moving_90_day_volume_buy;
    spot_instrument_market_data_local_var->moving_90_day_volume_sell = moving_90_day_volume_sell;
    spot_instrument_market_data_local_var->moving_90_day_volume_unknown = moving_90_day_volume_unknown;
    spot_instrument_market_data_local_var->price = price;
    spot_instrument_market_data_local_var->price_flag = price_flag;
    spot_instrument_market_data_local_var->price_last_update_ts = price_last_update_ts;
    spot_instrument_market_data_local_var->quote = quote;
    spot_instrument_market_data_local_var->top_ask_last_update_ts = top_ask_last_update_ts;
    spot_instrument_market_data_local_var->top_ask_price = top_ask_price;
    spot_instrument_market_data_local_var->top_ask_quantity = top_ask_quantity;
    spot_instrument_market_data_local_var->top_bid_last_update_ts = top_bid_last_update_ts;
    spot_instrument_market_data_local_var->top_bid_price = top_bid_price;
    spot_instrument_market_data_local_var->top_bid_quantity = top_bid_quantity;
    spot_instrument_market_data_local_var->type = type;

    return spot_instrument_market_data_local_var;
}


void spot_instrument_market_data_free(spot_instrument_market_data_t *spot_instrument_market_data) {
    if(NULL == spot_instrument_market_data){
        return ;
    }
    listEntry_t *listEntry;
    if (spot_instrument_market_data->base) {
        free(spot_instrument_market_data->base);
        spot_instrument_market_data->base = NULL;
    }
    if (spot_instrument_market_data->instrument) {
        free(spot_instrument_market_data->instrument);
        spot_instrument_market_data->instrument = NULL;
    }
    if (spot_instrument_market_data->last_processed_trade_ccseq) {
        free(spot_instrument_market_data->last_processed_trade_ccseq);
        spot_instrument_market_data->last_processed_trade_ccseq = NULL;
    }
    if (spot_instrument_market_data->last_processed_trade_side) {
        free(spot_instrument_market_data->last_processed_trade_side);
        spot_instrument_market_data->last_processed_trade_side = NULL;
    }
    if (spot_instrument_market_data->last_trade_ccseq) {
        free(spot_instrument_market_data->last_trade_ccseq);
        spot_instrument_market_data->last_trade_ccseq = NULL;
    }
    if (spot_instrument_market_data->last_trade_id) {
        free(spot_instrument_market_data->last_trade_id);
        spot_instrument_market_data->last_trade_id = NULL;
    }
    if (spot_instrument_market_data->last_trade_side) {
        free(spot_instrument_market_data->last_trade_side);
        spot_instrument_market_data->last_trade_side = NULL;
    }
    if (spot_instrument_market_data->mapped_instrument) {
        free(spot_instrument_market_data->mapped_instrument);
        spot_instrument_market_data->mapped_instrument = NULL;
    }
    if (spot_instrument_market_data->market) {
        free(spot_instrument_market_data->market);
        spot_instrument_market_data->market = NULL;
    }
    if (spot_instrument_market_data->price_flag) {
        free(spot_instrument_market_data->price_flag);
        spot_instrument_market_data->price_flag = NULL;
    }
    if (spot_instrument_market_data->quote) {
        free(spot_instrument_market_data->quote);
        spot_instrument_market_data->quote = NULL;
    }
    if (spot_instrument_market_data->type) {
        free(spot_instrument_market_data->type);
        spot_instrument_market_data->type = NULL;
    }
    free(spot_instrument_market_data);
}

cJSON *spot_instrument_market_data_convertToJSON(spot_instrument_market_data_t *spot_instrument_market_data) {
    cJSON *item = cJSON_CreateObject();

    // spot_instrument_market_data->base
    if(spot_instrument_market_data->base) {
    if(cJSON_AddStringToObject(item, "BASE", spot_instrument_market_data->base) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_market_data->ccseq
    if(spot_instrument_market_data->ccseq) {
    if(cJSON_AddNumberToObject(item, "CCSEQ", spot_instrument_market_data->ccseq) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_high
    if(spot_instrument_market_data->current_day_high) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_HIGH", spot_instrument_market_data->current_day_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_low
    if(spot_instrument_market_data->current_day_low) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_LOW", spot_instrument_market_data->current_day_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_open
    if(spot_instrument_market_data->current_day_open) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_OPEN", spot_instrument_market_data->current_day_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_quote_volume
    if(spot_instrument_market_data->current_day_quote_volume) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_QUOTE_VOLUME", spot_instrument_market_data->current_day_quote_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_quote_volume_buy
    if(spot_instrument_market_data->current_day_quote_volume_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_QUOTE_VOLUME_BUY", spot_instrument_market_data->current_day_quote_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_quote_volume_sell
    if(spot_instrument_market_data->current_day_quote_volume_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_QUOTE_VOLUME_SELL", spot_instrument_market_data->current_day_quote_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_quote_volume_unknown
    if(spot_instrument_market_data->current_day_quote_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_QUOTE_VOLUME_UNKNOWN", spot_instrument_market_data->current_day_quote_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_total_trades
    if(spot_instrument_market_data->current_day_total_trades) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_TOTAL_TRADES", spot_instrument_market_data->current_day_total_trades) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_total_trades_buy
    if(spot_instrument_market_data->current_day_total_trades_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_TOTAL_TRADES_BUY", spot_instrument_market_data->current_day_total_trades_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_total_trades_sell
    if(spot_instrument_market_data->current_day_total_trades_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_TOTAL_TRADES_SELL", spot_instrument_market_data->current_day_total_trades_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_total_trades_unknown
    if(spot_instrument_market_data->current_day_total_trades_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_TOTAL_TRADES_UNKNOWN", spot_instrument_market_data->current_day_total_trades_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_volume
    if(spot_instrument_market_data->current_day_volume) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_VOLUME", spot_instrument_market_data->current_day_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_volume_buy
    if(spot_instrument_market_data->current_day_volume_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_VOLUME_BUY", spot_instrument_market_data->current_day_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_volume_sell
    if(spot_instrument_market_data->current_day_volume_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_VOLUME_SELL", spot_instrument_market_data->current_day_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_day_volume_unknown
    if(spot_instrument_market_data->current_day_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_DAY_VOLUME_UNKNOWN", spot_instrument_market_data->current_day_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_high
    if(spot_instrument_market_data->current_hour_high) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_HIGH", spot_instrument_market_data->current_hour_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_low
    if(spot_instrument_market_data->current_hour_low) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_LOW", spot_instrument_market_data->current_hour_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_open
    if(spot_instrument_market_data->current_hour_open) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_OPEN", spot_instrument_market_data->current_hour_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_quote_volume
    if(spot_instrument_market_data->current_hour_quote_volume) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_QUOTE_VOLUME", spot_instrument_market_data->current_hour_quote_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_quote_volume_buy
    if(spot_instrument_market_data->current_hour_quote_volume_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_QUOTE_VOLUME_BUY", spot_instrument_market_data->current_hour_quote_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_quote_volume_sell
    if(spot_instrument_market_data->current_hour_quote_volume_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_QUOTE_VOLUME_SELL", spot_instrument_market_data->current_hour_quote_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_quote_volume_unknown
    if(spot_instrument_market_data->current_hour_quote_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN", spot_instrument_market_data->current_hour_quote_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_total_trades
    if(spot_instrument_market_data->current_hour_total_trades) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_TOTAL_TRADES", spot_instrument_market_data->current_hour_total_trades) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_total_trades_buy
    if(spot_instrument_market_data->current_hour_total_trades_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_TOTAL_TRADES_BUY", spot_instrument_market_data->current_hour_total_trades_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_total_trades_sell
    if(spot_instrument_market_data->current_hour_total_trades_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_TOTAL_TRADES_SELL", spot_instrument_market_data->current_hour_total_trades_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_total_trades_unknown
    if(spot_instrument_market_data->current_hour_total_trades_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_TOTAL_TRADES_UNKNOWN", spot_instrument_market_data->current_hour_total_trades_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_volume
    if(spot_instrument_market_data->current_hour_volume) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_VOLUME", spot_instrument_market_data->current_hour_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_volume_buy
    if(spot_instrument_market_data->current_hour_volume_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_VOLUME_BUY", spot_instrument_market_data->current_hour_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_volume_sell
    if(spot_instrument_market_data->current_hour_volume_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_VOLUME_SELL", spot_instrument_market_data->current_hour_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_hour_volume_unknown
    if(spot_instrument_market_data->current_hour_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_HOUR_VOLUME_UNKNOWN", spot_instrument_market_data->current_hour_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_high
    if(spot_instrument_market_data->current_month_high) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_HIGH", spot_instrument_market_data->current_month_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_low
    if(spot_instrument_market_data->current_month_low) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_LOW", spot_instrument_market_data->current_month_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_open
    if(spot_instrument_market_data->current_month_open) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_OPEN", spot_instrument_market_data->current_month_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_quote_volume
    if(spot_instrument_market_data->current_month_quote_volume) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_QUOTE_VOLUME", spot_instrument_market_data->current_month_quote_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_quote_volume_buy
    if(spot_instrument_market_data->current_month_quote_volume_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_QUOTE_VOLUME_BUY", spot_instrument_market_data->current_month_quote_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_quote_volume_sell
    if(spot_instrument_market_data->current_month_quote_volume_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_QUOTE_VOLUME_SELL", spot_instrument_market_data->current_month_quote_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_quote_volume_unknown
    if(spot_instrument_market_data->current_month_quote_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN", spot_instrument_market_data->current_month_quote_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_total_trades
    if(spot_instrument_market_data->current_month_total_trades) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_TOTAL_TRADES", spot_instrument_market_data->current_month_total_trades) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_total_trades_buy
    if(spot_instrument_market_data->current_month_total_trades_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_TOTAL_TRADES_BUY", spot_instrument_market_data->current_month_total_trades_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_total_trades_sell
    if(spot_instrument_market_data->current_month_total_trades_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_TOTAL_TRADES_SELL", spot_instrument_market_data->current_month_total_trades_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_total_trades_unknown
    if(spot_instrument_market_data->current_month_total_trades_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_TOTAL_TRADES_UNKNOWN", spot_instrument_market_data->current_month_total_trades_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_volume
    if(spot_instrument_market_data->current_month_volume) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_VOLUME", spot_instrument_market_data->current_month_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_volume_buy
    if(spot_instrument_market_data->current_month_volume_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_VOLUME_BUY", spot_instrument_market_data->current_month_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_volume_sell
    if(spot_instrument_market_data->current_month_volume_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_VOLUME_SELL", spot_instrument_market_data->current_month_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_month_volume_unknown
    if(spot_instrument_market_data->current_month_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_MONTH_VOLUME_UNKNOWN", spot_instrument_market_data->current_month_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_high
    if(spot_instrument_market_data->current_week_high) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_HIGH", spot_instrument_market_data->current_week_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_low
    if(spot_instrument_market_data->current_week_low) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_LOW", spot_instrument_market_data->current_week_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_open
    if(spot_instrument_market_data->current_week_open) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_OPEN", spot_instrument_market_data->current_week_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_quote_volume
    if(spot_instrument_market_data->current_week_quote_volume) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_QUOTE_VOLUME", spot_instrument_market_data->current_week_quote_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_quote_volume_buy
    if(spot_instrument_market_data->current_week_quote_volume_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_QUOTE_VOLUME_BUY", spot_instrument_market_data->current_week_quote_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_quote_volume_sell
    if(spot_instrument_market_data->current_week_quote_volume_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_QUOTE_VOLUME_SELL", spot_instrument_market_data->current_week_quote_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_quote_volume_unknown
    if(spot_instrument_market_data->current_week_quote_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN", spot_instrument_market_data->current_week_quote_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_total_trades
    if(spot_instrument_market_data->current_week_total_trades) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_TOTAL_TRADES", spot_instrument_market_data->current_week_total_trades) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_total_trades_buy
    if(spot_instrument_market_data->current_week_total_trades_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_TOTAL_TRADES_BUY", spot_instrument_market_data->current_week_total_trades_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_total_trades_sell
    if(spot_instrument_market_data->current_week_total_trades_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_TOTAL_TRADES_SELL", spot_instrument_market_data->current_week_total_trades_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_total_trades_unknown
    if(spot_instrument_market_data->current_week_total_trades_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_TOTAL_TRADES_UNKNOWN", spot_instrument_market_data->current_week_total_trades_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_volume
    if(spot_instrument_market_data->current_week_volume) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_VOLUME", spot_instrument_market_data->current_week_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_volume_buy
    if(spot_instrument_market_data->current_week_volume_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_VOLUME_BUY", spot_instrument_market_data->current_week_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_volume_sell
    if(spot_instrument_market_data->current_week_volume_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_VOLUME_SELL", spot_instrument_market_data->current_week_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_week_volume_unknown
    if(spot_instrument_market_data->current_week_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_WEEK_VOLUME_UNKNOWN", spot_instrument_market_data->current_week_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_high
    if(spot_instrument_market_data->current_year_high) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_HIGH", spot_instrument_market_data->current_year_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_low
    if(spot_instrument_market_data->current_year_low) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_LOW", spot_instrument_market_data->current_year_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_open
    if(spot_instrument_market_data->current_year_open) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_OPEN", spot_instrument_market_data->current_year_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_quote_volume
    if(spot_instrument_market_data->current_year_quote_volume) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_QUOTE_VOLUME", spot_instrument_market_data->current_year_quote_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_quote_volume_buy
    if(spot_instrument_market_data->current_year_quote_volume_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_QUOTE_VOLUME_BUY", spot_instrument_market_data->current_year_quote_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_quote_volume_sell
    if(spot_instrument_market_data->current_year_quote_volume_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_QUOTE_VOLUME_SELL", spot_instrument_market_data->current_year_quote_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_quote_volume_unknown
    if(spot_instrument_market_data->current_year_quote_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN", spot_instrument_market_data->current_year_quote_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_total_trades
    if(spot_instrument_market_data->current_year_total_trades) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_TOTAL_TRADES", spot_instrument_market_data->current_year_total_trades) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_total_trades_buy
    if(spot_instrument_market_data->current_year_total_trades_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_TOTAL_TRADES_BUY", spot_instrument_market_data->current_year_total_trades_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_total_trades_sell
    if(spot_instrument_market_data->current_year_total_trades_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_TOTAL_TRADES_SELL", spot_instrument_market_data->current_year_total_trades_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_total_trades_unknown
    if(spot_instrument_market_data->current_year_total_trades_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_TOTAL_TRADES_UNKNOWN", spot_instrument_market_data->current_year_total_trades_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_volume
    if(spot_instrument_market_data->current_year_volume) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_VOLUME", spot_instrument_market_data->current_year_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_volume_buy
    if(spot_instrument_market_data->current_year_volume_buy) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_VOLUME_BUY", spot_instrument_market_data->current_year_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_volume_sell
    if(spot_instrument_market_data->current_year_volume_sell) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_VOLUME_SELL", spot_instrument_market_data->current_year_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->current_year_volume_unknown
    if(spot_instrument_market_data->current_year_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "CURRENT_YEAR_VOLUME_UNKNOWN", spot_instrument_market_data->current_year_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->instrument
    if(spot_instrument_market_data->instrument) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT", spot_instrument_market_data->instrument) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_market_data->last_processed_trade_ccseq
    if(spot_instrument_market_data->last_processed_trade_ccseq) {
    if(cJSON_AddStringToObject(item, "LAST_PROCESSED_TRADE_CCSEQ", spot_instrument_market_data->last_processed_trade_ccseq) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_market_data->last_processed_trade_price
    if(spot_instrument_market_data->last_processed_trade_price) {
    if(cJSON_AddNumberToObject(item, "LAST_PROCESSED_TRADE_PRICE", spot_instrument_market_data->last_processed_trade_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->last_processed_trade_quantity
    if(spot_instrument_market_data->last_processed_trade_quantity) {
    if(cJSON_AddNumberToObject(item, "LAST_PROCESSED_TRADE_QUANTITY", spot_instrument_market_data->last_processed_trade_quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->last_processed_trade_quote_quantity
    if(spot_instrument_market_data->last_processed_trade_quote_quantity) {
    if(cJSON_AddNumberToObject(item, "LAST_PROCESSED_TRADE_QUOTE_QUANTITY", spot_instrument_market_data->last_processed_trade_quote_quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->last_processed_trade_side
    if(spot_instrument_market_data->last_processed_trade_side) {
    if(cJSON_AddStringToObject(item, "LAST_PROCESSED_TRADE_SIDE", spot_instrument_market_data->last_processed_trade_side) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_market_data->last_processed_trade_ts
    if(spot_instrument_market_data->last_processed_trade_ts) {
    if(cJSON_AddNumberToObject(item, "LAST_PROCESSED_TRADE_TS", spot_instrument_market_data->last_processed_trade_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->last_trade_ccseq
    if(spot_instrument_market_data->last_trade_ccseq) {
    if(cJSON_AddStringToObject(item, "LAST_TRADE_CCSEQ", spot_instrument_market_data->last_trade_ccseq) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_market_data->last_trade_id
    if(spot_instrument_market_data->last_trade_id) {
    if(cJSON_AddStringToObject(item, "LAST_TRADE_ID", spot_instrument_market_data->last_trade_id) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_market_data->last_trade_quantity
    if(spot_instrument_market_data->last_trade_quantity) {
    if(cJSON_AddNumberToObject(item, "LAST_TRADE_QUANTITY", spot_instrument_market_data->last_trade_quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->last_trade_quote_quantity
    if(spot_instrument_market_data->last_trade_quote_quantity) {
    if(cJSON_AddNumberToObject(item, "LAST_TRADE_QUOTE_QUANTITY", spot_instrument_market_data->last_trade_quote_quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->last_trade_side
    if(spot_instrument_market_data->last_trade_side) {
    if(cJSON_AddStringToObject(item, "LAST_TRADE_SIDE", spot_instrument_market_data->last_trade_side) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_market_data->lifetime_first_trade_ts
    if(spot_instrument_market_data->lifetime_first_trade_ts) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_FIRST_TRADE_TS", spot_instrument_market_data->lifetime_first_trade_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_high
    if(spot_instrument_market_data->lifetime_high) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_HIGH", spot_instrument_market_data->lifetime_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_high_ts
    if(spot_instrument_market_data->lifetime_high_ts) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_HIGH_TS", spot_instrument_market_data->lifetime_high_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_low
    if(spot_instrument_market_data->lifetime_low) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_LOW", spot_instrument_market_data->lifetime_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_low_ts
    if(spot_instrument_market_data->lifetime_low_ts) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_LOW_TS", spot_instrument_market_data->lifetime_low_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_open
    if(spot_instrument_market_data->lifetime_open) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_OPEN", spot_instrument_market_data->lifetime_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_quote_volume
    if(spot_instrument_market_data->lifetime_quote_volume) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_QUOTE_VOLUME", spot_instrument_market_data->lifetime_quote_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_quote_volume_buy
    if(spot_instrument_market_data->lifetime_quote_volume_buy) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_QUOTE_VOLUME_BUY", spot_instrument_market_data->lifetime_quote_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_quote_volume_sell
    if(spot_instrument_market_data->lifetime_quote_volume_sell) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_QUOTE_VOLUME_SELL", spot_instrument_market_data->lifetime_quote_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_quote_volume_unknown
    if(spot_instrument_market_data->lifetime_quote_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_QUOTE_VOLUME_UNKNOWN", spot_instrument_market_data->lifetime_quote_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_total_trades
    if(spot_instrument_market_data->lifetime_total_trades) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_TOTAL_TRADES", spot_instrument_market_data->lifetime_total_trades) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_total_trades_buy
    if(spot_instrument_market_data->lifetime_total_trades_buy) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_TOTAL_TRADES_BUY", spot_instrument_market_data->lifetime_total_trades_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_total_trades_sell
    if(spot_instrument_market_data->lifetime_total_trades_sell) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_TOTAL_TRADES_SELL", spot_instrument_market_data->lifetime_total_trades_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_total_trades_unknown
    if(spot_instrument_market_data->lifetime_total_trades_unknown) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_TOTAL_TRADES_UNKNOWN", spot_instrument_market_data->lifetime_total_trades_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_volume
    if(spot_instrument_market_data->lifetime_volume) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_VOLUME", spot_instrument_market_data->lifetime_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_volume_buy
    if(spot_instrument_market_data->lifetime_volume_buy) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_VOLUME_BUY", spot_instrument_market_data->lifetime_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_volume_sell
    if(spot_instrument_market_data->lifetime_volume_sell) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_VOLUME_SELL", spot_instrument_market_data->lifetime_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->lifetime_volume_unknown
    if(spot_instrument_market_data->lifetime_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "LIFETIME_VOLUME_UNKNOWN", spot_instrument_market_data->lifetime_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->mapped_instrument
    if(spot_instrument_market_data->mapped_instrument) {
    if(cJSON_AddStringToObject(item, "MAPPED_INSTRUMENT", spot_instrument_market_data->mapped_instrument) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_market_data->market
    if(spot_instrument_market_data->market) {
    if(cJSON_AddStringToObject(item, "MARKET", spot_instrument_market_data->market) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_market_data->moving_180_day_high
    if(spot_instrument_market_data->moving_180_day_high) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_HIGH", spot_instrument_market_data->moving_180_day_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_low
    if(spot_instrument_market_data->moving_180_day_low) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_LOW", spot_instrument_market_data->moving_180_day_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_open
    if(spot_instrument_market_data->moving_180_day_open) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_OPEN", spot_instrument_market_data->moving_180_day_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_quote_volume
    if(spot_instrument_market_data->moving_180_day_quote_volume) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_QUOTE_VOLUME", spot_instrument_market_data->moving_180_day_quote_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_quote_volume_buy
    if(spot_instrument_market_data->moving_180_day_quote_volume_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_QUOTE_VOLUME_BUY", spot_instrument_market_data->moving_180_day_quote_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_quote_volume_sell
    if(spot_instrument_market_data->moving_180_day_quote_volume_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_QUOTE_VOLUME_SELL", spot_instrument_market_data->moving_180_day_quote_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_quote_volume_unknown
    if(spot_instrument_market_data->moving_180_day_quote_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN", spot_instrument_market_data->moving_180_day_quote_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_total_trades
    if(spot_instrument_market_data->moving_180_day_total_trades) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_TOTAL_TRADES", spot_instrument_market_data->moving_180_day_total_trades) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_total_trades_buy
    if(spot_instrument_market_data->moving_180_day_total_trades_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_TOTAL_TRADES_BUY", spot_instrument_market_data->moving_180_day_total_trades_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_total_trades_sell
    if(spot_instrument_market_data->moving_180_day_total_trades_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_TOTAL_TRADES_SELL", spot_instrument_market_data->moving_180_day_total_trades_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_total_trades_unknown
    if(spot_instrument_market_data->moving_180_day_total_trades_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_TOTAL_TRADES_UNKNOWN", spot_instrument_market_data->moving_180_day_total_trades_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_volume
    if(spot_instrument_market_data->moving_180_day_volume) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_VOLUME", spot_instrument_market_data->moving_180_day_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_volume_buy
    if(spot_instrument_market_data->moving_180_day_volume_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_VOLUME_BUY", spot_instrument_market_data->moving_180_day_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_volume_sell
    if(spot_instrument_market_data->moving_180_day_volume_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_VOLUME_SELL", spot_instrument_market_data->moving_180_day_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_180_day_volume_unknown
    if(spot_instrument_market_data->moving_180_day_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_180_DAY_VOLUME_UNKNOWN", spot_instrument_market_data->moving_180_day_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_high
    if(spot_instrument_market_data->moving_24_hour_high) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_HIGH", spot_instrument_market_data->moving_24_hour_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_low
    if(spot_instrument_market_data->moving_24_hour_low) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_LOW", spot_instrument_market_data->moving_24_hour_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_open
    if(spot_instrument_market_data->moving_24_hour_open) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_OPEN", spot_instrument_market_data->moving_24_hour_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_quote_volume
    if(spot_instrument_market_data->moving_24_hour_quote_volume) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_QUOTE_VOLUME", spot_instrument_market_data->moving_24_hour_quote_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_quote_volume_buy
    if(spot_instrument_market_data->moving_24_hour_quote_volume_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_QUOTE_VOLUME_BUY", spot_instrument_market_data->moving_24_hour_quote_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_quote_volume_sell
    if(spot_instrument_market_data->moving_24_hour_quote_volume_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_QUOTE_VOLUME_SELL", spot_instrument_market_data->moving_24_hour_quote_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_quote_volume_unknown
    if(spot_instrument_market_data->moving_24_hour_quote_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN", spot_instrument_market_data->moving_24_hour_quote_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_total_trades
    if(spot_instrument_market_data->moving_24_hour_total_trades) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_TOTAL_TRADES", spot_instrument_market_data->moving_24_hour_total_trades) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_total_trades_buy
    if(spot_instrument_market_data->moving_24_hour_total_trades_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_TOTAL_TRADES_BUY", spot_instrument_market_data->moving_24_hour_total_trades_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_total_trades_sell
    if(spot_instrument_market_data->moving_24_hour_total_trades_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_TOTAL_TRADES_SELL", spot_instrument_market_data->moving_24_hour_total_trades_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_total_trades_unknown
    if(spot_instrument_market_data->moving_24_hour_total_trades_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN", spot_instrument_market_data->moving_24_hour_total_trades_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_volume
    if(spot_instrument_market_data->moving_24_hour_volume) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_VOLUME", spot_instrument_market_data->moving_24_hour_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_volume_buy
    if(spot_instrument_market_data->moving_24_hour_volume_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_VOLUME_BUY", spot_instrument_market_data->moving_24_hour_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_volume_sell
    if(spot_instrument_market_data->moving_24_hour_volume_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_VOLUME_SELL", spot_instrument_market_data->moving_24_hour_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_24_hour_volume_unknown
    if(spot_instrument_market_data->moving_24_hour_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_24_HOUR_VOLUME_UNKNOWN", spot_instrument_market_data->moving_24_hour_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_high
    if(spot_instrument_market_data->moving_30_day_high) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_HIGH", spot_instrument_market_data->moving_30_day_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_low
    if(spot_instrument_market_data->moving_30_day_low) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_LOW", spot_instrument_market_data->moving_30_day_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_open
    if(spot_instrument_market_data->moving_30_day_open) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_OPEN", spot_instrument_market_data->moving_30_day_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_quote_volume
    if(spot_instrument_market_data->moving_30_day_quote_volume) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_QUOTE_VOLUME", spot_instrument_market_data->moving_30_day_quote_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_quote_volume_buy
    if(spot_instrument_market_data->moving_30_day_quote_volume_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_QUOTE_VOLUME_BUY", spot_instrument_market_data->moving_30_day_quote_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_quote_volume_sell
    if(spot_instrument_market_data->moving_30_day_quote_volume_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_QUOTE_VOLUME_SELL", spot_instrument_market_data->moving_30_day_quote_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_quote_volume_unknown
    if(spot_instrument_market_data->moving_30_day_quote_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN", spot_instrument_market_data->moving_30_day_quote_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_total_trades
    if(spot_instrument_market_data->moving_30_day_total_trades) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_TOTAL_TRADES", spot_instrument_market_data->moving_30_day_total_trades) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_total_trades_buy
    if(spot_instrument_market_data->moving_30_day_total_trades_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_TOTAL_TRADES_BUY", spot_instrument_market_data->moving_30_day_total_trades_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_total_trades_sell
    if(spot_instrument_market_data->moving_30_day_total_trades_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_TOTAL_TRADES_SELL", spot_instrument_market_data->moving_30_day_total_trades_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_total_trades_unknown
    if(spot_instrument_market_data->moving_30_day_total_trades_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_TOTAL_TRADES_UNKNOWN", spot_instrument_market_data->moving_30_day_total_trades_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_volume
    if(spot_instrument_market_data->moving_30_day_volume) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_VOLUME", spot_instrument_market_data->moving_30_day_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_volume_buy
    if(spot_instrument_market_data->moving_30_day_volume_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_VOLUME_BUY", spot_instrument_market_data->moving_30_day_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_volume_sell
    if(spot_instrument_market_data->moving_30_day_volume_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_VOLUME_SELL", spot_instrument_market_data->moving_30_day_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_30_day_volume_unknown
    if(spot_instrument_market_data->moving_30_day_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_30_DAY_VOLUME_UNKNOWN", spot_instrument_market_data->moving_30_day_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_high
    if(spot_instrument_market_data->moving_365_day_high) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_HIGH", spot_instrument_market_data->moving_365_day_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_low
    if(spot_instrument_market_data->moving_365_day_low) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_LOW", spot_instrument_market_data->moving_365_day_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_open
    if(spot_instrument_market_data->moving_365_day_open) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_OPEN", spot_instrument_market_data->moving_365_day_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_quote_volume
    if(spot_instrument_market_data->moving_365_day_quote_volume) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_QUOTE_VOLUME", spot_instrument_market_data->moving_365_day_quote_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_quote_volume_buy
    if(spot_instrument_market_data->moving_365_day_quote_volume_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_QUOTE_VOLUME_BUY", spot_instrument_market_data->moving_365_day_quote_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_quote_volume_sell
    if(spot_instrument_market_data->moving_365_day_quote_volume_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_QUOTE_VOLUME_SELL", spot_instrument_market_data->moving_365_day_quote_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_quote_volume_unknown
    if(spot_instrument_market_data->moving_365_day_quote_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN", spot_instrument_market_data->moving_365_day_quote_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_total_trades
    if(spot_instrument_market_data->moving_365_day_total_trades) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_TOTAL_TRADES", spot_instrument_market_data->moving_365_day_total_trades) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_total_trades_buy
    if(spot_instrument_market_data->moving_365_day_total_trades_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_TOTAL_TRADES_BUY", spot_instrument_market_data->moving_365_day_total_trades_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_total_trades_sell
    if(spot_instrument_market_data->moving_365_day_total_trades_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_TOTAL_TRADES_SELL", spot_instrument_market_data->moving_365_day_total_trades_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_total_trades_unknown
    if(spot_instrument_market_data->moving_365_day_total_trades_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_TOTAL_TRADES_UNKNOWN", spot_instrument_market_data->moving_365_day_total_trades_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_volume
    if(spot_instrument_market_data->moving_365_day_volume) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_VOLUME", spot_instrument_market_data->moving_365_day_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_volume_buy
    if(spot_instrument_market_data->moving_365_day_volume_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_VOLUME_BUY", spot_instrument_market_data->moving_365_day_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_volume_sell
    if(spot_instrument_market_data->moving_365_day_volume_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_VOLUME_SELL", spot_instrument_market_data->moving_365_day_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_365_day_volume_unknown
    if(spot_instrument_market_data->moving_365_day_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_365_DAY_VOLUME_UNKNOWN", spot_instrument_market_data->moving_365_day_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_high
    if(spot_instrument_market_data->moving_7_day_high) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_HIGH", spot_instrument_market_data->moving_7_day_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_low
    if(spot_instrument_market_data->moving_7_day_low) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_LOW", spot_instrument_market_data->moving_7_day_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_open
    if(spot_instrument_market_data->moving_7_day_open) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_OPEN", spot_instrument_market_data->moving_7_day_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_quote_volume
    if(spot_instrument_market_data->moving_7_day_quote_volume) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_QUOTE_VOLUME", spot_instrument_market_data->moving_7_day_quote_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_quote_volume_buy
    if(spot_instrument_market_data->moving_7_day_quote_volume_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_QUOTE_VOLUME_BUY", spot_instrument_market_data->moving_7_day_quote_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_quote_volume_sell
    if(spot_instrument_market_data->moving_7_day_quote_volume_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_QUOTE_VOLUME_SELL", spot_instrument_market_data->moving_7_day_quote_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_quote_volume_unknown
    if(spot_instrument_market_data->moving_7_day_quote_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN", spot_instrument_market_data->moving_7_day_quote_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_total_trades
    if(spot_instrument_market_data->moving_7_day_total_trades) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_TOTAL_TRADES", spot_instrument_market_data->moving_7_day_total_trades) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_total_trades_buy
    if(spot_instrument_market_data->moving_7_day_total_trades_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_TOTAL_TRADES_BUY", spot_instrument_market_data->moving_7_day_total_trades_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_total_trades_sell
    if(spot_instrument_market_data->moving_7_day_total_trades_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_TOTAL_TRADES_SELL", spot_instrument_market_data->moving_7_day_total_trades_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_total_trades_unknown
    if(spot_instrument_market_data->moving_7_day_total_trades_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_TOTAL_TRADES_UNKNOWN", spot_instrument_market_data->moving_7_day_total_trades_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_volume
    if(spot_instrument_market_data->moving_7_day_volume) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_VOLUME", spot_instrument_market_data->moving_7_day_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_volume_buy
    if(spot_instrument_market_data->moving_7_day_volume_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_VOLUME_BUY", spot_instrument_market_data->moving_7_day_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_volume_sell
    if(spot_instrument_market_data->moving_7_day_volume_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_VOLUME_SELL", spot_instrument_market_data->moving_7_day_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_7_day_volume_unknown
    if(spot_instrument_market_data->moving_7_day_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_7_DAY_VOLUME_UNKNOWN", spot_instrument_market_data->moving_7_day_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_high
    if(spot_instrument_market_data->moving_90_day_high) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_HIGH", spot_instrument_market_data->moving_90_day_high) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_low
    if(spot_instrument_market_data->moving_90_day_low) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_LOW", spot_instrument_market_data->moving_90_day_low) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_open
    if(spot_instrument_market_data->moving_90_day_open) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_OPEN", spot_instrument_market_data->moving_90_day_open) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_quote_volume
    if(spot_instrument_market_data->moving_90_day_quote_volume) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_QUOTE_VOLUME", spot_instrument_market_data->moving_90_day_quote_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_quote_volume_buy
    if(spot_instrument_market_data->moving_90_day_quote_volume_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_QUOTE_VOLUME_BUY", spot_instrument_market_data->moving_90_day_quote_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_quote_volume_sell
    if(spot_instrument_market_data->moving_90_day_quote_volume_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_QUOTE_VOLUME_SELL", spot_instrument_market_data->moving_90_day_quote_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_quote_volume_unknown
    if(spot_instrument_market_data->moving_90_day_quote_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN", spot_instrument_market_data->moving_90_day_quote_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_total_trades
    if(spot_instrument_market_data->moving_90_day_total_trades) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_TOTAL_TRADES", spot_instrument_market_data->moving_90_day_total_trades) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_total_trades_buy
    if(spot_instrument_market_data->moving_90_day_total_trades_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_TOTAL_TRADES_BUY", spot_instrument_market_data->moving_90_day_total_trades_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_total_trades_sell
    if(spot_instrument_market_data->moving_90_day_total_trades_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_TOTAL_TRADES_SELL", spot_instrument_market_data->moving_90_day_total_trades_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_total_trades_unknown
    if(spot_instrument_market_data->moving_90_day_total_trades_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_TOTAL_TRADES_UNKNOWN", spot_instrument_market_data->moving_90_day_total_trades_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_volume
    if(spot_instrument_market_data->moving_90_day_volume) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_VOLUME", spot_instrument_market_data->moving_90_day_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_volume_buy
    if(spot_instrument_market_data->moving_90_day_volume_buy) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_VOLUME_BUY", spot_instrument_market_data->moving_90_day_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_volume_sell
    if(spot_instrument_market_data->moving_90_day_volume_sell) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_VOLUME_SELL", spot_instrument_market_data->moving_90_day_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->moving_90_day_volume_unknown
    if(spot_instrument_market_data->moving_90_day_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "MOVING_90_DAY_VOLUME_UNKNOWN", spot_instrument_market_data->moving_90_day_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->price
    if(spot_instrument_market_data->price) {
    if(cJSON_AddNumberToObject(item, "PRICE", spot_instrument_market_data->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->price_flag
    if(spot_instrument_market_data->price_flag) {
    if(cJSON_AddStringToObject(item, "PRICE_FLAG", spot_instrument_market_data->price_flag) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_market_data->price_last_update_ts
    if(spot_instrument_market_data->price_last_update_ts) {
    if(cJSON_AddNumberToObject(item, "PRICE_LAST_UPDATE_TS", spot_instrument_market_data->price_last_update_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->quote
    if(spot_instrument_market_data->quote) {
    if(cJSON_AddStringToObject(item, "QUOTE", spot_instrument_market_data->quote) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_market_data->top_ask_last_update_ts
    if(spot_instrument_market_data->top_ask_last_update_ts) {
    if(cJSON_AddNumberToObject(item, "TOP_ASK_LAST_UPDATE_TS", spot_instrument_market_data->top_ask_last_update_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->top_ask_price
    if(spot_instrument_market_data->top_ask_price) {
    if(cJSON_AddNumberToObject(item, "TOP_ASK_PRICE", spot_instrument_market_data->top_ask_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->top_ask_quantity
    if(spot_instrument_market_data->top_ask_quantity) {
    if(cJSON_AddNumberToObject(item, "TOP_ASK_QUANTITY", spot_instrument_market_data->top_ask_quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->top_bid_last_update_ts
    if(spot_instrument_market_data->top_bid_last_update_ts) {
    if(cJSON_AddNumberToObject(item, "TOP_BID_LAST_UPDATE_TS", spot_instrument_market_data->top_bid_last_update_ts) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->top_bid_price
    if(spot_instrument_market_data->top_bid_price) {
    if(cJSON_AddNumberToObject(item, "TOP_BID_PRICE", spot_instrument_market_data->top_bid_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->top_bid_quantity
    if(spot_instrument_market_data->top_bid_quantity) {
    if(cJSON_AddNumberToObject(item, "TOP_BID_QUANTITY", spot_instrument_market_data->top_bid_quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_market_data->type
    if(spot_instrument_market_data->type) {
    if(cJSON_AddStringToObject(item, "TYPE", spot_instrument_market_data->type) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

spot_instrument_market_data_t *spot_instrument_market_data_parseFromJSON(cJSON *spot_instrument_market_dataJSON){

    spot_instrument_market_data_t *spot_instrument_market_data_local_var = NULL;

    // spot_instrument_market_data->base
    cJSON *base = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "BASE");
    if (base) { 
    if(!cJSON_IsString(base) && !cJSON_IsNull(base))
    {
    goto end; //String
    }
    }

    // spot_instrument_market_data->ccseq
    cJSON *ccseq = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CCSEQ");
    if (ccseq) { 
    if(!cJSON_IsNumber(ccseq))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_high
    cJSON *current_day_high = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_HIGH");
    if (current_day_high) { 
    if(!cJSON_IsNumber(current_day_high))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_low
    cJSON *current_day_low = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_LOW");
    if (current_day_low) { 
    if(!cJSON_IsNumber(current_day_low))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_open
    cJSON *current_day_open = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_OPEN");
    if (current_day_open) { 
    if(!cJSON_IsNumber(current_day_open))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_quote_volume
    cJSON *current_day_quote_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_QUOTE_VOLUME");
    if (current_day_quote_volume) { 
    if(!cJSON_IsNumber(current_day_quote_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_quote_volume_buy
    cJSON *current_day_quote_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_QUOTE_VOLUME_BUY");
    if (current_day_quote_volume_buy) { 
    if(!cJSON_IsNumber(current_day_quote_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_quote_volume_sell
    cJSON *current_day_quote_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_QUOTE_VOLUME_SELL");
    if (current_day_quote_volume_sell) { 
    if(!cJSON_IsNumber(current_day_quote_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_quote_volume_unknown
    cJSON *current_day_quote_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_QUOTE_VOLUME_UNKNOWN");
    if (current_day_quote_volume_unknown) { 
    if(!cJSON_IsNumber(current_day_quote_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_total_trades
    cJSON *current_day_total_trades = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_TOTAL_TRADES");
    if (current_day_total_trades) { 
    if(!cJSON_IsNumber(current_day_total_trades))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_total_trades_buy
    cJSON *current_day_total_trades_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_TOTAL_TRADES_BUY");
    if (current_day_total_trades_buy) { 
    if(!cJSON_IsNumber(current_day_total_trades_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_total_trades_sell
    cJSON *current_day_total_trades_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_TOTAL_TRADES_SELL");
    if (current_day_total_trades_sell) { 
    if(!cJSON_IsNumber(current_day_total_trades_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_total_trades_unknown
    cJSON *current_day_total_trades_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_TOTAL_TRADES_UNKNOWN");
    if (current_day_total_trades_unknown) { 
    if(!cJSON_IsNumber(current_day_total_trades_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_volume
    cJSON *current_day_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_VOLUME");
    if (current_day_volume) { 
    if(!cJSON_IsNumber(current_day_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_volume_buy
    cJSON *current_day_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_VOLUME_BUY");
    if (current_day_volume_buy) { 
    if(!cJSON_IsNumber(current_day_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_volume_sell
    cJSON *current_day_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_VOLUME_SELL");
    if (current_day_volume_sell) { 
    if(!cJSON_IsNumber(current_day_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_day_volume_unknown
    cJSON *current_day_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_DAY_VOLUME_UNKNOWN");
    if (current_day_volume_unknown) { 
    if(!cJSON_IsNumber(current_day_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_high
    cJSON *current_hour_high = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_HIGH");
    if (current_hour_high) { 
    if(!cJSON_IsNumber(current_hour_high))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_low
    cJSON *current_hour_low = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_LOW");
    if (current_hour_low) { 
    if(!cJSON_IsNumber(current_hour_low))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_open
    cJSON *current_hour_open = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_OPEN");
    if (current_hour_open) { 
    if(!cJSON_IsNumber(current_hour_open))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_quote_volume
    cJSON *current_hour_quote_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_QUOTE_VOLUME");
    if (current_hour_quote_volume) { 
    if(!cJSON_IsNumber(current_hour_quote_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_quote_volume_buy
    cJSON *current_hour_quote_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_QUOTE_VOLUME_BUY");
    if (current_hour_quote_volume_buy) { 
    if(!cJSON_IsNumber(current_hour_quote_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_quote_volume_sell
    cJSON *current_hour_quote_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_QUOTE_VOLUME_SELL");
    if (current_hour_quote_volume_sell) { 
    if(!cJSON_IsNumber(current_hour_quote_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_quote_volume_unknown
    cJSON *current_hour_quote_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN");
    if (current_hour_quote_volume_unknown) { 
    if(!cJSON_IsNumber(current_hour_quote_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_total_trades
    cJSON *current_hour_total_trades = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_TOTAL_TRADES");
    if (current_hour_total_trades) { 
    if(!cJSON_IsNumber(current_hour_total_trades))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_total_trades_buy
    cJSON *current_hour_total_trades_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_TOTAL_TRADES_BUY");
    if (current_hour_total_trades_buy) { 
    if(!cJSON_IsNumber(current_hour_total_trades_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_total_trades_sell
    cJSON *current_hour_total_trades_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_TOTAL_TRADES_SELL");
    if (current_hour_total_trades_sell) { 
    if(!cJSON_IsNumber(current_hour_total_trades_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_total_trades_unknown
    cJSON *current_hour_total_trades_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_TOTAL_TRADES_UNKNOWN");
    if (current_hour_total_trades_unknown) { 
    if(!cJSON_IsNumber(current_hour_total_trades_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_volume
    cJSON *current_hour_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_VOLUME");
    if (current_hour_volume) { 
    if(!cJSON_IsNumber(current_hour_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_volume_buy
    cJSON *current_hour_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_VOLUME_BUY");
    if (current_hour_volume_buy) { 
    if(!cJSON_IsNumber(current_hour_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_volume_sell
    cJSON *current_hour_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_VOLUME_SELL");
    if (current_hour_volume_sell) { 
    if(!cJSON_IsNumber(current_hour_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_hour_volume_unknown
    cJSON *current_hour_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_HOUR_VOLUME_UNKNOWN");
    if (current_hour_volume_unknown) { 
    if(!cJSON_IsNumber(current_hour_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_high
    cJSON *current_month_high = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_HIGH");
    if (current_month_high) { 
    if(!cJSON_IsNumber(current_month_high))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_low
    cJSON *current_month_low = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_LOW");
    if (current_month_low) { 
    if(!cJSON_IsNumber(current_month_low))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_open
    cJSON *current_month_open = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_OPEN");
    if (current_month_open) { 
    if(!cJSON_IsNumber(current_month_open))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_quote_volume
    cJSON *current_month_quote_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_QUOTE_VOLUME");
    if (current_month_quote_volume) { 
    if(!cJSON_IsNumber(current_month_quote_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_quote_volume_buy
    cJSON *current_month_quote_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_QUOTE_VOLUME_BUY");
    if (current_month_quote_volume_buy) { 
    if(!cJSON_IsNumber(current_month_quote_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_quote_volume_sell
    cJSON *current_month_quote_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_QUOTE_VOLUME_SELL");
    if (current_month_quote_volume_sell) { 
    if(!cJSON_IsNumber(current_month_quote_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_quote_volume_unknown
    cJSON *current_month_quote_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN");
    if (current_month_quote_volume_unknown) { 
    if(!cJSON_IsNumber(current_month_quote_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_total_trades
    cJSON *current_month_total_trades = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_TOTAL_TRADES");
    if (current_month_total_trades) { 
    if(!cJSON_IsNumber(current_month_total_trades))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_total_trades_buy
    cJSON *current_month_total_trades_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_TOTAL_TRADES_BUY");
    if (current_month_total_trades_buy) { 
    if(!cJSON_IsNumber(current_month_total_trades_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_total_trades_sell
    cJSON *current_month_total_trades_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_TOTAL_TRADES_SELL");
    if (current_month_total_trades_sell) { 
    if(!cJSON_IsNumber(current_month_total_trades_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_total_trades_unknown
    cJSON *current_month_total_trades_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_TOTAL_TRADES_UNKNOWN");
    if (current_month_total_trades_unknown) { 
    if(!cJSON_IsNumber(current_month_total_trades_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_volume
    cJSON *current_month_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_VOLUME");
    if (current_month_volume) { 
    if(!cJSON_IsNumber(current_month_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_volume_buy
    cJSON *current_month_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_VOLUME_BUY");
    if (current_month_volume_buy) { 
    if(!cJSON_IsNumber(current_month_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_volume_sell
    cJSON *current_month_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_VOLUME_SELL");
    if (current_month_volume_sell) { 
    if(!cJSON_IsNumber(current_month_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_month_volume_unknown
    cJSON *current_month_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_MONTH_VOLUME_UNKNOWN");
    if (current_month_volume_unknown) { 
    if(!cJSON_IsNumber(current_month_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_high
    cJSON *current_week_high = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_HIGH");
    if (current_week_high) { 
    if(!cJSON_IsNumber(current_week_high))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_low
    cJSON *current_week_low = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_LOW");
    if (current_week_low) { 
    if(!cJSON_IsNumber(current_week_low))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_open
    cJSON *current_week_open = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_OPEN");
    if (current_week_open) { 
    if(!cJSON_IsNumber(current_week_open))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_quote_volume
    cJSON *current_week_quote_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_QUOTE_VOLUME");
    if (current_week_quote_volume) { 
    if(!cJSON_IsNumber(current_week_quote_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_quote_volume_buy
    cJSON *current_week_quote_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_QUOTE_VOLUME_BUY");
    if (current_week_quote_volume_buy) { 
    if(!cJSON_IsNumber(current_week_quote_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_quote_volume_sell
    cJSON *current_week_quote_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_QUOTE_VOLUME_SELL");
    if (current_week_quote_volume_sell) { 
    if(!cJSON_IsNumber(current_week_quote_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_quote_volume_unknown
    cJSON *current_week_quote_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN");
    if (current_week_quote_volume_unknown) { 
    if(!cJSON_IsNumber(current_week_quote_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_total_trades
    cJSON *current_week_total_trades = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_TOTAL_TRADES");
    if (current_week_total_trades) { 
    if(!cJSON_IsNumber(current_week_total_trades))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_total_trades_buy
    cJSON *current_week_total_trades_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_TOTAL_TRADES_BUY");
    if (current_week_total_trades_buy) { 
    if(!cJSON_IsNumber(current_week_total_trades_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_total_trades_sell
    cJSON *current_week_total_trades_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_TOTAL_TRADES_SELL");
    if (current_week_total_trades_sell) { 
    if(!cJSON_IsNumber(current_week_total_trades_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_total_trades_unknown
    cJSON *current_week_total_trades_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_TOTAL_TRADES_UNKNOWN");
    if (current_week_total_trades_unknown) { 
    if(!cJSON_IsNumber(current_week_total_trades_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_volume
    cJSON *current_week_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_VOLUME");
    if (current_week_volume) { 
    if(!cJSON_IsNumber(current_week_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_volume_buy
    cJSON *current_week_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_VOLUME_BUY");
    if (current_week_volume_buy) { 
    if(!cJSON_IsNumber(current_week_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_volume_sell
    cJSON *current_week_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_VOLUME_SELL");
    if (current_week_volume_sell) { 
    if(!cJSON_IsNumber(current_week_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_week_volume_unknown
    cJSON *current_week_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_WEEK_VOLUME_UNKNOWN");
    if (current_week_volume_unknown) { 
    if(!cJSON_IsNumber(current_week_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_high
    cJSON *current_year_high = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_HIGH");
    if (current_year_high) { 
    if(!cJSON_IsNumber(current_year_high))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_low
    cJSON *current_year_low = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_LOW");
    if (current_year_low) { 
    if(!cJSON_IsNumber(current_year_low))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_open
    cJSON *current_year_open = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_OPEN");
    if (current_year_open) { 
    if(!cJSON_IsNumber(current_year_open))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_quote_volume
    cJSON *current_year_quote_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_QUOTE_VOLUME");
    if (current_year_quote_volume) { 
    if(!cJSON_IsNumber(current_year_quote_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_quote_volume_buy
    cJSON *current_year_quote_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_QUOTE_VOLUME_BUY");
    if (current_year_quote_volume_buy) { 
    if(!cJSON_IsNumber(current_year_quote_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_quote_volume_sell
    cJSON *current_year_quote_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_QUOTE_VOLUME_SELL");
    if (current_year_quote_volume_sell) { 
    if(!cJSON_IsNumber(current_year_quote_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_quote_volume_unknown
    cJSON *current_year_quote_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN");
    if (current_year_quote_volume_unknown) { 
    if(!cJSON_IsNumber(current_year_quote_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_total_trades
    cJSON *current_year_total_trades = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_TOTAL_TRADES");
    if (current_year_total_trades) { 
    if(!cJSON_IsNumber(current_year_total_trades))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_total_trades_buy
    cJSON *current_year_total_trades_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_TOTAL_TRADES_BUY");
    if (current_year_total_trades_buy) { 
    if(!cJSON_IsNumber(current_year_total_trades_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_total_trades_sell
    cJSON *current_year_total_trades_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_TOTAL_TRADES_SELL");
    if (current_year_total_trades_sell) { 
    if(!cJSON_IsNumber(current_year_total_trades_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_total_trades_unknown
    cJSON *current_year_total_trades_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_TOTAL_TRADES_UNKNOWN");
    if (current_year_total_trades_unknown) { 
    if(!cJSON_IsNumber(current_year_total_trades_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_volume
    cJSON *current_year_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_VOLUME");
    if (current_year_volume) { 
    if(!cJSON_IsNumber(current_year_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_volume_buy
    cJSON *current_year_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_VOLUME_BUY");
    if (current_year_volume_buy) { 
    if(!cJSON_IsNumber(current_year_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_volume_sell
    cJSON *current_year_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_VOLUME_SELL");
    if (current_year_volume_sell) { 
    if(!cJSON_IsNumber(current_year_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->current_year_volume_unknown
    cJSON *current_year_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "CURRENT_YEAR_VOLUME_UNKNOWN");
    if (current_year_volume_unknown) { 
    if(!cJSON_IsNumber(current_year_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->instrument
    cJSON *instrument = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "INSTRUMENT");
    if (instrument) { 
    if(!cJSON_IsString(instrument) && !cJSON_IsNull(instrument))
    {
    goto end; //String
    }
    }

    // spot_instrument_market_data->last_processed_trade_ccseq
    cJSON *last_processed_trade_ccseq = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LAST_PROCESSED_TRADE_CCSEQ");
    if (last_processed_trade_ccseq) { 
    if(!cJSON_IsString(last_processed_trade_ccseq) && !cJSON_IsNull(last_processed_trade_ccseq))
    {
    goto end; //String
    }
    }

    // spot_instrument_market_data->last_processed_trade_price
    cJSON *last_processed_trade_price = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LAST_PROCESSED_TRADE_PRICE");
    if (last_processed_trade_price) { 
    if(!cJSON_IsNumber(last_processed_trade_price))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->last_processed_trade_quantity
    cJSON *last_processed_trade_quantity = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LAST_PROCESSED_TRADE_QUANTITY");
    if (last_processed_trade_quantity) { 
    if(!cJSON_IsNumber(last_processed_trade_quantity))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->last_processed_trade_quote_quantity
    cJSON *last_processed_trade_quote_quantity = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LAST_PROCESSED_TRADE_QUOTE_QUANTITY");
    if (last_processed_trade_quote_quantity) { 
    if(!cJSON_IsNumber(last_processed_trade_quote_quantity))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->last_processed_trade_side
    cJSON *last_processed_trade_side = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LAST_PROCESSED_TRADE_SIDE");
    if (last_processed_trade_side) { 
    if(!cJSON_IsString(last_processed_trade_side) && !cJSON_IsNull(last_processed_trade_side))
    {
    goto end; //String
    }
    }

    // spot_instrument_market_data->last_processed_trade_ts
    cJSON *last_processed_trade_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LAST_PROCESSED_TRADE_TS");
    if (last_processed_trade_ts) { 
    if(!cJSON_IsNumber(last_processed_trade_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->last_trade_ccseq
    cJSON *last_trade_ccseq = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LAST_TRADE_CCSEQ");
    if (last_trade_ccseq) { 
    if(!cJSON_IsString(last_trade_ccseq) && !cJSON_IsNull(last_trade_ccseq))
    {
    goto end; //String
    }
    }

    // spot_instrument_market_data->last_trade_id
    cJSON *last_trade_id = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LAST_TRADE_ID");
    if (last_trade_id) { 
    if(!cJSON_IsString(last_trade_id) && !cJSON_IsNull(last_trade_id))
    {
    goto end; //String
    }
    }

    // spot_instrument_market_data->last_trade_quantity
    cJSON *last_trade_quantity = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LAST_TRADE_QUANTITY");
    if (last_trade_quantity) { 
    if(!cJSON_IsNumber(last_trade_quantity))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->last_trade_quote_quantity
    cJSON *last_trade_quote_quantity = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LAST_TRADE_QUOTE_QUANTITY");
    if (last_trade_quote_quantity) { 
    if(!cJSON_IsNumber(last_trade_quote_quantity))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->last_trade_side
    cJSON *last_trade_side = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LAST_TRADE_SIDE");
    if (last_trade_side) { 
    if(!cJSON_IsString(last_trade_side) && !cJSON_IsNull(last_trade_side))
    {
    goto end; //String
    }
    }

    // spot_instrument_market_data->lifetime_first_trade_ts
    cJSON *lifetime_first_trade_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_FIRST_TRADE_TS");
    if (lifetime_first_trade_ts) { 
    if(!cJSON_IsNumber(lifetime_first_trade_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_high
    cJSON *lifetime_high = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_HIGH");
    if (lifetime_high) { 
    if(!cJSON_IsNumber(lifetime_high))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_high_ts
    cJSON *lifetime_high_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_HIGH_TS");
    if (lifetime_high_ts) { 
    if(!cJSON_IsNumber(lifetime_high_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_low
    cJSON *lifetime_low = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_LOW");
    if (lifetime_low) { 
    if(!cJSON_IsNumber(lifetime_low))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_low_ts
    cJSON *lifetime_low_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_LOW_TS");
    if (lifetime_low_ts) { 
    if(!cJSON_IsNumber(lifetime_low_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_open
    cJSON *lifetime_open = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_OPEN");
    if (lifetime_open) { 
    if(!cJSON_IsNumber(lifetime_open))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_quote_volume
    cJSON *lifetime_quote_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_QUOTE_VOLUME");
    if (lifetime_quote_volume) { 
    if(!cJSON_IsNumber(lifetime_quote_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_quote_volume_buy
    cJSON *lifetime_quote_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_QUOTE_VOLUME_BUY");
    if (lifetime_quote_volume_buy) { 
    if(!cJSON_IsNumber(lifetime_quote_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_quote_volume_sell
    cJSON *lifetime_quote_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_QUOTE_VOLUME_SELL");
    if (lifetime_quote_volume_sell) { 
    if(!cJSON_IsNumber(lifetime_quote_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_quote_volume_unknown
    cJSON *lifetime_quote_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_QUOTE_VOLUME_UNKNOWN");
    if (lifetime_quote_volume_unknown) { 
    if(!cJSON_IsNumber(lifetime_quote_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_total_trades
    cJSON *lifetime_total_trades = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_TOTAL_TRADES");
    if (lifetime_total_trades) { 
    if(!cJSON_IsNumber(lifetime_total_trades))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_total_trades_buy
    cJSON *lifetime_total_trades_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_TOTAL_TRADES_BUY");
    if (lifetime_total_trades_buy) { 
    if(!cJSON_IsNumber(lifetime_total_trades_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_total_trades_sell
    cJSON *lifetime_total_trades_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_TOTAL_TRADES_SELL");
    if (lifetime_total_trades_sell) { 
    if(!cJSON_IsNumber(lifetime_total_trades_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_total_trades_unknown
    cJSON *lifetime_total_trades_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_TOTAL_TRADES_UNKNOWN");
    if (lifetime_total_trades_unknown) { 
    if(!cJSON_IsNumber(lifetime_total_trades_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_volume
    cJSON *lifetime_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_VOLUME");
    if (lifetime_volume) { 
    if(!cJSON_IsNumber(lifetime_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_volume_buy
    cJSON *lifetime_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_VOLUME_BUY");
    if (lifetime_volume_buy) { 
    if(!cJSON_IsNumber(lifetime_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_volume_sell
    cJSON *lifetime_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_VOLUME_SELL");
    if (lifetime_volume_sell) { 
    if(!cJSON_IsNumber(lifetime_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->lifetime_volume_unknown
    cJSON *lifetime_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "LIFETIME_VOLUME_UNKNOWN");
    if (lifetime_volume_unknown) { 
    if(!cJSON_IsNumber(lifetime_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->mapped_instrument
    cJSON *mapped_instrument = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MAPPED_INSTRUMENT");
    if (mapped_instrument) { 
    if(!cJSON_IsString(mapped_instrument) && !cJSON_IsNull(mapped_instrument))
    {
    goto end; //String
    }
    }

    // spot_instrument_market_data->market
    cJSON *market = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MARKET");
    if (market) { 
    if(!cJSON_IsString(market) && !cJSON_IsNull(market))
    {
    goto end; //String
    }
    }

    // spot_instrument_market_data->moving_180_day_high
    cJSON *moving_180_day_high = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_HIGH");
    if (moving_180_day_high) { 
    if(!cJSON_IsNumber(moving_180_day_high))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_low
    cJSON *moving_180_day_low = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_LOW");
    if (moving_180_day_low) { 
    if(!cJSON_IsNumber(moving_180_day_low))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_open
    cJSON *moving_180_day_open = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_OPEN");
    if (moving_180_day_open) { 
    if(!cJSON_IsNumber(moving_180_day_open))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_quote_volume
    cJSON *moving_180_day_quote_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_QUOTE_VOLUME");
    if (moving_180_day_quote_volume) { 
    if(!cJSON_IsNumber(moving_180_day_quote_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_quote_volume_buy
    cJSON *moving_180_day_quote_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_QUOTE_VOLUME_BUY");
    if (moving_180_day_quote_volume_buy) { 
    if(!cJSON_IsNumber(moving_180_day_quote_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_quote_volume_sell
    cJSON *moving_180_day_quote_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_QUOTE_VOLUME_SELL");
    if (moving_180_day_quote_volume_sell) { 
    if(!cJSON_IsNumber(moving_180_day_quote_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_quote_volume_unknown
    cJSON *moving_180_day_quote_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN");
    if (moving_180_day_quote_volume_unknown) { 
    if(!cJSON_IsNumber(moving_180_day_quote_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_total_trades
    cJSON *moving_180_day_total_trades = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_TOTAL_TRADES");
    if (moving_180_day_total_trades) { 
    if(!cJSON_IsNumber(moving_180_day_total_trades))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_total_trades_buy
    cJSON *moving_180_day_total_trades_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_TOTAL_TRADES_BUY");
    if (moving_180_day_total_trades_buy) { 
    if(!cJSON_IsNumber(moving_180_day_total_trades_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_total_trades_sell
    cJSON *moving_180_day_total_trades_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_TOTAL_TRADES_SELL");
    if (moving_180_day_total_trades_sell) { 
    if(!cJSON_IsNumber(moving_180_day_total_trades_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_total_trades_unknown
    cJSON *moving_180_day_total_trades_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_TOTAL_TRADES_UNKNOWN");
    if (moving_180_day_total_trades_unknown) { 
    if(!cJSON_IsNumber(moving_180_day_total_trades_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_volume
    cJSON *moving_180_day_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_VOLUME");
    if (moving_180_day_volume) { 
    if(!cJSON_IsNumber(moving_180_day_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_volume_buy
    cJSON *moving_180_day_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_VOLUME_BUY");
    if (moving_180_day_volume_buy) { 
    if(!cJSON_IsNumber(moving_180_day_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_volume_sell
    cJSON *moving_180_day_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_VOLUME_SELL");
    if (moving_180_day_volume_sell) { 
    if(!cJSON_IsNumber(moving_180_day_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_180_day_volume_unknown
    cJSON *moving_180_day_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_180_DAY_VOLUME_UNKNOWN");
    if (moving_180_day_volume_unknown) { 
    if(!cJSON_IsNumber(moving_180_day_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_high
    cJSON *moving_24_hour_high = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_HIGH");
    if (moving_24_hour_high) { 
    if(!cJSON_IsNumber(moving_24_hour_high))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_low
    cJSON *moving_24_hour_low = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_LOW");
    if (moving_24_hour_low) { 
    if(!cJSON_IsNumber(moving_24_hour_low))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_open
    cJSON *moving_24_hour_open = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_OPEN");
    if (moving_24_hour_open) { 
    if(!cJSON_IsNumber(moving_24_hour_open))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_quote_volume
    cJSON *moving_24_hour_quote_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_QUOTE_VOLUME");
    if (moving_24_hour_quote_volume) { 
    if(!cJSON_IsNumber(moving_24_hour_quote_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_quote_volume_buy
    cJSON *moving_24_hour_quote_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_QUOTE_VOLUME_BUY");
    if (moving_24_hour_quote_volume_buy) { 
    if(!cJSON_IsNumber(moving_24_hour_quote_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_quote_volume_sell
    cJSON *moving_24_hour_quote_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_QUOTE_VOLUME_SELL");
    if (moving_24_hour_quote_volume_sell) { 
    if(!cJSON_IsNumber(moving_24_hour_quote_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_quote_volume_unknown
    cJSON *moving_24_hour_quote_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN");
    if (moving_24_hour_quote_volume_unknown) { 
    if(!cJSON_IsNumber(moving_24_hour_quote_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_total_trades
    cJSON *moving_24_hour_total_trades = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_TOTAL_TRADES");
    if (moving_24_hour_total_trades) { 
    if(!cJSON_IsNumber(moving_24_hour_total_trades))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_total_trades_buy
    cJSON *moving_24_hour_total_trades_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_TOTAL_TRADES_BUY");
    if (moving_24_hour_total_trades_buy) { 
    if(!cJSON_IsNumber(moving_24_hour_total_trades_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_total_trades_sell
    cJSON *moving_24_hour_total_trades_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_TOTAL_TRADES_SELL");
    if (moving_24_hour_total_trades_sell) { 
    if(!cJSON_IsNumber(moving_24_hour_total_trades_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_total_trades_unknown
    cJSON *moving_24_hour_total_trades_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN");
    if (moving_24_hour_total_trades_unknown) { 
    if(!cJSON_IsNumber(moving_24_hour_total_trades_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_volume
    cJSON *moving_24_hour_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_VOLUME");
    if (moving_24_hour_volume) { 
    if(!cJSON_IsNumber(moving_24_hour_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_volume_buy
    cJSON *moving_24_hour_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_VOLUME_BUY");
    if (moving_24_hour_volume_buy) { 
    if(!cJSON_IsNumber(moving_24_hour_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_volume_sell
    cJSON *moving_24_hour_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_VOLUME_SELL");
    if (moving_24_hour_volume_sell) { 
    if(!cJSON_IsNumber(moving_24_hour_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_24_hour_volume_unknown
    cJSON *moving_24_hour_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_24_HOUR_VOLUME_UNKNOWN");
    if (moving_24_hour_volume_unknown) { 
    if(!cJSON_IsNumber(moving_24_hour_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_high
    cJSON *moving_30_day_high = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_HIGH");
    if (moving_30_day_high) { 
    if(!cJSON_IsNumber(moving_30_day_high))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_low
    cJSON *moving_30_day_low = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_LOW");
    if (moving_30_day_low) { 
    if(!cJSON_IsNumber(moving_30_day_low))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_open
    cJSON *moving_30_day_open = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_OPEN");
    if (moving_30_day_open) { 
    if(!cJSON_IsNumber(moving_30_day_open))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_quote_volume
    cJSON *moving_30_day_quote_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_QUOTE_VOLUME");
    if (moving_30_day_quote_volume) { 
    if(!cJSON_IsNumber(moving_30_day_quote_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_quote_volume_buy
    cJSON *moving_30_day_quote_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_QUOTE_VOLUME_BUY");
    if (moving_30_day_quote_volume_buy) { 
    if(!cJSON_IsNumber(moving_30_day_quote_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_quote_volume_sell
    cJSON *moving_30_day_quote_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_QUOTE_VOLUME_SELL");
    if (moving_30_day_quote_volume_sell) { 
    if(!cJSON_IsNumber(moving_30_day_quote_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_quote_volume_unknown
    cJSON *moving_30_day_quote_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN");
    if (moving_30_day_quote_volume_unknown) { 
    if(!cJSON_IsNumber(moving_30_day_quote_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_total_trades
    cJSON *moving_30_day_total_trades = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_TOTAL_TRADES");
    if (moving_30_day_total_trades) { 
    if(!cJSON_IsNumber(moving_30_day_total_trades))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_total_trades_buy
    cJSON *moving_30_day_total_trades_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_TOTAL_TRADES_BUY");
    if (moving_30_day_total_trades_buy) { 
    if(!cJSON_IsNumber(moving_30_day_total_trades_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_total_trades_sell
    cJSON *moving_30_day_total_trades_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_TOTAL_TRADES_SELL");
    if (moving_30_day_total_trades_sell) { 
    if(!cJSON_IsNumber(moving_30_day_total_trades_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_total_trades_unknown
    cJSON *moving_30_day_total_trades_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_TOTAL_TRADES_UNKNOWN");
    if (moving_30_day_total_trades_unknown) { 
    if(!cJSON_IsNumber(moving_30_day_total_trades_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_volume
    cJSON *moving_30_day_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_VOLUME");
    if (moving_30_day_volume) { 
    if(!cJSON_IsNumber(moving_30_day_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_volume_buy
    cJSON *moving_30_day_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_VOLUME_BUY");
    if (moving_30_day_volume_buy) { 
    if(!cJSON_IsNumber(moving_30_day_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_volume_sell
    cJSON *moving_30_day_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_VOLUME_SELL");
    if (moving_30_day_volume_sell) { 
    if(!cJSON_IsNumber(moving_30_day_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_30_day_volume_unknown
    cJSON *moving_30_day_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_30_DAY_VOLUME_UNKNOWN");
    if (moving_30_day_volume_unknown) { 
    if(!cJSON_IsNumber(moving_30_day_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_high
    cJSON *moving_365_day_high = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_HIGH");
    if (moving_365_day_high) { 
    if(!cJSON_IsNumber(moving_365_day_high))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_low
    cJSON *moving_365_day_low = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_LOW");
    if (moving_365_day_low) { 
    if(!cJSON_IsNumber(moving_365_day_low))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_open
    cJSON *moving_365_day_open = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_OPEN");
    if (moving_365_day_open) { 
    if(!cJSON_IsNumber(moving_365_day_open))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_quote_volume
    cJSON *moving_365_day_quote_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_QUOTE_VOLUME");
    if (moving_365_day_quote_volume) { 
    if(!cJSON_IsNumber(moving_365_day_quote_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_quote_volume_buy
    cJSON *moving_365_day_quote_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_QUOTE_VOLUME_BUY");
    if (moving_365_day_quote_volume_buy) { 
    if(!cJSON_IsNumber(moving_365_day_quote_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_quote_volume_sell
    cJSON *moving_365_day_quote_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_QUOTE_VOLUME_SELL");
    if (moving_365_day_quote_volume_sell) { 
    if(!cJSON_IsNumber(moving_365_day_quote_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_quote_volume_unknown
    cJSON *moving_365_day_quote_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN");
    if (moving_365_day_quote_volume_unknown) { 
    if(!cJSON_IsNumber(moving_365_day_quote_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_total_trades
    cJSON *moving_365_day_total_trades = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_TOTAL_TRADES");
    if (moving_365_day_total_trades) { 
    if(!cJSON_IsNumber(moving_365_day_total_trades))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_total_trades_buy
    cJSON *moving_365_day_total_trades_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_TOTAL_TRADES_BUY");
    if (moving_365_day_total_trades_buy) { 
    if(!cJSON_IsNumber(moving_365_day_total_trades_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_total_trades_sell
    cJSON *moving_365_day_total_trades_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_TOTAL_TRADES_SELL");
    if (moving_365_day_total_trades_sell) { 
    if(!cJSON_IsNumber(moving_365_day_total_trades_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_total_trades_unknown
    cJSON *moving_365_day_total_trades_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_TOTAL_TRADES_UNKNOWN");
    if (moving_365_day_total_trades_unknown) { 
    if(!cJSON_IsNumber(moving_365_day_total_trades_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_volume
    cJSON *moving_365_day_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_VOLUME");
    if (moving_365_day_volume) { 
    if(!cJSON_IsNumber(moving_365_day_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_volume_buy
    cJSON *moving_365_day_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_VOLUME_BUY");
    if (moving_365_day_volume_buy) { 
    if(!cJSON_IsNumber(moving_365_day_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_volume_sell
    cJSON *moving_365_day_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_VOLUME_SELL");
    if (moving_365_day_volume_sell) { 
    if(!cJSON_IsNumber(moving_365_day_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_365_day_volume_unknown
    cJSON *moving_365_day_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_365_DAY_VOLUME_UNKNOWN");
    if (moving_365_day_volume_unknown) { 
    if(!cJSON_IsNumber(moving_365_day_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_high
    cJSON *moving_7_day_high = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_HIGH");
    if (moving_7_day_high) { 
    if(!cJSON_IsNumber(moving_7_day_high))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_low
    cJSON *moving_7_day_low = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_LOW");
    if (moving_7_day_low) { 
    if(!cJSON_IsNumber(moving_7_day_low))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_open
    cJSON *moving_7_day_open = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_OPEN");
    if (moving_7_day_open) { 
    if(!cJSON_IsNumber(moving_7_day_open))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_quote_volume
    cJSON *moving_7_day_quote_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_QUOTE_VOLUME");
    if (moving_7_day_quote_volume) { 
    if(!cJSON_IsNumber(moving_7_day_quote_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_quote_volume_buy
    cJSON *moving_7_day_quote_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_QUOTE_VOLUME_BUY");
    if (moving_7_day_quote_volume_buy) { 
    if(!cJSON_IsNumber(moving_7_day_quote_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_quote_volume_sell
    cJSON *moving_7_day_quote_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_QUOTE_VOLUME_SELL");
    if (moving_7_day_quote_volume_sell) { 
    if(!cJSON_IsNumber(moving_7_day_quote_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_quote_volume_unknown
    cJSON *moving_7_day_quote_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN");
    if (moving_7_day_quote_volume_unknown) { 
    if(!cJSON_IsNumber(moving_7_day_quote_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_total_trades
    cJSON *moving_7_day_total_trades = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_TOTAL_TRADES");
    if (moving_7_day_total_trades) { 
    if(!cJSON_IsNumber(moving_7_day_total_trades))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_total_trades_buy
    cJSON *moving_7_day_total_trades_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_TOTAL_TRADES_BUY");
    if (moving_7_day_total_trades_buy) { 
    if(!cJSON_IsNumber(moving_7_day_total_trades_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_total_trades_sell
    cJSON *moving_7_day_total_trades_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_TOTAL_TRADES_SELL");
    if (moving_7_day_total_trades_sell) { 
    if(!cJSON_IsNumber(moving_7_day_total_trades_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_total_trades_unknown
    cJSON *moving_7_day_total_trades_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_TOTAL_TRADES_UNKNOWN");
    if (moving_7_day_total_trades_unknown) { 
    if(!cJSON_IsNumber(moving_7_day_total_trades_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_volume
    cJSON *moving_7_day_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_VOLUME");
    if (moving_7_day_volume) { 
    if(!cJSON_IsNumber(moving_7_day_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_volume_buy
    cJSON *moving_7_day_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_VOLUME_BUY");
    if (moving_7_day_volume_buy) { 
    if(!cJSON_IsNumber(moving_7_day_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_volume_sell
    cJSON *moving_7_day_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_VOLUME_SELL");
    if (moving_7_day_volume_sell) { 
    if(!cJSON_IsNumber(moving_7_day_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_7_day_volume_unknown
    cJSON *moving_7_day_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_7_DAY_VOLUME_UNKNOWN");
    if (moving_7_day_volume_unknown) { 
    if(!cJSON_IsNumber(moving_7_day_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_high
    cJSON *moving_90_day_high = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_HIGH");
    if (moving_90_day_high) { 
    if(!cJSON_IsNumber(moving_90_day_high))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_low
    cJSON *moving_90_day_low = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_LOW");
    if (moving_90_day_low) { 
    if(!cJSON_IsNumber(moving_90_day_low))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_open
    cJSON *moving_90_day_open = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_OPEN");
    if (moving_90_day_open) { 
    if(!cJSON_IsNumber(moving_90_day_open))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_quote_volume
    cJSON *moving_90_day_quote_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_QUOTE_VOLUME");
    if (moving_90_day_quote_volume) { 
    if(!cJSON_IsNumber(moving_90_day_quote_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_quote_volume_buy
    cJSON *moving_90_day_quote_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_QUOTE_VOLUME_BUY");
    if (moving_90_day_quote_volume_buy) { 
    if(!cJSON_IsNumber(moving_90_day_quote_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_quote_volume_sell
    cJSON *moving_90_day_quote_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_QUOTE_VOLUME_SELL");
    if (moving_90_day_quote_volume_sell) { 
    if(!cJSON_IsNumber(moving_90_day_quote_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_quote_volume_unknown
    cJSON *moving_90_day_quote_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN");
    if (moving_90_day_quote_volume_unknown) { 
    if(!cJSON_IsNumber(moving_90_day_quote_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_total_trades
    cJSON *moving_90_day_total_trades = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_TOTAL_TRADES");
    if (moving_90_day_total_trades) { 
    if(!cJSON_IsNumber(moving_90_day_total_trades))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_total_trades_buy
    cJSON *moving_90_day_total_trades_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_TOTAL_TRADES_BUY");
    if (moving_90_day_total_trades_buy) { 
    if(!cJSON_IsNumber(moving_90_day_total_trades_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_total_trades_sell
    cJSON *moving_90_day_total_trades_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_TOTAL_TRADES_SELL");
    if (moving_90_day_total_trades_sell) { 
    if(!cJSON_IsNumber(moving_90_day_total_trades_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_total_trades_unknown
    cJSON *moving_90_day_total_trades_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_TOTAL_TRADES_UNKNOWN");
    if (moving_90_day_total_trades_unknown) { 
    if(!cJSON_IsNumber(moving_90_day_total_trades_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_volume
    cJSON *moving_90_day_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_VOLUME");
    if (moving_90_day_volume) { 
    if(!cJSON_IsNumber(moving_90_day_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_volume_buy
    cJSON *moving_90_day_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_VOLUME_BUY");
    if (moving_90_day_volume_buy) { 
    if(!cJSON_IsNumber(moving_90_day_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_volume_sell
    cJSON *moving_90_day_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_VOLUME_SELL");
    if (moving_90_day_volume_sell) { 
    if(!cJSON_IsNumber(moving_90_day_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->moving_90_day_volume_unknown
    cJSON *moving_90_day_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "MOVING_90_DAY_VOLUME_UNKNOWN");
    if (moving_90_day_volume_unknown) { 
    if(!cJSON_IsNumber(moving_90_day_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "PRICE");
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->price_flag
    cJSON *price_flag = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "PRICE_FLAG");
    if (price_flag) { 
    if(!cJSON_IsString(price_flag) && !cJSON_IsNull(price_flag))
    {
    goto end; //String
    }
    }

    // spot_instrument_market_data->price_last_update_ts
    cJSON *price_last_update_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "PRICE_LAST_UPDATE_TS");
    if (price_last_update_ts) { 
    if(!cJSON_IsNumber(price_last_update_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->quote
    cJSON *quote = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "QUOTE");
    if (quote) { 
    if(!cJSON_IsString(quote) && !cJSON_IsNull(quote))
    {
    goto end; //String
    }
    }

    // spot_instrument_market_data->top_ask_last_update_ts
    cJSON *top_ask_last_update_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "TOP_ASK_LAST_UPDATE_TS");
    if (top_ask_last_update_ts) { 
    if(!cJSON_IsNumber(top_ask_last_update_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->top_ask_price
    cJSON *top_ask_price = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "TOP_ASK_PRICE");
    if (top_ask_price) { 
    if(!cJSON_IsNumber(top_ask_price))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->top_ask_quantity
    cJSON *top_ask_quantity = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "TOP_ASK_QUANTITY");
    if (top_ask_quantity) { 
    if(!cJSON_IsNumber(top_ask_quantity))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->top_bid_last_update_ts
    cJSON *top_bid_last_update_ts = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "TOP_BID_LAST_UPDATE_TS");
    if (top_bid_last_update_ts) { 
    if(!cJSON_IsNumber(top_bid_last_update_ts))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->top_bid_price
    cJSON *top_bid_price = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "TOP_BID_PRICE");
    if (top_bid_price) { 
    if(!cJSON_IsNumber(top_bid_price))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->top_bid_quantity
    cJSON *top_bid_quantity = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "TOP_BID_QUANTITY");
    if (top_bid_quantity) { 
    if(!cJSON_IsNumber(top_bid_quantity))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_market_data->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(spot_instrument_market_dataJSON, "TYPE");
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    spot_instrument_market_data_local_var = spot_instrument_market_data_create (
        base && !cJSON_IsNull(base) ? strdup(base->valuestring) : NULL,
        ccseq ? ccseq->valuedouble : 0,
        current_day_high ? current_day_high->valuedouble : 0,
        current_day_low ? current_day_low->valuedouble : 0,
        current_day_open ? current_day_open->valuedouble : 0,
        current_day_quote_volume ? current_day_quote_volume->valuedouble : 0,
        current_day_quote_volume_buy ? current_day_quote_volume_buy->valuedouble : 0,
        current_day_quote_volume_sell ? current_day_quote_volume_sell->valuedouble : 0,
        current_day_quote_volume_unknown ? current_day_quote_volume_unknown->valuedouble : 0,
        current_day_total_trades ? current_day_total_trades->valuedouble : 0,
        current_day_total_trades_buy ? current_day_total_trades_buy->valuedouble : 0,
        current_day_total_trades_sell ? current_day_total_trades_sell->valuedouble : 0,
        current_day_total_trades_unknown ? current_day_total_trades_unknown->valuedouble : 0,
        current_day_volume ? current_day_volume->valuedouble : 0,
        current_day_volume_buy ? current_day_volume_buy->valuedouble : 0,
        current_day_volume_sell ? current_day_volume_sell->valuedouble : 0,
        current_day_volume_unknown ? current_day_volume_unknown->valuedouble : 0,
        current_hour_high ? current_hour_high->valuedouble : 0,
        current_hour_low ? current_hour_low->valuedouble : 0,
        current_hour_open ? current_hour_open->valuedouble : 0,
        current_hour_quote_volume ? current_hour_quote_volume->valuedouble : 0,
        current_hour_quote_volume_buy ? current_hour_quote_volume_buy->valuedouble : 0,
        current_hour_quote_volume_sell ? current_hour_quote_volume_sell->valuedouble : 0,
        current_hour_quote_volume_unknown ? current_hour_quote_volume_unknown->valuedouble : 0,
        current_hour_total_trades ? current_hour_total_trades->valuedouble : 0,
        current_hour_total_trades_buy ? current_hour_total_trades_buy->valuedouble : 0,
        current_hour_total_trades_sell ? current_hour_total_trades_sell->valuedouble : 0,
        current_hour_total_trades_unknown ? current_hour_total_trades_unknown->valuedouble : 0,
        current_hour_volume ? current_hour_volume->valuedouble : 0,
        current_hour_volume_buy ? current_hour_volume_buy->valuedouble : 0,
        current_hour_volume_sell ? current_hour_volume_sell->valuedouble : 0,
        current_hour_volume_unknown ? current_hour_volume_unknown->valuedouble : 0,
        current_month_high ? current_month_high->valuedouble : 0,
        current_month_low ? current_month_low->valuedouble : 0,
        current_month_open ? current_month_open->valuedouble : 0,
        current_month_quote_volume ? current_month_quote_volume->valuedouble : 0,
        current_month_quote_volume_buy ? current_month_quote_volume_buy->valuedouble : 0,
        current_month_quote_volume_sell ? current_month_quote_volume_sell->valuedouble : 0,
        current_month_quote_volume_unknown ? current_month_quote_volume_unknown->valuedouble : 0,
        current_month_total_trades ? current_month_total_trades->valuedouble : 0,
        current_month_total_trades_buy ? current_month_total_trades_buy->valuedouble : 0,
        current_month_total_trades_sell ? current_month_total_trades_sell->valuedouble : 0,
        current_month_total_trades_unknown ? current_month_total_trades_unknown->valuedouble : 0,
        current_month_volume ? current_month_volume->valuedouble : 0,
        current_month_volume_buy ? current_month_volume_buy->valuedouble : 0,
        current_month_volume_sell ? current_month_volume_sell->valuedouble : 0,
        current_month_volume_unknown ? current_month_volume_unknown->valuedouble : 0,
        current_week_high ? current_week_high->valuedouble : 0,
        current_week_low ? current_week_low->valuedouble : 0,
        current_week_open ? current_week_open->valuedouble : 0,
        current_week_quote_volume ? current_week_quote_volume->valuedouble : 0,
        current_week_quote_volume_buy ? current_week_quote_volume_buy->valuedouble : 0,
        current_week_quote_volume_sell ? current_week_quote_volume_sell->valuedouble : 0,
        current_week_quote_volume_unknown ? current_week_quote_volume_unknown->valuedouble : 0,
        current_week_total_trades ? current_week_total_trades->valuedouble : 0,
        current_week_total_trades_buy ? current_week_total_trades_buy->valuedouble : 0,
        current_week_total_trades_sell ? current_week_total_trades_sell->valuedouble : 0,
        current_week_total_trades_unknown ? current_week_total_trades_unknown->valuedouble : 0,
        current_week_volume ? current_week_volume->valuedouble : 0,
        current_week_volume_buy ? current_week_volume_buy->valuedouble : 0,
        current_week_volume_sell ? current_week_volume_sell->valuedouble : 0,
        current_week_volume_unknown ? current_week_volume_unknown->valuedouble : 0,
        current_year_high ? current_year_high->valuedouble : 0,
        current_year_low ? current_year_low->valuedouble : 0,
        current_year_open ? current_year_open->valuedouble : 0,
        current_year_quote_volume ? current_year_quote_volume->valuedouble : 0,
        current_year_quote_volume_buy ? current_year_quote_volume_buy->valuedouble : 0,
        current_year_quote_volume_sell ? current_year_quote_volume_sell->valuedouble : 0,
        current_year_quote_volume_unknown ? current_year_quote_volume_unknown->valuedouble : 0,
        current_year_total_trades ? current_year_total_trades->valuedouble : 0,
        current_year_total_trades_buy ? current_year_total_trades_buy->valuedouble : 0,
        current_year_total_trades_sell ? current_year_total_trades_sell->valuedouble : 0,
        current_year_total_trades_unknown ? current_year_total_trades_unknown->valuedouble : 0,
        current_year_volume ? current_year_volume->valuedouble : 0,
        current_year_volume_buy ? current_year_volume_buy->valuedouble : 0,
        current_year_volume_sell ? current_year_volume_sell->valuedouble : 0,
        current_year_volume_unknown ? current_year_volume_unknown->valuedouble : 0,
        instrument && !cJSON_IsNull(instrument) ? strdup(instrument->valuestring) : NULL,
        last_processed_trade_ccseq && !cJSON_IsNull(last_processed_trade_ccseq) ? strdup(last_processed_trade_ccseq->valuestring) : NULL,
        last_processed_trade_price ? last_processed_trade_price->valuedouble : 0,
        last_processed_trade_quantity ? last_processed_trade_quantity->valuedouble : 0,
        last_processed_trade_quote_quantity ? last_processed_trade_quote_quantity->valuedouble : 0,
        last_processed_trade_side && !cJSON_IsNull(last_processed_trade_side) ? strdup(last_processed_trade_side->valuestring) : NULL,
        last_processed_trade_ts ? last_processed_trade_ts->valuedouble : 0,
        last_trade_ccseq && !cJSON_IsNull(last_trade_ccseq) ? strdup(last_trade_ccseq->valuestring) : NULL,
        last_trade_id && !cJSON_IsNull(last_trade_id) ? strdup(last_trade_id->valuestring) : NULL,
        last_trade_quantity ? last_trade_quantity->valuedouble : 0,
        last_trade_quote_quantity ? last_trade_quote_quantity->valuedouble : 0,
        last_trade_side && !cJSON_IsNull(last_trade_side) ? strdup(last_trade_side->valuestring) : NULL,
        lifetime_first_trade_ts ? lifetime_first_trade_ts->valuedouble : 0,
        lifetime_high ? lifetime_high->valuedouble : 0,
        lifetime_high_ts ? lifetime_high_ts->valuedouble : 0,
        lifetime_low ? lifetime_low->valuedouble : 0,
        lifetime_low_ts ? lifetime_low_ts->valuedouble : 0,
        lifetime_open ? lifetime_open->valuedouble : 0,
        lifetime_quote_volume ? lifetime_quote_volume->valuedouble : 0,
        lifetime_quote_volume_buy ? lifetime_quote_volume_buy->valuedouble : 0,
        lifetime_quote_volume_sell ? lifetime_quote_volume_sell->valuedouble : 0,
        lifetime_quote_volume_unknown ? lifetime_quote_volume_unknown->valuedouble : 0,
        lifetime_total_trades ? lifetime_total_trades->valuedouble : 0,
        lifetime_total_trades_buy ? lifetime_total_trades_buy->valuedouble : 0,
        lifetime_total_trades_sell ? lifetime_total_trades_sell->valuedouble : 0,
        lifetime_total_trades_unknown ? lifetime_total_trades_unknown->valuedouble : 0,
        lifetime_volume ? lifetime_volume->valuedouble : 0,
        lifetime_volume_buy ? lifetime_volume_buy->valuedouble : 0,
        lifetime_volume_sell ? lifetime_volume_sell->valuedouble : 0,
        lifetime_volume_unknown ? lifetime_volume_unknown->valuedouble : 0,
        mapped_instrument && !cJSON_IsNull(mapped_instrument) ? strdup(mapped_instrument->valuestring) : NULL,
        market && !cJSON_IsNull(market) ? strdup(market->valuestring) : NULL,
        moving_180_day_high ? moving_180_day_high->valuedouble : 0,
        moving_180_day_low ? moving_180_day_low->valuedouble : 0,
        moving_180_day_open ? moving_180_day_open->valuedouble : 0,
        moving_180_day_quote_volume ? moving_180_day_quote_volume->valuedouble : 0,
        moving_180_day_quote_volume_buy ? moving_180_day_quote_volume_buy->valuedouble : 0,
        moving_180_day_quote_volume_sell ? moving_180_day_quote_volume_sell->valuedouble : 0,
        moving_180_day_quote_volume_unknown ? moving_180_day_quote_volume_unknown->valuedouble : 0,
        moving_180_day_total_trades ? moving_180_day_total_trades->valuedouble : 0,
        moving_180_day_total_trades_buy ? moving_180_day_total_trades_buy->valuedouble : 0,
        moving_180_day_total_trades_sell ? moving_180_day_total_trades_sell->valuedouble : 0,
        moving_180_day_total_trades_unknown ? moving_180_day_total_trades_unknown->valuedouble : 0,
        moving_180_day_volume ? moving_180_day_volume->valuedouble : 0,
        moving_180_day_volume_buy ? moving_180_day_volume_buy->valuedouble : 0,
        moving_180_day_volume_sell ? moving_180_day_volume_sell->valuedouble : 0,
        moving_180_day_volume_unknown ? moving_180_day_volume_unknown->valuedouble : 0,
        moving_24_hour_high ? moving_24_hour_high->valuedouble : 0,
        moving_24_hour_low ? moving_24_hour_low->valuedouble : 0,
        moving_24_hour_open ? moving_24_hour_open->valuedouble : 0,
        moving_24_hour_quote_volume ? moving_24_hour_quote_volume->valuedouble : 0,
        moving_24_hour_quote_volume_buy ? moving_24_hour_quote_volume_buy->valuedouble : 0,
        moving_24_hour_quote_volume_sell ? moving_24_hour_quote_volume_sell->valuedouble : 0,
        moving_24_hour_quote_volume_unknown ? moving_24_hour_quote_volume_unknown->valuedouble : 0,
        moving_24_hour_total_trades ? moving_24_hour_total_trades->valuedouble : 0,
        moving_24_hour_total_trades_buy ? moving_24_hour_total_trades_buy->valuedouble : 0,
        moving_24_hour_total_trades_sell ? moving_24_hour_total_trades_sell->valuedouble : 0,
        moving_24_hour_total_trades_unknown ? moving_24_hour_total_trades_unknown->valuedouble : 0,
        moving_24_hour_volume ? moving_24_hour_volume->valuedouble : 0,
        moving_24_hour_volume_buy ? moving_24_hour_volume_buy->valuedouble : 0,
        moving_24_hour_volume_sell ? moving_24_hour_volume_sell->valuedouble : 0,
        moving_24_hour_volume_unknown ? moving_24_hour_volume_unknown->valuedouble : 0,
        moving_30_day_high ? moving_30_day_high->valuedouble : 0,
        moving_30_day_low ? moving_30_day_low->valuedouble : 0,
        moving_30_day_open ? moving_30_day_open->valuedouble : 0,
        moving_30_day_quote_volume ? moving_30_day_quote_volume->valuedouble : 0,
        moving_30_day_quote_volume_buy ? moving_30_day_quote_volume_buy->valuedouble : 0,
        moving_30_day_quote_volume_sell ? moving_30_day_quote_volume_sell->valuedouble : 0,
        moving_30_day_quote_volume_unknown ? moving_30_day_quote_volume_unknown->valuedouble : 0,
        moving_30_day_total_trades ? moving_30_day_total_trades->valuedouble : 0,
        moving_30_day_total_trades_buy ? moving_30_day_total_trades_buy->valuedouble : 0,
        moving_30_day_total_trades_sell ? moving_30_day_total_trades_sell->valuedouble : 0,
        moving_30_day_total_trades_unknown ? moving_30_day_total_trades_unknown->valuedouble : 0,
        moving_30_day_volume ? moving_30_day_volume->valuedouble : 0,
        moving_30_day_volume_buy ? moving_30_day_volume_buy->valuedouble : 0,
        moving_30_day_volume_sell ? moving_30_day_volume_sell->valuedouble : 0,
        moving_30_day_volume_unknown ? moving_30_day_volume_unknown->valuedouble : 0,
        moving_365_day_high ? moving_365_day_high->valuedouble : 0,
        moving_365_day_low ? moving_365_day_low->valuedouble : 0,
        moving_365_day_open ? moving_365_day_open->valuedouble : 0,
        moving_365_day_quote_volume ? moving_365_day_quote_volume->valuedouble : 0,
        moving_365_day_quote_volume_buy ? moving_365_day_quote_volume_buy->valuedouble : 0,
        moving_365_day_quote_volume_sell ? moving_365_day_quote_volume_sell->valuedouble : 0,
        moving_365_day_quote_volume_unknown ? moving_365_day_quote_volume_unknown->valuedouble : 0,
        moving_365_day_total_trades ? moving_365_day_total_trades->valuedouble : 0,
        moving_365_day_total_trades_buy ? moving_365_day_total_trades_buy->valuedouble : 0,
        moving_365_day_total_trades_sell ? moving_365_day_total_trades_sell->valuedouble : 0,
        moving_365_day_total_trades_unknown ? moving_365_day_total_trades_unknown->valuedouble : 0,
        moving_365_day_volume ? moving_365_day_volume->valuedouble : 0,
        moving_365_day_volume_buy ? moving_365_day_volume_buy->valuedouble : 0,
        moving_365_day_volume_sell ? moving_365_day_volume_sell->valuedouble : 0,
        moving_365_day_volume_unknown ? moving_365_day_volume_unknown->valuedouble : 0,
        moving_7_day_high ? moving_7_day_high->valuedouble : 0,
        moving_7_day_low ? moving_7_day_low->valuedouble : 0,
        moving_7_day_open ? moving_7_day_open->valuedouble : 0,
        moving_7_day_quote_volume ? moving_7_day_quote_volume->valuedouble : 0,
        moving_7_day_quote_volume_buy ? moving_7_day_quote_volume_buy->valuedouble : 0,
        moving_7_day_quote_volume_sell ? moving_7_day_quote_volume_sell->valuedouble : 0,
        moving_7_day_quote_volume_unknown ? moving_7_day_quote_volume_unknown->valuedouble : 0,
        moving_7_day_total_trades ? moving_7_day_total_trades->valuedouble : 0,
        moving_7_day_total_trades_buy ? moving_7_day_total_trades_buy->valuedouble : 0,
        moving_7_day_total_trades_sell ? moving_7_day_total_trades_sell->valuedouble : 0,
        moving_7_day_total_trades_unknown ? moving_7_day_total_trades_unknown->valuedouble : 0,
        moving_7_day_volume ? moving_7_day_volume->valuedouble : 0,
        moving_7_day_volume_buy ? moving_7_day_volume_buy->valuedouble : 0,
        moving_7_day_volume_sell ? moving_7_day_volume_sell->valuedouble : 0,
        moving_7_day_volume_unknown ? moving_7_day_volume_unknown->valuedouble : 0,
        moving_90_day_high ? moving_90_day_high->valuedouble : 0,
        moving_90_day_low ? moving_90_day_low->valuedouble : 0,
        moving_90_day_open ? moving_90_day_open->valuedouble : 0,
        moving_90_day_quote_volume ? moving_90_day_quote_volume->valuedouble : 0,
        moving_90_day_quote_volume_buy ? moving_90_day_quote_volume_buy->valuedouble : 0,
        moving_90_day_quote_volume_sell ? moving_90_day_quote_volume_sell->valuedouble : 0,
        moving_90_day_quote_volume_unknown ? moving_90_day_quote_volume_unknown->valuedouble : 0,
        moving_90_day_total_trades ? moving_90_day_total_trades->valuedouble : 0,
        moving_90_day_total_trades_buy ? moving_90_day_total_trades_buy->valuedouble : 0,
        moving_90_day_total_trades_sell ? moving_90_day_total_trades_sell->valuedouble : 0,
        moving_90_day_total_trades_unknown ? moving_90_day_total_trades_unknown->valuedouble : 0,
        moving_90_day_volume ? moving_90_day_volume->valuedouble : 0,
        moving_90_day_volume_buy ? moving_90_day_volume_buy->valuedouble : 0,
        moving_90_day_volume_sell ? moving_90_day_volume_sell->valuedouble : 0,
        moving_90_day_volume_unknown ? moving_90_day_volume_unknown->valuedouble : 0,
        price ? price->valuedouble : 0,
        price_flag && !cJSON_IsNull(price_flag) ? strdup(price_flag->valuestring) : NULL,
        price_last_update_ts ? price_last_update_ts->valuedouble : 0,
        quote && !cJSON_IsNull(quote) ? strdup(quote->valuestring) : NULL,
        top_ask_last_update_ts ? top_ask_last_update_ts->valuedouble : 0,
        top_ask_price ? top_ask_price->valuedouble : 0,
        top_ask_quantity ? top_ask_quantity->valuedouble : 0,
        top_bid_last_update_ts ? top_bid_last_update_ts->valuedouble : 0,
        top_bid_price ? top_bid_price->valuedouble : 0,
        top_bid_quantity ? top_bid_quantity->valuedouble : 0,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return spot_instrument_market_data_local_var;
end:
    return NULL;

}
