# SPOTINSTRUMENTHISTODATA

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BASE** | Pointer to **string** | The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. | [optional] 
**CLOSE** | Pointer to **int32** | The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. | [optional] 
**FIRST_TRADE_PRICE** | Pointer to **int32** | The price of the first trade in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**FIRST_TRADE_TIMESTAMP** | Pointer to **int32** | The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. | [optional] 
**HIGH** | Pointer to **int32** | The highest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional] 
**HIGH_TRADE_PRICE** | Pointer to **int32** | The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**HIGH_TRADE_TIMESTAMP** | Pointer to **int32** | The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**INSTRUMENT** | Pointer to **string** | The unmapped instrument ID | [optional] 
**LAST_TRADE_PRICE** | Pointer to **int32** | The last trade price in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**LAST_TRADE_TIMESTAMP** | Pointer to **int32** | The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. | [optional] 
**LOW** | Pointer to **int32** | The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. | [optional] 
**LOW_TRADE_PRICE** | Pointer to **int32** | The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**LOW_TRADE_TIMESTAMP** | Pointer to **int32** | The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. | [optional] 
**MAPPED_INSTRUMENT** | Pointer to **string** | The instrument ID, as derived from our mapping rules. This takes the form \&quot;BASE-QUOTE\&quot; (e.g. BTC-USD). Only available on instruments that have been mapped. | [optional] 
**MARKET** | Pointer to **string** | The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). | [optional] 
**OPEN** | Pointer to **int32** | The open price for the historical period, this is based on the closest trade before the period start. | [optional] 
**QUOTE** | Pointer to **string** | The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. | [optional] 
**QUOTE_VOLUME** | Pointer to **int32** | The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**QUOTE_VOLUME_BUY** | Pointer to **int32** | The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. | [optional] 
**QUOTE_VOLUME_SELL** | Pointer to **int32** | The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional] 
**QUOTE_VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. | [optional] 
**TIMESTAMP** | Pointer to **int32** | The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. | [optional] 
**TOTAL_TRADES** | Pointer to **int32** | The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**TOTAL_TRADES_BUY** | Pointer to **int32** | The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**TOTAL_TRADES_SELL** | Pointer to **int32** | The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**TOTAL_TRADES_UNKNOWN** | Pointer to **int32** | The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**TYPE** | Pointer to **string** | The type of the message. | [optional] 
**UNIT** | Pointer to **string** | The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. | [optional] 
**VOLUME** | Pointer to **int32** | The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. | [optional] 
**VOLUME_BUY** | Pointer to **int32** | The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. | [optional] 
**VOLUME_SELL** | Pointer to **int32** | The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. | [optional] 
**VOLUME_UNKNOWN** | Pointer to **int32** | The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. | [optional] 

## Methods

### NewSPOTINSTRUMENTHISTODATA

`func NewSPOTINSTRUMENTHISTODATA() *SPOTINSTRUMENTHISTODATA`

NewSPOTINSTRUMENTHISTODATA instantiates a new SPOTINSTRUMENTHISTODATA object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSPOTINSTRUMENTHISTODATAWithDefaults

`func NewSPOTINSTRUMENTHISTODATAWithDefaults() *SPOTINSTRUMENTHISTODATA`

NewSPOTINSTRUMENTHISTODATAWithDefaults instantiates a new SPOTINSTRUMENTHISTODATA object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBASE

`func (o *SPOTINSTRUMENTHISTODATA) GetBASE() string`

GetBASE returns the BASE field if non-nil, zero value otherwise.

### GetBASEOk

`func (o *SPOTINSTRUMENTHISTODATA) GetBASEOk() (*string, bool)`

GetBASEOk returns a tuple with the BASE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBASE

`func (o *SPOTINSTRUMENTHISTODATA) SetBASE(v string)`

SetBASE sets BASE field to given value.

### HasBASE

`func (o *SPOTINSTRUMENTHISTODATA) HasBASE() bool`

HasBASE returns a boolean if a field has been set.

### GetCLOSE

`func (o *SPOTINSTRUMENTHISTODATA) GetCLOSE() int32`

GetCLOSE returns the CLOSE field if non-nil, zero value otherwise.

### GetCLOSEOk

`func (o *SPOTINSTRUMENTHISTODATA) GetCLOSEOk() (*int32, bool)`

GetCLOSEOk returns a tuple with the CLOSE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCLOSE

`func (o *SPOTINSTRUMENTHISTODATA) SetCLOSE(v int32)`

SetCLOSE sets CLOSE field to given value.

### HasCLOSE

`func (o *SPOTINSTRUMENTHISTODATA) HasCLOSE() bool`

HasCLOSE returns a boolean if a field has been set.

### GetFIRST_TRADE_PRICE

`func (o *SPOTINSTRUMENTHISTODATA) GetFIRST_TRADE_PRICE() int32`

GetFIRST_TRADE_PRICE returns the FIRST_TRADE_PRICE field if non-nil, zero value otherwise.

### GetFIRST_TRADE_PRICEOk

`func (o *SPOTINSTRUMENTHISTODATA) GetFIRST_TRADE_PRICEOk() (*int32, bool)`

GetFIRST_TRADE_PRICEOk returns a tuple with the FIRST_TRADE_PRICE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_PRICE

`func (o *SPOTINSTRUMENTHISTODATA) SetFIRST_TRADE_PRICE(v int32)`

SetFIRST_TRADE_PRICE sets FIRST_TRADE_PRICE field to given value.

### HasFIRST_TRADE_PRICE

`func (o *SPOTINSTRUMENTHISTODATA) HasFIRST_TRADE_PRICE() bool`

HasFIRST_TRADE_PRICE returns a boolean if a field has been set.

### GetFIRST_TRADE_TIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) GetFIRST_TRADE_TIMESTAMP() int32`

GetFIRST_TRADE_TIMESTAMP returns the FIRST_TRADE_TIMESTAMP field if non-nil, zero value otherwise.

### GetFIRST_TRADE_TIMESTAMPOk

`func (o *SPOTINSTRUMENTHISTODATA) GetFIRST_TRADE_TIMESTAMPOk() (*int32, bool)`

GetFIRST_TRADE_TIMESTAMPOk returns a tuple with the FIRST_TRADE_TIMESTAMP field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFIRST_TRADE_TIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) SetFIRST_TRADE_TIMESTAMP(v int32)`

SetFIRST_TRADE_TIMESTAMP sets FIRST_TRADE_TIMESTAMP field to given value.

### HasFIRST_TRADE_TIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) HasFIRST_TRADE_TIMESTAMP() bool`

HasFIRST_TRADE_TIMESTAMP returns a boolean if a field has been set.

### GetHIGH

`func (o *SPOTINSTRUMENTHISTODATA) GetHIGH() int32`

GetHIGH returns the HIGH field if non-nil, zero value otherwise.

### GetHIGHOk

`func (o *SPOTINSTRUMENTHISTODATA) GetHIGHOk() (*int32, bool)`

GetHIGHOk returns a tuple with the HIGH field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHIGH

`func (o *SPOTINSTRUMENTHISTODATA) SetHIGH(v int32)`

SetHIGH sets HIGH field to given value.

### HasHIGH

`func (o *SPOTINSTRUMENTHISTODATA) HasHIGH() bool`

HasHIGH returns a boolean if a field has been set.

### GetHIGH_TRADE_PRICE

`func (o *SPOTINSTRUMENTHISTODATA) GetHIGH_TRADE_PRICE() int32`

GetHIGH_TRADE_PRICE returns the HIGH_TRADE_PRICE field if non-nil, zero value otherwise.

### GetHIGH_TRADE_PRICEOk

`func (o *SPOTINSTRUMENTHISTODATA) GetHIGH_TRADE_PRICEOk() (*int32, bool)`

GetHIGH_TRADE_PRICEOk returns a tuple with the HIGH_TRADE_PRICE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHIGH_TRADE_PRICE

`func (o *SPOTINSTRUMENTHISTODATA) SetHIGH_TRADE_PRICE(v int32)`

SetHIGH_TRADE_PRICE sets HIGH_TRADE_PRICE field to given value.

### HasHIGH_TRADE_PRICE

`func (o *SPOTINSTRUMENTHISTODATA) HasHIGH_TRADE_PRICE() bool`

HasHIGH_TRADE_PRICE returns a boolean if a field has been set.

### GetHIGH_TRADE_TIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) GetHIGH_TRADE_TIMESTAMP() int32`

GetHIGH_TRADE_TIMESTAMP returns the HIGH_TRADE_TIMESTAMP field if non-nil, zero value otherwise.

### GetHIGH_TRADE_TIMESTAMPOk

`func (o *SPOTINSTRUMENTHISTODATA) GetHIGH_TRADE_TIMESTAMPOk() (*int32, bool)`

GetHIGH_TRADE_TIMESTAMPOk returns a tuple with the HIGH_TRADE_TIMESTAMP field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHIGH_TRADE_TIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) SetHIGH_TRADE_TIMESTAMP(v int32)`

SetHIGH_TRADE_TIMESTAMP sets HIGH_TRADE_TIMESTAMP field to given value.

### HasHIGH_TRADE_TIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) HasHIGH_TRADE_TIMESTAMP() bool`

HasHIGH_TRADE_TIMESTAMP returns a boolean if a field has been set.

### GetINSTRUMENT

`func (o *SPOTINSTRUMENTHISTODATA) GetINSTRUMENT() string`

GetINSTRUMENT returns the INSTRUMENT field if non-nil, zero value otherwise.

### GetINSTRUMENTOk

`func (o *SPOTINSTRUMENTHISTODATA) GetINSTRUMENTOk() (*string, bool)`

GetINSTRUMENTOk returns a tuple with the INSTRUMENT field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT

`func (o *SPOTINSTRUMENTHISTODATA) SetINSTRUMENT(v string)`

SetINSTRUMENT sets INSTRUMENT field to given value.

### HasINSTRUMENT

`func (o *SPOTINSTRUMENTHISTODATA) HasINSTRUMENT() bool`

HasINSTRUMENT returns a boolean if a field has been set.

### GetLAST_TRADE_PRICE

`func (o *SPOTINSTRUMENTHISTODATA) GetLAST_TRADE_PRICE() int32`

GetLAST_TRADE_PRICE returns the LAST_TRADE_PRICE field if non-nil, zero value otherwise.

### GetLAST_TRADE_PRICEOk

`func (o *SPOTINSTRUMENTHISTODATA) GetLAST_TRADE_PRICEOk() (*int32, bool)`

GetLAST_TRADE_PRICEOk returns a tuple with the LAST_TRADE_PRICE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_PRICE

`func (o *SPOTINSTRUMENTHISTODATA) SetLAST_TRADE_PRICE(v int32)`

SetLAST_TRADE_PRICE sets LAST_TRADE_PRICE field to given value.

### HasLAST_TRADE_PRICE

`func (o *SPOTINSTRUMENTHISTODATA) HasLAST_TRADE_PRICE() bool`

HasLAST_TRADE_PRICE returns a boolean if a field has been set.

### GetLAST_TRADE_TIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) GetLAST_TRADE_TIMESTAMP() int32`

GetLAST_TRADE_TIMESTAMP returns the LAST_TRADE_TIMESTAMP field if non-nil, zero value otherwise.

### GetLAST_TRADE_TIMESTAMPOk

`func (o *SPOTINSTRUMENTHISTODATA) GetLAST_TRADE_TIMESTAMPOk() (*int32, bool)`

GetLAST_TRADE_TIMESTAMPOk returns a tuple with the LAST_TRADE_TIMESTAMP field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLAST_TRADE_TIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) SetLAST_TRADE_TIMESTAMP(v int32)`

SetLAST_TRADE_TIMESTAMP sets LAST_TRADE_TIMESTAMP field to given value.

### HasLAST_TRADE_TIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) HasLAST_TRADE_TIMESTAMP() bool`

HasLAST_TRADE_TIMESTAMP returns a boolean if a field has been set.

### GetLOW

`func (o *SPOTINSTRUMENTHISTODATA) GetLOW() int32`

GetLOW returns the LOW field if non-nil, zero value otherwise.

### GetLOWOk

`func (o *SPOTINSTRUMENTHISTODATA) GetLOWOk() (*int32, bool)`

GetLOWOk returns a tuple with the LOW field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLOW

`func (o *SPOTINSTRUMENTHISTODATA) SetLOW(v int32)`

SetLOW sets LOW field to given value.

### HasLOW

`func (o *SPOTINSTRUMENTHISTODATA) HasLOW() bool`

HasLOW returns a boolean if a field has been set.

### GetLOW_TRADE_PRICE

`func (o *SPOTINSTRUMENTHISTODATA) GetLOW_TRADE_PRICE() int32`

GetLOW_TRADE_PRICE returns the LOW_TRADE_PRICE field if non-nil, zero value otherwise.

### GetLOW_TRADE_PRICEOk

`func (o *SPOTINSTRUMENTHISTODATA) GetLOW_TRADE_PRICEOk() (*int32, bool)`

GetLOW_TRADE_PRICEOk returns a tuple with the LOW_TRADE_PRICE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLOW_TRADE_PRICE

`func (o *SPOTINSTRUMENTHISTODATA) SetLOW_TRADE_PRICE(v int32)`

SetLOW_TRADE_PRICE sets LOW_TRADE_PRICE field to given value.

### HasLOW_TRADE_PRICE

`func (o *SPOTINSTRUMENTHISTODATA) HasLOW_TRADE_PRICE() bool`

HasLOW_TRADE_PRICE returns a boolean if a field has been set.

### GetLOW_TRADE_TIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) GetLOW_TRADE_TIMESTAMP() int32`

GetLOW_TRADE_TIMESTAMP returns the LOW_TRADE_TIMESTAMP field if non-nil, zero value otherwise.

### GetLOW_TRADE_TIMESTAMPOk

`func (o *SPOTINSTRUMENTHISTODATA) GetLOW_TRADE_TIMESTAMPOk() (*int32, bool)`

GetLOW_TRADE_TIMESTAMPOk returns a tuple with the LOW_TRADE_TIMESTAMP field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLOW_TRADE_TIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) SetLOW_TRADE_TIMESTAMP(v int32)`

SetLOW_TRADE_TIMESTAMP sets LOW_TRADE_TIMESTAMP field to given value.

### HasLOW_TRADE_TIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) HasLOW_TRADE_TIMESTAMP() bool`

HasLOW_TRADE_TIMESTAMP returns a boolean if a field has been set.

### GetMAPPED_INSTRUMENT

`func (o *SPOTINSTRUMENTHISTODATA) GetMAPPED_INSTRUMENT() string`

GetMAPPED_INSTRUMENT returns the MAPPED_INSTRUMENT field if non-nil, zero value otherwise.

### GetMAPPED_INSTRUMENTOk

`func (o *SPOTINSTRUMENTHISTODATA) GetMAPPED_INSTRUMENTOk() (*string, bool)`

GetMAPPED_INSTRUMENTOk returns a tuple with the MAPPED_INSTRUMENT field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMAPPED_INSTRUMENT

`func (o *SPOTINSTRUMENTHISTODATA) SetMAPPED_INSTRUMENT(v string)`

SetMAPPED_INSTRUMENT sets MAPPED_INSTRUMENT field to given value.

### HasMAPPED_INSTRUMENT

`func (o *SPOTINSTRUMENTHISTODATA) HasMAPPED_INSTRUMENT() bool`

HasMAPPED_INSTRUMENT returns a boolean if a field has been set.

### GetMARKET

`func (o *SPOTINSTRUMENTHISTODATA) GetMARKET() string`

GetMARKET returns the MARKET field if non-nil, zero value otherwise.

### GetMARKETOk

`func (o *SPOTINSTRUMENTHISTODATA) GetMARKETOk() (*string, bool)`

GetMARKETOk returns a tuple with the MARKET field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMARKET

`func (o *SPOTINSTRUMENTHISTODATA) SetMARKET(v string)`

SetMARKET sets MARKET field to given value.

### HasMARKET

`func (o *SPOTINSTRUMENTHISTODATA) HasMARKET() bool`

HasMARKET returns a boolean if a field has been set.

### GetOPEN

`func (o *SPOTINSTRUMENTHISTODATA) GetOPEN() int32`

GetOPEN returns the OPEN field if non-nil, zero value otherwise.

### GetOPENOk

`func (o *SPOTINSTRUMENTHISTODATA) GetOPENOk() (*int32, bool)`

GetOPENOk returns a tuple with the OPEN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOPEN

`func (o *SPOTINSTRUMENTHISTODATA) SetOPEN(v int32)`

SetOPEN sets OPEN field to given value.

### HasOPEN

`func (o *SPOTINSTRUMENTHISTODATA) HasOPEN() bool`

HasOPEN returns a boolean if a field has been set.

### GetQUOTE

`func (o *SPOTINSTRUMENTHISTODATA) GetQUOTE() string`

GetQUOTE returns the QUOTE field if non-nil, zero value otherwise.

### GetQUOTEOk

`func (o *SPOTINSTRUMENTHISTODATA) GetQUOTEOk() (*string, bool)`

GetQUOTEOk returns a tuple with the QUOTE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQUOTE

`func (o *SPOTINSTRUMENTHISTODATA) SetQUOTE(v string)`

SetQUOTE sets QUOTE field to given value.

### HasQUOTE

`func (o *SPOTINSTRUMENTHISTODATA) HasQUOTE() bool`

HasQUOTE returns a boolean if a field has been set.

### GetQUOTE_VOLUME

`func (o *SPOTINSTRUMENTHISTODATA) GetQUOTE_VOLUME() int32`

GetQUOTE_VOLUME returns the QUOTE_VOLUME field if non-nil, zero value otherwise.

### GetQUOTE_VOLUMEOk

`func (o *SPOTINSTRUMENTHISTODATA) GetQUOTE_VOLUMEOk() (*int32, bool)`

GetQUOTE_VOLUMEOk returns a tuple with the QUOTE_VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQUOTE_VOLUME

`func (o *SPOTINSTRUMENTHISTODATA) SetQUOTE_VOLUME(v int32)`

SetQUOTE_VOLUME sets QUOTE_VOLUME field to given value.

### HasQUOTE_VOLUME

`func (o *SPOTINSTRUMENTHISTODATA) HasQUOTE_VOLUME() bool`

HasQUOTE_VOLUME returns a boolean if a field has been set.

### GetQUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTHISTODATA) GetQUOTE_VOLUME_BUY() int32`

GetQUOTE_VOLUME_BUY returns the QUOTE_VOLUME_BUY field if non-nil, zero value otherwise.

### GetQUOTE_VOLUME_BUYOk

`func (o *SPOTINSTRUMENTHISTODATA) GetQUOTE_VOLUME_BUYOk() (*int32, bool)`

GetQUOTE_VOLUME_BUYOk returns a tuple with the QUOTE_VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTHISTODATA) SetQUOTE_VOLUME_BUY(v int32)`

SetQUOTE_VOLUME_BUY sets QUOTE_VOLUME_BUY field to given value.

### HasQUOTE_VOLUME_BUY

`func (o *SPOTINSTRUMENTHISTODATA) HasQUOTE_VOLUME_BUY() bool`

HasQUOTE_VOLUME_BUY returns a boolean if a field has been set.

### GetQUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTHISTODATA) GetQUOTE_VOLUME_SELL() int32`

GetQUOTE_VOLUME_SELL returns the QUOTE_VOLUME_SELL field if non-nil, zero value otherwise.

### GetQUOTE_VOLUME_SELLOk

`func (o *SPOTINSTRUMENTHISTODATA) GetQUOTE_VOLUME_SELLOk() (*int32, bool)`

GetQUOTE_VOLUME_SELLOk returns a tuple with the QUOTE_VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTHISTODATA) SetQUOTE_VOLUME_SELL(v int32)`

SetQUOTE_VOLUME_SELL sets QUOTE_VOLUME_SELL field to given value.

### HasQUOTE_VOLUME_SELL

`func (o *SPOTINSTRUMENTHISTODATA) HasQUOTE_VOLUME_SELL() bool`

HasQUOTE_VOLUME_SELL returns a boolean if a field has been set.

### GetQUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTHISTODATA) GetQUOTE_VOLUME_UNKNOWN() int32`

GetQUOTE_VOLUME_UNKNOWN returns the QUOTE_VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetQUOTE_VOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTHISTODATA) GetQUOTE_VOLUME_UNKNOWNOk() (*int32, bool)`

GetQUOTE_VOLUME_UNKNOWNOk returns a tuple with the QUOTE_VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTHISTODATA) SetQUOTE_VOLUME_UNKNOWN(v int32)`

SetQUOTE_VOLUME_UNKNOWN sets QUOTE_VOLUME_UNKNOWN field to given value.

### HasQUOTE_VOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTHISTODATA) HasQUOTE_VOLUME_UNKNOWN() bool`

HasQUOTE_VOLUME_UNKNOWN returns a boolean if a field has been set.

### GetTIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) GetTIMESTAMP() int32`

GetTIMESTAMP returns the TIMESTAMP field if non-nil, zero value otherwise.

### GetTIMESTAMPOk

`func (o *SPOTINSTRUMENTHISTODATA) GetTIMESTAMPOk() (*int32, bool)`

GetTIMESTAMPOk returns a tuple with the TIMESTAMP field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) SetTIMESTAMP(v int32)`

SetTIMESTAMP sets TIMESTAMP field to given value.

### HasTIMESTAMP

`func (o *SPOTINSTRUMENTHISTODATA) HasTIMESTAMP() bool`

HasTIMESTAMP returns a boolean if a field has been set.

### GetTOTAL_TRADES

`func (o *SPOTINSTRUMENTHISTODATA) GetTOTAL_TRADES() int32`

GetTOTAL_TRADES returns the TOTAL_TRADES field if non-nil, zero value otherwise.

### GetTOTAL_TRADESOk

`func (o *SPOTINSTRUMENTHISTODATA) GetTOTAL_TRADESOk() (*int32, bool)`

GetTOTAL_TRADESOk returns a tuple with the TOTAL_TRADES field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTOTAL_TRADES

`func (o *SPOTINSTRUMENTHISTODATA) SetTOTAL_TRADES(v int32)`

SetTOTAL_TRADES sets TOTAL_TRADES field to given value.

### HasTOTAL_TRADES

`func (o *SPOTINSTRUMENTHISTODATA) HasTOTAL_TRADES() bool`

HasTOTAL_TRADES returns a boolean if a field has been set.

### GetTOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTHISTODATA) GetTOTAL_TRADES_BUY() int32`

GetTOTAL_TRADES_BUY returns the TOTAL_TRADES_BUY field if non-nil, zero value otherwise.

### GetTOTAL_TRADES_BUYOk

`func (o *SPOTINSTRUMENTHISTODATA) GetTOTAL_TRADES_BUYOk() (*int32, bool)`

GetTOTAL_TRADES_BUYOk returns a tuple with the TOTAL_TRADES_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTHISTODATA) SetTOTAL_TRADES_BUY(v int32)`

SetTOTAL_TRADES_BUY sets TOTAL_TRADES_BUY field to given value.

### HasTOTAL_TRADES_BUY

`func (o *SPOTINSTRUMENTHISTODATA) HasTOTAL_TRADES_BUY() bool`

HasTOTAL_TRADES_BUY returns a boolean if a field has been set.

### GetTOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTHISTODATA) GetTOTAL_TRADES_SELL() int32`

GetTOTAL_TRADES_SELL returns the TOTAL_TRADES_SELL field if non-nil, zero value otherwise.

### GetTOTAL_TRADES_SELLOk

`func (o *SPOTINSTRUMENTHISTODATA) GetTOTAL_TRADES_SELLOk() (*int32, bool)`

GetTOTAL_TRADES_SELLOk returns a tuple with the TOTAL_TRADES_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTHISTODATA) SetTOTAL_TRADES_SELL(v int32)`

SetTOTAL_TRADES_SELL sets TOTAL_TRADES_SELL field to given value.

### HasTOTAL_TRADES_SELL

`func (o *SPOTINSTRUMENTHISTODATA) HasTOTAL_TRADES_SELL() bool`

HasTOTAL_TRADES_SELL returns a boolean if a field has been set.

### GetTOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTHISTODATA) GetTOTAL_TRADES_UNKNOWN() int32`

GetTOTAL_TRADES_UNKNOWN returns the TOTAL_TRADES_UNKNOWN field if non-nil, zero value otherwise.

### GetTOTAL_TRADES_UNKNOWNOk

`func (o *SPOTINSTRUMENTHISTODATA) GetTOTAL_TRADES_UNKNOWNOk() (*int32, bool)`

GetTOTAL_TRADES_UNKNOWNOk returns a tuple with the TOTAL_TRADES_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTHISTODATA) SetTOTAL_TRADES_UNKNOWN(v int32)`

SetTOTAL_TRADES_UNKNOWN sets TOTAL_TRADES_UNKNOWN field to given value.

### HasTOTAL_TRADES_UNKNOWN

`func (o *SPOTINSTRUMENTHISTODATA) HasTOTAL_TRADES_UNKNOWN() bool`

HasTOTAL_TRADES_UNKNOWN returns a boolean if a field has been set.

### GetTYPE

`func (o *SPOTINSTRUMENTHISTODATA) GetTYPE() string`

GetTYPE returns the TYPE field if non-nil, zero value otherwise.

### GetTYPEOk

`func (o *SPOTINSTRUMENTHISTODATA) GetTYPEOk() (*string, bool)`

GetTYPEOk returns a tuple with the TYPE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTYPE

`func (o *SPOTINSTRUMENTHISTODATA) SetTYPE(v string)`

SetTYPE sets TYPE field to given value.

### HasTYPE

`func (o *SPOTINSTRUMENTHISTODATA) HasTYPE() bool`

HasTYPE returns a boolean if a field has been set.

### GetUNIT

`func (o *SPOTINSTRUMENTHISTODATA) GetUNIT() string`

GetUNIT returns the UNIT field if non-nil, zero value otherwise.

### GetUNITOk

`func (o *SPOTINSTRUMENTHISTODATA) GetUNITOk() (*string, bool)`

GetUNITOk returns a tuple with the UNIT field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUNIT

`func (o *SPOTINSTRUMENTHISTODATA) SetUNIT(v string)`

SetUNIT sets UNIT field to given value.

### HasUNIT

`func (o *SPOTINSTRUMENTHISTODATA) HasUNIT() bool`

HasUNIT returns a boolean if a field has been set.

### GetVOLUME

`func (o *SPOTINSTRUMENTHISTODATA) GetVOLUME() int32`

GetVOLUME returns the VOLUME field if non-nil, zero value otherwise.

### GetVOLUMEOk

`func (o *SPOTINSTRUMENTHISTODATA) GetVOLUMEOk() (*int32, bool)`

GetVOLUMEOk returns a tuple with the VOLUME field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVOLUME

`func (o *SPOTINSTRUMENTHISTODATA) SetVOLUME(v int32)`

SetVOLUME sets VOLUME field to given value.

### HasVOLUME

`func (o *SPOTINSTRUMENTHISTODATA) HasVOLUME() bool`

HasVOLUME returns a boolean if a field has been set.

### GetVOLUME_BUY

`func (o *SPOTINSTRUMENTHISTODATA) GetVOLUME_BUY() int32`

GetVOLUME_BUY returns the VOLUME_BUY field if non-nil, zero value otherwise.

### GetVOLUME_BUYOk

`func (o *SPOTINSTRUMENTHISTODATA) GetVOLUME_BUYOk() (*int32, bool)`

GetVOLUME_BUYOk returns a tuple with the VOLUME_BUY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVOLUME_BUY

`func (o *SPOTINSTRUMENTHISTODATA) SetVOLUME_BUY(v int32)`

SetVOLUME_BUY sets VOLUME_BUY field to given value.

### HasVOLUME_BUY

`func (o *SPOTINSTRUMENTHISTODATA) HasVOLUME_BUY() bool`

HasVOLUME_BUY returns a boolean if a field has been set.

### GetVOLUME_SELL

`func (o *SPOTINSTRUMENTHISTODATA) GetVOLUME_SELL() int32`

GetVOLUME_SELL returns the VOLUME_SELL field if non-nil, zero value otherwise.

### GetVOLUME_SELLOk

`func (o *SPOTINSTRUMENTHISTODATA) GetVOLUME_SELLOk() (*int32, bool)`

GetVOLUME_SELLOk returns a tuple with the VOLUME_SELL field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVOLUME_SELL

`func (o *SPOTINSTRUMENTHISTODATA) SetVOLUME_SELL(v int32)`

SetVOLUME_SELL sets VOLUME_SELL field to given value.

### HasVOLUME_SELL

`func (o *SPOTINSTRUMENTHISTODATA) HasVOLUME_SELL() bool`

HasVOLUME_SELL returns a boolean if a field has been set.

### GetVOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTHISTODATA) GetVOLUME_UNKNOWN() int32`

GetVOLUME_UNKNOWN returns the VOLUME_UNKNOWN field if non-nil, zero value otherwise.

### GetVOLUME_UNKNOWNOk

`func (o *SPOTINSTRUMENTHISTODATA) GetVOLUME_UNKNOWNOk() (*int32, bool)`

GetVOLUME_UNKNOWNOk returns a tuple with the VOLUME_UNKNOWN field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTHISTODATA) SetVOLUME_UNKNOWN(v int32)`

SetVOLUME_UNKNOWN sets VOLUME_UNKNOWN field to given value.

### HasVOLUME_UNKNOWN

`func (o *SPOTINSTRUMENTHISTODATA) HasVOLUME_UNKNOWN() bool`

HasVOLUME_UNKNOWN returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


