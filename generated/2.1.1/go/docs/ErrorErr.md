# ErrorErr

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | Pointer to **string** | A message describing the error | [optional] 
**OtherInfo** | Pointer to [**ErrorErrOtherInfo**](ErrorErrOtherInfo.md) |  | [optional] 
**Type** | Pointer to **int32** | A public facing error type. If you want to treat a specific error use the type. | [optional] 

## Methods

### NewErrorErr

`func NewErrorErr() *ErrorErr`

NewErrorErr instantiates a new ErrorErr object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewErrorErrWithDefaults

`func NewErrorErrWithDefaults() *ErrorErr`

NewErrorErrWithDefaults instantiates a new ErrorErr object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMessage

`func (o *ErrorErr) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *ErrorErr) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *ErrorErr) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *ErrorErr) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetOtherInfo

`func (o *ErrorErr) GetOtherInfo() ErrorErrOtherInfo`

GetOtherInfo returns the OtherInfo field if non-nil, zero value otherwise.

### GetOtherInfoOk

`func (o *ErrorErr) GetOtherInfoOk() (*ErrorErrOtherInfo, bool)`

GetOtherInfoOk returns a tuple with the OtherInfo field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOtherInfo

`func (o *ErrorErr) SetOtherInfo(v ErrorErrOtherInfo)`

SetOtherInfo sets OtherInfo field to given value.

### HasOtherInfo

`func (o *ErrorErr) HasOtherInfo() bool`

HasOtherInfo returns a boolean if a field has been set.

### GetType

`func (o *ErrorErr) GetType() int32`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ErrorErr) GetTypeOk() (*int32, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ErrorErr) SetType(v int32)`

SetType sets Type field to given value.

### HasType

`func (o *ErrorErr) HasType() bool`

HasType returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


