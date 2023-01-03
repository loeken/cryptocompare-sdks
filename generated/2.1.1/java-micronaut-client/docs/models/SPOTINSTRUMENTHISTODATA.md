

# SPOTINSTRUMENTHISTODATA

The class is defined in **[SPOTINSTRUMENTHISTODATA.java](../../src/main/java/org/openapitools/model/SPOTINSTRUMENTHISTODATA.java)**

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BASE** | `String` | The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. |  [optional property]
**CLOSE** | `Integer` | The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. |  [optional property]
**FIRST_TRADE_PRICE** | `Integer` | The price of the first trade in the time period. This is only available when there is at least one trade in the time period. |  [optional property]
**FIRST_TRADE_TIMESTAMP** | `Integer` | The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. |  [optional property]
**HIGH** | `Integer` | The highest trade price in the time period. If there were no trades in the time period, the open price will be given. |  [optional property]
**HIGH_TRADE_PRICE** | `Integer` | The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. |  [optional property]
**HIGH_TRADE_TIMESTAMP** | `Integer` | The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. |  [optional property]
**INSTRUMENT** | `String` | The unmapped instrument ID |  [optional property]
**LAST_TRADE_PRICE** | `Integer` | The last trade price in the time period. This is only available when there is at least one trade in the time period. |  [optional property]
**LAST_TRADE_TIMESTAMP** | `Integer` | The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. |  [optional property]
**LOW** | `Integer` | The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. |  [optional property]
**LOW_TRADE_PRICE** | `Integer` | The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. |  [optional property]
**LOW_TRADE_TIMESTAMP** | `Integer` | The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. |  [optional property]
**MAPPED_INSTRUMENT** | `String` | The instrument ID, as derived from our mapping rules. This takes the form \&quot;BASE-QUOTE\&quot; (e.g. BTC-USD). Only available on instruments that have been mapped. |  [optional property]
**MARKET** | `String` | The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). |  [optional property]
**OPEN** | `Integer` | The open price for the historical period, this is based on the closest trade before the period start. |  [optional property]
**QUOTE** | `String` | The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. |  [optional property]
**QUOTE_VOLUME** | `Integer` | The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. |  [optional property]
**QUOTE_VOLUME_BUY** | `Integer` | The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. |  [optional property]
**QUOTE_VOLUME_SELL** | `Integer` | The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. |  [optional property]
**QUOTE_VOLUME_UNKNOWN** | `Integer` | The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. |  [optional property]
**TIMESTAMP** | `Integer` | The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. |  [optional property]
**TOTAL_TRADES** | `Integer` | The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. |  [optional property]
**TOTAL_TRADES_BUY** | `Integer` | The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. |  [optional property]
**TOTAL_TRADES_SELL** | `Integer` | The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. |  [optional property]
**TOTAL_TRADES_UNKNOWN** | `Integer` | The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. |  [optional property]
**TYPE** | `String` | The type of the message. |  [optional property]
**UNIT** | `String` | The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. |  [optional property]
**VOLUME** | `Integer` | The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. |  [optional property]
**VOLUME_BUY** | `Integer` | The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. |  [optional property]
**VOLUME_SELL** | `Integer` | The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. |  [optional property]
**VOLUME_UNKNOWN** | `Integer` | The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. |  [optional property]


































