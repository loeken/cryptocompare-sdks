
#include "SPOT_INSTRUMENT_MARKET_DATA.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_SPOT_INSTRUMENT_MARKET_DATA_bASE_is_assigned_from_json()
{


    bourne::json input =
    {
        "bASE", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getBASE().c_str());






}


void test_SPOT_INSTRUMENT_MARKET_DATA_cCSEQ_is_assigned_from_json()
{
    bourne::json input =
    {
        "cCSEQ", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCCSEQ());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_HIGH_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYHIGH());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_LOW_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYLOW());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_OPEN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYOPEN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYQUOTEVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYQUOTEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYQUOTEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYQUOTEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYTOTALTRADES());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYTOTALTRADESBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYTOTALTRADESSELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYTOTALTRADESUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTDAYVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_HIGH_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURHIGH());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_LOW_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURLOW());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_OPEN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOUROPEN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURQUOTEVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURQUOTEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURQUOTEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURQUOTEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURTOTALTRADES());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURTOTALTRADESBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURTOTALTRADESSELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURTOTALTRADESUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTHOURVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_HIGH_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHHIGH());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_LOW_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHLOW());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_OPEN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHOPEN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHQUOTEVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHQUOTEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHQUOTEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHQUOTEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHTOTALTRADES());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHTOTALTRADESBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHTOTALTRADESSELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHTOTALTRADESUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTMONTHVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_HIGH_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKHIGH());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_LOW_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKLOW());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_OPEN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKOPEN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKQUOTEVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKQUOTEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKQUOTEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKQUOTEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKTOTALTRADES());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKTOTALTRADESBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKTOTALTRADESSELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKTOTALTRADESUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTWEEKVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_HIGH_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARHIGH());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_LOW_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARLOW());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_OPEN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEAROPEN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARQUOTEVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARQUOTEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARQUOTEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARQUOTEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARTOTALTRADES());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARTOTALTRADESBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARTOTALTRADESSELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARTOTALTRADESUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCURRENTYEARVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_iNSTRUMENT_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENT().c_str());






}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_CCSEQ_is_assigned_from_json()
{


    bourne::json input =
    {
        "lAST_PROCESSED_TRADE_CCSEQ", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLASTPROCESSEDTRADECCSEQ().c_str());






}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_PRICE_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_PROCESSED_TRADE_PRICE", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTPROCESSEDTRADEPRICE());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_QUANTITY_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_PROCESSED_TRADE_QUANTITY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTPROCESSEDTRADEQUANTITY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_QUOTE_QUANTITY_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_PROCESSED_TRADE_QUOTE_QUANTITY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTPROCESSEDTRADEQUOTEQUANTITY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_SIDE_is_assigned_from_json()
{


    bourne::json input =
    {
        "lAST_PROCESSED_TRADE_SIDE", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLASTPROCESSEDTRADESIDE().c_str());






}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_PROCESSED_TRADE_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTPROCESSEDTRADETS());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_CCSEQ_is_assigned_from_json()
{


    bourne::json input =
    {
        "lAST_TRADE_CCSEQ", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLASTTRADECCSEQ().c_str());






}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_ID_is_assigned_from_json()
{


    bourne::json input =
    {
        "lAST_TRADE_ID", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLASTTRADEID().c_str());






}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_QUANTITY_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_TRADE_QUANTITY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTTRADEQUANTITY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_QUOTE_QUANTITY_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_TRADE_QUOTE_QUANTITY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTTRADEQUOTEQUANTITY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_SIDE_is_assigned_from_json()
{


    bourne::json input =
    {
        "lAST_TRADE_SIDE", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getLASTTRADESIDE().c_str());






}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_FIRST_TRADE_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_FIRST_TRADE_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMEFIRSTTRADETS());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_HIGH_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMEHIGH());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_HIGH_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_HIGH_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMEHIGHTS());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_LOW_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMELOW());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_LOW_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_LOW_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMELOWTS());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_OPEN_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMEOPEN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMEQUOTEVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMEQUOTEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMEQUOTEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMEQUOTEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMETOTALTRADES());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMETOTALTRADESBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMETOTALTRADESSELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMETOTALTRADESUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMEVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "lIFETIME_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLIFETIMEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mAPPED_INSTRUMENT_is_assigned_from_json()
{


    bourne::json input =
    {
        "mAPPED_INSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getMAPPEDINSTRUMENT().c_str());






}


void test_SPOT_INSTRUMENT_MARKET_DATA_mARKET_is_assigned_from_json()
{


    bourne::json input =
    {
        "mARKET", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getMARKET().c_str());






}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_HIGH_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYHIGH());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_LOW_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYLOW());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_OPEN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYOPEN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYQUOTEVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYQUOTEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYQUOTEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYQUOTEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYTOTALTRADES());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYTOTALTRADESBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYTOTALTRADESSELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYTOTALTRADESUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING180DAYVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_HIGH_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURHIGH());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_LOW_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURLOW());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_OPEN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOUROPEN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURQUOTEVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURQUOTEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURQUOTEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURQUOTEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURTOTALTRADES());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURTOTALTRADESBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURTOTALTRADESSELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURTOTALTRADESUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING24HOURVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_HIGH_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYHIGH());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_LOW_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYLOW());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_OPEN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYOPEN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYQUOTEVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYQUOTEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYQUOTEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYQUOTEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYTOTALTRADES());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYTOTALTRADESBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYTOTALTRADESSELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYTOTALTRADESUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING30DAYVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_HIGH_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYHIGH());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_LOW_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYLOW());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_OPEN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYOPEN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYQUOTEVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYQUOTEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYQUOTEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYQUOTEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYTOTALTRADES());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYTOTALTRADESBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYTOTALTRADESSELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYTOTALTRADESUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING365DAYVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_HIGH_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYHIGH());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_LOW_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYLOW());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_OPEN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYOPEN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYQUOTEVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYQUOTEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYQUOTEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYQUOTEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYTOTALTRADES());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYTOTALTRADESBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYTOTALTRADESSELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYTOTALTRADESUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING7DAYVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_HIGH_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYHIGH());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_LOW_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYLOW());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_OPEN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYOPEN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYQUOTEVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYQUOTEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYQUOTEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYQUOTEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYTOTALTRADES());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYTOTALTRADESBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYTOTALTRADESSELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYTOTALTRADESUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYVOLUME());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYVOLUMESELL());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMOVING90DAYVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_pRICE_is_assigned_from_json()
{
    bourne::json input =
    {
        "pRICE", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getPRICE());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_pRICE_FLAG_is_assigned_from_json()
{


    bourne::json input =
    {
        "pRICE_FLAG", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getPRICEFLAG().c_str());






}


void test_SPOT_INSTRUMENT_MARKET_DATA_pRICE_LAST_UPDATE_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "pRICE_LAST_UPDATE_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getPRICELASTUPDATETS());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_qUOTE_is_assigned_from_json()
{


    bourne::json input =
    {
        "qUOTE", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getQUOTE().c_str());






}


void test_SPOT_INSTRUMENT_MARKET_DATA_tOP_ASK_LAST_UPDATE_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "tOP_ASK_LAST_UPDATE_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTOPASKLASTUPDATETS());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_tOP_ASK_PRICE_is_assigned_from_json()
{
    bourne::json input =
    {
        "tOP_ASK_PRICE", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTOPASKPRICE());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_tOP_ASK_QUANTITY_is_assigned_from_json()
{
    bourne::json input =
    {
        "tOP_ASK_QUANTITY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTOPASKQUANTITY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_tOP_BID_LAST_UPDATE_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "tOP_BID_LAST_UPDATE_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTOPBIDLASTUPDATETS());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_tOP_BID_PRICE_is_assigned_from_json()
{
    bourne::json input =
    {
        "tOP_BID_PRICE", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTOPBIDPRICE());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_tOP_BID_QUANTITY_is_assigned_from_json()
{
    bourne::json input =
    {
        "tOP_BID_QUANTITY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTOPBIDQUANTITY());








}


void test_SPOT_INSTRUMENT_MARKET_DATA_tYPE_is_assigned_from_json()
{


    bourne::json input =
    {
        "tYPE", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getTYPE().c_str());






}



void test_SPOT_INSTRUMENT_MARKET_DATA_bASE_is_converted_to_json()
{

    bourne::json input =
    {
        "bASE", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["bASE"] == output["bASE"]);



}


void test_SPOT_INSTRUMENT_MARKET_DATA_cCSEQ_is_converted_to_json()
{
    bourne::json input =
    {
        "cCSEQ", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cCSEQ"] == output["cCSEQ"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_HIGH_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_HIGH"] == output["cURRENT_DAY_HIGH"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_LOW_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_LOW"] == output["cURRENT_DAY_LOW"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_OPEN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_OPEN"] == output["cURRENT_DAY_OPEN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_QUOTE_VOLUME"] == output["cURRENT_DAY_QUOTE_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_QUOTE_VOLUME_BUY"] == output["cURRENT_DAY_QUOTE_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_QUOTE_VOLUME_SELL"] == output["cURRENT_DAY_QUOTE_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_QUOTE_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_QUOTE_VOLUME_UNKNOWN"] == output["cURRENT_DAY_QUOTE_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_TOTAL_TRADES"] == output["cURRENT_DAY_TOTAL_TRADES"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_TOTAL_TRADES_BUY"] == output["cURRENT_DAY_TOTAL_TRADES_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_TOTAL_TRADES_SELL"] == output["cURRENT_DAY_TOTAL_TRADES_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_TOTAL_TRADES_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_TOTAL_TRADES_UNKNOWN"] == output["cURRENT_DAY_TOTAL_TRADES_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_VOLUME"] == output["cURRENT_DAY_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_VOLUME_BUY"] == output["cURRENT_DAY_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_VOLUME_SELL"] == output["cURRENT_DAY_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_DAY_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_DAY_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_DAY_VOLUME_UNKNOWN"] == output["cURRENT_DAY_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_HIGH_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_HIGH"] == output["cURRENT_HOUR_HIGH"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_LOW_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_LOW"] == output["cURRENT_HOUR_LOW"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_OPEN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_OPEN"] == output["cURRENT_HOUR_OPEN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_QUOTE_VOLUME"] == output["cURRENT_HOUR_QUOTE_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_QUOTE_VOLUME_BUY"] == output["cURRENT_HOUR_QUOTE_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_QUOTE_VOLUME_SELL"] == output["cURRENT_HOUR_QUOTE_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN"] == output["cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_TOTAL_TRADES"] == output["cURRENT_HOUR_TOTAL_TRADES"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_TOTAL_TRADES_BUY"] == output["cURRENT_HOUR_TOTAL_TRADES_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_TOTAL_TRADES_SELL"] == output["cURRENT_HOUR_TOTAL_TRADES_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_TOTAL_TRADES_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_TOTAL_TRADES_UNKNOWN"] == output["cURRENT_HOUR_TOTAL_TRADES_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_VOLUME"] == output["cURRENT_HOUR_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_VOLUME_BUY"] == output["cURRENT_HOUR_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_VOLUME_SELL"] == output["cURRENT_HOUR_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_HOUR_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_HOUR_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_HOUR_VOLUME_UNKNOWN"] == output["cURRENT_HOUR_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_HIGH_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_HIGH"] == output["cURRENT_MONTH_HIGH"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_LOW_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_LOW"] == output["cURRENT_MONTH_LOW"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_OPEN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_OPEN"] == output["cURRENT_MONTH_OPEN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_QUOTE_VOLUME"] == output["cURRENT_MONTH_QUOTE_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_QUOTE_VOLUME_BUY"] == output["cURRENT_MONTH_QUOTE_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_QUOTE_VOLUME_SELL"] == output["cURRENT_MONTH_QUOTE_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN"] == output["cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_TOTAL_TRADES"] == output["cURRENT_MONTH_TOTAL_TRADES"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_TOTAL_TRADES_BUY"] == output["cURRENT_MONTH_TOTAL_TRADES_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_TOTAL_TRADES_SELL"] == output["cURRENT_MONTH_TOTAL_TRADES_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_TOTAL_TRADES_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_TOTAL_TRADES_UNKNOWN"] == output["cURRENT_MONTH_TOTAL_TRADES_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_VOLUME"] == output["cURRENT_MONTH_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_VOLUME_BUY"] == output["cURRENT_MONTH_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_VOLUME_SELL"] == output["cURRENT_MONTH_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_MONTH_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_MONTH_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_MONTH_VOLUME_UNKNOWN"] == output["cURRENT_MONTH_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_HIGH_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_HIGH"] == output["cURRENT_WEEK_HIGH"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_LOW_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_LOW"] == output["cURRENT_WEEK_LOW"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_OPEN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_OPEN"] == output["cURRENT_WEEK_OPEN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_QUOTE_VOLUME"] == output["cURRENT_WEEK_QUOTE_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_QUOTE_VOLUME_BUY"] == output["cURRENT_WEEK_QUOTE_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_QUOTE_VOLUME_SELL"] == output["cURRENT_WEEK_QUOTE_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN"] == output["cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_TOTAL_TRADES"] == output["cURRENT_WEEK_TOTAL_TRADES"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_TOTAL_TRADES_BUY"] == output["cURRENT_WEEK_TOTAL_TRADES_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_TOTAL_TRADES_SELL"] == output["cURRENT_WEEK_TOTAL_TRADES_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_TOTAL_TRADES_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_TOTAL_TRADES_UNKNOWN"] == output["cURRENT_WEEK_TOTAL_TRADES_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_VOLUME"] == output["cURRENT_WEEK_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_VOLUME_BUY"] == output["cURRENT_WEEK_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_VOLUME_SELL"] == output["cURRENT_WEEK_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_WEEK_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_WEEK_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_WEEK_VOLUME_UNKNOWN"] == output["cURRENT_WEEK_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_HIGH_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_HIGH"] == output["cURRENT_YEAR_HIGH"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_LOW_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_LOW"] == output["cURRENT_YEAR_LOW"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_OPEN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_OPEN"] == output["cURRENT_YEAR_OPEN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_QUOTE_VOLUME"] == output["cURRENT_YEAR_QUOTE_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_QUOTE_VOLUME_BUY"] == output["cURRENT_YEAR_QUOTE_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_QUOTE_VOLUME_SELL"] == output["cURRENT_YEAR_QUOTE_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN"] == output["cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_TOTAL_TRADES"] == output["cURRENT_YEAR_TOTAL_TRADES"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_TOTAL_TRADES_BUY"] == output["cURRENT_YEAR_TOTAL_TRADES_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_TOTAL_TRADES_SELL"] == output["cURRENT_YEAR_TOTAL_TRADES_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_TOTAL_TRADES_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_TOTAL_TRADES_UNKNOWN"] == output["cURRENT_YEAR_TOTAL_TRADES_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_VOLUME"] == output["cURRENT_YEAR_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_VOLUME_BUY"] == output["cURRENT_YEAR_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_VOLUME_SELL"] == output["cURRENT_YEAR_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_cURRENT_YEAR_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "cURRENT_YEAR_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cURRENT_YEAR_VOLUME_UNKNOWN"] == output["cURRENT_YEAR_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_iNSTRUMENT_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT"] == output["iNSTRUMENT"]);



}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_CCSEQ_is_converted_to_json()
{

    bourne::json input =
    {
        "lAST_PROCESSED_TRADE_CCSEQ", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_PROCESSED_TRADE_CCSEQ"] == output["lAST_PROCESSED_TRADE_CCSEQ"]);



}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_PRICE_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_PROCESSED_TRADE_PRICE", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_PROCESSED_TRADE_PRICE"] == output["lAST_PROCESSED_TRADE_PRICE"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_QUANTITY_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_PROCESSED_TRADE_QUANTITY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_PROCESSED_TRADE_QUANTITY"] == output["lAST_PROCESSED_TRADE_QUANTITY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_QUOTE_QUANTITY_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_PROCESSED_TRADE_QUOTE_QUANTITY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_PROCESSED_TRADE_QUOTE_QUANTITY"] == output["lAST_PROCESSED_TRADE_QUOTE_QUANTITY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_SIDE_is_converted_to_json()
{

    bourne::json input =
    {
        "lAST_PROCESSED_TRADE_SIDE", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_PROCESSED_TRADE_SIDE"] == output["lAST_PROCESSED_TRADE_SIDE"]);



}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_PROCESSED_TRADE_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_PROCESSED_TRADE_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_PROCESSED_TRADE_TS"] == output["lAST_PROCESSED_TRADE_TS"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_CCSEQ_is_converted_to_json()
{

    bourne::json input =
    {
        "lAST_TRADE_CCSEQ", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_TRADE_CCSEQ"] == output["lAST_TRADE_CCSEQ"]);



}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_ID_is_converted_to_json()
{

    bourne::json input =
    {
        "lAST_TRADE_ID", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_TRADE_ID"] == output["lAST_TRADE_ID"]);



}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_QUANTITY_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_TRADE_QUANTITY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_TRADE_QUANTITY"] == output["lAST_TRADE_QUANTITY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_QUOTE_QUANTITY_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_TRADE_QUOTE_QUANTITY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_TRADE_QUOTE_QUANTITY"] == output["lAST_TRADE_QUOTE_QUANTITY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lAST_TRADE_SIDE_is_converted_to_json()
{

    bourne::json input =
    {
        "lAST_TRADE_SIDE", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_TRADE_SIDE"] == output["lAST_TRADE_SIDE"]);



}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_FIRST_TRADE_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_FIRST_TRADE_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_FIRST_TRADE_TS"] == output["lIFETIME_FIRST_TRADE_TS"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_HIGH_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_HIGH"] == output["lIFETIME_HIGH"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_HIGH_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_HIGH_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_HIGH_TS"] == output["lIFETIME_HIGH_TS"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_LOW_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_LOW"] == output["lIFETIME_LOW"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_LOW_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_LOW_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_LOW_TS"] == output["lIFETIME_LOW_TS"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_OPEN_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_OPEN"] == output["lIFETIME_OPEN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_QUOTE_VOLUME"] == output["lIFETIME_QUOTE_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_QUOTE_VOLUME_BUY"] == output["lIFETIME_QUOTE_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_QUOTE_VOLUME_SELL"] == output["lIFETIME_QUOTE_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_QUOTE_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_QUOTE_VOLUME_UNKNOWN"] == output["lIFETIME_QUOTE_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_TOTAL_TRADES"] == output["lIFETIME_TOTAL_TRADES"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_TOTAL_TRADES_BUY"] == output["lIFETIME_TOTAL_TRADES_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_TOTAL_TRADES_SELL"] == output["lIFETIME_TOTAL_TRADES_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_TOTAL_TRADES_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_TOTAL_TRADES_UNKNOWN"] == output["lIFETIME_TOTAL_TRADES_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_VOLUME"] == output["lIFETIME_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_VOLUME_BUY"] == output["lIFETIME_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_VOLUME_SELL"] == output["lIFETIME_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_lIFETIME_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "lIFETIME_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lIFETIME_VOLUME_UNKNOWN"] == output["lIFETIME_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mAPPED_INSTRUMENT_is_converted_to_json()
{

    bourne::json input =
    {
        "mAPPED_INSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mAPPED_INSTRUMENT"] == output["mAPPED_INSTRUMENT"]);



}


void test_SPOT_INSTRUMENT_MARKET_DATA_mARKET_is_converted_to_json()
{

    bourne::json input =
    {
        "mARKET", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mARKET"] == output["mARKET"]);



}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_HIGH_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_HIGH"] == output["mOVING_180_DAY_HIGH"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_LOW_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_LOW"] == output["mOVING_180_DAY_LOW"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_OPEN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_OPEN"] == output["mOVING_180_DAY_OPEN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_QUOTE_VOLUME"] == output["mOVING_180_DAY_QUOTE_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_QUOTE_VOLUME_BUY"] == output["mOVING_180_DAY_QUOTE_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_QUOTE_VOLUME_SELL"] == output["mOVING_180_DAY_QUOTE_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN"] == output["mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_TOTAL_TRADES"] == output["mOVING_180_DAY_TOTAL_TRADES"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_TOTAL_TRADES_BUY"] == output["mOVING_180_DAY_TOTAL_TRADES_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_TOTAL_TRADES_SELL"] == output["mOVING_180_DAY_TOTAL_TRADES_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_TOTAL_TRADES_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_TOTAL_TRADES_UNKNOWN"] == output["mOVING_180_DAY_TOTAL_TRADES_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_VOLUME"] == output["mOVING_180_DAY_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_VOLUME_BUY"] == output["mOVING_180_DAY_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_VOLUME_SELL"] == output["mOVING_180_DAY_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_180_DAY_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_180_DAY_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_180_DAY_VOLUME_UNKNOWN"] == output["mOVING_180_DAY_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_HIGH_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_HIGH"] == output["mOVING_24_HOUR_HIGH"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_LOW_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_LOW"] == output["mOVING_24_HOUR_LOW"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_OPEN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_OPEN"] == output["mOVING_24_HOUR_OPEN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_QUOTE_VOLUME"] == output["mOVING_24_HOUR_QUOTE_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_QUOTE_VOLUME_BUY"] == output["mOVING_24_HOUR_QUOTE_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_QUOTE_VOLUME_SELL"] == output["mOVING_24_HOUR_QUOTE_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN"] == output["mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_TOTAL_TRADES"] == output["mOVING_24_HOUR_TOTAL_TRADES"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_TOTAL_TRADES_BUY"] == output["mOVING_24_HOUR_TOTAL_TRADES_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_TOTAL_TRADES_SELL"] == output["mOVING_24_HOUR_TOTAL_TRADES_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN"] == output["mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_VOLUME"] == output["mOVING_24_HOUR_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_VOLUME_BUY"] == output["mOVING_24_HOUR_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_VOLUME_SELL"] == output["mOVING_24_HOUR_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_24_HOUR_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_24_HOUR_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_24_HOUR_VOLUME_UNKNOWN"] == output["mOVING_24_HOUR_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_HIGH_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_HIGH"] == output["mOVING_30_DAY_HIGH"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_LOW_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_LOW"] == output["mOVING_30_DAY_LOW"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_OPEN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_OPEN"] == output["mOVING_30_DAY_OPEN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_QUOTE_VOLUME"] == output["mOVING_30_DAY_QUOTE_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_QUOTE_VOLUME_BUY"] == output["mOVING_30_DAY_QUOTE_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_QUOTE_VOLUME_SELL"] == output["mOVING_30_DAY_QUOTE_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN"] == output["mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_TOTAL_TRADES"] == output["mOVING_30_DAY_TOTAL_TRADES"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_TOTAL_TRADES_BUY"] == output["mOVING_30_DAY_TOTAL_TRADES_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_TOTAL_TRADES_SELL"] == output["mOVING_30_DAY_TOTAL_TRADES_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_TOTAL_TRADES_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_TOTAL_TRADES_UNKNOWN"] == output["mOVING_30_DAY_TOTAL_TRADES_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_VOLUME"] == output["mOVING_30_DAY_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_VOLUME_BUY"] == output["mOVING_30_DAY_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_VOLUME_SELL"] == output["mOVING_30_DAY_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_30_DAY_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_30_DAY_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_30_DAY_VOLUME_UNKNOWN"] == output["mOVING_30_DAY_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_HIGH_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_HIGH"] == output["mOVING_365_DAY_HIGH"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_LOW_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_LOW"] == output["mOVING_365_DAY_LOW"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_OPEN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_OPEN"] == output["mOVING_365_DAY_OPEN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_QUOTE_VOLUME"] == output["mOVING_365_DAY_QUOTE_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_QUOTE_VOLUME_BUY"] == output["mOVING_365_DAY_QUOTE_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_QUOTE_VOLUME_SELL"] == output["mOVING_365_DAY_QUOTE_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN"] == output["mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_TOTAL_TRADES"] == output["mOVING_365_DAY_TOTAL_TRADES"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_TOTAL_TRADES_BUY"] == output["mOVING_365_DAY_TOTAL_TRADES_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_TOTAL_TRADES_SELL"] == output["mOVING_365_DAY_TOTAL_TRADES_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_TOTAL_TRADES_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_TOTAL_TRADES_UNKNOWN"] == output["mOVING_365_DAY_TOTAL_TRADES_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_VOLUME"] == output["mOVING_365_DAY_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_VOLUME_BUY"] == output["mOVING_365_DAY_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_VOLUME_SELL"] == output["mOVING_365_DAY_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_365_DAY_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_365_DAY_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_365_DAY_VOLUME_UNKNOWN"] == output["mOVING_365_DAY_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_HIGH_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_HIGH"] == output["mOVING_7_DAY_HIGH"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_LOW_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_LOW"] == output["mOVING_7_DAY_LOW"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_OPEN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_OPEN"] == output["mOVING_7_DAY_OPEN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_QUOTE_VOLUME"] == output["mOVING_7_DAY_QUOTE_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_QUOTE_VOLUME_BUY"] == output["mOVING_7_DAY_QUOTE_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_QUOTE_VOLUME_SELL"] == output["mOVING_7_DAY_QUOTE_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN"] == output["mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_TOTAL_TRADES"] == output["mOVING_7_DAY_TOTAL_TRADES"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_TOTAL_TRADES_BUY"] == output["mOVING_7_DAY_TOTAL_TRADES_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_TOTAL_TRADES_SELL"] == output["mOVING_7_DAY_TOTAL_TRADES_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_TOTAL_TRADES_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_TOTAL_TRADES_UNKNOWN"] == output["mOVING_7_DAY_TOTAL_TRADES_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_VOLUME"] == output["mOVING_7_DAY_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_VOLUME_BUY"] == output["mOVING_7_DAY_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_VOLUME_SELL"] == output["mOVING_7_DAY_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_7_DAY_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_7_DAY_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_7_DAY_VOLUME_UNKNOWN"] == output["mOVING_7_DAY_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_HIGH_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_HIGH", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_HIGH"] == output["mOVING_90_DAY_HIGH"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_LOW_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_LOW", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_LOW"] == output["mOVING_90_DAY_LOW"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_OPEN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_OPEN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_OPEN"] == output["mOVING_90_DAY_OPEN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_QUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_QUOTE_VOLUME"] == output["mOVING_90_DAY_QUOTE_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_QUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_QUOTE_VOLUME_BUY"] == output["mOVING_90_DAY_QUOTE_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_QUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_QUOTE_VOLUME_SELL"] == output["mOVING_90_DAY_QUOTE_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN"] == output["mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_TOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_TOTAL_TRADES"] == output["mOVING_90_DAY_TOTAL_TRADES"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_TOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_TOTAL_TRADES_BUY"] == output["mOVING_90_DAY_TOTAL_TRADES_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_TOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_TOTAL_TRADES_SELL"] == output["mOVING_90_DAY_TOTAL_TRADES_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_TOTAL_TRADES_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_TOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_TOTAL_TRADES_UNKNOWN"] == output["mOVING_90_DAY_TOTAL_TRADES_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_VOLUME", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_VOLUME"] == output["mOVING_90_DAY_VOLUME"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_VOLUME_BUY"] == output["mOVING_90_DAY_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_VOLUME_SELL"] == output["mOVING_90_DAY_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_mOVING_90_DAY_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "mOVING_90_DAY_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mOVING_90_DAY_VOLUME_UNKNOWN"] == output["mOVING_90_DAY_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_pRICE_is_converted_to_json()
{
    bourne::json input =
    {
        "pRICE", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["pRICE"] == output["pRICE"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_pRICE_FLAG_is_converted_to_json()
{

    bourne::json input =
    {
        "pRICE_FLAG", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["pRICE_FLAG"] == output["pRICE_FLAG"]);



}


void test_SPOT_INSTRUMENT_MARKET_DATA_pRICE_LAST_UPDATE_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "pRICE_LAST_UPDATE_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["pRICE_LAST_UPDATE_TS"] == output["pRICE_LAST_UPDATE_TS"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_qUOTE_is_converted_to_json()
{

    bourne::json input =
    {
        "qUOTE", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["qUOTE"] == output["qUOTE"]);



}


void test_SPOT_INSTRUMENT_MARKET_DATA_tOP_ASK_LAST_UPDATE_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "tOP_ASK_LAST_UPDATE_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tOP_ASK_LAST_UPDATE_TS"] == output["tOP_ASK_LAST_UPDATE_TS"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_tOP_ASK_PRICE_is_converted_to_json()
{
    bourne::json input =
    {
        "tOP_ASK_PRICE", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tOP_ASK_PRICE"] == output["tOP_ASK_PRICE"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_tOP_ASK_QUANTITY_is_converted_to_json()
{
    bourne::json input =
    {
        "tOP_ASK_QUANTITY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tOP_ASK_QUANTITY"] == output["tOP_ASK_QUANTITY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_tOP_BID_LAST_UPDATE_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "tOP_BID_LAST_UPDATE_TS", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tOP_BID_LAST_UPDATE_TS"] == output["tOP_BID_LAST_UPDATE_TS"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_tOP_BID_PRICE_is_converted_to_json()
{
    bourne::json input =
    {
        "tOP_BID_PRICE", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tOP_BID_PRICE"] == output["tOP_BID_PRICE"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_tOP_BID_QUANTITY_is_converted_to_json()
{
    bourne::json input =
    {
        "tOP_BID_QUANTITY", 1
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tOP_BID_QUANTITY"] == output["tOP_BID_QUANTITY"]);




}


void test_SPOT_INSTRUMENT_MARKET_DATA_tYPE_is_converted_to_json()
{

    bourne::json input =
    {
        "tYPE", "hello"
    };

    SPOT_INSTRUMENT_MARKET_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tYPE"] == output["tYPE"]);



}


