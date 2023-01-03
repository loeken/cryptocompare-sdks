

#include "SPOT_INSTRUMENT_METADATA.h"

using namespace Tiny;

SPOT_INSTRUMENT_METADATA::SPOT_INSTRUMENT_METADATA()
{
	fIRST_SEEN_ON_BLOB_TS = int(0);
	fIRST_SEEN_ON_FIX_TS = int(0);
	fIRST_SEEN_ON_HARDCODED_TS = int(0);
	fIRST_SEEN_ON_INDEX_COMPOSITION_TS = int(0);
	fIRST_SEEN_ON_NSQ_TS = int(0);
	fIRST_SEEN_ON_POLLING_TS = int(0);
	fIRST_SEEN_ON_STREAMING_TS = int(0);
	fIRST_TRADE_SPOT_FROM_BACKFILL = null;
	fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = null;
	fIRST_TRADE_SPOT_FROM_BLOB = null;
	fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL = null;
	fIRST_TRADE_SPOT_FROM_CALCULATED = null;
	fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = null;
	fIRST_TRADE_SPOT_FROM_FIX = null;
	fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL = null;
	fIRST_TRADE_SPOT_FROM_GO = null;
	fIRST_TRADE_SPOT_FROM_GO_EXTERNAL = null;
	fIRST_TRADE_SPOT_FROM_POLLING = null;
	fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL = null;
	fIRST_TRADE_SPOT_FROM_STREAMING = null;
	fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = null;
	hOST_MIGRATION_DESTINATION = std::string();
	hOST_MIGRATION_SOURCE = std::string();
	hOST_MIGRATION_STATUS = std::string();
	iNSTRUMENT = std::string();
	iNSTRUMENT_EXTERNAL_DATA = std::string();
	iNSTRUMENT_MAPPING = null;
	iNSTRUMENT_MAPPING_HISTORY = std::list<std::string>();
	iNSTRUMENT_SOURCE_BACKFILL = std::string();
	iNSTRUMENT_SOURCE_BLOB = std::string();
	iNSTRUMENT_SOURCE_CALCULATED = std::string();
	iNSTRUMENT_SOURCE_FIX = std::string();
	iNSTRUMENT_SOURCE_GO = std::string();
	iNSTRUMENT_SOURCE_POLLING = std::string();
	iNSTRUMENT_SOURCE_STREAMING = std::string();
	iNSTRUMENT_STATUS = std::string();
	iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST = null;
	iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST = null;
	iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST = null;
	iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST = null;
	iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST = null;
	iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST = null;
	iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST = null;
	iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS = int(0);
	iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION = bool(false);
	iNSTRUMENT_TRADE_SPOT_REST_URI = std::string();
	iNSTRUMENT_TRADE_SPOT_REST_URL = std::string();
	iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION = std::string();
	lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS = int(0);
	lAST_SEEN_ON_BLOB_TS = int(0);
	lAST_SEEN_ON_FIX_TS = int(0);
	lAST_SEEN_ON_HARDCODED_TS = int(0);
	lAST_SEEN_ON_INDEX_COMPOSITION_TS = int(0);
	lAST_SEEN_ON_NSQ_TS = int(0);
	lAST_SEEN_ON_POLLING_TS = int(0);
	lAST_SEEN_ON_STREAMING_TS = int(0);
	lAST_TRADE_SPOT_FROM_BACKFILL = null;
	lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = null;
	lAST_TRADE_SPOT_FROM_BLOB = null;
	lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL = null;
	lAST_TRADE_SPOT_FROM_CALCULATED = null;
	lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = null;
	lAST_TRADE_SPOT_FROM_FIX = null;
	lAST_TRADE_SPOT_FROM_FIX_EXTERNAL = null;
	lAST_TRADE_SPOT_FROM_GO = null;
	lAST_TRADE_SPOT_FROM_GO_EXTERNAL = null;
	lAST_TRADE_SPOT_FROM_POLLING = null;
	lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL = null;
	lAST_TRADE_SPOT_FROM_STREAMING = null;
	lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = null;
	mETADATA_VERSION = int(0);
	pROCESSING_TRADES_FROM_BLOB_STATUS = std::string();
	tOTAL_TRADES_SPOT = int(0);
	uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA = null;
	uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA = null;
	uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA = null;
	uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA = null;
	uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA = null;
	uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA = null;
	uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA = null;
}

SPOT_INSTRUMENT_METADATA::SPOT_INSTRUMENT_METADATA(std::string jsonString)
{
	this->fromJson(jsonString);
}

SPOT_INSTRUMENT_METADATA::~SPOT_INSTRUMENT_METADATA()
{

}

void
SPOT_INSTRUMENT_METADATA::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *fIRST_SEEN_ON_BLOB_TSKey = "FIRST_SEEN_ON_BLOB_TS";

    if(object.has_key(fIRST_SEEN_ON_BLOB_TSKey))
    {
        bourne::json value = object[fIRST_SEEN_ON_BLOB_TSKey];



        jsonToValue(&fIRST_SEEN_ON_BLOB_TS, value, "int");


    }

    const char *fIRST_SEEN_ON_FIX_TSKey = "FIRST_SEEN_ON_FIX_TS";

    if(object.has_key(fIRST_SEEN_ON_FIX_TSKey))
    {
        bourne::json value = object[fIRST_SEEN_ON_FIX_TSKey];



        jsonToValue(&fIRST_SEEN_ON_FIX_TS, value, "int");


    }

    const char *fIRST_SEEN_ON_HARDCODED_TSKey = "FIRST_SEEN_ON_HARDCODED_TS";

    if(object.has_key(fIRST_SEEN_ON_HARDCODED_TSKey))
    {
        bourne::json value = object[fIRST_SEEN_ON_HARDCODED_TSKey];



        jsonToValue(&fIRST_SEEN_ON_HARDCODED_TS, value, "int");


    }

    const char *fIRST_SEEN_ON_INDEX_COMPOSITION_TSKey = "FIRST_SEEN_ON_INDEX_COMPOSITION_TS";

    if(object.has_key(fIRST_SEEN_ON_INDEX_COMPOSITION_TSKey))
    {
        bourne::json value = object[fIRST_SEEN_ON_INDEX_COMPOSITION_TSKey];



        jsonToValue(&fIRST_SEEN_ON_INDEX_COMPOSITION_TS, value, "int");


    }

    const char *fIRST_SEEN_ON_NSQ_TSKey = "FIRST_SEEN_ON_NSQ_TS";

    if(object.has_key(fIRST_SEEN_ON_NSQ_TSKey))
    {
        bourne::json value = object[fIRST_SEEN_ON_NSQ_TSKey];



        jsonToValue(&fIRST_SEEN_ON_NSQ_TS, value, "int");


    }

    const char *fIRST_SEEN_ON_POLLING_TSKey = "FIRST_SEEN_ON_POLLING_TS";

    if(object.has_key(fIRST_SEEN_ON_POLLING_TSKey))
    {
        bourne::json value = object[fIRST_SEEN_ON_POLLING_TSKey];



        jsonToValue(&fIRST_SEEN_ON_POLLING_TS, value, "int");


    }

    const char *fIRST_SEEN_ON_STREAMING_TSKey = "FIRST_SEEN_ON_STREAMING_TS";

    if(object.has_key(fIRST_SEEN_ON_STREAMING_TSKey))
    {
        bourne::json value = object[fIRST_SEEN_ON_STREAMING_TSKey];



        jsonToValue(&fIRST_SEEN_ON_STREAMING_TS, value, "int");


    }

    const char *fIRST_TRADE_SPOT_FROM_BACKFILLKey = "FIRST_TRADE_SPOT_FROM_BACKFILL";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_BACKFILLKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_BACKFILLKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_BACKFILL;
		obj->fromJson(value.dump());

    }

    const char *fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *fIRST_TRADE_SPOT_FROM_BLOBKey = "FIRST_TRADE_SPOT_FROM_BLOB";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_BLOBKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_BLOBKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_BLOB;
		obj->fromJson(value.dump());

    }

    const char *fIRST_TRADE_SPOT_FROM_BLOB_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_BLOB_EXTERNALKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_BLOB_EXTERNALKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *fIRST_TRADE_SPOT_FROM_CALCULATEDKey = "FIRST_TRADE_SPOT_FROM_CALCULATED";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_CALCULATEDKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_CALCULATEDKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_CALCULATED;
		obj->fromJson(value.dump());

    }

    const char *fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *fIRST_TRADE_SPOT_FROM_FIXKey = "FIRST_TRADE_SPOT_FROM_FIX";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_FIXKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_FIXKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_FIX;
		obj->fromJson(value.dump());

    }

    const char *fIRST_TRADE_SPOT_FROM_FIX_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_FIX_EXTERNALKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_FIX_EXTERNALKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *fIRST_TRADE_SPOT_FROM_GOKey = "FIRST_TRADE_SPOT_FROM_GO";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_GOKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_GOKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_GO;
		obj->fromJson(value.dump());

    }

    const char *fIRST_TRADE_SPOT_FROM_GO_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_GO_EXTERNAL";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_GO_EXTERNALKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_GO_EXTERNALKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_GO_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *fIRST_TRADE_SPOT_FROM_POLLINGKey = "FIRST_TRADE_SPOT_FROM_POLLING";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_POLLINGKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_POLLINGKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_POLLING;
		obj->fromJson(value.dump());

    }

    const char *fIRST_TRADE_SPOT_FROM_POLLING_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_POLLING_EXTERNALKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_POLLING_EXTERNALKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *fIRST_TRADE_SPOT_FROM_STREAMINGKey = "FIRST_TRADE_SPOT_FROM_STREAMING";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_STREAMINGKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_STREAMINGKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_STREAMING;
		obj->fromJson(value.dump());

    }

    const char *fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL";

    if(object.has_key(fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey))
    {
        bourne::json value = object[fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey];




        Object* obj = &fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *hOST_MIGRATION_DESTINATIONKey = "HOST_MIGRATION_DESTINATION";

    if(object.has_key(hOST_MIGRATION_DESTINATIONKey))
    {
        bourne::json value = object[hOST_MIGRATION_DESTINATIONKey];



        jsonToValue(&hOST_MIGRATION_DESTINATION, value, "std::string");


    }

    const char *hOST_MIGRATION_SOURCEKey = "HOST_MIGRATION_SOURCE";

    if(object.has_key(hOST_MIGRATION_SOURCEKey))
    {
        bourne::json value = object[hOST_MIGRATION_SOURCEKey];



        jsonToValue(&hOST_MIGRATION_SOURCE, value, "std::string");


    }

    const char *hOST_MIGRATION_STATUSKey = "HOST_MIGRATION_STATUS";

    if(object.has_key(hOST_MIGRATION_STATUSKey))
    {
        bourne::json value = object[hOST_MIGRATION_STATUSKey];



        jsonToValue(&hOST_MIGRATION_STATUS, value, "std::string");


    }

    const char *iNSTRUMENTKey = "INSTRUMENT";

    if(object.has_key(iNSTRUMENTKey))
    {
        bourne::json value = object[iNSTRUMENTKey];



        jsonToValue(&iNSTRUMENT, value, "std::string");


    }

    const char *iNSTRUMENT_EXTERNAL_DATAKey = "INSTRUMENT_EXTERNAL_DATA";

    if(object.has_key(iNSTRUMENT_EXTERNAL_DATAKey))
    {
        bourne::json value = object[iNSTRUMENT_EXTERNAL_DATAKey];



        jsonToValue(&iNSTRUMENT_EXTERNAL_DATA, value, "std::string");


    }

    const char *iNSTRUMENT_MAPPINGKey = "INSTRUMENT_MAPPING";

    if(object.has_key(iNSTRUMENT_MAPPINGKey))
    {
        bourne::json value = object[iNSTRUMENT_MAPPINGKey];




        Object* obj = &iNSTRUMENT_MAPPING;
		obj->fromJson(value.dump());

    }

    const char *iNSTRUMENT_MAPPING_HISTORYKey = "INSTRUMENT_MAPPING_HISTORY";

    if(object.has_key(iNSTRUMENT_MAPPING_HISTORYKey))
    {
        bourne::json value = object[iNSTRUMENT_MAPPING_HISTORYKey];


        std::list<std::string> iNSTRUMENT_MAPPING_HISTORY_list;
        std::string element;
        for(auto& var : value.array_range())
        {

            jsonToValue(&element, var, "std::string");


            iNSTRUMENT_MAPPING_HISTORY_list.push_back(element);
        }
        iNSTRUMENT_MAPPING_HISTORY = iNSTRUMENT_MAPPING_HISTORY_list;


    }

    const char *iNSTRUMENT_SOURCE_BACKFILLKey = "INSTRUMENT_SOURCE_BACKFILL";

    if(object.has_key(iNSTRUMENT_SOURCE_BACKFILLKey))
    {
        bourne::json value = object[iNSTRUMENT_SOURCE_BACKFILLKey];



        jsonToValue(&iNSTRUMENT_SOURCE_BACKFILL, value, "std::string");


    }

    const char *iNSTRUMENT_SOURCE_BLOBKey = "INSTRUMENT_SOURCE_BLOB";

    if(object.has_key(iNSTRUMENT_SOURCE_BLOBKey))
    {
        bourne::json value = object[iNSTRUMENT_SOURCE_BLOBKey];



        jsonToValue(&iNSTRUMENT_SOURCE_BLOB, value, "std::string");


    }

    const char *iNSTRUMENT_SOURCE_CALCULATEDKey = "INSTRUMENT_SOURCE_CALCULATED";

    if(object.has_key(iNSTRUMENT_SOURCE_CALCULATEDKey))
    {
        bourne::json value = object[iNSTRUMENT_SOURCE_CALCULATEDKey];



        jsonToValue(&iNSTRUMENT_SOURCE_CALCULATED, value, "std::string");


    }

    const char *iNSTRUMENT_SOURCE_FIXKey = "INSTRUMENT_SOURCE_FIX";

    if(object.has_key(iNSTRUMENT_SOURCE_FIXKey))
    {
        bourne::json value = object[iNSTRUMENT_SOURCE_FIXKey];



        jsonToValue(&iNSTRUMENT_SOURCE_FIX, value, "std::string");


    }

    const char *iNSTRUMENT_SOURCE_GOKey = "INSTRUMENT_SOURCE_GO";

    if(object.has_key(iNSTRUMENT_SOURCE_GOKey))
    {
        bourne::json value = object[iNSTRUMENT_SOURCE_GOKey];



        jsonToValue(&iNSTRUMENT_SOURCE_GO, value, "std::string");


    }

    const char *iNSTRUMENT_SOURCE_POLLINGKey = "INSTRUMENT_SOURCE_POLLING";

    if(object.has_key(iNSTRUMENT_SOURCE_POLLINGKey))
    {
        bourne::json value = object[iNSTRUMENT_SOURCE_POLLINGKey];



        jsonToValue(&iNSTRUMENT_SOURCE_POLLING, value, "std::string");


    }

    const char *iNSTRUMENT_SOURCE_STREAMINGKey = "INSTRUMENT_SOURCE_STREAMING";

    if(object.has_key(iNSTRUMENT_SOURCE_STREAMINGKey))
    {
        bourne::json value = object[iNSTRUMENT_SOURCE_STREAMINGKey];



        jsonToValue(&iNSTRUMENT_SOURCE_STREAMING, value, "std::string");


    }

    const char *iNSTRUMENT_STATUSKey = "INSTRUMENT_STATUS";

    if(object.has_key(iNSTRUMENT_STATUSKey))
    {
        bourne::json value = object[iNSTRUMENT_STATUSKey];



        jsonToValue(&iNSTRUMENT_STATUS, value, "std::string");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUESTKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUESTKey];




        Object* obj = &iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;
		obj->fromJson(value.dump());

    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUESTKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUESTKey];




        Object* obj = &iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;
		obj->fromJson(value.dump());

    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUESTKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUESTKey];




        Object* obj = &iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;
		obj->fromJson(value.dump());

    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUESTKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUESTKey];




        Object* obj = &iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;
		obj->fromJson(value.dump());

    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUESTKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUESTKey];




        Object* obj = &iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;
		obj->fromJson(value.dump());

    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUESTKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUESTKey];




        Object* obj = &iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;
		obj->fromJson(value.dump());

    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUESTKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUESTKey];




        Object* obj = &iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;
		obj->fromJson(value.dump());

    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TSKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TSKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS, value, "int");


    }

    const char *iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATIONKey = "INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATIONKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATIONKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION, value, "bool");


    }

    const char *iNSTRUMENT_TRADE_SPOT_REST_URIKey = "INSTRUMENT_TRADE_SPOT_REST_URI";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_REST_URIKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_REST_URIKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_REST_URI, value, "std::string");


    }

    const char *iNSTRUMENT_TRADE_SPOT_REST_URLKey = "INSTRUMENT_TRADE_SPOT_REST_URL";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_REST_URLKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_REST_URLKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_REST_URL, value, "std::string");


    }

    const char *iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTIONKey = "INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION";

    if(object.has_key(iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTIONKey))
    {
        bourne::json value = object[iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTIONKey];



        jsonToValue(&iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION, value, "std::string");


    }

    const char *lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MSKey = "LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS";

    if(object.has_key(lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MSKey))
    {
        bourne::json value = object[lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MSKey];



        jsonToValue(&lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS, value, "int");


    }

    const char *lAST_SEEN_ON_BLOB_TSKey = "LAST_SEEN_ON_BLOB_TS";

    if(object.has_key(lAST_SEEN_ON_BLOB_TSKey))
    {
        bourne::json value = object[lAST_SEEN_ON_BLOB_TSKey];



        jsonToValue(&lAST_SEEN_ON_BLOB_TS, value, "int");


    }

    const char *lAST_SEEN_ON_FIX_TSKey = "LAST_SEEN_ON_FIX_TS";

    if(object.has_key(lAST_SEEN_ON_FIX_TSKey))
    {
        bourne::json value = object[lAST_SEEN_ON_FIX_TSKey];



        jsonToValue(&lAST_SEEN_ON_FIX_TS, value, "int");


    }

    const char *lAST_SEEN_ON_HARDCODED_TSKey = "LAST_SEEN_ON_HARDCODED_TS";

    if(object.has_key(lAST_SEEN_ON_HARDCODED_TSKey))
    {
        bourne::json value = object[lAST_SEEN_ON_HARDCODED_TSKey];



        jsonToValue(&lAST_SEEN_ON_HARDCODED_TS, value, "int");


    }

    const char *lAST_SEEN_ON_INDEX_COMPOSITION_TSKey = "LAST_SEEN_ON_INDEX_COMPOSITION_TS";

    if(object.has_key(lAST_SEEN_ON_INDEX_COMPOSITION_TSKey))
    {
        bourne::json value = object[lAST_SEEN_ON_INDEX_COMPOSITION_TSKey];



        jsonToValue(&lAST_SEEN_ON_INDEX_COMPOSITION_TS, value, "int");


    }

    const char *lAST_SEEN_ON_NSQ_TSKey = "LAST_SEEN_ON_NSQ_TS";

    if(object.has_key(lAST_SEEN_ON_NSQ_TSKey))
    {
        bourne::json value = object[lAST_SEEN_ON_NSQ_TSKey];



        jsonToValue(&lAST_SEEN_ON_NSQ_TS, value, "int");


    }

    const char *lAST_SEEN_ON_POLLING_TSKey = "LAST_SEEN_ON_POLLING_TS";

    if(object.has_key(lAST_SEEN_ON_POLLING_TSKey))
    {
        bourne::json value = object[lAST_SEEN_ON_POLLING_TSKey];



        jsonToValue(&lAST_SEEN_ON_POLLING_TS, value, "int");


    }

    const char *lAST_SEEN_ON_STREAMING_TSKey = "LAST_SEEN_ON_STREAMING_TS";

    if(object.has_key(lAST_SEEN_ON_STREAMING_TSKey))
    {
        bourne::json value = object[lAST_SEEN_ON_STREAMING_TSKey];



        jsonToValue(&lAST_SEEN_ON_STREAMING_TS, value, "int");


    }

    const char *lAST_TRADE_SPOT_FROM_BACKFILLKey = "LAST_TRADE_SPOT_FROM_BACKFILL";

    if(object.has_key(lAST_TRADE_SPOT_FROM_BACKFILLKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_BACKFILLKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_BACKFILL;
		obj->fromJson(value.dump());

    }

    const char *lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey = "LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL";

    if(object.has_key(lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *lAST_TRADE_SPOT_FROM_BLOBKey = "LAST_TRADE_SPOT_FROM_BLOB";

    if(object.has_key(lAST_TRADE_SPOT_FROM_BLOBKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_BLOBKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_BLOB;
		obj->fromJson(value.dump());

    }

    const char *lAST_TRADE_SPOT_FROM_BLOB_EXTERNALKey = "LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL";

    if(object.has_key(lAST_TRADE_SPOT_FROM_BLOB_EXTERNALKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_BLOB_EXTERNALKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *lAST_TRADE_SPOT_FROM_CALCULATEDKey = "LAST_TRADE_SPOT_FROM_CALCULATED";

    if(object.has_key(lAST_TRADE_SPOT_FROM_CALCULATEDKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_CALCULATEDKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_CALCULATED;
		obj->fromJson(value.dump());

    }

    const char *lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey = "LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL";

    if(object.has_key(lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *lAST_TRADE_SPOT_FROM_FIXKey = "LAST_TRADE_SPOT_FROM_FIX";

    if(object.has_key(lAST_TRADE_SPOT_FROM_FIXKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_FIXKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_FIX;
		obj->fromJson(value.dump());

    }

    const char *lAST_TRADE_SPOT_FROM_FIX_EXTERNALKey = "LAST_TRADE_SPOT_FROM_FIX_EXTERNAL";

    if(object.has_key(lAST_TRADE_SPOT_FROM_FIX_EXTERNALKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_FIX_EXTERNALKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_FIX_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *lAST_TRADE_SPOT_FROM_GOKey = "LAST_TRADE_SPOT_FROM_GO";

    if(object.has_key(lAST_TRADE_SPOT_FROM_GOKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_GOKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_GO;
		obj->fromJson(value.dump());

    }

    const char *lAST_TRADE_SPOT_FROM_GO_EXTERNALKey = "LAST_TRADE_SPOT_FROM_GO_EXTERNAL";

    if(object.has_key(lAST_TRADE_SPOT_FROM_GO_EXTERNALKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_GO_EXTERNALKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_GO_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *lAST_TRADE_SPOT_FROM_POLLINGKey = "LAST_TRADE_SPOT_FROM_POLLING";

    if(object.has_key(lAST_TRADE_SPOT_FROM_POLLINGKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_POLLINGKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_POLLING;
		obj->fromJson(value.dump());

    }

    const char *lAST_TRADE_SPOT_FROM_POLLING_EXTERNALKey = "LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL";

    if(object.has_key(lAST_TRADE_SPOT_FROM_POLLING_EXTERNALKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_POLLING_EXTERNALKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *lAST_TRADE_SPOT_FROM_STREAMINGKey = "LAST_TRADE_SPOT_FROM_STREAMING";

    if(object.has_key(lAST_TRADE_SPOT_FROM_STREAMINGKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_STREAMINGKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_STREAMING;
		obj->fromJson(value.dump());

    }

    const char *lAST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey = "LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL";

    if(object.has_key(lAST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey))
    {
        bourne::json value = object[lAST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey];




        Object* obj = &lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
		obj->fromJson(value.dump());

    }

    const char *mETADATA_VERSIONKey = "METADATA_VERSION";

    if(object.has_key(mETADATA_VERSIONKey))
    {
        bourne::json value = object[mETADATA_VERSIONKey];



        jsonToValue(&mETADATA_VERSION, value, "int");


    }

    const char *pROCESSING_TRADES_FROM_BLOB_STATUSKey = "PROCESSING_TRADES_FROM_BLOB_STATUS";

    if(object.has_key(pROCESSING_TRADES_FROM_BLOB_STATUSKey))
    {
        bourne::json value = object[pROCESSING_TRADES_FROM_BLOB_STATUSKey];



        jsonToValue(&pROCESSING_TRADES_FROM_BLOB_STATUS, value, "std::string");


    }

    const char *tOTAL_TRADES_SPOTKey = "TOTAL_TRADES_SPOT";

    if(object.has_key(tOTAL_TRADES_SPOTKey))
    {
        bourne::json value = object[tOTAL_TRADES_SPOTKey];



        jsonToValue(&tOTAL_TRADES_SPOT, value, "int");


    }

    const char *uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA";

    if(object.has_key(uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATAKey))
    {
        bourne::json value = object[uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATAKey];




        Object* obj = &uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;
		obj->fromJson(value.dump());

    }

    const char *uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA";

    if(object.has_key(uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATAKey))
    {
        bourne::json value = object[uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATAKey];




        Object* obj = &uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;
		obj->fromJson(value.dump());

    }

    const char *uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA";

    if(object.has_key(uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATAKey))
    {
        bourne::json value = object[uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATAKey];




        Object* obj = &uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;
		obj->fromJson(value.dump());

    }

    const char *uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA";

    if(object.has_key(uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATAKey))
    {
        bourne::json value = object[uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATAKey];




        Object* obj = &uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;
		obj->fromJson(value.dump());

    }

    const char *uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA";

    if(object.has_key(uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATAKey))
    {
        bourne::json value = object[uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATAKey];




        Object* obj = &uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;
		obj->fromJson(value.dump());

    }

    const char *uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA";

    if(object.has_key(uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATAKey))
    {
        bourne::json value = object[uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATAKey];




        Object* obj = &uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;
		obj->fromJson(value.dump());

    }

    const char *uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA";

    if(object.has_key(uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATAKey))
    {
        bourne::json value = object[uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATAKey];




        Object* obj = &uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;
		obj->fromJson(value.dump());

    }


}

bourne::json
SPOT_INSTRUMENT_METADATA::toJson()
{
    bourne::json object = bourne::json::object();





    object["fIRST_SEEN_ON_BLOB_TS"] = getFIRSTSEENONBLOBTS();






    object["fIRST_SEEN_ON_FIX_TS"] = getFIRSTSEENONFIXTS();






    object["fIRST_SEEN_ON_HARDCODED_TS"] = getFIRSTSEENONHARDCODEDTS();






    object["fIRST_SEEN_ON_INDEX_COMPOSITION_TS"] = getFIRSTSEENONINDEXCOMPOSITIONTS();






    object["fIRST_SEEN_ON_NSQ_TS"] = getFIRSTSEENONNSQTS();






    object["fIRST_SEEN_ON_POLLING_TS"] = getFIRSTSEENONPOLLINGTS();






    object["fIRST_SEEN_ON_STREAMING_TS"] = getFIRSTSEENONSTREAMINGTS();







	object["fIRST_TRADE_SPOT_FROM_BACKFILL"] = getFIRSTTRADESPOTFROMBACKFILL().toJson();






	object["fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL"] = getFIRSTTRADESPOTFROMBACKFILLEXTERNAL().toJson();






	object["fIRST_TRADE_SPOT_FROM_BLOB"] = getFIRSTTRADESPOTFROMBLOB().toJson();






	object["fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL"] = getFIRSTTRADESPOTFROMBLOBEXTERNAL().toJson();






	object["fIRST_TRADE_SPOT_FROM_CALCULATED"] = getFIRSTTRADESPOTFROMCALCULATED().toJson();






	object["fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL"] = getFIRSTTRADESPOTFROMCALCULATEDEXTERNAL().toJson();






	object["fIRST_TRADE_SPOT_FROM_FIX"] = getFIRSTTRADESPOTFROMFIX().toJson();






	object["fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL"] = getFIRSTTRADESPOTFROMFIXEXTERNAL().toJson();






	object["fIRST_TRADE_SPOT_FROM_GO"] = getFIRSTTRADESPOTFROMGO().toJson();






	object["fIRST_TRADE_SPOT_FROM_GO_EXTERNAL"] = getFIRSTTRADESPOTFROMGOEXTERNAL().toJson();






	object["fIRST_TRADE_SPOT_FROM_POLLING"] = getFIRSTTRADESPOTFROMPOLLING().toJson();






	object["fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL"] = getFIRSTTRADESPOTFROMPOLLINGEXTERNAL().toJson();






	object["fIRST_TRADE_SPOT_FROM_STREAMING"] = getFIRSTTRADESPOTFROMSTREAMING().toJson();






	object["fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL"] = getFIRSTTRADESPOTFROMSTREAMINGEXTERNAL().toJson();





    object["hOST_MIGRATION_DESTINATION"] = getHOSTMIGRATIONDESTINATION();






    object["hOST_MIGRATION_SOURCE"] = getHOSTMIGRATIONSOURCE();






    object["hOST_MIGRATION_STATUS"] = getHOSTMIGRATIONSTATUS();






    object["iNSTRUMENT"] = getINSTRUMENT();






    object["iNSTRUMENT_EXTERNAL_DATA"] = getINSTRUMENTEXTERNALDATA();







	object["iNSTRUMENT_MAPPING"] = getINSTRUMENTMAPPING().toJson();




    std::list<std::string> iNSTRUMENT_MAPPING_HISTORY_list = getINSTRUMENTMAPPINGHISTORY();
    bourne::json iNSTRUMENT_MAPPING_HISTORY_arr = bourne::json::array();

    for(auto& var : iNSTRUMENT_MAPPING_HISTORY_list)
    {
        iNSTRUMENT_MAPPING_HISTORY_arr.append(var);
    }
    object["iNSTRUMENT_MAPPING_HISTORY"] = iNSTRUMENT_MAPPING_HISTORY_arr;









    object["iNSTRUMENT_SOURCE_BACKFILL"] = getINSTRUMENTSOURCEBACKFILL();






    object["iNSTRUMENT_SOURCE_BLOB"] = getINSTRUMENTSOURCEBLOB();






    object["iNSTRUMENT_SOURCE_CALCULATED"] = getINSTRUMENTSOURCECALCULATED();






    object["iNSTRUMENT_SOURCE_FIX"] = getINSTRUMENTSOURCEFIX();






    object["iNSTRUMENT_SOURCE_GO"] = getINSTRUMENTSOURCEGO();






    object["iNSTRUMENT_SOURCE_POLLING"] = getINSTRUMENTSOURCEPOLLING();






    object["iNSTRUMENT_SOURCE_STREAMING"] = getINSTRUMENTSOURCESTREAMING();






    object["iNSTRUMENT_STATUS"] = getINSTRUMENTSTATUS();







	object["iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST"] = getINSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST().toJson();





    object["iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS"] = getINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS();







	object["iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST"] = getINSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST().toJson();





    object["iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS"] = getINSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS();







	object["iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST"] = getINSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST().toJson();





    object["iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS"] = getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS();







	object["iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST"] = getINSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST().toJson();





    object["iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS"] = getINSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS();







	object["iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST"] = getINSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST().toJson();





    object["iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS"] = getINSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS();







	object["iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST"] = getINSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST().toJson();





    object["iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS"] = getINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS();







	object["iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST"] = getINSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST().toJson();





    object["iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS"] = getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS();






    object["iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS"] = getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS();






    object["iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION"] = isINSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION();






    object["iNSTRUMENT_TRADE_SPOT_REST_URI"] = getINSTRUMENTTRADESPOTRESTURI();






    object["iNSTRUMENT_TRADE_SPOT_REST_URL"] = getINSTRUMENTTRADESPOTRESTURL();






    object["iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION"] = getINSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION();






    object["lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS"] = getLASTCONCURRENTBATCHOFTRADESSPOTMS();






    object["lAST_SEEN_ON_BLOB_TS"] = getLASTSEENONBLOBTS();






    object["lAST_SEEN_ON_FIX_TS"] = getLASTSEENONFIXTS();






    object["lAST_SEEN_ON_HARDCODED_TS"] = getLASTSEENONHARDCODEDTS();






    object["lAST_SEEN_ON_INDEX_COMPOSITION_TS"] = getLASTSEENONINDEXCOMPOSITIONTS();






    object["lAST_SEEN_ON_NSQ_TS"] = getLASTSEENONNSQTS();






    object["lAST_SEEN_ON_POLLING_TS"] = getLASTSEENONPOLLINGTS();






    object["lAST_SEEN_ON_STREAMING_TS"] = getLASTSEENONSTREAMINGTS();







	object["lAST_TRADE_SPOT_FROM_BACKFILL"] = getLASTTRADESPOTFROMBACKFILL().toJson();






	object["lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL"] = getLASTTRADESPOTFROMBACKFILLEXTERNAL().toJson();






	object["lAST_TRADE_SPOT_FROM_BLOB"] = getLASTTRADESPOTFROMBLOB().toJson();






	object["lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL"] = getLASTTRADESPOTFROMBLOBEXTERNAL().toJson();






	object["lAST_TRADE_SPOT_FROM_CALCULATED"] = getLASTTRADESPOTFROMCALCULATED().toJson();






	object["lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL"] = getLASTTRADESPOTFROMCALCULATEDEXTERNAL().toJson();






	object["lAST_TRADE_SPOT_FROM_FIX"] = getLASTTRADESPOTFROMFIX().toJson();






	object["lAST_TRADE_SPOT_FROM_FIX_EXTERNAL"] = getLASTTRADESPOTFROMFIXEXTERNAL().toJson();






	object["lAST_TRADE_SPOT_FROM_GO"] = getLASTTRADESPOTFROMGO().toJson();






	object["lAST_TRADE_SPOT_FROM_GO_EXTERNAL"] = getLASTTRADESPOTFROMGOEXTERNAL().toJson();






	object["lAST_TRADE_SPOT_FROM_POLLING"] = getLASTTRADESPOTFROMPOLLING().toJson();






	object["lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL"] = getLASTTRADESPOTFROMPOLLINGEXTERNAL().toJson();






	object["lAST_TRADE_SPOT_FROM_STREAMING"] = getLASTTRADESPOTFROMSTREAMING().toJson();






	object["lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL"] = getLASTTRADESPOTFROMSTREAMINGEXTERNAL().toJson();





    object["mETADATA_VERSION"] = getMETADATAVERSION();






    object["pROCESSING_TRADES_FROM_BLOB_STATUS"] = getPROCESSINGTRADESFROMBLOBSTATUS();






    object["tOTAL_TRADES_SPOT"] = getTOTALTRADESSPOT();







	object["uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA"] = getUNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA().toJson();






	object["uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA"] = getUNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA().toJson();






	object["uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA"] = getUNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA().toJson();






	object["uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA"] = getUNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA().toJson();






	object["uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA"] = getUNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA().toJson();






	object["uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA"] = getUNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA().toJson();






	object["uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA"] = getUNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA().toJson();


    return object;

}

int
SPOT_INSTRUMENT_METADATA::getFIRSTSEENONBLOBTS()
{
	return fIRST_SEEN_ON_BLOB_TS;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTSEENONBLOBTS(int  fIRST_SEEN_ON_BLOB_TS)
{
	this->fIRST_SEEN_ON_BLOB_TS = fIRST_SEEN_ON_BLOB_TS;
}

int
SPOT_INSTRUMENT_METADATA::getFIRSTSEENONFIXTS()
{
	return fIRST_SEEN_ON_FIX_TS;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTSEENONFIXTS(int  fIRST_SEEN_ON_FIX_TS)
{
	this->fIRST_SEEN_ON_FIX_TS = fIRST_SEEN_ON_FIX_TS;
}

int
SPOT_INSTRUMENT_METADATA::getFIRSTSEENONHARDCODEDTS()
{
	return fIRST_SEEN_ON_HARDCODED_TS;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTSEENONHARDCODEDTS(int  fIRST_SEEN_ON_HARDCODED_TS)
{
	this->fIRST_SEEN_ON_HARDCODED_TS = fIRST_SEEN_ON_HARDCODED_TS;
}

int
SPOT_INSTRUMENT_METADATA::getFIRSTSEENONINDEXCOMPOSITIONTS()
{
	return fIRST_SEEN_ON_INDEX_COMPOSITION_TS;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTSEENONINDEXCOMPOSITIONTS(int  fIRST_SEEN_ON_INDEX_COMPOSITION_TS)
{
	this->fIRST_SEEN_ON_INDEX_COMPOSITION_TS = fIRST_SEEN_ON_INDEX_COMPOSITION_TS;
}

int
SPOT_INSTRUMENT_METADATA::getFIRSTSEENONNSQTS()
{
	return fIRST_SEEN_ON_NSQ_TS;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTSEENONNSQTS(int  fIRST_SEEN_ON_NSQ_TS)
{
	this->fIRST_SEEN_ON_NSQ_TS = fIRST_SEEN_ON_NSQ_TS;
}

int
SPOT_INSTRUMENT_METADATA::getFIRSTSEENONPOLLINGTS()
{
	return fIRST_SEEN_ON_POLLING_TS;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTSEENONPOLLINGTS(int  fIRST_SEEN_ON_POLLING_TS)
{
	this->fIRST_SEEN_ON_POLLING_TS = fIRST_SEEN_ON_POLLING_TS;
}

int
SPOT_INSTRUMENT_METADATA::getFIRSTSEENONSTREAMINGTS()
{
	return fIRST_SEEN_ON_STREAMING_TS;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTSEENONSTREAMINGTS(int  fIRST_SEEN_ON_STREAMING_TS)
{
	this->fIRST_SEEN_ON_STREAMING_TS = fIRST_SEEN_ON_STREAMING_TS;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMBACKFILL()
{
	return fIRST_TRADE_SPOT_FROM_BACKFILL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMBACKFILL(Object  fIRST_TRADE_SPOT_FROM_BACKFILL)
{
	this->fIRST_TRADE_SPOT_FROM_BACKFILL = fIRST_TRADE_SPOT_FROM_BACKFILL;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMBACKFILLEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMBACKFILLEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL)
{
	this->fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMBLOB()
{
	return fIRST_TRADE_SPOT_FROM_BLOB;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMBLOB(Object  fIRST_TRADE_SPOT_FROM_BLOB)
{
	this->fIRST_TRADE_SPOT_FROM_BLOB = fIRST_TRADE_SPOT_FROM_BLOB;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMBLOBEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMBLOBEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL)
{
	this->fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL = fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMCALCULATED()
{
	return fIRST_TRADE_SPOT_FROM_CALCULATED;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMCALCULATED(Object  fIRST_TRADE_SPOT_FROM_CALCULATED)
{
	this->fIRST_TRADE_SPOT_FROM_CALCULATED = fIRST_TRADE_SPOT_FROM_CALCULATED;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMCALCULATEDEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMCALCULATEDEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL)
{
	this->fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMFIX()
{
	return fIRST_TRADE_SPOT_FROM_FIX;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMFIX(Object  fIRST_TRADE_SPOT_FROM_FIX)
{
	this->fIRST_TRADE_SPOT_FROM_FIX = fIRST_TRADE_SPOT_FROM_FIX;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMFIXEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMFIXEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL)
{
	this->fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL = fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMGO()
{
	return fIRST_TRADE_SPOT_FROM_GO;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMGO(Object  fIRST_TRADE_SPOT_FROM_GO)
{
	this->fIRST_TRADE_SPOT_FROM_GO = fIRST_TRADE_SPOT_FROM_GO;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMGOEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_GO_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMGOEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_GO_EXTERNAL)
{
	this->fIRST_TRADE_SPOT_FROM_GO_EXTERNAL = fIRST_TRADE_SPOT_FROM_GO_EXTERNAL;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMPOLLING()
{
	return fIRST_TRADE_SPOT_FROM_POLLING;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMPOLLING(Object  fIRST_TRADE_SPOT_FROM_POLLING)
{
	this->fIRST_TRADE_SPOT_FROM_POLLING = fIRST_TRADE_SPOT_FROM_POLLING;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMPOLLINGEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMPOLLINGEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL)
{
	this->fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL = fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMSTREAMING()
{
	return fIRST_TRADE_SPOT_FROM_STREAMING;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMSTREAMING(Object  fIRST_TRADE_SPOT_FROM_STREAMING)
{
	this->fIRST_TRADE_SPOT_FROM_STREAMING = fIRST_TRADE_SPOT_FROM_STREAMING;
}

Object
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMSTREAMINGEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMSTREAMINGEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL)
{
	this->fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
}

std::string
SPOT_INSTRUMENT_METADATA::getHOSTMIGRATIONDESTINATION()
{
	return hOST_MIGRATION_DESTINATION;
}

void
SPOT_INSTRUMENT_METADATA::setHOSTMIGRATIONDESTINATION(std::string  hOST_MIGRATION_DESTINATION)
{
	this->hOST_MIGRATION_DESTINATION = hOST_MIGRATION_DESTINATION;
}

std::string
SPOT_INSTRUMENT_METADATA::getHOSTMIGRATIONSOURCE()
{
	return hOST_MIGRATION_SOURCE;
}

void
SPOT_INSTRUMENT_METADATA::setHOSTMIGRATIONSOURCE(std::string  hOST_MIGRATION_SOURCE)
{
	this->hOST_MIGRATION_SOURCE = hOST_MIGRATION_SOURCE;
}

std::string
SPOT_INSTRUMENT_METADATA::getHOSTMIGRATIONSTATUS()
{
	return hOST_MIGRATION_STATUS;
}

void
SPOT_INSTRUMENT_METADATA::setHOSTMIGRATIONSTATUS(std::string  hOST_MIGRATION_STATUS)
{
	this->hOST_MIGRATION_STATUS = hOST_MIGRATION_STATUS;
}

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENT()
{
	return iNSTRUMENT;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENT(std::string  iNSTRUMENT)
{
	this->iNSTRUMENT = iNSTRUMENT;
}

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTEXTERNALDATA()
{
	return iNSTRUMENT_EXTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTEXTERNALDATA(std::string  iNSTRUMENT_EXTERNAL_DATA)
{
	this->iNSTRUMENT_EXTERNAL_DATA = iNSTRUMENT_EXTERNAL_DATA;
}

Object
SPOT_INSTRUMENT_METADATA::getINSTRUMENTMAPPING()
{
	return iNSTRUMENT_MAPPING;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTMAPPING(Object  iNSTRUMENT_MAPPING)
{
	this->iNSTRUMENT_MAPPING = iNSTRUMENT_MAPPING;
}

std::list<std::string>
SPOT_INSTRUMENT_METADATA::getINSTRUMENTMAPPINGHISTORY()
{
	return iNSTRUMENT_MAPPING_HISTORY;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTMAPPINGHISTORY(std::list <std::string> iNSTRUMENT_MAPPING_HISTORY)
{
	this->iNSTRUMENT_MAPPING_HISTORY = iNSTRUMENT_MAPPING_HISTORY;
}

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTSOURCEBACKFILL()
{
	return iNSTRUMENT_SOURCE_BACKFILL;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTSOURCEBACKFILL(std::string  iNSTRUMENT_SOURCE_BACKFILL)
{
	this->iNSTRUMENT_SOURCE_BACKFILL = iNSTRUMENT_SOURCE_BACKFILL;
}

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTSOURCEBLOB()
{
	return iNSTRUMENT_SOURCE_BLOB;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTSOURCEBLOB(std::string  iNSTRUMENT_SOURCE_BLOB)
{
	this->iNSTRUMENT_SOURCE_BLOB = iNSTRUMENT_SOURCE_BLOB;
}

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTSOURCECALCULATED()
{
	return iNSTRUMENT_SOURCE_CALCULATED;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTSOURCECALCULATED(std::string  iNSTRUMENT_SOURCE_CALCULATED)
{
	this->iNSTRUMENT_SOURCE_CALCULATED = iNSTRUMENT_SOURCE_CALCULATED;
}

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTSOURCEFIX()
{
	return iNSTRUMENT_SOURCE_FIX;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTSOURCEFIX(std::string  iNSTRUMENT_SOURCE_FIX)
{
	this->iNSTRUMENT_SOURCE_FIX = iNSTRUMENT_SOURCE_FIX;
}

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTSOURCEGO()
{
	return iNSTRUMENT_SOURCE_GO;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTSOURCEGO(std::string  iNSTRUMENT_SOURCE_GO)
{
	this->iNSTRUMENT_SOURCE_GO = iNSTRUMENT_SOURCE_GO;
}

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTSOURCEPOLLING()
{
	return iNSTRUMENT_SOURCE_POLLING;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTSOURCEPOLLING(std::string  iNSTRUMENT_SOURCE_POLLING)
{
	this->iNSTRUMENT_SOURCE_POLLING = iNSTRUMENT_SOURCE_POLLING;
}

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTSOURCESTREAMING()
{
	return iNSTRUMENT_SOURCE_STREAMING;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTSOURCESTREAMING(std::string  iNSTRUMENT_SOURCE_STREAMING)
{
	this->iNSTRUMENT_SOURCE_STREAMING = iNSTRUMENT_SOURCE_STREAMING;
}

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTSTATUS()
{
	return iNSTRUMENT_STATUS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTSTATUS(std::string  iNSTRUMENT_STATUS)
{
	this->iNSTRUMENT_STATUS = iNSTRUMENT_STATUS;
}

Object
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST = iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS = iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS;
}

Object
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST = iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS = iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS;
}

Object
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST = iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS = iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS;
}

Object
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST = iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS = iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS;
}

Object
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST = iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS = iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS;
}

Object
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST = iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS = iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS;
}

Object
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST = iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS = iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS;
}

int
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS)
{
	this->iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS = iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS;
}

bool
SPOT_INSTRUMENT_METADATA::isINSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION()
{
	return iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION(bool  iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION)
{
	this->iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION = iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION;
}

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTRESTURI()
{
	return iNSTRUMENT_TRADE_SPOT_REST_URI;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTRESTURI(std::string  iNSTRUMENT_TRADE_SPOT_REST_URI)
{
	this->iNSTRUMENT_TRADE_SPOT_REST_URI = iNSTRUMENT_TRADE_SPOT_REST_URI;
}

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTRESTURL()
{
	return iNSTRUMENT_TRADE_SPOT_REST_URL;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTRESTURL(std::string  iNSTRUMENT_TRADE_SPOT_REST_URL)
{
	this->iNSTRUMENT_TRADE_SPOT_REST_URL = iNSTRUMENT_TRADE_SPOT_REST_URL;
}

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION()
{
	return iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION(std::string  iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION)
{
	this->iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION = iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION;
}

int
SPOT_INSTRUMENT_METADATA::getLASTCONCURRENTBATCHOFTRADESSPOTMS()
{
	return lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS;
}

void
SPOT_INSTRUMENT_METADATA::setLASTCONCURRENTBATCHOFTRADESSPOTMS(int  lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS)
{
	this->lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS = lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS;
}

int
SPOT_INSTRUMENT_METADATA::getLASTSEENONBLOBTS()
{
	return lAST_SEEN_ON_BLOB_TS;
}

void
SPOT_INSTRUMENT_METADATA::setLASTSEENONBLOBTS(int  lAST_SEEN_ON_BLOB_TS)
{
	this->lAST_SEEN_ON_BLOB_TS = lAST_SEEN_ON_BLOB_TS;
}

int
SPOT_INSTRUMENT_METADATA::getLASTSEENONFIXTS()
{
	return lAST_SEEN_ON_FIX_TS;
}

void
SPOT_INSTRUMENT_METADATA::setLASTSEENONFIXTS(int  lAST_SEEN_ON_FIX_TS)
{
	this->lAST_SEEN_ON_FIX_TS = lAST_SEEN_ON_FIX_TS;
}

int
SPOT_INSTRUMENT_METADATA::getLASTSEENONHARDCODEDTS()
{
	return lAST_SEEN_ON_HARDCODED_TS;
}

void
SPOT_INSTRUMENT_METADATA::setLASTSEENONHARDCODEDTS(int  lAST_SEEN_ON_HARDCODED_TS)
{
	this->lAST_SEEN_ON_HARDCODED_TS = lAST_SEEN_ON_HARDCODED_TS;
}

int
SPOT_INSTRUMENT_METADATA::getLASTSEENONINDEXCOMPOSITIONTS()
{
	return lAST_SEEN_ON_INDEX_COMPOSITION_TS;
}

void
SPOT_INSTRUMENT_METADATA::setLASTSEENONINDEXCOMPOSITIONTS(int  lAST_SEEN_ON_INDEX_COMPOSITION_TS)
{
	this->lAST_SEEN_ON_INDEX_COMPOSITION_TS = lAST_SEEN_ON_INDEX_COMPOSITION_TS;
}

int
SPOT_INSTRUMENT_METADATA::getLASTSEENONNSQTS()
{
	return lAST_SEEN_ON_NSQ_TS;
}

void
SPOT_INSTRUMENT_METADATA::setLASTSEENONNSQTS(int  lAST_SEEN_ON_NSQ_TS)
{
	this->lAST_SEEN_ON_NSQ_TS = lAST_SEEN_ON_NSQ_TS;
}

int
SPOT_INSTRUMENT_METADATA::getLASTSEENONPOLLINGTS()
{
	return lAST_SEEN_ON_POLLING_TS;
}

void
SPOT_INSTRUMENT_METADATA::setLASTSEENONPOLLINGTS(int  lAST_SEEN_ON_POLLING_TS)
{
	this->lAST_SEEN_ON_POLLING_TS = lAST_SEEN_ON_POLLING_TS;
}

int
SPOT_INSTRUMENT_METADATA::getLASTSEENONSTREAMINGTS()
{
	return lAST_SEEN_ON_STREAMING_TS;
}

void
SPOT_INSTRUMENT_METADATA::setLASTSEENONSTREAMINGTS(int  lAST_SEEN_ON_STREAMING_TS)
{
	this->lAST_SEEN_ON_STREAMING_TS = lAST_SEEN_ON_STREAMING_TS;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMBACKFILL()
{
	return lAST_TRADE_SPOT_FROM_BACKFILL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMBACKFILL(Object  lAST_TRADE_SPOT_FROM_BACKFILL)
{
	this->lAST_TRADE_SPOT_FROM_BACKFILL = lAST_TRADE_SPOT_FROM_BACKFILL;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMBACKFILLEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMBACKFILLEXTERNAL(Object  lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL)
{
	this->lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMBLOB()
{
	return lAST_TRADE_SPOT_FROM_BLOB;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMBLOB(Object  lAST_TRADE_SPOT_FROM_BLOB)
{
	this->lAST_TRADE_SPOT_FROM_BLOB = lAST_TRADE_SPOT_FROM_BLOB;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMBLOBEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMBLOBEXTERNAL(Object  lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL)
{
	this->lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL = lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMCALCULATED()
{
	return lAST_TRADE_SPOT_FROM_CALCULATED;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMCALCULATED(Object  lAST_TRADE_SPOT_FROM_CALCULATED)
{
	this->lAST_TRADE_SPOT_FROM_CALCULATED = lAST_TRADE_SPOT_FROM_CALCULATED;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMCALCULATEDEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMCALCULATEDEXTERNAL(Object  lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL)
{
	this->lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMFIX()
{
	return lAST_TRADE_SPOT_FROM_FIX;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMFIX(Object  lAST_TRADE_SPOT_FROM_FIX)
{
	this->lAST_TRADE_SPOT_FROM_FIX = lAST_TRADE_SPOT_FROM_FIX;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMFIXEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_FIX_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMFIXEXTERNAL(Object  lAST_TRADE_SPOT_FROM_FIX_EXTERNAL)
{
	this->lAST_TRADE_SPOT_FROM_FIX_EXTERNAL = lAST_TRADE_SPOT_FROM_FIX_EXTERNAL;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMGO()
{
	return lAST_TRADE_SPOT_FROM_GO;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMGO(Object  lAST_TRADE_SPOT_FROM_GO)
{
	this->lAST_TRADE_SPOT_FROM_GO = lAST_TRADE_SPOT_FROM_GO;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMGOEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_GO_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMGOEXTERNAL(Object  lAST_TRADE_SPOT_FROM_GO_EXTERNAL)
{
	this->lAST_TRADE_SPOT_FROM_GO_EXTERNAL = lAST_TRADE_SPOT_FROM_GO_EXTERNAL;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMPOLLING()
{
	return lAST_TRADE_SPOT_FROM_POLLING;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMPOLLING(Object  lAST_TRADE_SPOT_FROM_POLLING)
{
	this->lAST_TRADE_SPOT_FROM_POLLING = lAST_TRADE_SPOT_FROM_POLLING;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMPOLLINGEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMPOLLINGEXTERNAL(Object  lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL)
{
	this->lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL = lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMSTREAMING()
{
	return lAST_TRADE_SPOT_FROM_STREAMING;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMSTREAMING(Object  lAST_TRADE_SPOT_FROM_STREAMING)
{
	this->lAST_TRADE_SPOT_FROM_STREAMING = lAST_TRADE_SPOT_FROM_STREAMING;
}

Object
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMSTREAMINGEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMSTREAMINGEXTERNAL(Object  lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL)
{
	this->lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
}

int
SPOT_INSTRUMENT_METADATA::getMETADATAVERSION()
{
	return mETADATA_VERSION;
}

void
SPOT_INSTRUMENT_METADATA::setMETADATAVERSION(int  mETADATA_VERSION)
{
	this->mETADATA_VERSION = mETADATA_VERSION;
}

std::string
SPOT_INSTRUMENT_METADATA::getPROCESSINGTRADESFROMBLOBSTATUS()
{
	return pROCESSING_TRADES_FROM_BLOB_STATUS;
}

void
SPOT_INSTRUMENT_METADATA::setPROCESSINGTRADESFROMBLOBSTATUS(std::string  pROCESSING_TRADES_FROM_BLOB_STATUS)
{
	this->pROCESSING_TRADES_FROM_BLOB_STATUS = pROCESSING_TRADES_FROM_BLOB_STATUS;
}

int
SPOT_INSTRUMENT_METADATA::getTOTALTRADESSPOT()
{
	return tOTAL_TRADES_SPOT;
}

void
SPOT_INSTRUMENT_METADATA::setTOTALTRADESSPOT(int  tOTAL_TRADES_SPOT)
{
	this->tOTAL_TRADES_SPOT = tOTAL_TRADES_SPOT;
}

Object
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;
}

Object
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;
}

Object
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;
}

Object
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;
}

Object
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;
}

Object
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;
}

Object
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;
}



