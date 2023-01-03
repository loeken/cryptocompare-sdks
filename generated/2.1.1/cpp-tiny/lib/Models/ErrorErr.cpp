

#include "Error_Err.h"

using namespace Tiny;

Error_Err::Error_Err()
{
	message = std::string();
	other_info = Error_Err_other_info();
	type = int(0);
}

Error_Err::Error_Err(std::string jsonString)
{
	this->fromJson(jsonString);
}

Error_Err::~Error_Err()
{

}

void
Error_Err::fromJson(std::string jsonObj)
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




        Error_Err_other_info* obj = &other_info;
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
Error_Err::toJson()
{
    bourne::json object = bourne::json::object();





    object["message"] = getMessage();







	object["other_info"] = getOtherInfo().toJson();





    object["type"] = getType();



    return object;

}

std::string
Error_Err::getMessage()
{
	return message;
}

void
Error_Err::setMessage(std::string  message)
{
	this->message = message;
}

Error_Err_other_info
Error_Err::getOtherInfo()
{
	return other_info;
}

void
Error_Err::setOtherInfo(Error_Err_other_info  other_info)
{
	this->other_info = other_info;
}

int
Error_Err::getType()
{
	return type;
}

void
Error_Err::setType(int  type)
{
	this->type = type;
}



