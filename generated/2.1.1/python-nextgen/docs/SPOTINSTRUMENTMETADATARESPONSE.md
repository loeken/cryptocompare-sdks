# SPOTINSTRUMENTMETADATARESPONSE


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Dict[str, SPOTINSTRUMENTMETADATA]**](SPOTINSTRUMENTMETADATA.md) |  | [optional] 
**err** | [**SPOTINSTRUMENTMARKETDATARESPONSEErr**](SPOTINSTRUMENTMARKETDATARESPONSEErr.md) |  | [optional] 

## Example

```python
from openapi_client.models.spotinstrumentmetadataresponse import SPOTINSTRUMENTMETADATARESPONSE

# TODO update the JSON string below
json = "{}"
# create an instance of SPOTINSTRUMENTMETADATARESPONSE from a JSON string
spotinstrumentmetadataresponse_instance = SPOTINSTRUMENTMETADATARESPONSE.from_json(json)
# print the JSON string representation of the object
print SPOTINSTRUMENTMETADATARESPONSE.to_json()

# convert the object into a dict
spotinstrumentmetadataresponse_dict = spotinstrumentmetadataresponse_instance.to_dict()
# create an instance of SPOTINSTRUMENTMETADATARESPONSE from a dict
spotinstrumentmetadataresponse_form_dict = spotinstrumentmetadataresponse.from_dict(spotinstrumentmetadataresponse_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


