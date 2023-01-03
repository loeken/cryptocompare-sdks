#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "spot_instrument_trade.h"



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
    ) {
    spot_instrument_trade_t *spot_instrument_trade_local_var = malloc(sizeof(spot_instrument_trade_t));
    if (!spot_instrument_trade_local_var) {
        return NULL;
    }
    spot_instrument_trade_local_var->base = base;
    spot_instrument_trade_local_var->ccseq = ccseq;
    spot_instrument_trade_local_var->id = id;
    spot_instrument_trade_local_var->instrument = instrument;
    spot_instrument_trade_local_var->mapped_instrument = mapped_instrument;
    spot_instrument_trade_local_var->market = market;
    spot_instrument_trade_local_var->price = price;
    spot_instrument_trade_local_var->quantity = quantity;
    spot_instrument_trade_local_var->quote = quote;
    spot_instrument_trade_local_var->quote_quantity = quote_quantity;
    spot_instrument_trade_local_var->received_timestamp = received_timestamp;
    spot_instrument_trade_local_var->received_timestamp_ns = received_timestamp_ns;
    spot_instrument_trade_local_var->side = side;
    spot_instrument_trade_local_var->source = source;
    spot_instrument_trade_local_var->timestamp = timestamp;
    spot_instrument_trade_local_var->timestamp_ns = timestamp_ns;
    spot_instrument_trade_local_var->type = type;

    return spot_instrument_trade_local_var;
}


void spot_instrument_trade_free(spot_instrument_trade_t *spot_instrument_trade) {
    if(NULL == spot_instrument_trade){
        return ;
    }
    listEntry_t *listEntry;
    if (spot_instrument_trade->base) {
        free(spot_instrument_trade->base);
        spot_instrument_trade->base = NULL;
    }
    if (spot_instrument_trade->id) {
        free(spot_instrument_trade->id);
        spot_instrument_trade->id = NULL;
    }
    if (spot_instrument_trade->instrument) {
        free(spot_instrument_trade->instrument);
        spot_instrument_trade->instrument = NULL;
    }
    if (spot_instrument_trade->mapped_instrument) {
        free(spot_instrument_trade->mapped_instrument);
        spot_instrument_trade->mapped_instrument = NULL;
    }
    if (spot_instrument_trade->market) {
        free(spot_instrument_trade->market);
        spot_instrument_trade->market = NULL;
    }
    if (spot_instrument_trade->quote) {
        free(spot_instrument_trade->quote);
        spot_instrument_trade->quote = NULL;
    }
    if (spot_instrument_trade->side) {
        free(spot_instrument_trade->side);
        spot_instrument_trade->side = NULL;
    }
    if (spot_instrument_trade->source) {
        free(spot_instrument_trade->source);
        spot_instrument_trade->source = NULL;
    }
    if (spot_instrument_trade->type) {
        free(spot_instrument_trade->type);
        spot_instrument_trade->type = NULL;
    }
    free(spot_instrument_trade);
}

cJSON *spot_instrument_trade_convertToJSON(spot_instrument_trade_t *spot_instrument_trade) {
    cJSON *item = cJSON_CreateObject();

    // spot_instrument_trade->base
    if(spot_instrument_trade->base) {
    if(cJSON_AddStringToObject(item, "BASE", spot_instrument_trade->base) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_trade->ccseq
    if(spot_instrument_trade->ccseq) {
    if(cJSON_AddNumberToObject(item, "CCSEQ", spot_instrument_trade->ccseq) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_trade->id
    if(spot_instrument_trade->id) {
    if(cJSON_AddStringToObject(item, "ID", spot_instrument_trade->id) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_trade->instrument
    if(spot_instrument_trade->instrument) {
    if(cJSON_AddStringToObject(item, "INSTRUMENT", spot_instrument_trade->instrument) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_trade->mapped_instrument
    if(spot_instrument_trade->mapped_instrument) {
    if(cJSON_AddStringToObject(item, "MAPPED_INSTRUMENT", spot_instrument_trade->mapped_instrument) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_trade->market
    if(spot_instrument_trade->market) {
    if(cJSON_AddStringToObject(item, "MARKET", spot_instrument_trade->market) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_trade->price
    if(spot_instrument_trade->price) {
    if(cJSON_AddNumberToObject(item, "PRICE", spot_instrument_trade->price) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_trade->quantity
    if(spot_instrument_trade->quantity) {
    if(cJSON_AddNumberToObject(item, "QUANTITY", spot_instrument_trade->quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_trade->quote
    if(spot_instrument_trade->quote) {
    if(cJSON_AddStringToObject(item, "QUOTE", spot_instrument_trade->quote) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_trade->quote_quantity
    if(spot_instrument_trade->quote_quantity) {
    if(cJSON_AddNumberToObject(item, "QUOTE_QUANTITY", spot_instrument_trade->quote_quantity) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_trade->received_timestamp
    if(spot_instrument_trade->received_timestamp) {
    if(cJSON_AddNumberToObject(item, "RECEIVED_TIMESTAMP", spot_instrument_trade->received_timestamp) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_trade->received_timestamp_ns
    if(spot_instrument_trade->received_timestamp_ns) {
    if(cJSON_AddNumberToObject(item, "RECEIVED_TIMESTAMP_NS", spot_instrument_trade->received_timestamp_ns) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_trade->side
    if(spot_instrument_trade->side) {
    if(cJSON_AddStringToObject(item, "SIDE", spot_instrument_trade->side) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_trade->source
    if(spot_instrument_trade->source) {
    if(cJSON_AddStringToObject(item, "SOURCE", spot_instrument_trade->source) == NULL) {
    goto fail; //String
    }
    }


    // spot_instrument_trade->timestamp
    if(spot_instrument_trade->timestamp) {
    if(cJSON_AddNumberToObject(item, "TIMESTAMP", spot_instrument_trade->timestamp) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_trade->timestamp_ns
    if(spot_instrument_trade->timestamp_ns) {
    if(cJSON_AddNumberToObject(item, "TIMESTAMP_NS", spot_instrument_trade->timestamp_ns) == NULL) {
    goto fail; //Numeric
    }
    }


    // spot_instrument_trade->type
    if(spot_instrument_trade->type) {
    if(cJSON_AddStringToObject(item, "TYPE", spot_instrument_trade->type) == NULL) {
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

spot_instrument_trade_t *spot_instrument_trade_parseFromJSON(cJSON *spot_instrument_tradeJSON){

    spot_instrument_trade_t *spot_instrument_trade_local_var = NULL;

    // spot_instrument_trade->base
    cJSON *base = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "BASE");
    if (base) { 
    if(!cJSON_IsString(base) && !cJSON_IsNull(base))
    {
    goto end; //String
    }
    }

    // spot_instrument_trade->ccseq
    cJSON *ccseq = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "CCSEQ");
    if (ccseq) { 
    if(!cJSON_IsNumber(ccseq))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_trade->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "ID");
    if (id) { 
    if(!cJSON_IsString(id) && !cJSON_IsNull(id))
    {
    goto end; //String
    }
    }

    // spot_instrument_trade->instrument
    cJSON *instrument = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "INSTRUMENT");
    if (instrument) { 
    if(!cJSON_IsString(instrument) && !cJSON_IsNull(instrument))
    {
    goto end; //String
    }
    }

    // spot_instrument_trade->mapped_instrument
    cJSON *mapped_instrument = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "MAPPED_INSTRUMENT");
    if (mapped_instrument) { 
    if(!cJSON_IsString(mapped_instrument) && !cJSON_IsNull(mapped_instrument))
    {
    goto end; //String
    }
    }

    // spot_instrument_trade->market
    cJSON *market = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "MARKET");
    if (market) { 
    if(!cJSON_IsString(market) && !cJSON_IsNull(market))
    {
    goto end; //String
    }
    }

    // spot_instrument_trade->price
    cJSON *price = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "PRICE");
    if (price) { 
    if(!cJSON_IsNumber(price))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_trade->quantity
    cJSON *quantity = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "QUANTITY");
    if (quantity) { 
    if(!cJSON_IsNumber(quantity))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_trade->quote
    cJSON *quote = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "QUOTE");
    if (quote) { 
    if(!cJSON_IsString(quote) && !cJSON_IsNull(quote))
    {
    goto end; //String
    }
    }

    // spot_instrument_trade->quote_quantity
    cJSON *quote_quantity = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "QUOTE_QUANTITY");
    if (quote_quantity) { 
    if(!cJSON_IsNumber(quote_quantity))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_trade->received_timestamp
    cJSON *received_timestamp = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "RECEIVED_TIMESTAMP");
    if (received_timestamp) { 
    if(!cJSON_IsNumber(received_timestamp))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_trade->received_timestamp_ns
    cJSON *received_timestamp_ns = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "RECEIVED_TIMESTAMP_NS");
    if (received_timestamp_ns) { 
    if(!cJSON_IsNumber(received_timestamp_ns))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_trade->side
    cJSON *side = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "SIDE");
    if (side) { 
    if(!cJSON_IsString(side) && !cJSON_IsNull(side))
    {
    goto end; //String
    }
    }

    // spot_instrument_trade->source
    cJSON *source = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "SOURCE");
    if (source) { 
    if(!cJSON_IsString(source) && !cJSON_IsNull(source))
    {
    goto end; //String
    }
    }

    // spot_instrument_trade->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "TIMESTAMP");
    if (timestamp) { 
    if(!cJSON_IsNumber(timestamp))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_trade->timestamp_ns
    cJSON *timestamp_ns = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "TIMESTAMP_NS");
    if (timestamp_ns) { 
    if(!cJSON_IsNumber(timestamp_ns))
    {
    goto end; //Numeric
    }
    }

    // spot_instrument_trade->type
    cJSON *type = cJSON_GetObjectItemCaseSensitive(spot_instrument_tradeJSON, "TYPE");
    if (type) { 
    if(!cJSON_IsString(type) && !cJSON_IsNull(type))
    {
    goto end; //String
    }
    }


    spot_instrument_trade_local_var = spot_instrument_trade_create (
        base && !cJSON_IsNull(base) ? strdup(base->valuestring) : NULL,
        ccseq ? ccseq->valuedouble : 0,
        id && !cJSON_IsNull(id) ? strdup(id->valuestring) : NULL,
        instrument && !cJSON_IsNull(instrument) ? strdup(instrument->valuestring) : NULL,
        mapped_instrument && !cJSON_IsNull(mapped_instrument) ? strdup(mapped_instrument->valuestring) : NULL,
        market && !cJSON_IsNull(market) ? strdup(market->valuestring) : NULL,
        price ? price->valuedouble : 0,
        quantity ? quantity->valuedouble : 0,
        quote && !cJSON_IsNull(quote) ? strdup(quote->valuestring) : NULL,
        quote_quantity ? quote_quantity->valuedouble : 0,
        received_timestamp ? received_timestamp->valuedouble : 0,
        received_timestamp_ns ? received_timestamp_ns->valuedouble : 0,
        side && !cJSON_IsNull(side) ? strdup(side->valuestring) : NULL,
        source && !cJSON_IsNull(source) ? strdup(source->valuestring) : NULL,
        timestamp ? timestamp->valuedouble : 0,
        timestamp_ns ? timestamp_ns->valuedouble : 0,
        type && !cJSON_IsNull(type) ? strdup(type->valuestring) : NULL
        );

    return spot_instrument_trade_local_var;
end:
    return NULL;

}
