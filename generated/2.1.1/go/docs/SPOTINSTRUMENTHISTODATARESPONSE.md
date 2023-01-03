# SPOTINSTRUMENTHISTODATARESPONSE

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**[]SPOTINSTRUMENTHISTODATA**](SPOTINSTRUMENTHISTODATA.md) |  | [optional] 
**Err** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewSPOTINSTRUMENTHISTODATARESPONSE

`func NewSPOTINSTRUMENTHISTODATARESPONSE() *SPOTINSTRUMENTHISTODATARESPONSE`

NewSPOTINSTRUMENTHISTODATARESPONSE instantiates a new SPOTINSTRUMENTHISTODATARESPONSE object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSPOTINSTRUMENTHISTODATARESPONSEWithDefaults

`func NewSPOTINSTRUMENTHISTODATARESPONSEWithDefaults() *SPOTINSTRUMENTHISTODATARESPONSE`

NewSPOTINSTRUMENTHISTODATARESPONSEWithDefaults instantiates a new SPOTINSTRUMENTHISTODATARESPONSE object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *SPOTINSTRUMENTHISTODATARESPONSE) GetData() []SPOTINSTRUMENTHISTODATA`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *SPOTINSTRUMENTHISTODATARESPONSE) GetDataOk() (*[]SPOTINSTRUMENTHISTODATA, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *SPOTINSTRUMENTHISTODATARESPONSE) SetData(v []SPOTINSTRUMENTHISTODATA)`

SetData sets Data field to given value.

### HasData

`func (o *SPOTINSTRUMENTHISTODATARESPONSE) HasData() bool`

HasData returns a boolean if a field has been set.

### GetErr

`func (o *SPOTINSTRUMENTHISTODATARESPONSE) GetErr() map[string]interface{}`

GetErr returns the Err field if non-nil, zero value otherwise.

### GetErrOk

`func (o *SPOTINSTRUMENTHISTODATARESPONSE) GetErrOk() (*map[string]interface{}, bool)`

GetErrOk returns a tuple with the Err field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErr

`func (o *SPOTINSTRUMENTHISTODATARESPONSE) SetErr(v map[string]interface{})`

SetErr sets Err field to given value.

### HasErr

`func (o *SPOTINSTRUMENTHISTODATARESPONSE) HasErr() bool`

HasErr returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


