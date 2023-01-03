
#include "GENERIC_RESPONSE_Data.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_GENERIC_RESPONSE_Data_nO_DATA_is_assigned_from_json()
{


    bourne::json input =
    {
        "nO_DATA", "hello"
    };

    GENERIC_RESPONSE_Data obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getNODATA().c_str());






}



void test_GENERIC_RESPONSE_Data_nO_DATA_is_converted_to_json()
{

    bourne::json input =
    {
        "nO_DATA", "hello"
    };

    GENERIC_RESPONSE_Data obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["nO_DATA"] == output["nO_DATA"]);



}


