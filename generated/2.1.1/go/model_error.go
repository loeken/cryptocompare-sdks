/*
CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry

CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.

API version: 2.1.1
Contact: data@cryptocompare.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// checks if the Error type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &Error{}

// Error struct for Error
type Error struct {
	Data map[string]interface{} `json:"Data,omitempty"`
	Err *ErrorErr `json:"Err,omitempty"`
}

// NewError instantiates a new Error object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewError() *Error {
	this := Error{}
	return &this
}

// NewErrorWithDefaults instantiates a new Error object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewErrorWithDefaults() *Error {
	this := Error{}
	return &this
}

// GetData returns the Data field value if set, zero value otherwise.
func (o *Error) GetData() map[string]interface{} {
	if o == nil || isNil(o.Data) {
		var ret map[string]interface{}
		return ret
	}
	return o.Data
}

// GetDataOk returns a tuple with the Data field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Error) GetDataOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.Data) {
		return map[string]interface{}{}, false
	}
	return o.Data, true
}

// HasData returns a boolean if a field has been set.
func (o *Error) HasData() bool {
	if o != nil && !isNil(o.Data) {
		return true
	}

	return false
}

// SetData gets a reference to the given map[string]interface{} and assigns it to the Data field.
func (o *Error) SetData(v map[string]interface{}) {
	o.Data = v
}

// GetErr returns the Err field value if set, zero value otherwise.
func (o *Error) GetErr() ErrorErr {
	if o == nil || isNil(o.Err) {
		var ret ErrorErr
		return ret
	}
	return *o.Err
}

// GetErrOk returns a tuple with the Err field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Error) GetErrOk() (*ErrorErr, bool) {
	if o == nil || isNil(o.Err) {
		return nil, false
	}
	return o.Err, true
}

// HasErr returns a boolean if a field has been set.
func (o *Error) HasErr() bool {
	if o != nil && !isNil(o.Err) {
		return true
	}

	return false
}

// SetErr gets a reference to the given ErrorErr and assigns it to the Err field.
func (o *Error) SetErr(v ErrorErr) {
	o.Err = &v
}

func (o Error) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o Error) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Data) {
		toSerialize["Data"] = o.Data
	}
	if !isNil(o.Err) {
		toSerialize["Err"] = o.Err
	}
	return toSerialize, nil
}

type NullableError struct {
	value *Error
	isSet bool
}

func (v NullableError) Get() *Error {
	return v.value
}

func (v *NullableError) Set(val *Error) {
	v.value = val
	v.isSet = true
}

func (v NullableError) IsSet() bool {
	return v.isSet
}

func (v *NullableError) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableError(val *Error) *NullableError {
	return &NullableError{value: val, isSet: true}
}

func (v NullableError) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableError) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


