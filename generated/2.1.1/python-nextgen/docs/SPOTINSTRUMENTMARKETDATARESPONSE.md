# SPOTINSTRUMENTMARKETDATARESPONSE


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Dict[str, SPOTINSTRUMENTMARKETDATA]**](SPOTINSTRUMENTMARKETDATA.md) |  | [optional] 
**err** | [**SPOTINSTRUMENTMARKETDATARESPONSEErr**](SPOTINSTRUMENTMARKETDATARESPONSEErr.md) |  | [optional] 

## Example

```python
from openapi_client.models.spotinstrumentmarketdataresponse import SPOTINSTRUMENTMARKETDATARESPONSE

# TODO update the JSON string below
json = "{}"
# create an instance of SPOTINSTRUMENTMARKETDATARESPONSE from a JSON string
spotinstrumentmarketdataresponse_instance = SPOTINSTRUMENTMARKETDATARESPONSE.from_json(json)
# print the JSON string representation of the object
print SPOTINSTRUMENTMARKETDATARESPONSE.to_json()

# convert the object into a dict
spotinstrumentmarketdataresponse_dict = spotinstrumentmarketdataresponse_instance.to_dict()
# create an instance of SPOTINSTRUMENTMARKETDATARESPONSE from a dict
spotinstrumentmarketdataresponse_form_dict = spotinstrumentmarketdataresponse.from_dict(spotinstrumentmarketdataresponse_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


