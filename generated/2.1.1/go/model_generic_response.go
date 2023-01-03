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

// checks if the GENERICRESPONSE type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GENERICRESPONSE{}

// GENERICRESPONSE struct for GENERICRESPONSE
type GENERICRESPONSE struct {
	Data *GENERICRESPONSEData `json:"Data,omitempty"`
	Err map[string]interface{} `json:"Err,omitempty"`
}

// NewGENERICRESPONSE instantiates a new GENERICRESPONSE object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGENERICRESPONSE() *GENERICRESPONSE {
	this := GENERICRESPONSE{}
	return &this
}

// NewGENERICRESPONSEWithDefaults instantiates a new GENERICRESPONSE object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGENERICRESPONSEWithDefaults() *GENERICRESPONSE {
	this := GENERICRESPONSE{}
	return &this
}

// GetData returns the Data field value if set, zero value otherwise.
func (o *GENERICRESPONSE) GetData() GENERICRESPONSEData {
	if o == nil || isNil(o.Data) {
		var ret GENERICRESPONSEData
		return ret
	}
	return *o.Data
}

// GetDataOk returns a tuple with the Data field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GENERICRESPONSE) GetDataOk() (*GENERICRESPONSEData, bool) {
	if o == nil || isNil(o.Data) {
		return nil, false
	}
	return o.Data, true
}

// HasData returns a boolean if a field has been set.
func (o *GENERICRESPONSE) HasData() bool {
	if o != nil && !isNil(o.Data) {
		return true
	}

	return false
}

// SetData gets a reference to the given GENERICRESPONSEData and assigns it to the Data field.
func (o *GENERICRESPONSE) SetData(v GENERICRESPONSEData) {
	o.Data = &v
}

// GetErr returns the Err field value if set, zero value otherwise.
func (o *GENERICRESPONSE) GetErr() map[string]interface{} {
	if o == nil || isNil(o.Err) {
		var ret map[string]interface{}
		return ret
	}
	return o.Err
}

// GetErrOk returns a tuple with the Err field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GENERICRESPONSE) GetErrOk() (map[string]interface{}, bool) {
	if o == nil || isNil(o.Err) {
		return map[string]interface{}{}, false
	}
	return o.Err, true
}

// HasErr returns a boolean if a field has been set.
func (o *GENERICRESPONSE) HasErr() bool {
	if o != nil && !isNil(o.Err) {
		return true
	}

	return false
}

// SetErr gets a reference to the given map[string]interface{} and assigns it to the Err field.
func (o *GENERICRESPONSE) SetErr(v map[string]interface{}) {
	o.Err = v
}

func (o GENERICRESPONSE) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GENERICRESPONSE) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Data) {
		toSerialize["Data"] = o.Data
	}
	if !isNil(o.Err) {
		toSerialize["Err"] = o.Err
	}
	return toSerialize, nil
}

type NullableGENERICRESPONSE struct {
	value *GENERICRESPONSE
	isSet bool
}

func (v NullableGENERICRESPONSE) Get() *GENERICRESPONSE {
	return v.value
}

func (v *NullableGENERICRESPONSE) Set(val *GENERICRESPONSE) {
	v.value = val
	v.isSet = true
}

func (v NullableGENERICRESPONSE) IsSet() bool {
	return v.isSet
}

func (v *NullableGENERICRESPONSE) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGENERICRESPONSE(val *GENERICRESPONSE) *NullableGENERICRESPONSE {
	return &NullableGENERICRESPONSE{value: val, isSet: true}
}

func (v NullableGENERICRESPONSE) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGENERICRESPONSE) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

