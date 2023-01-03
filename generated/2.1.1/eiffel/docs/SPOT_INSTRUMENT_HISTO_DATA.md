# SPOT_INSTRUMENT_HISTO_DATA

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BASE** | [**STRING_32**](STRING_32.md) | The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. | [optional] [default to null]
**CLOSE** | **INTEGER_32** | The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. | [optional] [default to null]
**FIRST_TRADE_PRICE** | **INTEGER_32** | The price of the first trade in the time period. This is only available when there is at least one trade in the time period. | [optional] [default to null]
**FIRST_TRADE_TIMESTAMP** | **INTEGER_32** | The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. | [optional] [default to null]
**HIGH** | **INTEGER_32** | The highest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional] [default to null]
**HIGH_TRADE_PRICE** | **INTEGER_32** | The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional] [default to null]
**HIGH_TRADE_TIMESTAMP** | **INTEGER_32** | The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. | [optional] [default to null]
**INSTRUMENT** | [**STRING_32**](STRING_32.md) | The unmapped instrument ID | [optional] [default to null]
**LAST_TRADE_PRICE** | **INTEGER_32** | The last trade price in the time period. This is only available when there is at least one trade in the time period. | [optional] [default to null]
**LAST_TRADE_TIMESTAMP** | **INTEGER_32** | The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. | [optional] [default to null]
**LOW** | **INTEGER_32** | The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional] [default to null]
**LOW_TRADE_PRICE** | **INTEGER_32** | The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional] [default to null]
**LOW_TRADE_TIMESTAMP** | **INTEGER_32** | The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. | [optional] [default to null]
**MAPPED_INSTRUMENT** | [**STRING_32**](STRING_32.md) | The instrument ID, as derived from our mapping rules. This takes the form \&quot;BASE-QUOTE\&quot; (e.g. BTC-USD). Only available on instruments that have been mapped. | [optional] [default to null]
**MARKET** | [**STRING_32**](STRING_32.md) | The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). | [optional] [default to null]
**OPEN** | **INTEGER_32** | The open price for the historical period, this is based on the closest trade before the period start. | [optional] [default to null]
**QUOTE** | [**STRING_32**](STRING_32.md) | The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. | [optional] [default to null]
**QUOTE_VOLUME** | **INTEGER_32** | The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional] [default to null]
**QUOTE_VOLUME_BUY** | **INTEGER_32** | The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. | [optional] [default to null]
**QUOTE_VOLUME_SELL** | **INTEGER_32** | The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional] [default to null]
**QUOTE_VOLUME_UNKNOWN** | **INTEGER_32** | The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional] [default to null]
**TIMESTAMP** | **INTEGER_32** | The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. | [optional] [default to null]
**TOTAL_TRADES** | **INTEGER_32** | The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] [default to null]
**TOTAL_TRADES_BUY** | **INTEGER_32** | The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] [default to null]
**TOTAL_TRADES_SELL** | **INTEGER_32** | The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] [default to null]
**TOTAL_TRADES_UNKNOWN** | **INTEGER_32** | The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] [default to null]
**TYPE** | [**STRING_32**](STRING_32.md) | The type of the message. | [optional] [default to null]
**UNIT** | [**STRING_32**](STRING_32.md) | The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. | [optional] [default to null]
**VOLUME** | **INTEGER_32** | The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional] [default to null]
**VOLUME_BUY** | **INTEGER_32** | The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. | [optional] [default to null]
**VOLUME_SELL** | **INTEGER_32** | The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. | [optional] [default to null]
**VOLUME_UNKNOWN** | **INTEGER_32** | The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


