/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models


import com.squareup.moshi.Json

/**
 * 
 *
 * @param BASE The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
 * @param CLOSE The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
 * @param FIRST_TRADE_PRICE The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
 * @param FIRST_TRADE_TIMESTAMP The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
 * @param HIGH The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
 * @param HIGH_TRADE_PRICE The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
 * @param HIGH_TRADE_TIMESTAMP The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
 * @param INSTRUMENT The unmapped instrument ID
 * @param LAST_TRADE_PRICE The last trade price in the time period. This is only available when there is at least one trade in the time period.
 * @param LAST_TRADE_TIMESTAMP The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
 * @param LOW The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
 * @param LOW_TRADE_PRICE The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
 * @param LOW_TRADE_TIMESTAMP The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
 * @param MAPPED_INSTRUMENT The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
 * @param MARKET The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
 * @param OPEN The open price for the historical period, this is based on the closest trade before the period start.
 * @param QUOTE The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
 * @param QUOTE_VOLUME The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
 * @param QUOTE_VOLUME_BUY The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
 * @param QUOTE_VOLUME_SELL The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
 * @param QUOTE_VOLUME_UNKNOWN The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
 * @param TIMESTAMP The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
 * @param TOTAL_TRADES The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
 * @param TOTAL_TRADES_BUY The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
 * @param TOTAL_TRADES_SELL The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
 * @param TOTAL_TRADES_UNKNOWN The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
 * @param TYPE The type of the message.
 * @param UNIT The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
 * @param VOLUME The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
 * @param VOLUME_BUY The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
 * @param VOLUME_SELL The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
 * @param VOLUME_UNKNOWN The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
 */


data class SPOTINSTRUMENTHISTODATA (

    /* The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. */
    @Json(name = "BASE")
    val BASE: kotlin.String? = null,

    /* The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. */
    @Json(name = "CLOSE")
    val CLOSE: kotlin.Int? = null,

    /* The price of the first trade in the time period. This is only available when there is at least one trade in the time period. */
    @Json(name = "FIRST_TRADE_PRICE")
    val FIRST_TRADE_PRICE: kotlin.Int? = null,

    /* The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. */
    @Json(name = "FIRST_TRADE_TIMESTAMP")
    val FIRST_TRADE_TIMESTAMP: kotlin.Int? = null,

    /* The highest trade price in the time period. If there were no trades in the time period, the open price will be given. */
    @Json(name = "HIGH")
    val HIGH: kotlin.Int? = null,

    /* The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. */
    @Json(name = "HIGH_TRADE_PRICE")
    val HIGH_TRADE_PRICE: kotlin.Int? = null,

    /* The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. */
    @Json(name = "HIGH_TRADE_TIMESTAMP")
    val HIGH_TRADE_TIMESTAMP: kotlin.Int? = null,

    /* The unmapped instrument ID */
    @Json(name = "INSTRUMENT")
    val INSTRUMENT: kotlin.String? = null,

    /* The last trade price in the time period. This is only available when there is at least one trade in the time period. */
    @Json(name = "LAST_TRADE_PRICE")
    val LAST_TRADE_PRICE: kotlin.Int? = null,

    /* The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. */
    @Json(name = "LAST_TRADE_TIMESTAMP")
    val LAST_TRADE_TIMESTAMP: kotlin.Int? = null,

    /* The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. */
    @Json(name = "LOW")
    val LOW: kotlin.Int? = null,

    /* The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. */
    @Json(name = "LOW_TRADE_PRICE")
    val LOW_TRADE_PRICE: kotlin.Int? = null,

    /* The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. */
    @Json(name = "LOW_TRADE_TIMESTAMP")
    val LOW_TRADE_TIMESTAMP: kotlin.Int? = null,

    /* The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped. */
    @Json(name = "MAPPED_INSTRUMENT")
    val MAPPED_INSTRUMENT: kotlin.String? = null,

    /* The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). */
    @Json(name = "MARKET")
    val MARKET: kotlin.String? = null,

    /* The open price for the historical period, this is based on the closest trade before the period start. */
    @Json(name = "OPEN")
    val OPEN: kotlin.Int? = null,

    /* The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. */
    @Json(name = "QUOTE")
    val QUOTE: kotlin.String? = null,

    /* The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. */
    @Json(name = "QUOTE_VOLUME")
    val QUOTE_VOLUME: kotlin.Int? = null,

    /* The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. */
    @Json(name = "QUOTE_VOLUME_BUY")
    val QUOTE_VOLUME_BUY: kotlin.Int? = null,

    /* The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. */
    @Json(name = "QUOTE_VOLUME_SELL")
    val QUOTE_VOLUME_SELL: kotlin.Int? = null,

    /* The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. */
    @Json(name = "QUOTE_VOLUME_UNKNOWN")
    val QUOTE_VOLUME_UNKNOWN: kotlin.Int? = null,

    /* The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. */
    @Json(name = "TIMESTAMP")
    val TIMESTAMP: kotlin.Int? = null,

    /* The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
    @Json(name = "TOTAL_TRADES")
    val TOTAL_TRADES: kotlin.Int? = null,

    /* The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
    @Json(name = "TOTAL_TRADES_BUY")
    val TOTAL_TRADES_BUY: kotlin.Int? = null,

    /* The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
    @Json(name = "TOTAL_TRADES_SELL")
    val TOTAL_TRADES_SELL: kotlin.Int? = null,

    /* The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
    @Json(name = "TOTAL_TRADES_UNKNOWN")
    val TOTAL_TRADES_UNKNOWN: kotlin.Int? = null,

    /* The type of the message. */
    @Json(name = "TYPE")
    val TYPE: kotlin.String? = null,

    /* The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. */
    @Json(name = "UNIT")
    val UNIT: kotlin.String? = null,

    /* The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. */
    @Json(name = "VOLUME")
    val VOLUME: kotlin.Int? = null,

    /* The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. */
    @Json(name = "VOLUME_BUY")
    val VOLUME_BUY: kotlin.Int? = null,

    /* The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. */
    @Json(name = "VOLUME_SELL")
    val VOLUME_SELL: kotlin.Int? = null,

    /* The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. */
    @Json(name = "VOLUME_UNKNOWN")
    val VOLUME_UNKNOWN: kotlin.Int? = null

)

