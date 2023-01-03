

#include "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info.h"

using namespace Tiny;

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info::SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info()
{
	param = std::string();
	values = std::list<std::string>();
}

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info::SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info(std::string jsonString)
{
	this->fromJson(jsonString);
}

SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info::~SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info()
{

}

void
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *paramKey = "param";

    if(object.has_key(paramKey))
    {
        bourne::json value = object[paramKey];



        jsonToValue(&param, value, "std::string");


    }

    const char *valuesKey = "values";

    if(object.has_key(valuesKey))
    {
        bourne::json value = object[valuesKey];


        std::list<std::string> values_list;
        std::string element;
        for(auto& var : value.array_range())
        {

            jsonToValue(&element, var, "std::string");


            values_list.push_back(element);
        }
        values = values_list;


    }


}

bourne::json
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info::toJson()
{
    bourne::json object = bourne::json::object();





    object["param"] = getParam();





    std::list<std::string> values_list = getValues();
    bourne::json values_arr = bourne::json::array();

    for(auto& var : values_list)
    {
        values_arr.append(var);
    }
    object["values"] = values_arr;






    return object;

}

std::string
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info::getParam()
{
	return param;
}

void
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info::setParam(std::string  param)
{
	this->param = param;
}

std::list<std::string>
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info::getValues()
{
	return values;
}

void
SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info::setValues(std::list <std::string> values)
{
	this->values = values;
}



