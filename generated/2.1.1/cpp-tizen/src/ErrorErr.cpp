#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "Error_Err.h"

using namespace std;
using namespace Tizen::ArtikCloud;

Error_Err::Error_Err()
{
	//__init();
}

Error_Err::~Error_Err()
{
	//__cleanup();
}

void
Error_Err::__init()
{
	//message = std::string();
	//other_info = new Error_Err_other_info();
	//type = int(0);
}

void
Error_Err::__cleanup()
{
	//if(message != NULL) {
	//
	//delete message;
	//message = NULL;
	//}
	//if(other_info != NULL) {
	//
	//delete other_info;
	//other_info = NULL;
	//}
	//if(type != NULL) {
	//
	//delete type;
	//type = NULL;
	//}
	//
}

void
Error_Err::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *messageKey = "message";
	node = json_object_get_member(pJsonObject, messageKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&message, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *other_infoKey = "other_info";
	node = json_object_get_member(pJsonObject, other_infoKey);
	if (node !=NULL) {
	

		if (isprimitive("Error_Err_other_info")) {
			jsonToValue(&other_info, node, "Error_Err_other_info", "Error_Err_other_info");
		} else {
			
			Error_Err_other_info* obj = static_cast<Error_Err_other_info*> (&other_info);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *typeKey = "type";
	node = json_object_get_member(pJsonObject, typeKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&type, node, "int", "");
		} else {
			
		}
	}
}

Error_Err::Error_Err(char* json)
{
	this->fromJson(json);
}

char*
Error_Err::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getMessage();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *messageKey = "message";
	json_object_set_member(pJsonObject, messageKey, node);
	if (isprimitive("Error_Err_other_info")) {
		Error_Err_other_info obj = getOtherInfo();
		node = converttoJson(&obj, "Error_Err_other_info", "");
	}
	else {
		
		Error_Err_other_info obj = static_cast<Error_Err_other_info> (getOtherInfo());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *other_infoKey = "other_info";
	json_object_set_member(pJsonObject, other_infoKey, node);
	if (isprimitive("int")) {
		int obj = getType();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *typeKey = "type";
	json_object_set_member(pJsonObject, typeKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
Error_Err::getMessage()
{
	return message;
}

void
Error_Err::setMessage(std::string  message)
{
	this->message = message;
}

Error_Err_other_info
Error_Err::getOtherInfo()
{
	return other_info;
}

void
Error_Err::setOtherInfo(Error_Err_other_info  other_info)
{
	this->other_info = other_info;
}

int
Error_Err::getType()
{
	return type;
}

void
Error_Err::setType(int  type)
{
	this->type = type;
}


