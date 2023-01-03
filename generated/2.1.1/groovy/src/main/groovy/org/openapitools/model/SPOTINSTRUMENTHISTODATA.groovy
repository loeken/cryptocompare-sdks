package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class SPOTINSTRUMENTHISTODATA {
    /* The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. */
    String BASE
    /* The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. */
    Integer CLOSE
    /* The price of the first trade in the time period. This is only available when there is at least one trade in the time period. */
    Integer FIRST_TRADE_PRICE
    /* The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. */
    Integer FIRST_TRADE_TIMESTAMP
    /* The highest trade price in the time period. If there were no trades in the time period, the open price will be given. */
    Integer HIGH
    /* The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. */
    Integer HIGH_TRADE_PRICE
    /* The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. */
    Integer HIGH_TRADE_TIMESTAMP
    /* The unmapped instrument ID */
    String INSTRUMENT
    /* The last trade price in the time period. This is only available when there is at least one trade in the time period. */
    Integer LAST_TRADE_PRICE
    /* The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. */
    Integer LAST_TRADE_TIMESTAMP
    /* The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. */
    Integer LOW
    /* The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. */
    Integer LOW_TRADE_PRICE
    /* The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. */
    Integer LOW_TRADE_TIMESTAMP
    /* The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped. */
    String MAPPED_INSTRUMENT
    /* The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). */
    String MARKET
    /* The open price for the historical period, this is based on the closest trade before the period start. */
    Integer OPEN
    /* The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. */
    String QUOTE
    /* The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. */
    Integer QUOTE_VOLUME
    /* The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. */
    Integer QUOTE_VOLUME_BUY
    /* The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. */
    Integer QUOTE_VOLUME_SELL
    /* The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. */
    Integer QUOTE_VOLUME_UNKNOWN
    /* The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. */
    Integer TIMESTAMP
    /* The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
    Integer TOTAL_TRADES
    /* The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
    Integer TOTAL_TRADES_BUY
    /* The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
    Integer TOTAL_TRADES_SELL
    /* The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
    Integer TOTAL_TRADES_UNKNOWN
    /* The type of the message. */
    String TYPE
    /* The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. */
    String UNIT
    /* The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. */
    Integer VOLUME
    /* The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. */
    Integer VOLUME_BUY
    /* The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. */
    Integer VOLUME_SELL
    /* The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. */
    Integer VOLUME_UNKNOWN
}
