

#include "GENERIC_RESPONSE_Data.h"

using namespace Tiny;

GENERIC_RESPONSE_Data::GENERIC_RESPONSE_Data()
{
	nO_DATA = std::string();
}

GENERIC_RESPONSE_Data::GENERIC_RESPONSE_Data(std::string jsonString)
{
	this->fromJson(jsonString);
}

GENERIC_RESPONSE_Data::~GENERIC_RESPONSE_Data()
{

}

void
GENERIC_RESPONSE_Data::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *nO_DATAKey = "NO_DATA";

    if(object.has_key(nO_DATAKey))
    {
        bourne::json value = object[nO_DATAKey];



        jsonToValue(&nO_DATA, value, "std::string");


    }


}

bourne::json
GENERIC_RESPONSE_Data::toJson()
{
    bourne::json object = bourne::json::object();





    object["nO_DATA"] = getNODATA();



    return object;

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



