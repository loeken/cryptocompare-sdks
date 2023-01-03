

#include "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err.h"

using namespace Tiny;

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err::SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err()
{
	message = std::string();
	other_info = SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info();
	type = int(0);
}

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err::SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err(std::string jsonString)
{
	this->fromJson(jsonString);
}

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err::~SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err()
{

}

void
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *messageKey = "message";

    if(object.has_key(messageKey))
    {
        bourne::json value = object[messageKey];



        jsonToValue(&message, value, "std::string");


    }

    const char *other_infoKey = "other_info";

    if(object.has_key(other_infoKey))
    {
        bourne::json value = object[other_infoKey];




        SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info* obj = &other_info;
		obj->fromJson(value.dump());

    }

    const char *typeKey = "type";

    if(object.has_key(typeKey))
    {
        bourne::json value = object[typeKey];



        jsonToValue(&type, value, "int");


    }


}

bourne::json
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err::toJson()
{
    bourne::json object = bourne::json::object();





    object["message"] = getMessage();







	object["other_info"] = getOtherInfo().toJson();





    object["type"] = getType();



    return object;

}

std::string
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err::getMessage()
{
	return message;
}

void
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err::setMessage(std::string  message)
{
	this->message = message;
}

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err::getOtherInfo()
{
	return other_info;
}

void
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err::setOtherInfo(SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info  other_info)
{
	this->other_info = other_info;
}

int
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err::getType()
{
	return type;
}

void
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err::setType(int  type)
{
	this->type = type;
}



