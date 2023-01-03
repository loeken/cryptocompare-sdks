#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::SPOT_INSTRUMENT_MARKET_DATA_RESPONSE()
{
	//__init();
}

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::~SPOT_INSTRUMENT_MARKET_DATA_RESPONSE()
{
	//__cleanup();
}

void
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::__init()
{
	//new std::map()std::map> data;
	//err = new SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err();
}

void
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::__cleanup()
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
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *dataKey = "Data";
	node = json_object_get_member(pJsonObject, dataKey);
	if (node !=NULL) {
	
		{
			JsonObject* json_obj = json_node_get_object(node);
			map<string,string> new_map;
			json_object_foreach_member(json_obj,helper_func,&new_map);
			data = new_map;
		}
		
	}
	const gchar *errKey = "Err";
	node = json_object_get_member(pJsonObject, errKey);
	if (node !=NULL) {
	

		if (isprimitive("SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err")) {
			jsonToValue(&err, node, "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err", "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err");
		} else {
			
			SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err* obj = static_cast<SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err*> (&err);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::SPOT_INSTRUMENT_MARKET_DATA_RESPONSE(char* json)
{
	this->fromJson(json);
}

char*
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;


	{
		JsonObject* json_obj;
		map<string, string> new_list = static_cast<map <string, string> > (getData());
		json_obj = json_object_new();
		for (map<string, string>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			string obj = (*it).first;
			string obj2 = (*it).second;
			JsonNode* tempnode = json_from_string(obj2.c_str(),NULL);
			json_object_set_member(json_obj, obj.c_str(), tempnode);
		}
	node = json_node_alloc();
	json_node_init_object(node, json_obj);
	json_object_unref(json_obj);
	}

	const gchar *dataKey = "Data";
	json_object_set_member(pJsonObject, dataKey, node);
	if (isprimitive("SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err")) {
		SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err obj = getErr();
		node = converttoJson(&obj, "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err", "");
	}
	else {
		
		SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err obj = static_cast<SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err> (getErr());
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

std::map<string, string>
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::getData()
{
	return data;
}

void
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::setData(std::map <string, string> data)
{
	this->data = data;
}

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::getErr()
{
	return err;
}

void
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::setErr(SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err  err)
{
	this->err = err;
}


