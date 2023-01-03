# SPOTINSTRUMENTTRADERESPONSE


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[SPOTINSTRUMENTTRADE]**](SPOTINSTRUMENTTRADE.md) |  | [optional] 
**err** | **object** |  | [optional] 

## Example

```python
from openapi_client.models.spotinstrumenttraderesponse import SPOTINSTRUMENTTRADERESPONSE

# TODO update the JSON string below
json = "{}"
# create an instance of SPOTINSTRUMENTTRADERESPONSE from a JSON string
spotinstrumenttraderesponse_instance = SPOTINSTRUMENTTRADERESPONSE.from_json(json)
# print the JSON string representation of the object
print SPOTINSTRUMENTTRADERESPONSE.to_json()

# convert the object into a dict
spotinstrumenttraderesponse_dict = spotinstrumenttraderesponse_instance.to_dict()
# create an instance of SPOTINSTRUMENTTRADERESPONSE from a dict
spotinstrumenttraderesponse_form_dict = spotinstrumenttraderesponse.from_dict(spotinstrumenttraderesponse_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


