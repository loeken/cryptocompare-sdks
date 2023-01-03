
#include "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_message_is_assigned_from_json()
{


    bourne::json input =
    {
        "message", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getMessage().c_str());






}



void test_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_type_is_assigned_from_json()
{
    bourne::json input =
    {
        "type", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getType());








}



void test_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_message_is_converted_to_json()
{

    bourne::json input =
    {
        "message", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["message"] == output["message"]);



}



void test_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_type_is_converted_to_json()
{
    bourne::json input =
    {
        "type", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["type"] == output["type"]);




}


