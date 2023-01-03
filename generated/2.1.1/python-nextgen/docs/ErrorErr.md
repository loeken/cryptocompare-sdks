# ErrorErr


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** | A message describing the error | [optional] 
**other_info** | [**ErrorErrOtherInfo**](ErrorErrOtherInfo.md) |  | [optional] 
**type** | **int** | A public facing error type. If you want to treat a specific error use the type. | [optional] 

## Example

```python
from openapi_client.models.error_err import ErrorErr

# TODO update the JSON string below
json = "{}"
# create an instance of ErrorErr from a JSON string
error_err_instance = ErrorErr.from_json(json)
# print the JSON string representation of the object
print ErrorErr.to_json()

# convert the object into a dict
error_err_dict = error_err_instance.to_dict()
# create an instance of ErrorErr from a dict
error_err_form_dict = error_err.from_dict(error_err_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


