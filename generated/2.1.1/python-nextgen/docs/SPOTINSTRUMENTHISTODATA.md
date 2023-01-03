# SPOTINSTRUMENTHISTODATA


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base** | **str** | The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. | [optional] 
**close** | **int** | The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. | [optional] 
**first_trade_price** | **int** | The price of the first trade in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**first_trade_timestamp** | **int** | The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. | [optional] 
**high** | **int** | The highest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional] 
**high_trade_price** | **int** | The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**high_trade_timestamp** | **int** | The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**instrument** | **str** | The unmapped instrument ID | [optional] 
**last_trade_price** | **int** | The last trade price in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**last_trade_timestamp** | **int** | The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. | [optional] 
**low** | **int** | The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional] 
**low_trade_price** | **int** | The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**low_trade_timestamp** | **int** | The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**mapped_instrument** | **str** | The instrument ID, as derived from our mapping rules. This takes the form \&quot;BASE-QUOTE\&quot; (e.g. BTC-USD). Only available on instruments that have been mapped. | [optional] 
**market** | **str** | The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). | [optional] 
**open** | **int** | The open price for the historical period, this is based on the closest trade before the period start. | [optional] 
**quote** | **str** | The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. | [optional] 
**quote_volume** | **int** | The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**quote_volume_buy** | **int** | The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. | [optional] 
**quote_volume_sell** | **int** | The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional] 
**quote_volume_unknown** | **int** | The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional] 
**timestamp** | **int** | The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. | [optional] 
**total_trades** | **int** | The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**total_trades_buy** | **int** | The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**total_trades_sell** | **int** | The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**total_trades_unknown** | **int** | The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**type** | **str** | The type of the message. | [optional] 
**unit** | **str** | The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. | [optional] 
**volume** | **int** | The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**volume_buy** | **int** | The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. | [optional] 
**volume_sell** | **int** | The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. | [optional] 
**volume_unknown** | **int** | The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. | [optional] 

## Example

```python
from openapi_client.models.spotinstrumenthistodata import SPOTINSTRUMENTHISTODATA

# TODO update the JSON string below
json = "{}"
# create an instance of SPOTINSTRUMENTHISTODATA from a JSON string
spotinstrumenthistodata_instance = SPOTINSTRUMENTHISTODATA.from_json(json)
# print the JSON string representation of the object
print SPOTINSTRUMENTHISTODATA.to_json()

# convert the object into a dict
spotinstrumenthistodata_dict = spotinstrumenthistodata_instance.to_dict()
# create an instance of SPOTINSTRUMENTHISTODATA from a dict
spotinstrumenthistodata_form_dict = spotinstrumenthistodata.from_dict(spotinstrumenthistodata_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


