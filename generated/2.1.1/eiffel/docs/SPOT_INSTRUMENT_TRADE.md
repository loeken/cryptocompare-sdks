# SPOT_INSTRUMENT_TRADE

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BASE** | [**STRING_32**](STRING_32.md) | The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC). | [optional] [default to null]
**CCSEQ** | **INTEGER_32** | Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order. | [optional] [default to null]
**ID** | [**STRING_32**](STRING_32.md) | The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second. | [optional] [default to null]
**INSTRUMENT** | [**STRING_32**](STRING_32.md) | The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD). | [optional] [default to null]
**MAPPED_INSTRUMENT** | [**STRING_32**](STRING_32.md) | The mapped instrument ID, as derived from our mapping rules. This takes the form: \&quot;BASE-QUOTE\&quot;. Only available on instruments that have been mapped (e.g. BTC-USD). | [optional] [default to null]
**MARKET** | [**STRING_32**](STRING_32.md) | The market / exchange under consideration (e.g. Coinbase, Kraken, etc.). | [optional] [default to null]
**PRICE** | **INTEGER_32** | The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract. | [optional] [default to null]
**QUANTITY** | **INTEGER_32** | The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded. | [optional] [default to null]
**QUOTE** | [**STRING_32**](STRING_32.md) | The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD). | [optional] [default to null]
**QUOTE_QUANTITY** | **INTEGER_32** | The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded. | [optional] [default to null]
**RECEIVED_TIMESTAMP** | **INTEGER_32** | The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits. | [optional] [default to null]
**RECEIVED_TIMESTAMP_NS** | **INTEGER_32** | The nanosecond part of the received timestamp. | [optional] [default to null]
**SIDE** | [**STRING_32**](STRING_32.md) | The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \&quot;UNKNOWN\&quot; will be returned. | [optional] [default to null]
**SOURCE** | [**STRING_32**](STRING_32.md) | The source of the trade update: POLLING, STREAMING, GO, BLOB etc. | [optional] [default to null]
**TIMESTAMP** | **INTEGER_32** | The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one. | [optional] [default to null]
**TIMESTAMP_NS** | **INTEGER_32** | The nanosecond part of the reported timestamp. | [optional] [default to null]
**TYPE** | [**STRING_32**](STRING_32.md) | The type of the message. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


