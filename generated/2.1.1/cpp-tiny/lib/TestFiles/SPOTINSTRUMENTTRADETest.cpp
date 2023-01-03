
#include "SPOT_INSTRUMENT_TRADE.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_SPOT_INSTRUMENT_TRADE_bASE_is_assigned_from_json()
{


    bourne::json input =
    {
        "bASE", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getBASE().c_str());






}


void test_SPOT_INSTRUMENT_TRADE_cCSEQ_is_assigned_from_json()
{
    bourne::json input =
    {
        "cCSEQ", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getCCSEQ());








}


void test_SPOT_INSTRUMENT_TRADE_iD_is_assigned_from_json()
{


    bourne::json input =
    {
        "iD", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getID().c_str());






}


void test_SPOT_INSTRUMENT_TRADE_iNSTRUMENT_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENT().c_str());






}


void test_SPOT_INSTRUMENT_TRADE_mAPPED_INSTRUMENT_is_assigned_from_json()
{


    bourne::json input =
    {
        "mAPPED_INSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getMAPPEDINSTRUMENT().c_str());






}


void test_SPOT_INSTRUMENT_TRADE_mARKET_is_assigned_from_json()
{


    bourne::json input =
    {
        "mARKET", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getMARKET().c_str());






}


void test_SPOT_INSTRUMENT_TRADE_pRICE_is_assigned_from_json()
{
    bourne::json input =
    {
        "pRICE", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getPRICE());








}


void test_SPOT_INSTRUMENT_TRADE_qUANTITY_is_assigned_from_json()
{
    bourne::json input =
    {
        "qUANTITY", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getQUANTITY());








}


void test_SPOT_INSTRUMENT_TRADE_qUOTE_is_assigned_from_json()
{


    bourne::json input =
    {
        "qUOTE", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getQUOTE().c_str());






}


void test_SPOT_INSTRUMENT_TRADE_qUOTE_QUANTITY_is_assigned_from_json()
{
    bourne::json input =
    {
        "qUOTE_QUANTITY", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getQUOTEQUANTITY());








}


void test_SPOT_INSTRUMENT_TRADE_rECEIVED_TIMESTAMP_is_assigned_from_json()
{
    bourne::json input =
    {
        "rECEIVED_TIMESTAMP", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRECEIVEDTIMESTAMP());








}


void test_SPOT_INSTRUMENT_TRADE_rECEIVED_TIMESTAMP_NS_is_assigned_from_json()
{
    bourne::json input =
    {
        "rECEIVED_TIMESTAMP_NS", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getRECEIVEDTIMESTAMPNS());








}


void test_SPOT_INSTRUMENT_TRADE_sIDE_is_assigned_from_json()
{


    bourne::json input =
    {
        "sIDE", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSIDE().c_str());






}


void test_SPOT_INSTRUMENT_TRADE_sOURCE_is_assigned_from_json()
{


    bourne::json input =
    {
        "sOURCE", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getSOURCE().c_str());






}


void test_SPOT_INSTRUMENT_TRADE_tIMESTAMP_is_assigned_from_json()
{
    bourne::json input =
    {
        "tIMESTAMP", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTIMESTAMP());








}


void test_SPOT_INSTRUMENT_TRADE_tIMESTAMP_NS_is_assigned_from_json()
{
    bourne::json input =
    {
        "tIMESTAMP_NS", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTIMESTAMPNS());








}


void test_SPOT_INSTRUMENT_TRADE_tYPE_is_assigned_from_json()
{


    bourne::json input =
    {
        "tYPE", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getTYPE().c_str());






}



void test_SPOT_INSTRUMENT_TRADE_bASE_is_converted_to_json()
{

    bourne::json input =
    {
        "bASE", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["bASE"] == output["bASE"]);



}


void test_SPOT_INSTRUMENT_TRADE_cCSEQ_is_converted_to_json()
{
    bourne::json input =
    {
        "cCSEQ", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["cCSEQ"] == output["cCSEQ"]);




}


void test_SPOT_INSTRUMENT_TRADE_iD_is_converted_to_json()
{

    bourne::json input =
    {
        "iD", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iD"] == output["iD"]);



}


void test_SPOT_INSTRUMENT_TRADE_iNSTRUMENT_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT"] == output["iNSTRUMENT"]);



}


void test_SPOT_INSTRUMENT_TRADE_mAPPED_INSTRUMENT_is_converted_to_json()
{

    bourne::json input =
    {
        "mAPPED_INSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mAPPED_INSTRUMENT"] == output["mAPPED_INSTRUMENT"]);



}


void test_SPOT_INSTRUMENT_TRADE_mARKET_is_converted_to_json()
{

    bourne::json input =
    {
        "mARKET", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mARKET"] == output["mARKET"]);



}


void test_SPOT_INSTRUMENT_TRADE_pRICE_is_converted_to_json()
{
    bourne::json input =
    {
        "pRICE", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["pRICE"] == output["pRICE"]);




}


void test_SPOT_INSTRUMENT_TRADE_qUANTITY_is_converted_to_json()
{
    bourne::json input =
    {
        "qUANTITY", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["qUANTITY"] == output["qUANTITY"]);




}


void test_SPOT_INSTRUMENT_TRADE_qUOTE_is_converted_to_json()
{

    bourne::json input =
    {
        "qUOTE", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["qUOTE"] == output["qUOTE"]);



}


void test_SPOT_INSTRUMENT_TRADE_qUOTE_QUANTITY_is_converted_to_json()
{
    bourne::json input =
    {
        "qUOTE_QUANTITY", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["qUOTE_QUANTITY"] == output["qUOTE_QUANTITY"]);




}


void test_SPOT_INSTRUMENT_TRADE_rECEIVED_TIMESTAMP_is_converted_to_json()
{
    bourne::json input =
    {
        "rECEIVED_TIMESTAMP", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["rECEIVED_TIMESTAMP"] == output["rECEIVED_TIMESTAMP"]);




}


void test_SPOT_INSTRUMENT_TRADE_rECEIVED_TIMESTAMP_NS_is_converted_to_json()
{
    bourne::json input =
    {
        "rECEIVED_TIMESTAMP_NS", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["rECEIVED_TIMESTAMP_NS"] == output["rECEIVED_TIMESTAMP_NS"]);




}


void test_SPOT_INSTRUMENT_TRADE_sIDE_is_converted_to_json()
{

    bourne::json input =
    {
        "sIDE", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["sIDE"] == output["sIDE"]);



}


void test_SPOT_INSTRUMENT_TRADE_sOURCE_is_converted_to_json()
{

    bourne::json input =
    {
        "sOURCE", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["sOURCE"] == output["sOURCE"]);



}


void test_SPOT_INSTRUMENT_TRADE_tIMESTAMP_is_converted_to_json()
{
    bourne::json input =
    {
        "tIMESTAMP", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tIMESTAMP"] == output["tIMESTAMP"]);




}


void test_SPOT_INSTRUMENT_TRADE_tIMESTAMP_NS_is_converted_to_json()
{
    bourne::json input =
    {
        "tIMESTAMP_NS", 1
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tIMESTAMP_NS"] == output["tIMESTAMP_NS"]);




}


void test_SPOT_INSTRUMENT_TRADE_tYPE_is_converted_to_json()
{

    bourne::json input =
    {
        "tYPE", "hello"
    };

    SPOT_INSTRUMENT_TRADE obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tYPE"] == output["tYPE"]);



}


