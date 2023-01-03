# GENERICRESPONSE

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | Pointer to [**GENERICRESPONSEData**](GENERICRESPONSEData.md) |  | [optional] 
**Err** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewGENERICRESPONSE

`func NewGENERICRESPONSE() *GENERICRESPONSE`

NewGENERICRESPONSE instantiates a new GENERICRESPONSE object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGENERICRESPONSEWithDefaults

`func NewGENERICRESPONSEWithDefaults() *GENERICRESPONSE`

NewGENERICRESPONSEWithDefaults instantiates a new GENERICRESPONSE object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *GENERICRESPONSE) GetData() GENERICRESPONSEData`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *GENERICRESPONSE) GetDataOk() (*GENERICRESPONSEData, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *GENERICRESPONSE) SetData(v GENERICRESPONSEData)`

SetData sets Data field to given value.

### HasData

`func (o *GENERICRESPONSE) HasData() bool`

HasData returns a boolean if a field has been set.

### GetErr

`func (o *GENERICRESPONSE) GetErr() map[string]interface{}`

GetErr returns the Err field if non-nil, zero value otherwise.

### GetErrOk

`func (o *GENERICRESPONSE) GetErrOk() (*map[string]interface{}, bool)`

GetErrOk returns a tuple with the Err field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErr

`func (o *GENERICRESPONSE) SetErr(v map[string]interface{})`

SetErr sets Err field to given value.

### HasErr

`func (o *GENERICRESPONSE) HasErr() bool`

HasErr returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


