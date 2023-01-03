# openapi_client.model.spotinstrumenttrade.SPOTINSTRUMENTTRADE

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**BASE** | str,  | str,  | The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC). | [optional] 
**CCSEQ** | decimal.Decimal, int,  | decimal.Decimal,  | Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order. | [optional] 
**ID** | str,  | str,  | The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second. | [optional] 
**INSTRUMENT** | str,  | str,  | The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD). | [optional] 
**MAPPED_INSTRUMENT** | str,  | str,  | The mapped instrument ID, as derived from our mapping rules. This takes the form: \&quot;BASE-QUOTE\&quot;. Only available on instruments that have been mapped (e.g. BTC-USD). | [optional] 
**MARKET** | str,  | str,  | The market / exchange under consideration (e.g. Coinbase, Kraken, etc.). | [optional] 
**PRICE** | decimal.Decimal, int,  | decimal.Decimal,  | The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract. | [optional] 
**QUANTITY** | decimal.Decimal, int,  | decimal.Decimal,  | The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded. | [optional] 
**QUOTE** | str,  | str,  | The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD). | [optional] 
**QUOTE_QUANTITY** | decimal.Decimal, int,  | decimal.Decimal,  | The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded. | [optional] 
**RECEIVED_TIMESTAMP** | decimal.Decimal, int,  | decimal.Decimal,  | The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits. | [optional] 
**RECEIVED_TIMESTAMP_NS** | decimal.Decimal, int,  | decimal.Decimal,  | The nanosecond part of the received timestamp. | [optional] 
**SIDE** | str,  | str,  | The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \&quot;UNKNOWN\&quot; will be returned. | [optional] 
**SOURCE** | str,  | str,  | The source of the trade update: POLLING, STREAMING, GO, BLOB etc. | [optional] 
**TIMESTAMP** | decimal.Decimal, int,  | decimal.Decimal,  | The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one. | [optional] 
**TIMESTAMP_NS** | decimal.Decimal, int,  | decimal.Decimal,  | The nanosecond part of the reported timestamp. | [optional] 
**TYPE** | str,  | str,  | The type of the message. | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

