# SPOTINSTRUMENTMARKETDATARESPONSEErr


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** | A message describing the error | [optional] 
**other_info** | [**SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo**](SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo.md) |  | [optional] 
**type** | **int** | A public facing error type. If you want to treat a specific error use the type. | [optional] 

## Example

```python
from openapi_client.models.spotinstrumentmarketdataresponse_err import SPOTINSTRUMENTMARKETDATARESPONSEErr

# TODO update the JSON string below
json = "{}"
# create an instance of SPOTINSTRUMENTMARKETDATARESPONSEErr from a JSON string
spotinstrumentmarketdataresponse_err_instance = SPOTINSTRUMENTMARKETDATARESPONSEErr.from_json(json)
# print the JSON string representation of the object
print SPOTINSTRUMENTMARKETDATARESPONSEErr.to_json()

# convert the object into a dict
spotinstrumentmarketdataresponse_err_dict = spotinstrumentmarketdataresponse_err_instance.to_dict()
# create an instance of SPOTINSTRUMENTMARKETDATARESPONSEErr from a dict
spotinstrumentmarketdataresponse_err_form_dict = spotinstrumentmarketdataresponse_err.from_dict(spotinstrumentmarketdataresponse_err_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


