# SPOTINSTRUMENTMARKETDATARESPONSE

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**map[string]SPOTINSTRUMENTMARKETDATA**](SPOTINSTRUMENTMARKETDATA.md) |  | [optional] 
**Err** | Pointer to [**SPOTINSTRUMENTMARKETDATARESPONSEErr**](SPOTINSTRUMENTMARKETDATARESPONSEErr.md) |  | [optional] 

## Methods

### NewSPOTINSTRUMENTMARKETDATARESPONSE

`func NewSPOTINSTRUMENTMARKETDATARESPONSE() *SPOTINSTRUMENTMARKETDATARESPONSE`

NewSPOTINSTRUMENTMARKETDATARESPONSE instantiates a new SPOTINSTRUMENTMARKETDATARESPONSE object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSPOTINSTRUMENTMARKETDATARESPONSEWithDefaults

`func NewSPOTINSTRUMENTMARKETDATARESPONSEWithDefaults() *SPOTINSTRUMENTMARKETDATARESPONSE`

NewSPOTINSTRUMENTMARKETDATARESPONSEWithDefaults instantiates a new SPOTINSTRUMENTMARKETDATARESPONSE object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *SPOTINSTRUMENTMARKETDATARESPONSE) GetData() map[string]SPOTINSTRUMENTMARKETDATA`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *SPOTINSTRUMENTMARKETDATARESPONSE) GetDataOk() (*map[string]SPOTINSTRUMENTMARKETDATA, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *SPOTINSTRUMENTMARKETDATARESPONSE) SetData(v map[string]SPOTINSTRUMENTMARKETDATA)`

SetData sets Data field to given value.

### HasData

`func (o *SPOTINSTRUMENTMARKETDATARESPONSE) HasData() bool`

HasData returns a boolean if a field has been set.

### GetErr

`func (o *SPOTINSTRUMENTMARKETDATARESPONSE) GetErr() SPOTINSTRUMENTMARKETDATARESPONSEErr`

GetErr returns the Err field if non-nil, zero value otherwise.

### GetErrOk

`func (o *SPOTINSTRUMENTMARKETDATARESPONSE) GetErrOk() (*SPOTINSTRUMENTMARKETDATARESPONSEErr, bool)`

GetErrOk returns a tuple with the Err field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErr

`func (o *SPOTINSTRUMENTMARKETDATARESPONSE) SetErr(v SPOTINSTRUMENTMARKETDATARESPONSEErr)`

SetErr sets Err field to given value.

### HasErr

`func (o *SPOTINSTRUMENTMARKETDATARESPONSE) HasErr() bool`

HasErr returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


