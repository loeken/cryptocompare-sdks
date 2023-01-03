#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Error_Err_other_info.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Error_Err_other_info::Error_Err_other_info()
{
	//__init();
}

Error_Err_other_info::~Error_Err_other_info()
{
	//__cleanup();
}

void
Error_Err_other_info::__init()
{
	//param = std::string();
	//new std::list()std::list> values;
}

void
Error_Err_other_info::__cleanup()
{
	//if(param != NULL) {
	//
	//delete param;
	//param = NULL;
	//}
	//if(values != NULL) {
	//values.RemoveAll(true);
	//delete values;
	//values = NULL;
	//}
	//
}

void
Error_Err_other_info::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *paramKey = "param";
	node = json_object_get_member(pJsonObject, paramKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&param, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *valuesKey = "values";
	node = json_object_get_member(pJsonObject, valuesKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			values = new_list;
		}
		
	}
}

Error_Err_other_info::Error_Err_other_info(char* json)
{
	this->fromJson(json);
}

char*
Error_Err_other_info::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getParam();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *paramKey = "param";
	json_object_set_member(pJsonObject, paramKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getValues());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getValues());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *valuesKey = "values";
	json_object_set_member(pJsonObject, valuesKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Error_Err_other_info::getParam()
{
	return param;
}

void
Error_Err_other_info::setParam(std::string  param)
{
	this->param = param;
}

std::list<std::string>
Error_Err_other_info::getValues()
{
	return values;
}

void
Error_Err_other_info::setValues(std::list <std::string> values)
{
	this->values = values;
}


