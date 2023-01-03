#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SPOT_INSTRUMENT_TRADE_RESPONSE.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SPOT_INSTRUMENT_TRADE_RESPONSE::SPOT_INSTRUMENT_TRADE_RESPONSE()
{
	//__init();
}

SPOT_INSTRUMENT_TRADE_RESPONSE::~SPOT_INSTRUMENT_TRADE_RESPONSE()
{
	//__cleanup();
}

void
SPOT_INSTRUMENT_TRADE_RESPONSE::__init()
{
	//new std::list()std::list> data;
	//err = null;
}

void
SPOT_INSTRUMENT_TRADE_RESPONSE::__cleanup()
{
	//if(data != NULL) {
	//data.RemoveAll(true);
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
SPOT_INSTRUMENT_TRADE_RESPONSE::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *dataKey = "Data";
	node = json_object_get_member(pJsonObject, dataKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SPOT_INSTRUMENT_TRADE> new_list;
			SPOT_INSTRUMENT_TRADE inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SPOT_INSTRUMENT_TRADE")) {
					jsonToValue(&inst, temp_json, "SPOT_INSTRUMENT_TRADE", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			data = new_list;
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

SPOT_INSTRUMENT_TRADE_RESPONSE::SPOT_INSTRUMENT_TRADE_RESPONSE(char* json)
{
	this->fromJson(json);
}

char*
SPOT_INSTRUMENT_TRADE_RESPONSE::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SPOT_INSTRUMENT_TRADE")) {
		list<SPOT_INSTRUMENT_TRADE> new_list = static_cast<list <SPOT_INSTRUMENT_TRADE> > (getData());
		node = converttoJson(&new_list, "SPOT_INSTRUMENT_TRADE", "array");
	} else {
		node = json_node_alloc();
		list<SPOT_INSTRUMENT_TRADE> new_list = static_cast<list <SPOT_INSTRUMENT_TRADE> > (getData());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SPOT_INSTRUMENT_TRADE>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SPOT_INSTRUMENT_TRADE obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
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

std::list<SPOT_INSTRUMENT_TRADE>
SPOT_INSTRUMENT_TRADE_RESPONSE::getData()
{
	return data;
}

void
SPOT_INSTRUMENT_TRADE_RESPONSE::setData(std::list <SPOT_INSTRUMENT_TRADE> data)
{
	this->data = data;
}

std::string
SPOT_INSTRUMENT_TRADE_RESPONSE::getErr()
{
	return err;
}

void
SPOT_INSTRUMENT_TRADE_RESPONSE::setErr(std::string  err)
{
	this->err = err;
}


