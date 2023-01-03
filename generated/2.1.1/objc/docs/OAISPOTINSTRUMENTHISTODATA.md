# OAISPOTINSTRUMENTHISTODATA

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bASE** | **NSString*** | The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. | [optional] 
**cLOSE** | **NSNumber*** | The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. | [optional] 
**fIRSTTRADEPRICE** | **NSNumber*** | The price of the first trade in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**fIRSTTRADETIMESTAMP** | **NSNumber*** | The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. | [optional] 
**hIGH** | **NSNumber*** | The highest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional] 
**hIGHTRADEPRICE** | **NSNumber*** | The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**hIGHTRADETIMESTAMP** | **NSNumber*** | The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**iNSTRUMENT** | **NSString*** | The unmapped instrument ID | [optional] 
**lASTTRADEPRICE** | **NSNumber*** | The last trade price in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**lASTTRADETIMESTAMP** | **NSNumber*** | The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. | [optional] 
**lOW** | **NSNumber*** | The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional] 
**lOWTRADEPRICE** | **NSNumber*** | The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**lOWTRADETIMESTAMP** | **NSNumber*** | The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**mAPPEDINSTRUMENT** | **NSString*** | The instrument ID, as derived from our mapping rules. This takes the form \&quot;BASE-QUOTE\&quot; (e.g. BTC-USD). Only available on instruments that have been mapped. | [optional] 
**mARKET** | **NSString*** | The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). | [optional] 
**oPEN** | **NSNumber*** | The open price for the historical period, this is based on the closest trade before the period start. | [optional] 
**qUOTE** | **NSString*** | The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. | [optional] 
**qUOTEVOLUME** | **NSNumber*** | The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**qUOTEVOLUMEBUY** | **NSNumber*** | The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. | [optional] 
**qUOTEVOLUMESELL** | **NSNumber*** | The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional] 
**qUOTEVOLUMEUNKNOWN** | **NSNumber*** | The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional] 
**tIMESTAMP** | **NSNumber*** | The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. | [optional] 
**tOTALTRADES** | **NSNumber*** | The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**tOTALTRADESBUY** | **NSNumber*** | The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**tOTALTRADESSELL** | **NSNumber*** | The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**tOTALTRADESUNKNOWN** | **NSNumber*** | The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**tYPE** | **NSString*** | The type of the message. | [optional] 
**uNIT** | **NSString*** | The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. | [optional] 
**vOLUME** | **NSNumber*** | The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**vOLUMEBUY** | **NSNumber*** | The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. | [optional] 
**vOLUMESELL** | **NSNumber*** | The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. | [optional] 
**vOLUMEUNKNOWN** | **NSNumber*** | The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


