

#include "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE.h"

using namespace Tiny;

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::SPOT_INSTRUMENT_MARKET_DATA_RESPONSE()
{
	data = null<SPOT_INSTRUMENT_MARKET_DATA>();
	err = SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err();
}

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::SPOT_INSTRUMENT_MARKET_DATA_RESPONSE(std::string jsonString)
{
	this->fromJson(jsonString);
}

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::~SPOT_INSTRUMENT_MARKET_DATA_RESPONSE()
{

}

void
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *dataKey = "Data";

    if(object.has_key(dataKey))
    {
        bourne::json value = object[dataKey];


    }

    const char *errKey = "Err";

    if(object.has_key(errKey))
    {
        bourne::json value = object[errKey];




        SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err* obj = &err;
		obj->fromJson(value.dump());

    }


}

bourne::json
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::toJson()
{
    bourne::json object = bourne::json::object();









	object["err"] = getErr().toJson();


    return object;

}

Map<string, string>
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::getData()
{
	return data;
}

void
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE::setData(Map <string, string> data)
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



