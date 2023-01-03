
#include "SPOT_INSTRUMENT_HISTO_DATA.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_SPOT_INSTRUMENT_HISTO_DATA_bASE_is_assigned_from_json()
{


    bourne::json input =
    {
        "bASE", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getBASE().c_str());






}


void test_SPOT_INSTRUMENT_HISTO_DATA_cLOSE_is_assigned_from_json()
{
    bourne::json input =
    {
        "cLOSE", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCLOSE());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_fIRST_TRADE_PRICE_is_assigned_from_json()
{
    bourne::json input =
    {
        "fIRST_TRADE_PRICE", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFIRSTTRADEPRICE());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_fIRST_TRADE_TIMESTAMP_is_assigned_from_json()
{
    bourne::json input =
    {
        "fIRST_TRADE_TIMESTAMP", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFIRSTTRADETIMESTAMP());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_hIGH_is_assigned_from_json()
{
    bourne::json input =
    {
        "hIGH", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getHIGH());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_hIGH_TRADE_PRICE_is_assigned_from_json()
{
    bourne::json input =
    {
        "hIGH_TRADE_PRICE", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getHIGHTRADEPRICE());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_hIGH_TRADE_TIMESTAMP_is_assigned_from_json()
{
    bourne::json input =
    {
        "hIGH_TRADE_TIMESTAMP", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getHIGHTRADETIMESTAMP());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_iNSTRUMENT_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENT().c_str());






}


void test_SPOT_INSTRUMENT_HISTO_DATA_lAST_TRADE_PRICE_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_TRADE_PRICE", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTTRADEPRICE());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_lAST_TRADE_TIMESTAMP_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_TRADE_TIMESTAMP", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTTRADETIMESTAMP());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_lOW_is_assigned_from_json()
{
    bourne::json input =
    {
        "lOW", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLOW());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_lOW_TRADE_PRICE_is_assigned_from_json()
{
    bourne::json input =
    {
        "lOW_TRADE_PRICE", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLOWTRADEPRICE());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_lOW_TRADE_TIMESTAMP_is_assigned_from_json()
{
    bourne::json input =
    {
        "lOW_TRADE_TIMESTAMP", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLOWTRADETIMESTAMP());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_mAPPED_INSTRUMENT_is_assigned_from_json()
{


    bourne::json input =
    {
        "mAPPED_INSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getMAPPEDINSTRUMENT().c_str());






}


void test_SPOT_INSTRUMENT_HISTO_DATA_mARKET_is_assigned_from_json()
{


    bourne::json input =
    {
        "mARKET", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getMARKET().c_str());






}


void test_SPOT_INSTRUMENT_HISTO_DATA_oPEN_is_assigned_from_json()
{
    bourne::json input =
    {
        "oPEN", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getOPEN());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_is_assigned_from_json()
{


    bourne::json input =
    {
        "qUOTE", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getQUOTE().c_str());






}


void test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "qUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getQUOTEVOLUME());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "qUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getQUOTEVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "qUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getQUOTEVOLUMESELL());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "qUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getQUOTEVOLUMEUNKNOWN());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_tIMESTAMP_is_assigned_from_json()
{
    bourne::json input =
    {
        "tIMESTAMP", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTIMESTAMP());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_is_assigned_from_json()
{
    bourne::json input =
    {
        "tOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTOTALTRADES());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "tOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTOTALTRADESBUY());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "tOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTOTALTRADESSELL());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "tOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTOTALTRADESUNKNOWN());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_tYPE_is_assigned_from_json()
{


    bourne::json input =
    {
        "tYPE", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getTYPE().c_str());






}


void test_SPOT_INSTRUMENT_HISTO_DATA_uNIT_is_assigned_from_json()
{


    bourne::json input =
    {
        "uNIT", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getUNIT().c_str());






}


void test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_is_assigned_from_json()
{
    bourne::json input =
    {
        "vOLUME", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getVOLUME());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_BUY_is_assigned_from_json()
{
    bourne::json input =
    {
        "vOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getVOLUMEBUY());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_SELL_is_assigned_from_json()
{
    bourne::json input =
    {
        "vOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getVOLUMESELL());








}


void test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_UNKNOWN_is_assigned_from_json()
{
    bourne::json input =
    {
        "vOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getVOLUMEUNKNOWN());








}



void test_SPOT_INSTRUMENT_HISTO_DATA_bASE_is_converted_to_json()
{

    bourne::json input =
    {
        "bASE", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["bASE"] == output["bASE"]);



}


void test_SPOT_INSTRUMENT_HISTO_DATA_cLOSE_is_converted_to_json()
{
    bourne::json input =
    {
        "cLOSE", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cLOSE"] == output["cLOSE"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_fIRST_TRADE_PRICE_is_converted_to_json()
{
    bourne::json input =
    {
        "fIRST_TRADE_PRICE", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fIRST_TRADE_PRICE"] == output["fIRST_TRADE_PRICE"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_fIRST_TRADE_TIMESTAMP_is_converted_to_json()
{
    bourne::json input =
    {
        "fIRST_TRADE_TIMESTAMP", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fIRST_TRADE_TIMESTAMP"] == output["fIRST_TRADE_TIMESTAMP"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_hIGH_is_converted_to_json()
{
    bourne::json input =
    {
        "hIGH", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["hIGH"] == output["hIGH"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_hIGH_TRADE_PRICE_is_converted_to_json()
{
    bourne::json input =
    {
        "hIGH_TRADE_PRICE", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["hIGH_TRADE_PRICE"] == output["hIGH_TRADE_PRICE"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_hIGH_TRADE_TIMESTAMP_is_converted_to_json()
{
    bourne::json input =
    {
        "hIGH_TRADE_TIMESTAMP", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["hIGH_TRADE_TIMESTAMP"] == output["hIGH_TRADE_TIMESTAMP"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_iNSTRUMENT_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT"] == output["iNSTRUMENT"]);



}


void test_SPOT_INSTRUMENT_HISTO_DATA_lAST_TRADE_PRICE_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_TRADE_PRICE", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_TRADE_PRICE"] == output["lAST_TRADE_PRICE"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_lAST_TRADE_TIMESTAMP_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_TRADE_TIMESTAMP", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_TRADE_TIMESTAMP"] == output["lAST_TRADE_TIMESTAMP"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_lOW_is_converted_to_json()
{
    bourne::json input =
    {
        "lOW", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lOW"] == output["lOW"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_lOW_TRADE_PRICE_is_converted_to_json()
{
    bourne::json input =
    {
        "lOW_TRADE_PRICE", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lOW_TRADE_PRICE"] == output["lOW_TRADE_PRICE"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_lOW_TRADE_TIMESTAMP_is_converted_to_json()
{
    bourne::json input =
    {
        "lOW_TRADE_TIMESTAMP", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lOW_TRADE_TIMESTAMP"] == output["lOW_TRADE_TIMESTAMP"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_mAPPED_INSTRUMENT_is_converted_to_json()
{

    bourne::json input =
    {
        "mAPPED_INSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mAPPED_INSTRUMENT"] == output["mAPPED_INSTRUMENT"]);



}


void test_SPOT_INSTRUMENT_HISTO_DATA_mARKET_is_converted_to_json()
{

    bourne::json input =
    {
        "mARKET", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mARKET"] == output["mARKET"]);



}


void test_SPOT_INSTRUMENT_HISTO_DATA_oPEN_is_converted_to_json()
{
    bourne::json input =
    {
        "oPEN", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["oPEN"] == output["oPEN"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_is_converted_to_json()
{

    bourne::json input =
    {
        "qUOTE", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["qUOTE"] == output["qUOTE"]);



}


void test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "qUOTE_VOLUME", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["qUOTE_VOLUME"] == output["qUOTE_VOLUME"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "qUOTE_VOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["qUOTE_VOLUME_BUY"] == output["qUOTE_VOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "qUOTE_VOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["qUOTE_VOLUME_SELL"] == output["qUOTE_VOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_qUOTE_VOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "qUOTE_VOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["qUOTE_VOLUME_UNKNOWN"] == output["qUOTE_VOLUME_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_tIMESTAMP_is_converted_to_json()
{
    bourne::json input =
    {
        "tIMESTAMP", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tIMESTAMP"] == output["tIMESTAMP"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_is_converted_to_json()
{
    bourne::json input =
    {
        "tOTAL_TRADES", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tOTAL_TRADES"] == output["tOTAL_TRADES"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "tOTAL_TRADES_BUY", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tOTAL_TRADES_BUY"] == output["tOTAL_TRADES_BUY"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "tOTAL_TRADES_SELL", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tOTAL_TRADES_SELL"] == output["tOTAL_TRADES_SELL"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_tOTAL_TRADES_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "tOTAL_TRADES_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tOTAL_TRADES_UNKNOWN"] == output["tOTAL_TRADES_UNKNOWN"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_tYPE_is_converted_to_json()
{

    bourne::json input =
    {
        "tYPE", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tYPE"] == output["tYPE"]);



}


void test_SPOT_INSTRUMENT_HISTO_DATA_uNIT_is_converted_to_json()
{

    bourne::json input =
    {
        "uNIT", "hello"
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["uNIT"] == output["uNIT"]);



}


void test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_is_converted_to_json()
{
    bourne::json input =
    {
        "vOLUME", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["vOLUME"] == output["vOLUME"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_BUY_is_converted_to_json()
{
    bourne::json input =
    {
        "vOLUME_BUY", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["vOLUME_BUY"] == output["vOLUME_BUY"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_SELL_is_converted_to_json()
{
    bourne::json input =
    {
        "vOLUME_SELL", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["vOLUME_SELL"] == output["vOLUME_SELL"]);




}


void test_SPOT_INSTRUMENT_HISTO_DATA_vOLUME_UNKNOWN_is_converted_to_json()
{
    bourne::json input =
    {
        "vOLUME_UNKNOWN", 1
    };

    SPOT_INSTRUMENT_HISTO_DATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["vOLUME_UNKNOWN"] == output["vOLUME_UNKNOWN"]);




}


