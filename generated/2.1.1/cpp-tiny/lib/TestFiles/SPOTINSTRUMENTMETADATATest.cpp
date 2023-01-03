
#include "SPOT_INSTRUMENT_METADATA.h"

using namespace Tiny;

#include <string>
#include <list>
#include <unity.h>
#include "bourne/json.hpp"



void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_BLOB_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_BLOB_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFIRSTSEENONBLOBTS());








}


void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_FIX_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_FIX_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFIRSTSEENONFIXTS());








}


void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_HARDCODED_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_HARDCODED_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFIRSTSEENONHARDCODEDTS());








}


void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_INDEX_COMPOSITION_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_INDEX_COMPOSITION_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFIRSTSEENONINDEXCOMPOSITIONTS());








}


void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_NSQ_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_NSQ_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFIRSTSEENONNSQTS());








}


void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_POLLING_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_POLLING_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFIRSTSEENONPOLLINGTS());








}


void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_STREAMING_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_STREAMING_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getFIRSTSEENONSTREAMINGTS());








}
















void test_SPOT_INSTRUMENT_METADATA_hOST_MIGRATION_DESTINATION_is_assigned_from_json()
{


    bourne::json input =
    {
        "hOST_MIGRATION_DESTINATION", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getHOSTMIGRATIONDESTINATION().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_hOST_MIGRATION_SOURCE_is_assigned_from_json()
{


    bourne::json input =
    {
        "hOST_MIGRATION_SOURCE", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getHOSTMIGRATIONSOURCE().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_hOST_MIGRATION_STATUS_is_assigned_from_json()
{


    bourne::json input =
    {
        "hOST_MIGRATION_STATUS", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getHOSTMIGRATIONSTATUS().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENT().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_EXTERNAL_DATA_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT_EXTERNAL_DATA", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENTEXTERNALDATA().c_str());






}




void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_BACKFILL_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_BACKFILL", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENTSOURCEBACKFILL().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_BLOB_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_BLOB", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENTSOURCEBLOB().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_CALCULATED_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_CALCULATED", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENTSOURCECALCULATED().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_FIX_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_FIX", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENTSOURCEFIX().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_GO_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_GO", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENTSOURCEGO().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_POLLING_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_POLLING", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENTSOURCEPOLLING().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_STREAMING_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_STREAMING", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENTSOURCESTREAMING().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_STATUS_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT_STATUS", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENTSTATUS().c_str());






}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS());








}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS());








}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS());








}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS());








}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS());








}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS());








}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS());








}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION_is_assigned_from_json()
{




    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION", true
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT(true == obj.isINSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION());




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_REST_URI_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_REST_URI", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENTTRADESPOTRESTURI().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_REST_URL_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_REST_URL", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENTTRADESPOTRESTURL().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION_is_assigned_from_json()
{


    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getINSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTCONCURRENTBATCHOFTRADESSPOTMS());








}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_BLOB_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_BLOB_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTSEENONBLOBTS());








}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_FIX_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_FIX_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTSEENONFIXTS());








}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_HARDCODED_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_HARDCODED_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTSEENONHARDCODEDTS());








}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_INDEX_COMPOSITION_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_INDEX_COMPOSITION_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTSEENONINDEXCOMPOSITIONTS());








}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_NSQ_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_NSQ_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTSEENONNSQTS());








}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_POLLING_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_POLLING_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTSEENONPOLLINGTS());








}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_STREAMING_TS_is_assigned_from_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_STREAMING_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getLASTSEENONSTREAMINGTS());








}
















void test_SPOT_INSTRUMENT_METADATA_mETADATA_VERSION_is_assigned_from_json()
{
    bourne::json input =
    {
        "mETADATA_VERSION", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getMETADATAVERSION());








}


void test_SPOT_INSTRUMENT_METADATA_pROCESSING_TRADES_FROM_BLOB_STATUS_is_assigned_from_json()
{


    bourne::json input =
    {
        "pROCESSING_TRADES_FROM_BLOB_STATUS", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_STRING("hello", obj.getPROCESSINGTRADESFROMBLOBSTATUS().c_str());






}


void test_SPOT_INSTRUMENT_METADATA_tOTAL_TRADES_SPOT_is_assigned_from_json()
{
    bourne::json input =
    {
        "tOTAL_TRADES_SPOT", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    TEST_ASSERT_EQUAL_INT(1, obj.getTOTALTRADESSPOT());








}










void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_BLOB_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_BLOB_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fIRST_SEEN_ON_BLOB_TS"] == output["fIRST_SEEN_ON_BLOB_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_FIX_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_FIX_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fIRST_SEEN_ON_FIX_TS"] == output["fIRST_SEEN_ON_FIX_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_HARDCODED_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_HARDCODED_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fIRST_SEEN_ON_HARDCODED_TS"] == output["fIRST_SEEN_ON_HARDCODED_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_INDEX_COMPOSITION_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_INDEX_COMPOSITION_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fIRST_SEEN_ON_INDEX_COMPOSITION_TS"] == output["fIRST_SEEN_ON_INDEX_COMPOSITION_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_NSQ_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_NSQ_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fIRST_SEEN_ON_NSQ_TS"] == output["fIRST_SEEN_ON_NSQ_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_POLLING_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_POLLING_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fIRST_SEEN_ON_POLLING_TS"] == output["fIRST_SEEN_ON_POLLING_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_fIRST_SEEN_ON_STREAMING_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "fIRST_SEEN_ON_STREAMING_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["fIRST_SEEN_ON_STREAMING_TS"] == output["fIRST_SEEN_ON_STREAMING_TS"]);




}
















void test_SPOT_INSTRUMENT_METADATA_hOST_MIGRATION_DESTINATION_is_converted_to_json()
{

    bourne::json input =
    {
        "hOST_MIGRATION_DESTINATION", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["hOST_MIGRATION_DESTINATION"] == output["hOST_MIGRATION_DESTINATION"]);



}


void test_SPOT_INSTRUMENT_METADATA_hOST_MIGRATION_SOURCE_is_converted_to_json()
{

    bourne::json input =
    {
        "hOST_MIGRATION_SOURCE", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["hOST_MIGRATION_SOURCE"] == output["hOST_MIGRATION_SOURCE"]);



}


void test_SPOT_INSTRUMENT_METADATA_hOST_MIGRATION_STATUS_is_converted_to_json()
{

    bourne::json input =
    {
        "hOST_MIGRATION_STATUS", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["hOST_MIGRATION_STATUS"] == output["hOST_MIGRATION_STATUS"]);



}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT"] == output["iNSTRUMENT"]);



}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_EXTERNAL_DATA_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT_EXTERNAL_DATA", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_EXTERNAL_DATA"] == output["iNSTRUMENT_EXTERNAL_DATA"]);



}




void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_BACKFILL_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_BACKFILL", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_SOURCE_BACKFILL"] == output["iNSTRUMENT_SOURCE_BACKFILL"]);



}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_BLOB_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_BLOB", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_SOURCE_BLOB"] == output["iNSTRUMENT_SOURCE_BLOB"]);



}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_CALCULATED_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_CALCULATED", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_SOURCE_CALCULATED"] == output["iNSTRUMENT_SOURCE_CALCULATED"]);



}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_FIX_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_FIX", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_SOURCE_FIX"] == output["iNSTRUMENT_SOURCE_FIX"]);



}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_GO_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_GO", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_SOURCE_GO"] == output["iNSTRUMENT_SOURCE_GO"]);



}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_POLLING_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_POLLING", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_SOURCE_POLLING"] == output["iNSTRUMENT_SOURCE_POLLING"]);



}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_SOURCE_STREAMING_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT_SOURCE_STREAMING", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_SOURCE_STREAMING"] == output["iNSTRUMENT_SOURCE_STREAMING"]);



}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_STATUS_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT_STATUS", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_STATUS"] == output["iNSTRUMENT_STATUS"]);



}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS"]);




}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS"]);




}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS"]);




}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS"]);




}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS"]);




}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS"]);




}



void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS"] == output["iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION_is_converted_to_json()
{


    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION", true
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION"] == output["iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION"]);


}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_REST_URI_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_REST_URI", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_REST_URI"] == output["iNSTRUMENT_TRADE_SPOT_REST_URI"]);



}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_REST_URL_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_REST_URL", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_REST_URL"] == output["iNSTRUMENT_TRADE_SPOT_REST_URL"]);



}


void test_SPOT_INSTRUMENT_METADATA_iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION_is_converted_to_json()
{

    bourne::json input =
    {
        "iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION"] == output["iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION"]);



}


void test_SPOT_INSTRUMENT_METADATA_lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS"] == output["lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS"]);




}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_BLOB_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_BLOB_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_SEEN_ON_BLOB_TS"] == output["lAST_SEEN_ON_BLOB_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_FIX_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_FIX_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_SEEN_ON_FIX_TS"] == output["lAST_SEEN_ON_FIX_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_HARDCODED_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_HARDCODED_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_SEEN_ON_HARDCODED_TS"] == output["lAST_SEEN_ON_HARDCODED_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_INDEX_COMPOSITION_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_INDEX_COMPOSITION_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_SEEN_ON_INDEX_COMPOSITION_TS"] == output["lAST_SEEN_ON_INDEX_COMPOSITION_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_NSQ_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_NSQ_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_SEEN_ON_NSQ_TS"] == output["lAST_SEEN_ON_NSQ_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_POLLING_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_POLLING_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_SEEN_ON_POLLING_TS"] == output["lAST_SEEN_ON_POLLING_TS"]);




}


void test_SPOT_INSTRUMENT_METADATA_lAST_SEEN_ON_STREAMING_TS_is_converted_to_json()
{
    bourne::json input =
    {
        "lAST_SEEN_ON_STREAMING_TS", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["lAST_SEEN_ON_STREAMING_TS"] == output["lAST_SEEN_ON_STREAMING_TS"]);




}
















void test_SPOT_INSTRUMENT_METADATA_mETADATA_VERSION_is_converted_to_json()
{
    bourne::json input =
    {
        "mETADATA_VERSION", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["mETADATA_VERSION"] == output["mETADATA_VERSION"]);




}


void test_SPOT_INSTRUMENT_METADATA_pROCESSING_TRADES_FROM_BLOB_STATUS_is_converted_to_json()
{

    bourne::json input =
    {
        "pROCESSING_TRADES_FROM_BLOB_STATUS", "hello"
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["pROCESSING_TRADES_FROM_BLOB_STATUS"] == output["pROCESSING_TRADES_FROM_BLOB_STATUS"]);



}


void test_SPOT_INSTRUMENT_METADATA_tOTAL_TRADES_SPOT_is_converted_to_json()
{
    bourne::json input =
    {
        "tOTAL_TRADES_SPOT", 1
    };

    SPOT_INSTRUMENT_METADATA obj(input.dump());

    bourne::json output = bourne::json::object();

    output = obj.toJson();

    TEST_ASSERT(input["tOTAL_TRADES_SPOT"] == output["tOTAL_TRADES_SPOT"]);




}









