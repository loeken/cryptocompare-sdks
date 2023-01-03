# SPOTINSTRUMENTTRADE

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BASE** | Pointer to **string** | The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC). | [optional] 
**CCSEQ** | Pointer to **int32** | Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order. | [optional] 
**ID** | Pointer to **string** | The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second. | [optional] 
**INSTRUMENT** | Pointer to **string** | The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD). | [optional] 
**MAPPED_INSTRUMENT** | Pointer to **string** | The mapped instrument ID, as derived from our mapping rules. This takes the form: \&quot;BASE-QUOTE\&quot;. Only available on instruments that have been mapped (e.g. BTC-USD). | [optional] 
**MARKET** | Pointer to **string** | The market / exchange under consideration (e.g. Coinbase, Kraken, etc.). | [optional] 
**PRICE** | Pointer to **int32** | The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract. | [optional] 
**QUANTITY** | Pointer to **int32** | The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded. | [optional] 
**QUOTE** | Pointer to **string** | The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD). | [optional] 
**QUOTE_QUANTITY** | Pointer to **int32** | The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded. | [optional] 
**RECEIVED_TIMESTAMP** | Pointer to **int32** | The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits. | [optional] 
**RECEIVED_TIMESTAMP_NS** | Pointer to **int32** | The nanosecond part of the received timestamp. | [optional] 
**SIDE** | Pointer to **string** | The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \&quot;UNKNOWN\&quot; will be returned. | [optional] 
**SOURCE** | Pointer to **string** | The source of the trade update: POLLING, STREAMING, GO, BLOB etc. | [optional] 
**TIMESTAMP** | Pointer to **int32** | The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one. | [optional] 
**TIMESTAMP_NS** | Pointer to **int32** | The nanosecond part of the reported timestamp. | [optional] 
**TYPE** | Pointer to **string** | The type of the message. | [optional] 

## Methods

### NewSPOTINSTRUMENTTRADE

`func NewSPOTINSTRUMENTTRADE() *SPOTINSTRUMENTTRADE`

NewSPOTINSTRUMENTTRADE instantiates a new SPOTINSTRUMENTTRADE object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSPOTINSTRUMENTTRADEWithDefaults

`func NewSPOTINSTRUMENTTRADEWithDefaults() *SPOTINSTRUMENTTRADE`

NewSPOTINSTRUMENTTRADEWithDefaults instantiates a new SPOTINSTRUMENTTRADE object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBASE

`func (o *SPOTINSTRUMENTTRADE) GetBASE() string`

GetBASE returns the BASE field if non-nil, zero value otherwise.

### GetBASEOk

`func (o *SPOTINSTRUMENTTRADE) GetBASEOk() (*string, bool)`

GetBASEOk returns a tuple with the BASE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBASE

`func (o *SPOTINSTRUMENTTRADE) SetBASE(v string)`

SetBASE sets BASE field to given value.

### HasBASE

`func (o *SPOTINSTRUMENTTRADE) HasBASE() bool`

HasBASE returns a boolean if a field has been set.

### GetCCSEQ

`func (o *SPOTINSTRUMENTTRADE) GetCCSEQ() int32`

GetCCSEQ returns the CCSEQ field if non-nil, zero value otherwise.

### GetCCSEQOk

`func (o *SPOTINSTRUMENTTRADE) GetCCSEQOk() (*int32, bool)`

GetCCSEQOk returns a tuple with the CCSEQ field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCCSEQ

`func (o *SPOTINSTRUMENTTRADE) SetCCSEQ(v int32)`

SetCCSEQ sets CCSEQ field to given value.

### HasCCSEQ

`func (o *SPOTINSTRUMENTTRADE) HasCCSEQ() bool`

HasCCSEQ returns a boolean if a field has been set.

### GetID

`func (o *SPOTINSTRUMENTTRADE) GetID() string`

GetID returns the ID field if non-nil, zero value otherwise.

### GetIDOk

`func (o *SPOTINSTRUMENTTRADE) GetIDOk() (*string, bool)`

GetIDOk returns a tuple with the ID field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetID

`func (o *SPOTINSTRUMENTTRADE) SetID(v string)`

SetID sets ID field to given value.

### HasID

`func (o *SPOTINSTRUMENTTRADE) HasID() bool`

HasID returns a boolean if a field has been set.

### GetINSTRUMENT

`func (o *SPOTINSTRUMENTTRADE) GetINSTRUMENT() string`

GetINSTRUMENT returns the INSTRUMENT field if non-nil, zero value otherwise.

### GetINSTRUMENTOk

`func (o *SPOTINSTRUMENTTRADE) GetINSTRUMENTOk() (*string, bool)`

GetINSTRUMENTOk returns a tuple with the INSTRUMENT field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetINSTRUMENT

`func (o *SPOTINSTRUMENTTRADE) SetINSTRUMENT(v string)`

SetINSTRUMENT sets INSTRUMENT field to given value.

### HasINSTRUMENT

`func (o *SPOTINSTRUMENTTRADE) HasINSTRUMENT() bool`

HasINSTRUMENT returns a boolean if a field has been set.

### GetMAPPED_INSTRUMENT

`func (o *SPOTINSTRUMENTTRADE) GetMAPPED_INSTRUMENT() string`

GetMAPPED_INSTRUMENT returns the MAPPED_INSTRUMENT field if non-nil, zero value otherwise.

### GetMAPPED_INSTRUMENTOk

`func (o *SPOTINSTRUMENTTRADE) GetMAPPED_INSTRUMENTOk() (*string, bool)`

GetMAPPED_INSTRUMENTOk returns a tuple with the MAPPED_INSTRUMENT field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMAPPED_INSTRUMENT

`func (o *SPOTINSTRUMENTTRADE) SetMAPPED_INSTRUMENT(v string)`

SetMAPPED_INSTRUMENT sets MAPPED_INSTRUMENT field to given value.

### HasMAPPED_INSTRUMENT

`func (o *SPOTINSTRUMENTTRADE) HasMAPPED_INSTRUMENT() bool`

HasMAPPED_INSTRUMENT returns a boolean if a field has been set.

### GetMARKET

`func (o *SPOTINSTRUMENTTRADE) GetMARKET() string`

GetMARKET returns the MARKET field if non-nil, zero value otherwise.

### GetMARKETOk

`func (o *SPOTINSTRUMENTTRADE) GetMARKETOk() (*string, bool)`

GetMARKETOk returns a tuple with the MARKET field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMARKET

`func (o *SPOTINSTRUMENTTRADE) SetMARKET(v string)`

SetMARKET sets MARKET field to given value.

### HasMARKET

`func (o *SPOTINSTRUMENTTRADE) HasMARKET() bool`

HasMARKET returns a boolean if a field has been set.

### GetPRICE

`func (o *SPOTINSTRUMENTTRADE) GetPRICE() int32`

GetPRICE returns the PRICE field if non-nil, zero value otherwise.

### GetPRICEOk

`func (o *SPOTINSTRUMENTTRADE) GetPRICEOk() (*int32, bool)`

GetPRICEOk returns a tuple with the PRICE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPRICE

`func (o *SPOTINSTRUMENTTRADE) SetPRICE(v int32)`

SetPRICE sets PRICE field to given value.

### HasPRICE

`func (o *SPOTINSTRUMENTTRADE) HasPRICE() bool`

HasPRICE returns a boolean if a field has been set.

### GetQUANTITY

`func (o *SPOTINSTRUMENTTRADE) GetQUANTITY() int32`

GetQUANTITY returns the QUANTITY field if non-nil, zero value otherwise.

### GetQUANTITYOk

`func (o *SPOTINSTRUMENTTRADE) GetQUANTITYOk() (*int32, bool)`

GetQUANTITYOk returns a tuple with the QUANTITY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQUANTITY

`func (o *SPOTINSTRUMENTTRADE) SetQUANTITY(v int32)`

SetQUANTITY sets QUANTITY field to given value.

### HasQUANTITY

`func (o *SPOTINSTRUMENTTRADE) HasQUANTITY() bool`

HasQUANTITY returns a boolean if a field has been set.

### GetQUOTE

`func (o *SPOTINSTRUMENTTRADE) GetQUOTE() string`

GetQUOTE returns the QUOTE field if non-nil, zero value otherwise.

### GetQUOTEOk

`func (o *SPOTINSTRUMENTTRADE) GetQUOTEOk() (*string, bool)`

GetQUOTEOk returns a tuple with the QUOTE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQUOTE

`func (o *SPOTINSTRUMENTTRADE) SetQUOTE(v string)`

SetQUOTE sets QUOTE field to given value.

### HasQUOTE

`func (o *SPOTINSTRUMENTTRADE) HasQUOTE() bool`

HasQUOTE returns a boolean if a field has been set.

### GetQUOTE_QUANTITY

`func (o *SPOTINSTRUMENTTRADE) GetQUOTE_QUANTITY() int32`

GetQUOTE_QUANTITY returns the QUOTE_QUANTITY field if non-nil, zero value otherwise.

### GetQUOTE_QUANTITYOk

`func (o *SPOTINSTRUMENTTRADE) GetQUOTE_QUANTITYOk() (*int32, bool)`

GetQUOTE_QUANTITYOk returns a tuple with the QUOTE_QUANTITY field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQUOTE_QUANTITY

`func (o *SPOTINSTRUMENTTRADE) SetQUOTE_QUANTITY(v int32)`

SetQUOTE_QUANTITY sets QUOTE_QUANTITY field to given value.

### HasQUOTE_QUANTITY

`func (o *SPOTINSTRUMENTTRADE) HasQUOTE_QUANTITY() bool`

HasQUOTE_QUANTITY returns a boolean if a field has been set.

### GetRECEIVED_TIMESTAMP

`func (o *SPOTINSTRUMENTTRADE) GetRECEIVED_TIMESTAMP() int32`

GetRECEIVED_TIMESTAMP returns the RECEIVED_TIMESTAMP field if non-nil, zero value otherwise.

### GetRECEIVED_TIMESTAMPOk

`func (o *SPOTINSTRUMENTTRADE) GetRECEIVED_TIMESTAMPOk() (*int32, bool)`

GetRECEIVED_TIMESTAMPOk returns a tuple with the RECEIVED_TIMESTAMP field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRECEIVED_TIMESTAMP

`func (o *SPOTINSTRUMENTTRADE) SetRECEIVED_TIMESTAMP(v int32)`

SetRECEIVED_TIMESTAMP sets RECEIVED_TIMESTAMP field to given value.

### HasRECEIVED_TIMESTAMP

`func (o *SPOTINSTRUMENTTRADE) HasRECEIVED_TIMESTAMP() bool`

HasRECEIVED_TIMESTAMP returns a boolean if a field has been set.

### GetRECEIVED_TIMESTAMP_NS

`func (o *SPOTINSTRUMENTTRADE) GetRECEIVED_TIMESTAMP_NS() int32`

GetRECEIVED_TIMESTAMP_NS returns the RECEIVED_TIMESTAMP_NS field if non-nil, zero value otherwise.

### GetRECEIVED_TIMESTAMP_NSOk

`func (o *SPOTINSTRUMENTTRADE) GetRECEIVED_TIMESTAMP_NSOk() (*int32, bool)`

GetRECEIVED_TIMESTAMP_NSOk returns a tuple with the RECEIVED_TIMESTAMP_NS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRECEIVED_TIMESTAMP_NS

`func (o *SPOTINSTRUMENTTRADE) SetRECEIVED_TIMESTAMP_NS(v int32)`

SetRECEIVED_TIMESTAMP_NS sets RECEIVED_TIMESTAMP_NS field to given value.

### HasRECEIVED_TIMESTAMP_NS

`func (o *SPOTINSTRUMENTTRADE) HasRECEIVED_TIMESTAMP_NS() bool`

HasRECEIVED_TIMESTAMP_NS returns a boolean if a field has been set.

### GetSIDE

`func (o *SPOTINSTRUMENTTRADE) GetSIDE() string`

GetSIDE returns the SIDE field if non-nil, zero value otherwise.

### GetSIDEOk

`func (o *SPOTINSTRUMENTTRADE) GetSIDEOk() (*string, bool)`

GetSIDEOk returns a tuple with the SIDE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSIDE

`func (o *SPOTINSTRUMENTTRADE) SetSIDE(v string)`

SetSIDE sets SIDE field to given value.

### HasSIDE

`func (o *SPOTINSTRUMENTTRADE) HasSIDE() bool`

HasSIDE returns a boolean if a field has been set.

### GetSOURCE

`func (o *SPOTINSTRUMENTTRADE) GetSOURCE() string`

GetSOURCE returns the SOURCE field if non-nil, zero value otherwise.

### GetSOURCEOk

`func (o *SPOTINSTRUMENTTRADE) GetSOURCEOk() (*string, bool)`

GetSOURCEOk returns a tuple with the SOURCE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSOURCE

`func (o *SPOTINSTRUMENTTRADE) SetSOURCE(v string)`

SetSOURCE sets SOURCE field to given value.

### HasSOURCE

`func (o *SPOTINSTRUMENTTRADE) HasSOURCE() bool`

HasSOURCE returns a boolean if a field has been set.

### GetTIMESTAMP

`func (o *SPOTINSTRUMENTTRADE) GetTIMESTAMP() int32`

GetTIMESTAMP returns the TIMESTAMP field if non-nil, zero value otherwise.

### GetTIMESTAMPOk

`func (o *SPOTINSTRUMENTTRADE) GetTIMESTAMPOk() (*int32, bool)`

GetTIMESTAMPOk returns a tuple with the TIMESTAMP field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTIMESTAMP

`func (o *SPOTINSTRUMENTTRADE) SetTIMESTAMP(v int32)`

SetTIMESTAMP sets TIMESTAMP field to given value.

### HasTIMESTAMP

`func (o *SPOTINSTRUMENTTRADE) HasTIMESTAMP() bool`

HasTIMESTAMP returns a boolean if a field has been set.

### GetTIMESTAMP_NS

`func (o *SPOTINSTRUMENTTRADE) GetTIMESTAMP_NS() int32`

GetTIMESTAMP_NS returns the TIMESTAMP_NS field if non-nil, zero value otherwise.

### GetTIMESTAMP_NSOk

`func (o *SPOTINSTRUMENTTRADE) GetTIMESTAMP_NSOk() (*int32, bool)`

GetTIMESTAMP_NSOk returns a tuple with the TIMESTAMP_NS field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTIMESTAMP_NS

`func (o *SPOTINSTRUMENTTRADE) SetTIMESTAMP_NS(v int32)`

SetTIMESTAMP_NS sets TIMESTAMP_NS field to given value.

### HasTIMESTAMP_NS

`func (o *SPOTINSTRUMENTTRADE) HasTIMESTAMP_NS() bool`

HasTIMESTAMP_NS returns a boolean if a field has been set.

### GetTYPE

`func (o *SPOTINSTRUMENTTRADE) GetTYPE() string`

GetTYPE returns the TYPE field if non-nil, zero value otherwise.

### GetTYPEOk

`func (o *SPOTINSTRUMENTTRADE) GetTYPEOk() (*string, bool)`

GetTYPEOk returns a tuple with the TYPE field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTYPE

`func (o *SPOTINSTRUMENTTRADE) SetTYPE(v string)`

SetTYPE sets TYPE field to given value.

### HasTYPE

`func (o *SPOTINSTRUMENTTRADE) HasTYPE() bool`

HasTYPE returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


