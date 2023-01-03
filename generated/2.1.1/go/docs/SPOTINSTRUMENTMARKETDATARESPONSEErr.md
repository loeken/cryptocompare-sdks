# SPOTINSTRUMENTMARKETDATARESPONSEErr

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | Pointer to **string** | A message describing the error | [optional] 
**OtherInfo** | Pointer to [**SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo**](SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.md) |  | [optional] 
**Type** | Pointer to **int32** | A public facing error type. If you want to treat a specific error use the type. | [optional] 

## Methods

### NewSPOTINSTRUMENTMARKETDATARESPONSEErr

`func NewSPOTINSTRUMENTMARKETDATARESPONSEErr() *SPOTINSTRUMENTMARKETDATARESPONSEErr`

NewSPOTINSTRUMENTMARKETDATARESPONSEErr instantiates a new SPOTINSTRUMENTMARKETDATARESPONSEErr object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSPOTINSTRUMENTMARKETDATARESPONSEErrWithDefaults

`func NewSPOTINSTRUMENTMARKETDATARESPONSEErrWithDefaults() *SPOTINSTRUMENTMARKETDATARESPONSEErr`

NewSPOTINSTRUMENTMARKETDATARESPONSEErrWithDefaults instantiates a new SPOTINSTRUMENTMARKETDATARESPONSEErr object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMessage

`func (o *SPOTINSTRUMENTMARKETDATARESPONSEErr) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *SPOTINSTRUMENTMARKETDATARESPONSEErr) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *SPOTINSTRUMENTMARKETDATARESPONSEErr) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *SPOTINSTRUMENTMARKETDATARESPONSEErr) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetOtherInfo

`func (o *SPOTINSTRUMENTMARKETDATARESPONSEErr) GetOtherInfo() SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo`

GetOtherInfo returns the OtherInfo field if non-nil, zero value otherwise.

### GetOtherInfoOk

`func (o *SPOTINSTRUMENTMARKETDATARESPONSEErr) GetOtherInfoOk() (*SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo, bool)`

GetOtherInfoOk returns a tuple with the OtherInfo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOtherInfo

`func (o *SPOTINSTRUMENTMARKETDATARESPONSEErr) SetOtherInfo(v SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo)`

SetOtherInfo sets OtherInfo field to given value.

### HasOtherInfo

`func (o *SPOTINSTRUMENTMARKETDATARESPONSEErr) HasOtherInfo() bool`

HasOtherInfo returns a boolean if a field has been set.

### GetType

`func (o *SPOTINSTRUMENTMARKETDATARESPONSEErr) GetType() int32`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *SPOTINSTRUMENTMARKETDATARESPONSEErr) GetTypeOk() (*int32, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *SPOTINSTRUMENTMARKETDATARESPONSEErr) SetType(v int32)`

SetType sets Type field to given value.

### HasType

`func (o *SPOTINSTRUMENTMARKETDATARESPONSEErr) HasType() bool`

HasType returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


