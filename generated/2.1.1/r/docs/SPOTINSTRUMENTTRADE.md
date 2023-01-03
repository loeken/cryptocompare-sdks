# openapi::SPOTINSTRUMENTTRADE


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BASE** | **character** | The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC). | [optional] 
**CCSEQ** | **integer** | Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order. | [optional] 
**ID** | **character** | The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second. | [optional] 
**INSTRUMENT** | **character** | The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD). | [optional] 
**MAPPED_INSTRUMENT** | **character** | The mapped instrument ID, as derived from our mapping rules. This takes the form: \&quot;BASE-QUOTE\&quot;. Only available on instruments that have been mapped (e.g. BTC-USD). | [optional] 
**MARKET** | **character** | The market / exchange under consideration (e.g. Coinbase, Kraken, etc.). | [optional] 
**PRICE** | **integer** | The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract. | [optional] 
**QUANTITY** | **integer** | The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded. | [optional] 
**QUOTE** | **character** | The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD). | [optional] 
**QUOTE_QUANTITY** | **integer** | The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded. | [optional] 
**RECEIVED_TIMESTAMP** | **integer** | The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits. | [optional] 
**RECEIVED_TIMESTAMP_NS** | **integer** | The nanosecond part of the received timestamp. | [optional] 
**SIDE** | **character** | The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \&quot;UNKNOWN\&quot; will be returned. | [optional] 
**SOURCE** | **character** | The source of the trade update: POLLING, STREAMING, GO, BLOB etc. | [optional] 
**TIMESTAMP** | **integer** | The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one. | [optional] 
**TIMESTAMP_NS** | **integer** | The nanosecond part of the reported timestamp. | [optional] 
**TYPE** | **character** | The type of the message. | [optional] 


