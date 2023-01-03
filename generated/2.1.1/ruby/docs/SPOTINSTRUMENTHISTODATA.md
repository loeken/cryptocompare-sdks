# OpenapiClient::SPOTINSTRUMENTHISTODATA

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base** | **String** | The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. | [optional] |
| **close** | **Integer** | The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. | [optional] |
| **first_trade_price** | **Integer** | The price of the first trade in the time period. This is only available when there is at least one trade in the time period. | [optional] |
| **first_trade_timestamp** | **Integer** | The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. | [optional] |
| **high** | **Integer** | The highest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional] |
| **high_trade_price** | **Integer** | The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional] |
| **high_trade_timestamp** | **Integer** | The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. | [optional] |
| **instrument** | **String** | The unmapped instrument ID | [optional] |
| **last_trade_price** | **Integer** | The last trade price in the time period. This is only available when there is at least one trade in the time period. | [optional] |
| **last_trade_timestamp** | **Integer** | The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. | [optional] |
| **low** | **Integer** | The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional] |
| **low_trade_price** | **Integer** | The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional] |
| **low_trade_timestamp** | **Integer** | The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. | [optional] |
| **mapped_instrument** | **String** | The instrument ID, as derived from our mapping rules. This takes the form \&quot;BASE-QUOTE\&quot; (e.g. BTC-USD). Only available on instruments that have been mapped. | [optional] |
| **market** | **String** | The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). | [optional] |
| **open** | **Integer** | The open price for the historical period, this is based on the closest trade before the period start. | [optional] |
| **quote** | **String** | The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. | [optional] |
| **quote_volume** | **Integer** | The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional] |
| **quote_volume_buy** | **Integer** | The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. | [optional] |
| **quote_volume_sell** | **Integer** | The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional] |
| **quote_volume_unknown** | **Integer** | The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional] |
| **timestamp** | **Integer** | The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. | [optional] |
| **total_trades** | **Integer** | The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] |
| **total_trades_buy** | **Integer** | The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] |
| **total_trades_sell** | **Integer** | The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] |
| **total_trades_unknown** | **Integer** | The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] |
| **type** | **String** | The type of the message. | [optional] |
| **unit** | **String** | The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. | [optional] |
| **volume** | **Integer** | The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional] |
| **volume_buy** | **Integer** | The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. | [optional] |
| **volume_sell** | **Integer** | The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. | [optional] |
| **volume_unknown** | **Integer** | The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SPOTINSTRUMENTHISTODATA.new(
  base: null,
  close: null,
  first_trade_price: null,
  first_trade_timestamp: null,
  high: null,
  high_trade_price: null,
  high_trade_timestamp: null,
  instrument: null,
  last_trade_price: null,
  last_trade_timestamp: null,
  low: null,
  low_trade_price: null,
  low_trade_timestamp: null,
  mapped_instrument: null,
  market: null,
  open: null,
  quote: null,
  quote_volume: null,
  quote_volume_buy: null,
  quote_volume_sell: null,
  quote_volume_unknown: null,
  timestamp: null,
  total_trades: null,
  total_trades_buy: null,
  total_trades_sell: null,
  total_trades_unknown: null,
  type: null,
  unit: null,
  volume: null,
  volume_buy: null,
  volume_sell: null,
  volume_unknown: null
)
```

