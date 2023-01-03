

#include "GENERIC_RESPONSE.h"

using namespace Tiny;

GENERIC_RESPONSE::GENERIC_RESPONSE()
{
	data = GENERIC_RESPONSE_Data();
	err = null;
}

GENERIC_RESPONSE::GENERIC_RESPONSE(std::string jsonString)
{
	this->fromJson(jsonString);
}

GENERIC_RESPONSE::~GENERIC_RESPONSE()
{

}

void
GENERIC_RESPONSE::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *dataKey = "Data";

    if(object.has_key(dataKey))
    {
        bourne::json value = object[dataKey];




        GENERIC_RESPONSE_Data* obj = &data;
		obj->fromJson(value.dump());

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
GENERIC_RESPONSE::toJson()
{
    bourne::json object = bourne::json::object();






	object["data"] = getData().toJson();






	object["err"] = getErr().toJson();


    return object;

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

Object
GENERIC_RESPONSE::getErr()
{
	return err;
}

void
GENERIC_RESPONSE::setErr(Object  err)
{
	this->err = err;
}



