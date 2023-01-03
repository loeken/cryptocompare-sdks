

#include "Error.h"

using namespace Tiny;

Error::Error()
{
	data = null;
	err = Error_Err();
}

Error::Error(std::string jsonString)
{
	this->fromJson(jsonString);
}

Error::~Error()
{

}

void
Error::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *dataKey = "Data";

    if(object.has_key(dataKey))
    {
        bourne::json value = object[dataKey];




        Object* obj = &data;
		obj->fromJson(value.dump());

    }

    const char *errKey = "Err";

    if(object.has_key(errKey))
    {
        bourne::json value = object[errKey];




        Error_Err* obj = &err;
		obj->fromJson(value.dump());

    }


}

bourne::json
Error::toJson()
{
    bourne::json object = bourne::json::object();






	object["data"] = getData().toJson();






	object["err"] = getErr().toJson();


    return object;

}

Object
Error::getData()
{
	return data;
}

void
Error::setData(Object  data)
{
	this->data = data;
}

Error_Err
Error::getErr()
{
	return err;
}

void
Error::setErr(Error_Err  err)
{
	this->err = err;
}



