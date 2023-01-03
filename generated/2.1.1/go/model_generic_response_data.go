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

// checks if the GENERICRESPONSEData type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GENERICRESPONSEData{}

// GENERICRESPONSEData struct for GENERICRESPONSEData
type GENERICRESPONSEData struct {
	// The endpoint does not have a reponse defined
	NO_DATA *string `json:"NO_DATA,omitempty"`
}

// NewGENERICRESPONSEData instantiates a new GENERICRESPONSEData object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGENERICRESPONSEData() *GENERICRESPONSEData {
	this := GENERICRESPONSEData{}
	return &this
}

// NewGENERICRESPONSEDataWithDefaults instantiates a new GENERICRESPONSEData object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGENERICRESPONSEDataWithDefaults() *GENERICRESPONSEData {
	this := GENERICRESPONSEData{}
	return &this
}

// GetNO_DATA returns the NO_DATA field value if set, zero value otherwise.
func (o *GENERICRESPONSEData) GetNO_DATA() string {
	if o == nil || isNil(o.NO_DATA) {
		var ret string
		return ret
	}
	return *o.NO_DATA
}

// GetNO_DATAOk returns a tuple with the NO_DATA field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GENERICRESPONSEData) GetNO_DATAOk() (*string, bool) {
	if o == nil || isNil(o.NO_DATA) {
		return nil, false
	}
	return o.NO_DATA, true
}

// HasNO_DATA returns a boolean if a field has been set.
func (o *GENERICRESPONSEData) HasNO_DATA() bool {
	if o != nil && !isNil(o.NO_DATA) {
		return true
	}

	return false
}

// SetNO_DATA gets a reference to the given string and assigns it to the NO_DATA field.
func (o *GENERICRESPONSEData) SetNO_DATA(v string) {
	o.NO_DATA = &v
}

func (o GENERICRESPONSEData) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GENERICRESPONSEData) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.NO_DATA) {
		toSerialize["NO_DATA"] = o.NO_DATA
	}
	return toSerialize, nil
}

type NullableGENERICRESPONSEData struct {
	value *GENERICRESPONSEData
	isSet bool
}

func (v NullableGENERICRESPONSEData) Get() *GENERICRESPONSEData {
	return v.value
}

func (v *NullableGENERICRESPONSEData) Set(val *GENERICRESPONSEData) {
	v.value = val
	v.isSet = true
}

func (v NullableGENERICRESPONSEData) IsSet() bool {
	return v.isSet
}

func (v *NullableGENERICRESPONSEData) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGENERICRESPONSEData(val *GENERICRESPONSEData) *NullableGENERICRESPONSEData {
	return &NullableGENERICRESPONSEData{value: val, isSet: true}
}

func (v NullableGENERICRESPONSEData) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGENERICRESPONSEData) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

