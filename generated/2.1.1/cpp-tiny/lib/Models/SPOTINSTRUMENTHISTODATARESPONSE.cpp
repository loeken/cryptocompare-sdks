

#include "SPOT_INSTRUMENT_HISTO_DATA_RESPONSE.h"

using namespace Tiny;

SPOT_INSTRUMENT_HISTO_DATA_RESPONSE::SPOT_INSTRUMENT_HISTO_DATA_RESPONSE()
{
	data = std::list<SPOT_INSTRUMENT_HISTO_DATA>();
	err = null;
}

SPOT_INSTRUMENT_HISTO_DATA_RESPONSE::SPOT_INSTRUMENT_HISTO_DATA_RESPONSE(std::string jsonString)
{
	this->fromJson(jsonString);
}

SPOT_INSTRUMENT_HISTO_DATA_RESPONSE::~SPOT_INSTRUMENT_HISTO_DATA_RESPONSE()
{

}

void
SPOT_INSTRUMENT_HISTO_DATA_RESPONSE::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *dataKey = "Data";

    if(object.has_key(dataKey))
    {
        bourne::json value = object[dataKey];


        std::list<SPOT_INSTRUMENT_HISTO_DATA> data_list;
        SPOT_INSTRUMENT_HISTO_DATA element;
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
SPOT_INSTRUMENT_HISTO_DATA_RESPONSE::toJson()
{
    bourne::json object = bourne::json::object();




    std::list<SPOT_INSTRUMENT_HISTO_DATA> data_list = getData();
    bourne::json data_arr = bourne::json::array();

    for(auto& var : data_list)
    {
        SPOT_INSTRUMENT_HISTO_DATA obj = var;
        data_arr.append(obj.toJson());
    }
    object["data"] = data_arr;








	object["err"] = getErr().toJson();


    return object;

}

std::list<SPOT_INSTRUMENT_HISTO_DATA>
SPOT_INSTRUMENT_HISTO_DATA_RESPONSE::getData()
{
	return data;
}

void
SPOT_INSTRUMENT_HISTO_DATA_RESPONSE::setData(std::list <SPOT_INSTRUMENT_HISTO_DATA> data)
{
	this->data = data;
}

Object
SPOT_INSTRUMENT_HISTO_DATA_RESPONSE::getErr()
{
	return err;
}

void
SPOT_INSTRUMENT_HISTO_DATA_RESPONSE::setErr(Object  err)
{
	this->err = err;
}



