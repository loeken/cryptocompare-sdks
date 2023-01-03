#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "spot_instrument_histo_data.h"



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
    ) {
    spot_instrument_histo_data_t *spot_instrument_histo_data_local_var = malloc(sizeof(spot_instrument_histo_data_t));
    if (!spot_instrument_histo_data_local_var) {
        return NULL;
    }
    spot_instrument_histo_data_local_var->base = base;
    spot_instrument_histo_data_local_var->close = close;
    spot_instrument_histo_data_local_var->first_trade_price = first_trade_price;
    spot_instrument_histo_data_local_var->first_trade_timestamp = first_trade_timestamp;
    spot_instrument_histo_data_local_var->high = high;
    spot_instrument_histo_data_local_var->high_trade_price = high_trade_price;
    spot_instrument_histo_data_local_var->high_trade_timestamp = high_trade_timestamp;
    spot_instrument_histo_data_local_var->instrument = instrument;
    spot_instrument_histo_data_local_var->last_trade_price = last_trade_price;
    spot_instrument_histo_data_local_var->last_trade_timestamp = last_trade_timestamp;
    spot_instrument_histo_data_local_var->low = low;
    spot_instrument_histo_data_local_var->low_trade_price = low_trade_price;
    spot_instrument_histo_data_local_var->low_trade_timestamp = low_trade_timestamp;
    spot_instrument_histo_data_local_var->mapped_instrument = mapped_instrument;
    spot_instrument_histo_data_local_var->market = market;
    spot_instrument_histo_data_local_var->open = open;
    spot_instrument_histo_data_local_var->quote = quote;
    spot_instrument_histo_data_local_var->quote_volume = quote_volume;
    spot_instrument_histo_data_local_var->quote_volume_buy = quote_volume_buy;
    spot_instrument_histo_data_local_var->quote_volume_sell = quote_volume_sell;
    spot_instrument_histo_data_local_var->quote_volume_unknown = quote_volume_unknown;
    spot_instrument_histo_data_local_var->timestamp = timestamp;
    spot_instrument_histo_data_local_var->total_trades = total_trades;
    spot_instrument_histo_data_local_var->total_trades_buy = total_trades_buy;
    spot_instrument_histo_data_local_var->total_trades_sell = total_trades_sell;
    spot_instrument_histo_data_local_var->total_trades_unknown = total_trades_unknown;
    spot_instrument_histo_data_local_var->type = type;
    spot_instrument_histo_data_local_var->unit = unit;
    spot_instrument_histo_data_local_var->volume = volume;
    spot_instrument_histo_data_local_var->volume_buy = volume_buy;
    spot_instrument_histo_data_local_var->volume_sell = volume_sell;
    spot_instrument_histo_data_local_var->volume_unknown = volume_unknown;

    return spot_instrument_histo_data_local_var;
}


void spot_instrument_histo_data_free(spot_instrument_histo_data_t *spot_instrument_histo_data) {
    if(NULL == spot_instrument_histo_data){
        return ;
    }
    listEntry_t *listEntry;
    if (spot_instrument_histo_data->base) {
        free(spot_instrument_histo_data->base);
        spot_instrument_histo_data->base = NULL;
    }
    if (spot_instrument_histo_data->instrument) {
        free(spot_instrument_histo_data->instrument);
        spot_instrument_histo_data->instrument = NULL;
    }
    if (spot_instrument_histo_data->mapped_instrument) {
        free(spot_instrument_histo_data->mapped_instrument);
        spot_instrument_histo_data->mapped_instrument = NULL;
    }
    if (spot_instrument_histo_data->market) {
        free(spot_instrument_histo_data->market);
        spot_instrument_histo_data->market = NULL;
    }
    if (spot_instrument_histo_data->quote) {
        free(spot_instrument_histo_data->quote);
        spot_instrument_histo_data->quote = NULL;
    }
    if (spot_instrument_histo_data->type) {
        free(spot_instrument_histo_data->type);
        spot_instrument_histo_data->type = NULL;
    }
    if (spot_instrument_histo_data->unit) {
        free(spot_instrument_histo_data->unit);
        spot_instrument_histo_data->unit = NULL;
    }
    free(spot_instrument_histo_data);
}

cJSON *spot_instrument_histo_data_convertToJSON(spot_instrument_histo_data_t *spot_instrument_histo_data) {
    cJSON *item = cJSON_CreateObject();

    // spot_instrument_histo_data->base
    if(spot_instrument_histo_data->base) {
    if(cJSON_AddStringToObject(item, "BASE", spot_instrument_histo_data->base) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_histo_data->close
    if(spot_instrument_histo_data->close) {
    if(cJSON_AddNumberToObject(item, "CLOSE", spot_instrument_histo_data->close) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->first_trade_price
    if(spot_instrument_histo_data->first_trade_price) {
    if(cJSON_AddNumberToObject(item, "FIRST_TRADE_PRICE", spot_instrument_histo_data->first_trade_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->first_trade_timestamp
    if(spot_instrument_histo_data->first_trade_timestamp) {
    if(cJSON_AddNumberToObject(item, "FIRST_TRADE_TIMESTAMP", spot_instrument_histo_data->first_trade_timestamp) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->high
    if(spot_instrument_histo_data->high) {
    if(cJSON_AddNumberToObject(item, "HIGH", spot_instrument_histo_data->high) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->high_trade_price
    if(spot_instrument_histo_data->high_trade_price) {
    if(cJSON_AddNumberToObject(item, "HIGH_TRADE_PRICE", spot_instrument_histo_data->high_trade_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->high_trade_timestamp
    if(spot_instrument_histo_data->high_trade_timestamp) {
    if(cJSON_AddNumberToObject(item, "HIGH_TRADE_TIMESTAMP", spot_instrument_histo_data->high_trade_timestamp) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->instrument
    if(spot_instrument_histo_data->instrument) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT", spot_instrument_histo_data->instrument) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_histo_data->last_trade_price
    if(spot_instrument_histo_data->last_trade_price) {
    if(cJSON_AddNumberToObject(item, "LAST_TRADE_PRICE", spot_instrument_histo_data->last_trade_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->last_trade_timestamp
    if(spot_instrument_histo_data->last_trade_timestamp) {
    if(cJSON_AddNumberToObject(item, "LAST_TRADE_TIMESTAMP", spot_instrument_histo_data->last_trade_timestamp) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->low
    if(spot_instrument_histo_data->low) {
    if(cJSON_AddNumberToObject(item, "LOW", spot_instrument_histo_data->low) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->low_trade_price
    if(spot_instrument_histo_data->low_trade_price) {
    if(cJSON_AddNumberToObject(item, "LOW_TRADE_PRICE", spot_instrument_histo_data->low_trade_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->low_trade_timestamp
    if(spot_instrument_histo_data->low_trade_timestamp) {
    if(cJSON_AddNumberToObject(item, "LOW_TRADE_TIMESTAMP", spot_instrument_histo_data->low_trade_timestamp) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->mapped_instrument
    if(spot_instrument_histo_data->mapped_instrument) {
    if(cJSON_AddStringToObject(item, "MAPPED_INSTRUMENT", spot_instrument_histo_data->mapped_instrument) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_histo_data->market
    if(spot_instrument_histo_data->market) {
    if(cJSON_AddStringToObject(item, "MARKET", spot_instrument_histo_data->market) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_histo_data->open
    if(spot_instrument_histo_data->open) {
    if(cJSON_AddNumberToObject(item, "OPEN", spot_instrument_histo_data->open) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->quote
    if(spot_instrument_histo_data->quote) {
    if(cJSON_AddStringToObject(item, "QUOTE", spot_instrument_histo_data->quote) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_histo_data->quote_volume
    if(spot_instrument_histo_data->quote_volume) {
    if(cJSON_AddNumberToObject(item, "QUOTE_VOLUME", spot_instrument_histo_data->quote_volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->quote_volume_buy
    if(spot_instrument_histo_data->quote_volume_buy) {
    if(cJSON_AddNumberToObject(item, "QUOTE_VOLUME_BUY", spot_instrument_histo_data->quote_volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->quote_volume_sell
    if(spot_instrument_histo_data->quote_volume_sell) {
    if(cJSON_AddNumberToObject(item, "QUOTE_VOLUME_SELL", spot_instrument_histo_data->quote_volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->quote_volume_unknown
    if(spot_instrument_histo_data->quote_volume_unknown) {
    if(cJSON_AddNumberToObject(item, "QUOTE_VOLUME_UNKNOWN", spot_instrument_histo_data->quote_volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->timestamp
    if(spot_instrument_histo_data->timestamp) {
    if(cJSON_AddNumberToObject(item, "TIMESTAMP", spot_instrument_histo_data->timestamp) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->total_trades
    if(spot_instrument_histo_data->total_trades) {
    if(cJSON_AddNumberToObject(item, "TOTAL_TRADES", spot_instrument_histo_data->total_trades) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->total_trades_buy
    if(spot_instrument_histo_data->total_trades_buy) {
    if(cJSON_AddNumberToObject(item, "TOTAL_TRADES_BUY", spot_instrument_histo_data->total_trades_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->total_trades_sell
    if(spot_instrument_histo_data->total_trades_sell) {
    if(cJSON_AddNumberToObject(item, "TOTAL_TRADES_SELL", spot_instrument_histo_data->total_trades_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->total_trades_unknown
    if(spot_instrument_histo_data->total_trades_unknown) {
    if(cJSON_AddNumberToObject(item, "TOTAL_TRADES_UNKNOWN", spot_instrument_histo_data->total_trades_unknown) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->type
    if(spot_instrument_histo_data->type) {
    if(cJSON_AddStringToObject(item, "TYPE", spot_instrument_histo_data->type) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_histo_data->unit
    if(spot_instrument_histo_data->unit) {
    if(cJSON_AddStringToObject(item, "UNIT", spot_instrument_histo_data->unit) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_histo_data->volume
    if(spot_instrument_histo_data->volume) {
    if(cJSON_AddNumberToObject(item, "VOLUME", spot_instrument_histo_data->volume) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->volume_buy
    if(spot_instrument_histo_data->volume_buy) {
    if(cJSON_AddNumberToObject(item, "VOLUME_BUY", spot_instrument_histo_data->volume_buy) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->volume_sell
    if(spot_instrument_histo_data->volume_sell) {
    if(cJSON_AddNumberToObject(item, "VOLUME_SELL", spot_instrument_histo_data->volume_sell) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_histo_data->volume_unknown
    if(spot_instrument_histo_data->volume_unknown) {
    if(cJSON_AddNumberToObject(item, "VOLUME_UNKNOWN", spot_instrument_histo_data->volume_unknown) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

spot_instrument_histo_data_t *spot_instrument_histo_data_parseFromJSON(cJSON *spot_instrument_histo_dataJSON){

    spot_instrument_histo_data_t *spot_instrument_histo_data_local_var = NULL;

    // spot_instrument_histo_data->base
    cJSON *base = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "BASE");
    if (base) { 
    if(!cJSON_IsString(base) && !cJSON_IsNull(base))
    {
    goto end; //String
    }
    }

    // spot_instrument_histo_data->close
    cJSON *close = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "CLOSE");
    if (close) { 
    if(!cJSON_IsNumber(close))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->first_trade_price
    cJSON *first_trade_price = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "FIRST_TRADE_PRICE");
    if (first_trade_price) { 
    if(!cJSON_IsNumber(first_trade_price))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->first_trade_timestamp
    cJSON *first_trade_timestamp = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "FIRST_TRADE_TIMESTAMP");
    if (first_trade_timestamp) { 
    if(!cJSON_IsNumber(first_trade_timestamp))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->high
    cJSON *high = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "HIGH");
    if (high) { 
    if(!cJSON_IsNumber(high))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->high_trade_price
    cJSON *high_trade_price = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "HIGH_TRADE_PRICE");
    if (high_trade_price) { 
    if(!cJSON_IsNumber(high_trade_price))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->high_trade_timestamp
    cJSON *high_trade_timestamp = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "HIGH_TRADE_TIMESTAMP");
    if (high_trade_timestamp) { 
    if(!cJSON_IsNumber(high_trade_timestamp))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->instrument
    cJSON *instrument = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "INSTRUMENT");
    if (instrument) { 
    if(!cJSON_IsString(instrument) && !cJSON_IsNull(instrument))
    {
    goto end; //String
    }
    }

    // spot_instrument_histo_data->last_trade_price
    cJSON *last_trade_price = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "LAST_TRADE_PRICE");
    if (last_trade_price) { 
    if(!cJSON_IsNumber(last_trade_price))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->last_trade_timestamp
    cJSON *last_trade_timestamp = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "LAST_TRADE_TIMESTAMP");
    if (last_trade_timestamp) { 
    if(!cJSON_IsNumber(last_trade_timestamp))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->low
    cJSON *low = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "LOW");
    if (low) { 
    if(!cJSON_IsNumber(low))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->low_trade_price
    cJSON *low_trade_price = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "LOW_TRADE_PRICE");
    if (low_trade_price) { 
    if(!cJSON_IsNumber(low_trade_price))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->low_trade_timestamp
    cJSON *low_trade_timestamp = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "LOW_TRADE_TIMESTAMP");
    if (low_trade_timestamp) { 
    if(!cJSON_IsNumber(low_trade_timestamp))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->mapped_instrument
    cJSON *mapped_instrument = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "MAPPED_INSTRUMENT");
    if (mapped_instrument) { 
    if(!cJSON_IsString(mapped_instrument) && !cJSON_IsNull(mapped_instrument))
    {
    goto end; //String
    }
    }

    // spot_instrument_histo_data->market
    cJSON *market = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "MARKET");
    if (market) { 
    if(!cJSON_IsString(market) && !cJSON_IsNull(market))
    {
    goto end; //String
    }
    }

    // spot_instrument_histo_data->open
    cJSON *open = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "OPEN");
    if (open) { 
    if(!cJSON_IsNumber(open))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->quote
    cJSON *quote = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "QUOTE");
    if (quote) { 
    if(!cJSON_IsString(quote) && !cJSON_IsNull(quote))
    {
    goto end; //String
    }
    }

    // spot_instrument_histo_data->quote_volume
    cJSON *quote_volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "QUOTE_VOLUME");
    if (quote_volume) { 
    if(!cJSON_IsNumber(quote_volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->quote_volume_buy
    cJSON *quote_volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "QUOTE_VOLUME_BUY");
    if (quote_volume_buy) { 
    if(!cJSON_IsNumber(quote_volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->quote_volume_sell
    cJSON *quote_volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "QUOTE_VOLUME_SELL");
    if (quote_volume_sell) { 
    if(!cJSON_IsNumber(quote_volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->quote_volume_unknown
    cJSON *quote_volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "QUOTE_VOLUME_UNKNOWN");
    if (quote_volume_unknown) { 
    if(!cJSON_IsNumber(quote_volume_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "TIMESTAMP");
    if (timestamp) { 
    if(!cJSON_IsNumber(timestamp))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->total_trades
    cJSON *total_trades = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "TOTAL_TRADES");
    if (total_trades) { 
    if(!cJSON_IsNumber(total_trades))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->total_trades_buy
    cJSON *total_trades_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "TOTAL_TRADES_BUY");
    if (total_trades_buy) { 
    if(!cJSON_IsNumber(total_trades_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->total_trades_sell
    cJSON *total_trades_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "TOTAL_TRADES_SELL");
    if (total_trades_sell) { 
    if(!cJSON_IsNumber(total_trades_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->total_trades_unknown
    cJSON *total_trades_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "TOTAL_TRADES_UNKNOWN");
    if (total_trades_unknown) { 
    if(!cJSON_IsNumber(total_trades_unknown))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "TYPE");
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }

    // spot_instrument_histo_data->unit
    cJSON *unit = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "UNIT");
    if (unit) { 
    if(!cJSON_IsString(unit) && !cJSON_IsNull(unit))
    {
    goto end; //String
    }
    }

    // spot_instrument_histo_data->volume
    cJSON *volume = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "VOLUME");
    if (volume) { 
    if(!cJSON_IsNumber(volume))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->volume_buy
    cJSON *volume_buy = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "VOLUME_BUY");
    if (volume_buy) { 
    if(!cJSON_IsNumber(volume_buy))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->volume_sell
    cJSON *volume_sell = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "VOLUME_SELL");
    if (volume_sell) { 
    if(!cJSON_IsNumber(volume_sell))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_histo_data->volume_unknown
    cJSON *volume_unknown = cJSON_GetObjectItemCaseSensitive(spot_instrument_histo_dataJSON, "VOLUME_UNKNOWN");
    if (volume_unknown) { 
    if(!cJSON_IsNumber(volume_unknown))
    {
    goto end; //Numeric
    }
    }


    spot_instrument_histo_data_local_var = spot_instrument_histo_data_create (
        base && !cJSON_IsNull(base) ? strdup(base->valuestring) : NULL,
        close ? close->valuedouble : 0,
        first_trade_price ? first_trade_price->valuedouble : 0,
        first_trade_timestamp ? first_trade_timestamp->valuedouble : 0,
        high ? high->valuedouble : 0,
        high_trade_price ? high_trade_price->valuedouble : 0,
        high_trade_timestamp ? high_trade_timestamp->valuedouble : 0,
        instrument && !cJSON_IsNull(instrument) ? strdup(instrument->valuestring) : NULL,
        last_trade_price ? last_trade_price->valuedouble : 0,
        last_trade_timestamp ? last_trade_timestamp->valuedouble : 0,
        low ? low->valuedouble : 0,
        low_trade_price ? low_trade_price->valuedouble : 0,
        low_trade_timestamp ? low_trade_timestamp->valuedouble : 0,
        mapped_instrument && !cJSON_IsNull(mapped_instrument) ? strdup(mapped_instrument->valuestring) : NULL,
        market && !cJSON_IsNull(market) ? strdup(market->valuestring) : NULL,
        open ? open->valuedouble : 0,
        quote && !cJSON_IsNull(quote) ? strdup(quote->valuestring) : NULL,
        quote_volume ? quote_volume->valuedouble : 0,
        quote_volume_buy ? quote_volume_buy->valuedouble : 0,
        quote_volume_sell ? quote_volume_sell->valuedouble : 0,
        quote_volume_unknown ? quote_volume_unknown->valuedouble : 0,
        timestamp ? timestamp->valuedouble : 0,
        total_trades ? total_trades->valuedouble : 0,
        total_trades_buy ? total_trades_buy->valuedouble : 0,
        total_trades_sell ? total_trades_sell->valuedouble : 0,
        total_trades_unknown ? total_trades_unknown->valuedouble : 0,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL,
        unit && !cJSON_IsNull(unit) ? strdup(unit->valuestring) : NULL,
        volume ? volume->valuedouble : 0,
        volume_buy ? volume_buy->valuedouble : 0,
        volume_sell ? volume_sell->valuedouble : 0,
        volume_unknown ? volume_unknown->valuedouble : 0
        );

    return spot_instrument_histo_data_local_var;
end:
    return NULL;

}
