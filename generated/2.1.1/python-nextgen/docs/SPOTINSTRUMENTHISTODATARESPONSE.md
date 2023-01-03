# SPOTINSTRUMENTHISTODATARESPONSE


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[SPOTINSTRUMENTHISTODATA]**](SPOTINSTRUMENTHISTODATA.md) |  | [optional] 
**err** | **object** |  | [optional] 

## Example

```python
from openapi_client.models.spotinstrumenthistodataresponse import SPOTINSTRUMENTHISTODATARESPONSE

# TODO update the JSON string below
json = "{}"
# create an instance of SPOTINSTRUMENTHISTODATARESPONSE from a JSON string
spotinstrumenthistodataresponse_instance = SPOTINSTRUMENTHISTODATARESPONSE.from_json(json)
# print the JSON string representation of the object
print SPOTINSTRUMENTHISTODATARESPONSE.to_json()

# convert the object into a dict
spotinstrumenthistodataresponse_dict = spotinstrumenthistodataresponse_instance.to_dict()
# create an instance of SPOTINSTRUMENTHISTODATARESPONSE from a dict
spotinstrumenthistodataresponse_form_dict = spotinstrumenthistodataresponse.from_dict(spotinstrumenthistodataresponse_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


