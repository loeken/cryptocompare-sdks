# SPOTINSTRUMENTHISTODATA
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BASE** | **String** | The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. | [optional] 
**CLOSE** | **Int32** | The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. | [optional] 
**FIRSTTRADEPRICE** | **Int32** | The price of the first trade in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**FIRSTTRADETIMESTAMP** | **Int32** | The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. | [optional] 
**HIGH** | **Int32** | The highest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional] 
**HIGHTRADEPRICE** | **Int32** | The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**HIGHTRADETIMESTAMP** | **Int32** | The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**INSTRUMENT** | **String** | The unmapped instrument ID | [optional] 
**LASTTRADEPRICE** | **Int32** | The last trade price in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**LASTTRADETIMESTAMP** | **Int32** | The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. | [optional] 
**LOW** | **Int32** | The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional] 
**LOWTRADEPRICE** | **Int32** | The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**LOWTRADETIMESTAMP** | **Int32** | The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**MAPPEDINSTRUMENT** | **String** | The instrument ID, as derived from our mapping rules. This takes the form &quot;&quot;BASE-QUOTE&quot;&quot; (e.g. BTC-USD). Only available on instruments that have been mapped. | [optional] 
**MARKET** | **String** | The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). | [optional] 
**OPEN** | **Int32** | The open price for the historical period, this is based on the closest trade before the period start. | [optional] 
**QUOTE** | **String** | The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. | [optional] 
**QUOTEVOLUME** | **Int32** | The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**QUOTEVOLUMEBUY** | **Int32** | The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. | [optional] 
**QUOTEVOLUMESELL** | **Int32** | The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional] 
**QUOTEVOLUMEUNKNOWN** | **Int32** | The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional] 
**TIMESTAMP** | **Int32** | The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. | [optional] 
**TOTALTRADES** | **Int32** | The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**TOTALTRADESBUY** | **Int32** | The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**TOTALTRADESSELL** | **Int32** | The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**TOTALTRADESUNKNOWN** | **Int32** | The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**TYPE** | **String** | The type of the message. | [optional] 
**UNIT** | **String** | The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. | [optional] 
**VOLUME** | **Int32** | The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**VOLUMEBUY** | **Int32** | The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. | [optional] 
**VOLUMESELL** | **Int32** | The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. | [optional] 
**VOLUMEUNKNOWN** | **Int32** | The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. | [optional] 

## Examples

- Prepare the resource
```powershell
$SPOTINSTRUMENTHISTODATA = Initialize-PSOpenAPIToolsSPOTINSTRUMENTHISTODATA  -BASE null `
 -CLOSE null `
 -FIRSTTRADEPRICE null `
 -FIRSTTRADETIMESTAMP null `
 -HIGH null `
 -HIGHTRADEPRICE null `
 -HIGHTRADETIMESTAMP null `
 -INSTRUMENT null `
 -LASTTRADEPRICE null `
 -LASTTRADETIMESTAMP null `
 -LOW null `
 -LOWTRADEPRICE null `
 -LOWTRADETIMESTAMP null `
 -MAPPEDINSTRUMENT null `
 -MARKET null `
 -OPEN null `
 -QUOTE null `
 -QUOTEVOLUME null `
 -QUOTEVOLUMEBUY null `
 -QUOTEVOLUMESELL null `
 -QUOTEVOLUMEUNKNOWN null `
 -TIMESTAMP null `
 -TOTALTRADES null `
 -TOTALTRADESBUY null `
 -TOTALTRADESSELL null `
 -TOTALTRADESUNKNOWN null `
 -TYPE null `
 -UNIT null `
 -VOLUME null `
 -VOLUMEBUY null `
 -VOLUMESELL null `
 -VOLUMEUNKNOWN null
```

- Convert the resource to JSON
```powershell
$SPOTINSTRUMENTHISTODATA | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

