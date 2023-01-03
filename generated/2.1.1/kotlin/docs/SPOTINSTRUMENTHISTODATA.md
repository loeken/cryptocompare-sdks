
# SPOTINSTRUMENTHISTODATA

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BASE** | **kotlin.String** | The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. |  [optional]
**CLOSE** | **kotlin.Int** | The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. |  [optional]
**FIRST_TRADE_PRICE** | **kotlin.Int** | The price of the first trade in the time period. This is only available when there is at least one trade in the time period. |  [optional]
**FIRST_TRADE_TIMESTAMP** | **kotlin.Int** | The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. |  [optional]
**HIGH** | **kotlin.Int** | The highest trade price in the time period. If there were no trades in the time period, the open price will be given. |  [optional]
**HIGH_TRADE_PRICE** | **kotlin.Int** | The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. |  [optional]
**HIGH_TRADE_TIMESTAMP** | **kotlin.Int** | The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. |  [optional]
**INSTRUMENT** | **kotlin.String** | The unmapped instrument ID |  [optional]
**LAST_TRADE_PRICE** | **kotlin.Int** | The last trade price in the time period. This is only available when there is at least one trade in the time period. |  [optional]
**LAST_TRADE_TIMESTAMP** | **kotlin.Int** | The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. |  [optional]
**LOW** | **kotlin.Int** | The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. |  [optional]
**LOW_TRADE_PRICE** | **kotlin.Int** | The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. |  [optional]
**LOW_TRADE_TIMESTAMP** | **kotlin.Int** | The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. |  [optional]
**MAPPED_INSTRUMENT** | **kotlin.String** | The instrument ID, as derived from our mapping rules. This takes the form \&quot;BASE-QUOTE\&quot; (e.g. BTC-USD). Only available on instruments that have been mapped. |  [optional]
**MARKET** | **kotlin.String** | The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). |  [optional]
**OPEN** | **kotlin.Int** | The open price for the historical period, this is based on the closest trade before the period start. |  [optional]
**QUOTE** | **kotlin.String** | The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. |  [optional]
**QUOTE_VOLUME** | **kotlin.Int** | The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. |  [optional]
**QUOTE_VOLUME_BUY** | **kotlin.Int** | The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. |  [optional]
**QUOTE_VOLUME_SELL** | **kotlin.Int** | The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. |  [optional]
**QUOTE_VOLUME_UNKNOWN** | **kotlin.Int** | The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. |  [optional]
**TIMESTAMP** | **kotlin.Int** | The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. |  [optional]
**TOTAL_TRADES** | **kotlin.Int** | The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. |  [optional]
**TOTAL_TRADES_BUY** | **kotlin.Int** | The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. |  [optional]
**TOTAL_TRADES_SELL** | **kotlin.Int** | The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. |  [optional]
**TOTAL_TRADES_UNKNOWN** | **kotlin.Int** | The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. |  [optional]
**TYPE** | **kotlin.String** | The type of the message. |  [optional]
**UNIT** | **kotlin.String** | The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. |  [optional]
**VOLUME** | **kotlin.Int** | The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. |  [optional]
**VOLUME_BUY** | **kotlin.Int** | The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. |  [optional]
**VOLUME_SELL** | **kotlin.Int** | The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. |  [optional]
**VOLUME_UNKNOWN** | **kotlin.Int** | The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. |  [optional]



