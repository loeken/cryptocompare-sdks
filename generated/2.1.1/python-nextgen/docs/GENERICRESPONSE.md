# GENERICRESPONSE


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**GENERICRESPONSEData**](GENERICRESPONSEData.md) |  | [optional] 
**err** | **object** |  | [optional] 

## Example

```python
from openapi_client.models.genericresponse import GENERICRESPONSE

# TODO update the JSON string below
json = "{}"
# create an instance of GENERICRESPONSE from a JSON string
genericresponse_instance = GENERICRESPONSE.from_json(json)
# print the JSON string representation of the object
print GENERICRESPONSE.to_json()

# convert the object into a dict
genericresponse_dict = genericresponse_instance.to_dict()
# create an instance of GENERICRESPONSE from a dict
genericresponse_form_dict = genericresponse.from_dict(genericresponse_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


