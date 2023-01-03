# ErrorErrOtherInfo


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**param** | **str** | The parameter that is resposible for the error | [optional] 
**values** | **List[str]** | The values resposible for the error | [optional] 

## Example

```python
from openapi_client.models.error_err_other_info import ErrorErrOtherInfo

# TODO update the JSON string below
json = "{}"
# create an instance of ErrorErrOtherInfo from a JSON string
error_err_other_info_instance = ErrorErrOtherInfo.from_json(json)
# print the JSON string representation of the object
print ErrorErrOtherInfo.to_json()

# convert the object into a dict
error_err_other_info_dict = error_err_other_info_instance.to_dict()
# create an instance of ErrorErrOtherInfo from a dict
error_err_other_info_form_dict = error_err_other_info.from_dict(error_err_other_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


