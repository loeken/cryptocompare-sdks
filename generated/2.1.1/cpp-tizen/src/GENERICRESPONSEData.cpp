#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "GENERIC_RESPONSE_Data.h"

using namespace std;
using namespace Tizen::ArtikCloud;

GENERIC_RESPONSE_Data::GENERIC_RESPONSE_Data()
{
	//__init();
}

GENERIC_RESPONSE_Data::~GENERIC_RESPONSE_Data()
{
	//__cleanup();
}

void
GENERIC_RESPONSE_Data::__init()
{
	//nO_DATA = std::string();
}

void
GENERIC_RESPONSE_Data::__cleanup()
{
	//if(nO_DATA != NULL) {
	//
	//delete nO_DATA;
	//nO_DATA = NULL;
	//}
	//
}

void
GENERIC_RESPONSE_Data::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *nO_DATAKey = "NO_DATA";
	node = json_object_get_member(pJsonObject, nO_DATAKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&nO_DATA, node, "std::string", "");
		} else {
			
		}
	}
}

GENERIC_RESPONSE_Data::GENERIC_RESPONSE_Data(char* json)
{
	this->fromJson(json);
}

char*
GENERIC_RESPONSE_Data::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getNODATA();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nO_DATAKey = "NO_DATA";
	json_object_set_member(pJsonObject, nO_DATAKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
GENERIC_RESPONSE_Data::getNODATA()
{
	return nO_DATA;
}

void
GENERIC_RESPONSE_Data::setNODATA(std::string  nO_DATA)
{
	this->nO_DATA = nO_DATA;
}


