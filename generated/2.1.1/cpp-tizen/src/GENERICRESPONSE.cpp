#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GENERIC_RESPONSE.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GENERIC_RESPONSE::GENERIC_RESPONSE()
{
	//__init();
}

GENERIC_RESPONSE::~GENERIC_RESPONSE()
{
	//__cleanup();
}

void
GENERIC_RESPONSE::__init()
{
	//data = new GENERIC_RESPONSE_Data();
	//err = null;
}

void
GENERIC_RESPONSE::__cleanup()
{
	//if(data != NULL) {
	//
	//delete data;
	//data = NULL;
	//}
	//if(err != NULL) {
	//
	//delete err;
	//err = NULL;
	//}
	//
}

void
GENERIC_RESPONSE::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *dataKey = "Data";
	node = json_object_get_member(pJsonObject, dataKey);
	if (node !=NULL) {
	

		if (isprimitive("GENERIC_RESPONSE_Data")) {
			jsonToValue(&data, node, "GENERIC_RESPONSE_Data", "GENERIC_RESPONSE_Data");
		} else {
			
			GENERIC_RESPONSE_Data* obj = static_cast<GENERIC_RESPONSE_Data*> (&data);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *errKey = "Err";
	node = json_object_get_member(pJsonObject, errKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&err, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&err);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

GENERIC_RESPONSE::GENERIC_RESPONSE(char* json)
{
	this->fromJson(json);
}

char*
GENERIC_RESPONSE::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("GENERIC_RESPONSE_Data")) {
		GENERIC_RESPONSE_Data obj = getData();
		node = converttoJson(&obj, "GENERIC_RESPONSE_Data", "");
	}
	else {
		
		GENERIC_RESPONSE_Data obj = static_cast<GENERIC_RESPONSE_Data> (getData());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *dataKey = "Data";
	json_object_set_member(pJsonObject, dataKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getErr();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getErr());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *errKey = "Err";
	json_object_set_member(pJsonObject, errKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

GENERIC_RESPONSE_Data
GENERIC_RESPONSE::getData()
{
	return data;
}

void
GENERIC_RESPONSE::setData(GENERIC_RESPONSE_Data  data)
{
	this->data = data;
}

std::string
GENERIC_RESPONSE::getErr()
{
	return err;
}

void
GENERIC_RESPONSE::setErr(std::string  err)
{
	this->err = err;
}


