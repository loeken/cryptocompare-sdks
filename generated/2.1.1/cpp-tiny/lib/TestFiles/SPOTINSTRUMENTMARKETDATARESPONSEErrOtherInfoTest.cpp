
#include "SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info_param_is_assigned_from_json()
{


    bourne::json input =
    {
        "param", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getParam().c_str());






}




void test_SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info_param_is_converted_to_json()
{

    bourne::json input =
    {
        "param", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["param"] == output["param"]);



}



