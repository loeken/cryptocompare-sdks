
package org.openapitools.client.model


case class SPOTINSTRUMENTHISTODATA (
    /* The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. */
    _BASE: Option[String],
    /* The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. */
    _CLOSE: Option[Integer],
    /* The price of the first trade in the time period. This is only available when there is at least one trade in the time period. */
    _FIRST_TRADE_PRICE: Option[Integer],
    /* The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. */
    _FIRST_TRADE_TIMESTAMP: Option[Integer],
    /* The highest trade price in the time period. If there were no trades in the time period, the open price will be given. */
    _HIGH: Option[Integer],
    /* The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. */
    _HIGH_TRADE_PRICE: Option[Integer],
    /* The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. */
    _HIGH_TRADE_TIMESTAMP: Option[Integer],
    /* The unmapped instrument ID */
    _INSTRUMENT: Option[String],
    /* The last trade price in the time period. This is only available when there is at least one trade in the time period. */
    _LAST_TRADE_PRICE: Option[Integer],
    /* The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. */
    _LAST_TRADE_TIMESTAMP: Option[Integer],
    /* The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. */
    _LOW: Option[Integer],
    /* The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. */
    _LOW_TRADE_PRICE: Option[Integer],
    /* The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. */
    _LOW_TRADE_TIMESTAMP: Option[Integer],
    /* The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped. */
    _MAPPED_INSTRUMENT: Option[String],
    /* The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). */
    _MARKET: Option[String],
    /* The open price for the historical period, this is based on the closest trade before the period start. */
    _OPEN: Option[Integer],
    /* The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. */
    _QUOTE: Option[String],
    /* The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. */
    _QUOTE_VOLUME: Option[Integer],
    /* The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. */
    _QUOTE_VOLUME_BUY: Option[Integer],
    /* The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. */
    _QUOTE_VOLUME_SELL: Option[Integer],
    /* The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. */
    _QUOTE_VOLUME_UNKNOWN: Option[Integer],
    /* The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. */
    _TIMESTAMP: Option[Integer],
    /* The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
    _TOTAL_TRADES: Option[Integer],
    /* The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
    _TOTAL_TRADES_BUY: Option[Integer],
    /* The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
    _TOTAL_TRADES_SELL: Option[Integer],
    /* The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. */
    _TOTAL_TRADES_UNKNOWN: Option[Integer],
    /* The type of the message. */
    _TYPE: Option[String],
    /* The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. */
    _UNIT: Option[String],
    /* The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. */
    _VOLUME: Option[Integer],
    /* The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. */
    _VOLUME_BUY: Option[Integer],
    /* The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. */
    _VOLUME_SELL: Option[Integer],
    /* The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. */
    _VOLUME_UNKNOWN: Option[Integer]
)
object SPOTINSTRUMENTHISTODATA {
    def toStringBody(var_BASE: Object, var_CLOSE: Object, var_FIRST_TRADE_PRICE: Object, var_FIRST_TRADE_TIMESTAMP: Object, var_HIGH: Object, var_HIGH_TRADE_PRICE: Object, var_HIGH_TRADE_TIMESTAMP: Object, var_INSTRUMENT: Object, var_LAST_TRADE_PRICE: Object, var_LAST_TRADE_TIMESTAMP: Object, var_LOW: Object, var_LOW_TRADE_PRICE: Object, var_LOW_TRADE_TIMESTAMP: Object, var_MAPPED_INSTRUMENT: Object, var_MARKET: Object, var_OPEN: Object, var_QUOTE: Object, var_QUOTE_VOLUME: Object, var_QUOTE_VOLUME_BUY: Object, var_QUOTE_VOLUME_SELL: Object, var_QUOTE_VOLUME_UNKNOWN: Object, var_TIMESTAMP: Object, var_TOTAL_TRADES: Object, var_TOTAL_TRADES_BUY: Object, var_TOTAL_TRADES_SELL: Object, var_TOTAL_TRADES_UNKNOWN: Object, var_TYPE: Object, var_UNIT: Object, var_VOLUME: Object, var_VOLUME_BUY: Object, var_VOLUME_SELL: Object, var_VOLUME_UNKNOWN: Object) =
        s"""
        | {
        | "BASE":$var_BASE,"CLOSE":$var_CLOSE,"FIRST_TRADE_PRICE":$var_FIRST_TRADE_PRICE,"FIRST_TRADE_TIMESTAMP":$var_FIRST_TRADE_TIMESTAMP,"HIGH":$var_HIGH,"HIGH_TRADE_PRICE":$var_HIGH_TRADE_PRICE,"HIGH_TRADE_TIMESTAMP":$var_HIGH_TRADE_TIMESTAMP,"INSTRUMENT":$var_INSTRUMENT,"LAST_TRADE_PRICE":$var_LAST_TRADE_PRICE,"LAST_TRADE_TIMESTAMP":$var_LAST_TRADE_TIMESTAMP,"LOW":$var_LOW,"LOW_TRADE_PRICE":$var_LOW_TRADE_PRICE,"LOW_TRADE_TIMESTAMP":$var_LOW_TRADE_TIMESTAMP,"MAPPED_INSTRUMENT":$var_MAPPED_INSTRUMENT,"MARKET":$var_MARKET,"OPEN":$var_OPEN,"QUOTE":$var_QUOTE,"QUOTE_VOLUME":$var_QUOTE_VOLUME,"QUOTE_VOLUME_BUY":$var_QUOTE_VOLUME_BUY,"QUOTE_VOLUME_SELL":$var_QUOTE_VOLUME_SELL,"QUOTE_VOLUME_UNKNOWN":$var_QUOTE_VOLUME_UNKNOWN,"TIMESTAMP":$var_TIMESTAMP,"TOTAL_TRADES":$var_TOTAL_TRADES,"TOTAL_TRADES_BUY":$var_TOTAL_TRADES_BUY,"TOTAL_TRADES_SELL":$var_TOTAL_TRADES_SELL,"TOTAL_TRADES_UNKNOWN":$var_TOTAL_TRADES_UNKNOWN,"TYPE":$var_TYPE,"UNIT":$var_UNIT,"VOLUME":$var_VOLUME,"VOLUME_BUY":$var_VOLUME_BUY,"VOLUME_SELL":$var_VOLUME_SELL,"VOLUME_UNKNOWN":$var_VOLUME_UNKNOWN
        | }
        """.stripMargin
}
