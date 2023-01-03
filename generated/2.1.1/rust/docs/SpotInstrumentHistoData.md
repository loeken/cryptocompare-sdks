# SpotInstrumentHistoData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base** | Option<**String**> | The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. | [optional]
**close** | Option<**i32**> | The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. | [optional]
**first_trade_price** | Option<**i32**> | The price of the first trade in the time period. This is only available when there is at least one trade in the time period. | [optional]
**first_trade_timestamp** | Option<**i32**> | The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. | [optional]
**high** | Option<**i32**> | The highest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional]
**high_trade_price** | Option<**i32**> | The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional]
**high_trade_timestamp** | Option<**i32**> | The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. | [optional]
**instrument** | Option<**String**> | The unmapped instrument ID | [optional]
**last_trade_price** | Option<**i32**> | The last trade price in the time period. This is only available when there is at least one trade in the time period. | [optional]
**last_trade_timestamp** | Option<**i32**> | The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. | [optional]
**low** | Option<**i32**> | The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional]
**low_trade_price** | Option<**i32**> | The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional]
**low_trade_timestamp** | Option<**i32**> | The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. | [optional]
**mapped_instrument** | Option<**String**> | The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped. | [optional]
**market** | Option<**String**> | The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). | [optional]
**open** | Option<**i32**> | The open price for the historical period, this is based on the closest trade before the period start. | [optional]
**quote** | Option<**String**> | The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. | [optional]
**quote_volume** | Option<**i32**> | The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional]
**quote_volume_buy** | Option<**i32**> | The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. | [optional]
**quote_volume_sell** | Option<**i32**> | The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional]
**quote_volume_unknown** | Option<**i32**> | The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional]
**timestamp** | Option<**i32**> | The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. | [optional]
**total_trades** | Option<**i32**> | The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional]
**total_trades_buy** | Option<**i32**> | The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional]
**total_trades_sell** | Option<**i32**> | The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional]
**total_trades_unknown** | Option<**i32**> | The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional]
**r#type** | Option<**String**> | The type of the message. | [optional]
**unit** | Option<**String**> | The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. | [optional]
**volume** | Option<**i32**> | The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional]
**volume_buy** | Option<**i32**> | The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. | [optional]
**volume_sell** | Option<**i32**> | The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. | [optional]
**volume_unknown** | Option<**i32**> | The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


