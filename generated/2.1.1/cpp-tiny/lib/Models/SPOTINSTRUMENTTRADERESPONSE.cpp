

#include "SPOT_INSTRUMENT_TRADE_RESPONSE.h"

using namespace Tiny;

SPOT_INSTRUMENT_TRADE_RESPONSE::SPOT_INSTRUMENT_TRADE_RESPONSE()
{
	data = std::list<SPOT_INSTRUMENT_TRADE>();
	err = null;
}

SPOT_INSTRUMENT_TRADE_RESPONSE::SPOT_INSTRUMENT_TRADE_RESPONSE(std::string jsonString)
{
	this->fromJson(jsonString);
}

SPOT_INSTRUMENT_TRADE_RESPONSE::~SPOT_INSTRUMENT_TRADE_RESPONSE()
{

}

void
SPOT_INSTRUMENT_TRADE_RESPONSE::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *dataKey = "Data";

    if(object.has_key(dataKey))
    {
        bourne::json value = object[dataKey];


        std::list<SPOT_INSTRUMENT_TRADE> data_list;
        SPOT_INSTRUMENT_TRADE element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            data_list.push_back(element);
        }
        data = data_list;


    }

    const char *errKey = "Err";

    if(object.has_key(errKey))
    {
        bourne::json value = object[errKey];




        Object* obj = &err;
		obj->fromJson(value.dump());

    }


}

bourne::json
SPOT_INSTRUMENT_TRADE_RESPONSE::toJson()
{
    bourne::json object = bourne::json::object();




    std::list<SPOT_INSTRUMENT_TRADE> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        SPOT_INSTRUMENT_TRADE obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;








	object["err"] = getErr().toJson();


    return object;

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

Object
SPOT_INSTRUMENT_TRADE_RESPONSE::getErr()
{
	return err;
}

void
SPOT_INSTRUMENT_TRADE_RESPONSE::setErr(Object  err)
{
	this->err = err;
}



