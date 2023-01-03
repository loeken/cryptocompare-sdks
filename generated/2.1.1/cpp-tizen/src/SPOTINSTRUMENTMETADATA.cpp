#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SPOT_INSTRUMENT_METADATA.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SPOT_INSTRUMENT_METADATA::SPOT_INSTRUMENT_METADATA()
{
	//__init();
}

SPOT_INSTRUMENT_METADATA::~SPOT_INSTRUMENT_METADATA()
{
	//__cleanup();
}

void
SPOT_INSTRUMENT_METADATA::__init()
{
	//fIRST_SEEN_ON_BLOB_TS = int(0);
	//fIRST_SEEN_ON_FIX_TS = int(0);
	//fIRST_SEEN_ON_HARDCODED_TS = int(0);
	//fIRST_SEEN_ON_INDEX_COMPOSITION_TS = int(0);
	//fIRST_SEEN_ON_NSQ_TS = int(0);
	//fIRST_SEEN_ON_POLLING_TS = int(0);
	//fIRST_SEEN_ON_STREAMING_TS = int(0);
	//fIRST_TRADE_SPOT_FROM_BACKFILL = null;
	//fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = null;
	//fIRST_TRADE_SPOT_FROM_BLOB = null;
	//fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL = null;
	//fIRST_TRADE_SPOT_FROM_CALCULATED = null;
	//fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = null;
	//fIRST_TRADE_SPOT_FROM_FIX = null;
	//fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL = null;
	//fIRST_TRADE_SPOT_FROM_GO = null;
	//fIRST_TRADE_SPOT_FROM_GO_EXTERNAL = null;
	//fIRST_TRADE_SPOT_FROM_POLLING = null;
	//fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL = null;
	//fIRST_TRADE_SPOT_FROM_STREAMING = null;
	//fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = null;
	//hOST_MIGRATION_DESTINATION = std::string();
	//hOST_MIGRATION_SOURCE = std::string();
	//hOST_MIGRATION_STATUS = std::string();
	//iNSTRUMENT = std::string();
	//iNSTRUMENT_EXTERNAL_DATA = std::string();
	//iNSTRUMENT_MAPPING = null;
	//new std::list()std::list> iNSTRUMENT_MAPPING_HISTORY;
	//iNSTRUMENT_SOURCE_BACKFILL = std::string();
	//iNSTRUMENT_SOURCE_BLOB = std::string();
	//iNSTRUMENT_SOURCE_CALCULATED = std::string();
	//iNSTRUMENT_SOURCE_FIX = std::string();
	//iNSTRUMENT_SOURCE_GO = std::string();
	//iNSTRUMENT_SOURCE_POLLING = std::string();
	//iNSTRUMENT_SOURCE_STREAMING = std::string();
	//iNSTRUMENT_STATUS = std::string();
	//iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST = null;
	//iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST = null;
	//iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST = null;
	//iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST = null;
	//iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST = null;
	//iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST = null;
	//iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST = null;
	//iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS = int(0);
	//iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION = bool(false);
	//iNSTRUMENT_TRADE_SPOT_REST_URI = std::string();
	//iNSTRUMENT_TRADE_SPOT_REST_URL = std::string();
	//iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION = std::string();
	//lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS = int(0);
	//lAST_SEEN_ON_BLOB_TS = int(0);
	//lAST_SEEN_ON_FIX_TS = int(0);
	//lAST_SEEN_ON_HARDCODED_TS = int(0);
	//lAST_SEEN_ON_INDEX_COMPOSITION_TS = int(0);
	//lAST_SEEN_ON_NSQ_TS = int(0);
	//lAST_SEEN_ON_POLLING_TS = int(0);
	//lAST_SEEN_ON_STREAMING_TS = int(0);
	//lAST_TRADE_SPOT_FROM_BACKFILL = null;
	//lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = null;
	//lAST_TRADE_SPOT_FROM_BLOB = null;
	//lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL = null;
	//lAST_TRADE_SPOT_FROM_CALCULATED = null;
	//lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = null;
	//lAST_TRADE_SPOT_FROM_FIX = null;
	//lAST_TRADE_SPOT_FROM_FIX_EXTERNAL = null;
	//lAST_TRADE_SPOT_FROM_GO = null;
	//lAST_TRADE_SPOT_FROM_GO_EXTERNAL = null;
	//lAST_TRADE_SPOT_FROM_POLLING = null;
	//lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL = null;
	//lAST_TRADE_SPOT_FROM_STREAMING = null;
	//lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = null;
	//mETADATA_VERSION = int(0);
	//pROCESSING_TRADES_FROM_BLOB_STATUS = std::string();
	//tOTAL_TRADES_SPOT = int(0);
	//uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA = null;
	//uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA = null;
	//uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA = null;
	//uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA = null;
	//uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA = null;
	//uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA = null;
	//uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA = null;
}

void
SPOT_INSTRUMENT_METADATA::__cleanup()
{
	//if(fIRST_SEEN_ON_BLOB_TS != NULL) {
	//
	//delete fIRST_SEEN_ON_BLOB_TS;
	//fIRST_SEEN_ON_BLOB_TS = NULL;
	//}
	//if(fIRST_SEEN_ON_FIX_TS != NULL) {
	//
	//delete fIRST_SEEN_ON_FIX_TS;
	//fIRST_SEEN_ON_FIX_TS = NULL;
	//}
	//if(fIRST_SEEN_ON_HARDCODED_TS != NULL) {
	//
	//delete fIRST_SEEN_ON_HARDCODED_TS;
	//fIRST_SEEN_ON_HARDCODED_TS = NULL;
	//}
	//if(fIRST_SEEN_ON_INDEX_COMPOSITION_TS != NULL) {
	//
	//delete fIRST_SEEN_ON_INDEX_COMPOSITION_TS;
	//fIRST_SEEN_ON_INDEX_COMPOSITION_TS = NULL;
	//}
	//if(fIRST_SEEN_ON_NSQ_TS != NULL) {
	//
	//delete fIRST_SEEN_ON_NSQ_TS;
	//fIRST_SEEN_ON_NSQ_TS = NULL;
	//}
	//if(fIRST_SEEN_ON_POLLING_TS != NULL) {
	//
	//delete fIRST_SEEN_ON_POLLING_TS;
	//fIRST_SEEN_ON_POLLING_TS = NULL;
	//}
	//if(fIRST_SEEN_ON_STREAMING_TS != NULL) {
	//
	//delete fIRST_SEEN_ON_STREAMING_TS;
	//fIRST_SEEN_ON_STREAMING_TS = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_BACKFILL != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_BACKFILL;
	//fIRST_TRADE_SPOT_FROM_BACKFILL = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
	//fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_BLOB != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_BLOB;
	//fIRST_TRADE_SPOT_FROM_BLOB = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
	//fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_CALCULATED != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_CALCULATED;
	//fIRST_TRADE_SPOT_FROM_CALCULATED = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
	//fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_FIX != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_FIX;
	//fIRST_TRADE_SPOT_FROM_FIX = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;
	//fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_GO != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_GO;
	//fIRST_TRADE_SPOT_FROM_GO = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_GO_EXTERNAL != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_GO_EXTERNAL;
	//fIRST_TRADE_SPOT_FROM_GO_EXTERNAL = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_POLLING != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_POLLING;
	//fIRST_TRADE_SPOT_FROM_POLLING = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
	//fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_STREAMING != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_STREAMING;
	//fIRST_TRADE_SPOT_FROM_STREAMING = NULL;
	//}
	//if(fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL != NULL) {
	//
	//delete fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
	//fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = NULL;
	//}
	//if(hOST_MIGRATION_DESTINATION != NULL) {
	//
	//delete hOST_MIGRATION_DESTINATION;
	//hOST_MIGRATION_DESTINATION = NULL;
	//}
	//if(hOST_MIGRATION_SOURCE != NULL) {
	//
	//delete hOST_MIGRATION_SOURCE;
	//hOST_MIGRATION_SOURCE = NULL;
	//}
	//if(hOST_MIGRATION_STATUS != NULL) {
	//
	//delete hOST_MIGRATION_STATUS;
	//hOST_MIGRATION_STATUS = NULL;
	//}
	//if(iNSTRUMENT != NULL) {
	//
	//delete iNSTRUMENT;
	//iNSTRUMENT = NULL;
	//}
	//if(iNSTRUMENT_EXTERNAL_DATA != NULL) {
	//
	//delete iNSTRUMENT_EXTERNAL_DATA;
	//iNSTRUMENT_EXTERNAL_DATA = NULL;
	//}
	//if(iNSTRUMENT_MAPPING != NULL) {
	//
	//delete iNSTRUMENT_MAPPING;
	//iNSTRUMENT_MAPPING = NULL;
	//}
	//if(iNSTRUMENT_MAPPING_HISTORY != NULL) {
	//iNSTRUMENT_MAPPING_HISTORY.RemoveAll(true);
	//delete iNSTRUMENT_MAPPING_HISTORY;
	//iNSTRUMENT_MAPPING_HISTORY = NULL;
	//}
	//if(iNSTRUMENT_SOURCE_BACKFILL != NULL) {
	//
	//delete iNSTRUMENT_SOURCE_BACKFILL;
	//iNSTRUMENT_SOURCE_BACKFILL = NULL;
	//}
	//if(iNSTRUMENT_SOURCE_BLOB != NULL) {
	//
	//delete iNSTRUMENT_SOURCE_BLOB;
	//iNSTRUMENT_SOURCE_BLOB = NULL;
	//}
	//if(iNSTRUMENT_SOURCE_CALCULATED != NULL) {
	//
	//delete iNSTRUMENT_SOURCE_CALCULATED;
	//iNSTRUMENT_SOURCE_CALCULATED = NULL;
	//}
	//if(iNSTRUMENT_SOURCE_FIX != NULL) {
	//
	//delete iNSTRUMENT_SOURCE_FIX;
	//iNSTRUMENT_SOURCE_FIX = NULL;
	//}
	//if(iNSTRUMENT_SOURCE_GO != NULL) {
	//
	//delete iNSTRUMENT_SOURCE_GO;
	//iNSTRUMENT_SOURCE_GO = NULL;
	//}
	//if(iNSTRUMENT_SOURCE_POLLING != NULL) {
	//
	//delete iNSTRUMENT_SOURCE_POLLING;
	//iNSTRUMENT_SOURCE_POLLING = NULL;
	//}
	//if(iNSTRUMENT_SOURCE_STREAMING != NULL) {
	//
	//delete iNSTRUMENT_SOURCE_STREAMING;
	//iNSTRUMENT_SOURCE_STREAMING = NULL;
	//}
	//if(iNSTRUMENT_STATUS != NULL) {
	//
	//delete iNSTRUMENT_STATUS;
	//iNSTRUMENT_STATUS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;
	//iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;
	//iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;
	//iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;
	//iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;
	//iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;
	//iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;
	//iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS;
	//iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION;
	//iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_REST_URI != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_REST_URI;
	//iNSTRUMENT_TRADE_SPOT_REST_URI = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_REST_URL != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_REST_URL;
	//iNSTRUMENT_TRADE_SPOT_REST_URL = NULL;
	//}
	//if(iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION != NULL) {
	//
	//delete iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION;
	//iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION = NULL;
	//}
	//if(lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS != NULL) {
	//
	//delete lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS;
	//lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS = NULL;
	//}
	//if(lAST_SEEN_ON_BLOB_TS != NULL) {
	//
	//delete lAST_SEEN_ON_BLOB_TS;
	//lAST_SEEN_ON_BLOB_TS = NULL;
	//}
	//if(lAST_SEEN_ON_FIX_TS != NULL) {
	//
	//delete lAST_SEEN_ON_FIX_TS;
	//lAST_SEEN_ON_FIX_TS = NULL;
	//}
	//if(lAST_SEEN_ON_HARDCODED_TS != NULL) {
	//
	//delete lAST_SEEN_ON_HARDCODED_TS;
	//lAST_SEEN_ON_HARDCODED_TS = NULL;
	//}
	//if(lAST_SEEN_ON_INDEX_COMPOSITION_TS != NULL) {
	//
	//delete lAST_SEEN_ON_INDEX_COMPOSITION_TS;
	//lAST_SEEN_ON_INDEX_COMPOSITION_TS = NULL;
	//}
	//if(lAST_SEEN_ON_NSQ_TS != NULL) {
	//
	//delete lAST_SEEN_ON_NSQ_TS;
	//lAST_SEEN_ON_NSQ_TS = NULL;
	//}
	//if(lAST_SEEN_ON_POLLING_TS != NULL) {
	//
	//delete lAST_SEEN_ON_POLLING_TS;
	//lAST_SEEN_ON_POLLING_TS = NULL;
	//}
	//if(lAST_SEEN_ON_STREAMING_TS != NULL) {
	//
	//delete lAST_SEEN_ON_STREAMING_TS;
	//lAST_SEEN_ON_STREAMING_TS = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_BACKFILL != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_BACKFILL;
	//lAST_TRADE_SPOT_FROM_BACKFILL = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
	//lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_BLOB != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_BLOB;
	//lAST_TRADE_SPOT_FROM_BLOB = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
	//lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_CALCULATED != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_CALCULATED;
	//lAST_TRADE_SPOT_FROM_CALCULATED = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
	//lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_FIX != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_FIX;
	//lAST_TRADE_SPOT_FROM_FIX = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_FIX_EXTERNAL != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_FIX_EXTERNAL;
	//lAST_TRADE_SPOT_FROM_FIX_EXTERNAL = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_GO != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_GO;
	//lAST_TRADE_SPOT_FROM_GO = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_GO_EXTERNAL != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_GO_EXTERNAL;
	//lAST_TRADE_SPOT_FROM_GO_EXTERNAL = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_POLLING != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_POLLING;
	//lAST_TRADE_SPOT_FROM_POLLING = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
	//lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_STREAMING != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_STREAMING;
	//lAST_TRADE_SPOT_FROM_STREAMING = NULL;
	//}
	//if(lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL != NULL) {
	//
	//delete lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
	//lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL = NULL;
	//}
	//if(mETADATA_VERSION != NULL) {
	//
	//delete mETADATA_VERSION;
	//mETADATA_VERSION = NULL;
	//}
	//if(pROCESSING_TRADES_FROM_BLOB_STATUS != NULL) {
	//
	//delete pROCESSING_TRADES_FROM_BLOB_STATUS;
	//pROCESSING_TRADES_FROM_BLOB_STATUS = NULL;
	//}
	//if(tOTAL_TRADES_SPOT != NULL) {
	//
	//delete tOTAL_TRADES_SPOT;
	//tOTAL_TRADES_SPOT = NULL;
	//}
	//if(uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA != NULL) {
	//
	//delete uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;
	//uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA = NULL;
	//}
	//if(uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA != NULL) {
	//
	//delete uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;
	//uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA = NULL;
	//}
	//if(uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA != NULL) {
	//
	//delete uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;
	//uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA = NULL;
	//}
	//if(uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA != NULL) {
	//
	//delete uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;
	//uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA = NULL;
	//}
	//if(uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA != NULL) {
	//
	//delete uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;
	//uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA = NULL;
	//}
	//if(uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA != NULL) {
	//
	//delete uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;
	//uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA = NULL;
	//}
	//if(uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA != NULL) {
	//
	//delete uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;
	//uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA = NULL;
	//}
	//
}

void
SPOT_INSTRUMENT_METADATA::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *fIRST_SEEN_ON_BLOB_TSKey = "FIRST_SEEN_ON_BLOB_TS";
	node = json_object_get_member(pJsonObject, fIRST_SEEN_ON_BLOB_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&fIRST_SEEN_ON_BLOB_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *fIRST_SEEN_ON_FIX_TSKey = "FIRST_SEEN_ON_FIX_TS";
	node = json_object_get_member(pJsonObject, fIRST_SEEN_ON_FIX_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&fIRST_SEEN_ON_FIX_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *fIRST_SEEN_ON_HARDCODED_TSKey = "FIRST_SEEN_ON_HARDCODED_TS";
	node = json_object_get_member(pJsonObject, fIRST_SEEN_ON_HARDCODED_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&fIRST_SEEN_ON_HARDCODED_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *fIRST_SEEN_ON_INDEX_COMPOSITION_TSKey = "FIRST_SEEN_ON_INDEX_COMPOSITION_TS";
	node = json_object_get_member(pJsonObject, fIRST_SEEN_ON_INDEX_COMPOSITION_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&fIRST_SEEN_ON_INDEX_COMPOSITION_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *fIRST_SEEN_ON_NSQ_TSKey = "FIRST_SEEN_ON_NSQ_TS";
	node = json_object_get_member(pJsonObject, fIRST_SEEN_ON_NSQ_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&fIRST_SEEN_ON_NSQ_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *fIRST_SEEN_ON_POLLING_TSKey = "FIRST_SEEN_ON_POLLING_TS";
	node = json_object_get_member(pJsonObject, fIRST_SEEN_ON_POLLING_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&fIRST_SEEN_ON_POLLING_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *fIRST_SEEN_ON_STREAMING_TSKey = "FIRST_SEEN_ON_STREAMING_TS";
	node = json_object_get_member(pJsonObject, fIRST_SEEN_ON_STREAMING_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&fIRST_SEEN_ON_STREAMING_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_BACKFILLKey = "FIRST_TRADE_SPOT_FROM_BACKFILL";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_BACKFILLKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_BACKFILL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_BACKFILL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_BLOBKey = "FIRST_TRADE_SPOT_FROM_BLOB";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_BLOBKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_BLOB, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_BLOB);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_BLOB_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_BLOB_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_CALCULATEDKey = "FIRST_TRADE_SPOT_FROM_CALCULATED";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_CALCULATEDKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_CALCULATED, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_CALCULATED);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_FIXKey = "FIRST_TRADE_SPOT_FROM_FIX";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_FIXKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_FIX, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_FIX);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_FIX_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_FIX_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_GOKey = "FIRST_TRADE_SPOT_FROM_GO";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_GOKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_GO, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_GO);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_GO_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_GO_EXTERNAL";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_GO_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_GO_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_GO_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_POLLINGKey = "FIRST_TRADE_SPOT_FROM_POLLING";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_POLLINGKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_POLLING, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_POLLING);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_POLLING_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_POLLING_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_STREAMINGKey = "FIRST_TRADE_SPOT_FROM_STREAMING";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_STREAMINGKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_STREAMING, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_STREAMING);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL";
	node = json_object_get_member(pJsonObject, fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *hOST_MIGRATION_DESTINATIONKey = "HOST_MIGRATION_DESTINATION";
	node = json_object_get_member(pJsonObject, hOST_MIGRATION_DESTINATIONKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&hOST_MIGRATION_DESTINATION, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *hOST_MIGRATION_SOURCEKey = "HOST_MIGRATION_SOURCE";
	node = json_object_get_member(pJsonObject, hOST_MIGRATION_SOURCEKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&hOST_MIGRATION_SOURCE, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *hOST_MIGRATION_STATUSKey = "HOST_MIGRATION_STATUS";
	node = json_object_get_member(pJsonObject, hOST_MIGRATION_STATUSKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&hOST_MIGRATION_STATUS, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENTKey = "INSTRUMENT";
	node = json_object_get_member(pJsonObject, iNSTRUMENTKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_EXTERNAL_DATAKey = "INSTRUMENT_EXTERNAL_DATA";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_EXTERNAL_DATAKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_EXTERNAL_DATA, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_MAPPINGKey = "INSTRUMENT_MAPPING";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_MAPPINGKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_MAPPING, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&iNSTRUMENT_MAPPING);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *iNSTRUMENT_MAPPING_HISTORYKey = "INSTRUMENT_MAPPING_HISTORY";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_MAPPING_HISTORYKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			iNSTRUMENT_MAPPING_HISTORY = new_list;
		}
		
	}
	const gchar *iNSTRUMENT_SOURCE_BACKFILLKey = "INSTRUMENT_SOURCE_BACKFILL";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_SOURCE_BACKFILLKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_SOURCE_BACKFILL, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_SOURCE_BLOBKey = "INSTRUMENT_SOURCE_BLOB";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_SOURCE_BLOBKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_SOURCE_BLOB, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_SOURCE_CALCULATEDKey = "INSTRUMENT_SOURCE_CALCULATED";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_SOURCE_CALCULATEDKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_SOURCE_CALCULATED, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_SOURCE_FIXKey = "INSTRUMENT_SOURCE_FIX";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_SOURCE_FIXKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_SOURCE_FIX, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_SOURCE_GOKey = "INSTRUMENT_SOURCE_GO";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_SOURCE_GOKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_SOURCE_GO, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_SOURCE_POLLINGKey = "INSTRUMENT_SOURCE_POLLING";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_SOURCE_POLLINGKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_SOURCE_POLLING, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_SOURCE_STREAMINGKey = "INSTRUMENT_SOURCE_STREAMING";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_SOURCE_STREAMINGKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_SOURCE_STREAMING, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_STATUSKey = "INSTRUMENT_STATUS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_STATUSKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_STATUS, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUESTKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUESTKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUESTKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUESTKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUESTKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUESTKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUESTKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATIONKey = "INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATIONKey);
	if (node !=NULL) {
	

		if (isprimitive("bool")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION, node, "bool", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_REST_URIKey = "INSTRUMENT_TRADE_SPOT_REST_URI";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_REST_URIKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_REST_URI, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_REST_URLKey = "INSTRUMENT_TRADE_SPOT_REST_URL";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_REST_URLKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_REST_URL, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTIONKey = "INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION";
	node = json_object_get_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTIONKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MSKey = "LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS";
	node = json_object_get_member(pJsonObject, lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS, node, "int", "");
		} else {
			
		}
	}
	const gchar *lAST_SEEN_ON_BLOB_TSKey = "LAST_SEEN_ON_BLOB_TS";
	node = json_object_get_member(pJsonObject, lAST_SEEN_ON_BLOB_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&lAST_SEEN_ON_BLOB_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *lAST_SEEN_ON_FIX_TSKey = "LAST_SEEN_ON_FIX_TS";
	node = json_object_get_member(pJsonObject, lAST_SEEN_ON_FIX_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&lAST_SEEN_ON_FIX_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *lAST_SEEN_ON_HARDCODED_TSKey = "LAST_SEEN_ON_HARDCODED_TS";
	node = json_object_get_member(pJsonObject, lAST_SEEN_ON_HARDCODED_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&lAST_SEEN_ON_HARDCODED_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *lAST_SEEN_ON_INDEX_COMPOSITION_TSKey = "LAST_SEEN_ON_INDEX_COMPOSITION_TS";
	node = json_object_get_member(pJsonObject, lAST_SEEN_ON_INDEX_COMPOSITION_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&lAST_SEEN_ON_INDEX_COMPOSITION_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *lAST_SEEN_ON_NSQ_TSKey = "LAST_SEEN_ON_NSQ_TS";
	node = json_object_get_member(pJsonObject, lAST_SEEN_ON_NSQ_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&lAST_SEEN_ON_NSQ_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *lAST_SEEN_ON_POLLING_TSKey = "LAST_SEEN_ON_POLLING_TS";
	node = json_object_get_member(pJsonObject, lAST_SEEN_ON_POLLING_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&lAST_SEEN_ON_POLLING_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *lAST_SEEN_ON_STREAMING_TSKey = "LAST_SEEN_ON_STREAMING_TS";
	node = json_object_get_member(pJsonObject, lAST_SEEN_ON_STREAMING_TSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&lAST_SEEN_ON_STREAMING_TS, node, "int", "");
		} else {
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_BACKFILLKey = "LAST_TRADE_SPOT_FROM_BACKFILL";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_BACKFILLKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_BACKFILL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_BACKFILL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey = "LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_BLOBKey = "LAST_TRADE_SPOT_FROM_BLOB";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_BLOBKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_BLOB, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_BLOB);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_BLOB_EXTERNALKey = "LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_BLOB_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_CALCULATEDKey = "LAST_TRADE_SPOT_FROM_CALCULATED";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_CALCULATEDKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_CALCULATED, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_CALCULATED);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey = "LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_FIXKey = "LAST_TRADE_SPOT_FROM_FIX";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_FIXKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_FIX, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_FIX);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_FIX_EXTERNALKey = "LAST_TRADE_SPOT_FROM_FIX_EXTERNAL";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_FIX_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_FIX_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_FIX_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_GOKey = "LAST_TRADE_SPOT_FROM_GO";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_GOKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_GO, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_GO);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_GO_EXTERNALKey = "LAST_TRADE_SPOT_FROM_GO_EXTERNAL";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_GO_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_GO_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_GO_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_POLLINGKey = "LAST_TRADE_SPOT_FROM_POLLING";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_POLLINGKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_POLLING, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_POLLING);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_POLLING_EXTERNALKey = "LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_POLLING_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_STREAMINGKey = "LAST_TRADE_SPOT_FROM_STREAMING";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_STREAMINGKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_STREAMING, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_STREAMING);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *lAST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey = "LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL";
	node = json_object_get_member(pJsonObject, lAST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *mETADATA_VERSIONKey = "METADATA_VERSION";
	node = json_object_get_member(pJsonObject, mETADATA_VERSIONKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&mETADATA_VERSION, node, "int", "");
		} else {
			
		}
	}
	const gchar *pROCESSING_TRADES_FROM_BLOB_STATUSKey = "PROCESSING_TRADES_FROM_BLOB_STATUS";
	node = json_object_get_member(pJsonObject, pROCESSING_TRADES_FROM_BLOB_STATUSKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&pROCESSING_TRADES_FROM_BLOB_STATUS, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *tOTAL_TRADES_SPOTKey = "TOTAL_TRADES_SPOT";
	node = json_object_get_member(pJsonObject, tOTAL_TRADES_SPOTKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&tOTAL_TRADES_SPOT, node, "int", "");
		} else {
			
		}
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA";
	node = json_object_get_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATAKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA";
	node = json_object_get_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATAKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA";
	node = json_object_get_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATAKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA";
	node = json_object_get_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATAKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA";
	node = json_object_get_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATAKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA";
	node = json_object_get_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATAKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA";
	node = json_object_get_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATAKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA, node, "std::string", "");
		} else {
			
			std::string* obj = static_cast<std::string*> (&uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SPOT_INSTRUMENT_METADATA::SPOT_INSTRUMENT_METADATA(char* json)
{
	this->fromJson(json);
}

char*
SPOT_INSTRUMENT_METADATA::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("int")) {
		int obj = getFIRSTSEENONBLOBTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *fIRST_SEEN_ON_BLOB_TSKey = "FIRST_SEEN_ON_BLOB_TS";
	json_object_set_member(pJsonObject, fIRST_SEEN_ON_BLOB_TSKey, node);
	if (isprimitive("int")) {
		int obj = getFIRSTSEENONFIXTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *fIRST_SEEN_ON_FIX_TSKey = "FIRST_SEEN_ON_FIX_TS";
	json_object_set_member(pJsonObject, fIRST_SEEN_ON_FIX_TSKey, node);
	if (isprimitive("int")) {
		int obj = getFIRSTSEENONHARDCODEDTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *fIRST_SEEN_ON_HARDCODED_TSKey = "FIRST_SEEN_ON_HARDCODED_TS";
	json_object_set_member(pJsonObject, fIRST_SEEN_ON_HARDCODED_TSKey, node);
	if (isprimitive("int")) {
		int obj = getFIRSTSEENONINDEXCOMPOSITIONTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *fIRST_SEEN_ON_INDEX_COMPOSITION_TSKey = "FIRST_SEEN_ON_INDEX_COMPOSITION_TS";
	json_object_set_member(pJsonObject, fIRST_SEEN_ON_INDEX_COMPOSITION_TSKey, node);
	if (isprimitive("int")) {
		int obj = getFIRSTSEENONNSQTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *fIRST_SEEN_ON_NSQ_TSKey = "FIRST_SEEN_ON_NSQ_TS";
	json_object_set_member(pJsonObject, fIRST_SEEN_ON_NSQ_TSKey, node);
	if (isprimitive("int")) {
		int obj = getFIRSTSEENONPOLLINGTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *fIRST_SEEN_ON_POLLING_TSKey = "FIRST_SEEN_ON_POLLING_TS";
	json_object_set_member(pJsonObject, fIRST_SEEN_ON_POLLING_TSKey, node);
	if (isprimitive("int")) {
		int obj = getFIRSTSEENONSTREAMINGTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *fIRST_SEEN_ON_STREAMING_TSKey = "FIRST_SEEN_ON_STREAMING_TS";
	json_object_set_member(pJsonObject, fIRST_SEEN_ON_STREAMING_TSKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMBACKFILL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMBACKFILL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_BACKFILLKey = "FIRST_TRADE_SPOT_FROM_BACKFILL";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_BACKFILLKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMBACKFILLEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMBACKFILLEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMBLOB();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMBLOB());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_BLOBKey = "FIRST_TRADE_SPOT_FROM_BLOB";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_BLOBKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMBLOBEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMBLOBEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_BLOB_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_BLOB_EXTERNALKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMCALCULATED();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMCALCULATED());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_CALCULATEDKey = "FIRST_TRADE_SPOT_FROM_CALCULATED";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_CALCULATEDKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMCALCULATEDEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMCALCULATEDEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMFIX();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMFIX());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_FIXKey = "FIRST_TRADE_SPOT_FROM_FIX";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_FIXKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMFIXEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMFIXEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_FIX_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_FIX_EXTERNALKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMGO();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMGO());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_GOKey = "FIRST_TRADE_SPOT_FROM_GO";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_GOKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMGOEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMGOEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_GO_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_GO_EXTERNAL";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_GO_EXTERNALKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMPOLLING();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMPOLLING());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_POLLINGKey = "FIRST_TRADE_SPOT_FROM_POLLING";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_POLLINGKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMPOLLINGEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMPOLLINGEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_POLLING_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_POLLING_EXTERNALKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMSTREAMING();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMSTREAMING());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_STREAMINGKey = "FIRST_TRADE_SPOT_FROM_STREAMING";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_STREAMINGKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFIRSTTRADESPOTFROMSTREAMINGEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getFIRSTTRADESPOTFROMSTREAMINGEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey = "FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL";
	json_object_set_member(pJsonObject, fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getHOSTMIGRATIONDESTINATION();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *hOST_MIGRATION_DESTINATIONKey = "HOST_MIGRATION_DESTINATION";
	json_object_set_member(pJsonObject, hOST_MIGRATION_DESTINATIONKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getHOSTMIGRATIONSOURCE();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *hOST_MIGRATION_SOURCEKey = "HOST_MIGRATION_SOURCE";
	json_object_set_member(pJsonObject, hOST_MIGRATION_SOURCEKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getHOSTMIGRATIONSTATUS();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *hOST_MIGRATION_STATUSKey = "HOST_MIGRATION_STATUS";
	json_object_set_member(pJsonObject, hOST_MIGRATION_STATUSKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENT();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENTKey = "INSTRUMENT";
	json_object_set_member(pJsonObject, iNSTRUMENTKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTEXTERNALDATA();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_EXTERNAL_DATAKey = "INSTRUMENT_EXTERNAL_DATA";
	json_object_set_member(pJsonObject, iNSTRUMENT_EXTERNAL_DATAKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTMAPPING();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getINSTRUMENTMAPPING());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *iNSTRUMENT_MAPPINGKey = "INSTRUMENT_MAPPING";
	json_object_set_member(pJsonObject, iNSTRUMENT_MAPPINGKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getINSTRUMENTMAPPINGHISTORY());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getINSTRUMENTMAPPINGHISTORY());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *iNSTRUMENT_MAPPING_HISTORYKey = "INSTRUMENT_MAPPING_HISTORY";
	json_object_set_member(pJsonObject, iNSTRUMENT_MAPPING_HISTORYKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTSOURCEBACKFILL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_SOURCE_BACKFILLKey = "INSTRUMENT_SOURCE_BACKFILL";
	json_object_set_member(pJsonObject, iNSTRUMENT_SOURCE_BACKFILLKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTSOURCEBLOB();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_SOURCE_BLOBKey = "INSTRUMENT_SOURCE_BLOB";
	json_object_set_member(pJsonObject, iNSTRUMENT_SOURCE_BLOBKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTSOURCECALCULATED();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_SOURCE_CALCULATEDKey = "INSTRUMENT_SOURCE_CALCULATED";
	json_object_set_member(pJsonObject, iNSTRUMENT_SOURCE_CALCULATEDKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTSOURCEFIX();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_SOURCE_FIXKey = "INSTRUMENT_SOURCE_FIX";
	json_object_set_member(pJsonObject, iNSTRUMENT_SOURCE_FIXKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTSOURCEGO();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_SOURCE_GOKey = "INSTRUMENT_SOURCE_GO";
	json_object_set_member(pJsonObject, iNSTRUMENT_SOURCE_GOKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTSOURCEPOLLING();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_SOURCE_POLLINGKey = "INSTRUMENT_SOURCE_POLLING";
	json_object_set_member(pJsonObject, iNSTRUMENT_SOURCE_POLLINGKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTSOURCESTREAMING();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_SOURCE_STREAMINGKey = "INSTRUMENT_SOURCE_STREAMING";
	json_object_set_member(pJsonObject, iNSTRUMENT_SOURCE_STREAMINGKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTSTATUS();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_STATUSKey = "INSTRUMENT_STATUS";
	json_object_set_member(pJsonObject, iNSTRUMENT_STATUSKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getINSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUESTKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TSKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getINSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUESTKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TSKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getINSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUESTKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TSKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getINSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUESTKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TSKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getINSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUESTKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TSKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getINSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUESTKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TSKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getINSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUESTKey = "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUESTKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TSKey, node);
	if (isprimitive("int")) {
		int obj = getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TSKey = "INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TSKey, node);
	if (isprimitive("bool")) {
		bool obj = getINSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION();
		node = converttoJson(&obj, "bool", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATIONKey = "INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATIONKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTTRADESPOTRESTURI();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_REST_URIKey = "INSTRUMENT_TRADE_SPOT_REST_URI";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_REST_URIKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTTRADESPOTRESTURL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_REST_URLKey = "INSTRUMENT_TRADE_SPOT_REST_URL";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_REST_URLKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTIONKey = "INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION";
	json_object_set_member(pJsonObject, iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTIONKey, node);
	if (isprimitive("int")) {
		int obj = getLASTCONCURRENTBATCHOFTRADESSPOTMS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MSKey = "LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS";
	json_object_set_member(pJsonObject, lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MSKey, node);
	if (isprimitive("int")) {
		int obj = getLASTSEENONBLOBTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *lAST_SEEN_ON_BLOB_TSKey = "LAST_SEEN_ON_BLOB_TS";
	json_object_set_member(pJsonObject, lAST_SEEN_ON_BLOB_TSKey, node);
	if (isprimitive("int")) {
		int obj = getLASTSEENONFIXTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *lAST_SEEN_ON_FIX_TSKey = "LAST_SEEN_ON_FIX_TS";
	json_object_set_member(pJsonObject, lAST_SEEN_ON_FIX_TSKey, node);
	if (isprimitive("int")) {
		int obj = getLASTSEENONHARDCODEDTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *lAST_SEEN_ON_HARDCODED_TSKey = "LAST_SEEN_ON_HARDCODED_TS";
	json_object_set_member(pJsonObject, lAST_SEEN_ON_HARDCODED_TSKey, node);
	if (isprimitive("int")) {
		int obj = getLASTSEENONINDEXCOMPOSITIONTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *lAST_SEEN_ON_INDEX_COMPOSITION_TSKey = "LAST_SEEN_ON_INDEX_COMPOSITION_TS";
	json_object_set_member(pJsonObject, lAST_SEEN_ON_INDEX_COMPOSITION_TSKey, node);
	if (isprimitive("int")) {
		int obj = getLASTSEENONNSQTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *lAST_SEEN_ON_NSQ_TSKey = "LAST_SEEN_ON_NSQ_TS";
	json_object_set_member(pJsonObject, lAST_SEEN_ON_NSQ_TSKey, node);
	if (isprimitive("int")) {
		int obj = getLASTSEENONPOLLINGTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *lAST_SEEN_ON_POLLING_TSKey = "LAST_SEEN_ON_POLLING_TS";
	json_object_set_member(pJsonObject, lAST_SEEN_ON_POLLING_TSKey, node);
	if (isprimitive("int")) {
		int obj = getLASTSEENONSTREAMINGTS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *lAST_SEEN_ON_STREAMING_TSKey = "LAST_SEEN_ON_STREAMING_TS";
	json_object_set_member(pJsonObject, lAST_SEEN_ON_STREAMING_TSKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMBACKFILL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMBACKFILL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_BACKFILLKey = "LAST_TRADE_SPOT_FROM_BACKFILL";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_BACKFILLKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMBACKFILLEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMBACKFILLEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey = "LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNALKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMBLOB();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMBLOB());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_BLOBKey = "LAST_TRADE_SPOT_FROM_BLOB";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_BLOBKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMBLOBEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMBLOBEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_BLOB_EXTERNALKey = "LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_BLOB_EXTERNALKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMCALCULATED();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMCALCULATED());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_CALCULATEDKey = "LAST_TRADE_SPOT_FROM_CALCULATED";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_CALCULATEDKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMCALCULATEDEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMCALCULATEDEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey = "LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNALKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMFIX();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMFIX());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_FIXKey = "LAST_TRADE_SPOT_FROM_FIX";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_FIXKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMFIXEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMFIXEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_FIX_EXTERNALKey = "LAST_TRADE_SPOT_FROM_FIX_EXTERNAL";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_FIX_EXTERNALKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMGO();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMGO());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_GOKey = "LAST_TRADE_SPOT_FROM_GO";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_GOKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMGOEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMGOEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_GO_EXTERNALKey = "LAST_TRADE_SPOT_FROM_GO_EXTERNAL";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_GO_EXTERNALKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMPOLLING();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMPOLLING());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_POLLINGKey = "LAST_TRADE_SPOT_FROM_POLLING";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_POLLINGKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMPOLLINGEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMPOLLINGEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_POLLING_EXTERNALKey = "LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_POLLING_EXTERNALKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMSTREAMING();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMSTREAMING());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_STREAMINGKey = "LAST_TRADE_SPOT_FROM_STREAMING";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_STREAMINGKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLASTTRADESPOTFROMSTREAMINGEXTERNAL();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getLASTTRADESPOTFROMSTREAMINGEXTERNAL());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *lAST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey = "LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL";
	json_object_set_member(pJsonObject, lAST_TRADE_SPOT_FROM_STREAMING_EXTERNALKey, node);
	if (isprimitive("int")) {
		int obj = getMETADATAVERSION();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *mETADATA_VERSIONKey = "METADATA_VERSION";
	json_object_set_member(pJsonObject, mETADATA_VERSIONKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPROCESSINGTRADESFROMBLOBSTATUS();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *pROCESSING_TRADES_FROM_BLOB_STATUSKey = "PROCESSING_TRADES_FROM_BLOB_STATUS";
	json_object_set_member(pJsonObject, pROCESSING_TRADES_FROM_BLOB_STATUSKey, node);
	if (isprimitive("int")) {
		int obj = getTOTALTRADESSPOT();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *tOTAL_TRADES_SPOTKey = "TOTAL_TRADES_SPOT";
	json_object_set_member(pJsonObject, tOTAL_TRADES_SPOTKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getUNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA";
	json_object_set_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATAKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getUNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA";
	json_object_set_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATAKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getUNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA";
	json_object_set_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATAKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getUNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA";
	json_object_set_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATAKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getUNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA";
	json_object_set_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATAKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getUNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA";
	json_object_set_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATAKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
		std::string obj = static_cast<std::string> (getUNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATAKey = "UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA";
	json_object_set_member(pJsonObject, uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATAKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMBACKFILL()
{
	return fIRST_TRADE_SPOT_FROM_BACKFILL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMBACKFILL(std::string  fIRST_TRADE_SPOT_FROM_BACKFILL)
{
	this->fIRST_TRADE_SPOT_FROM_BACKFILL = fIRST_TRADE_SPOT_FROM_BACKFILL;
}

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMBACKFILLEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMBACKFILLEXTERNAL(std::string  fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL)
{
	this->fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
}

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMBLOB()
{
	return fIRST_TRADE_SPOT_FROM_BLOB;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMBLOB(std::string  fIRST_TRADE_SPOT_FROM_BLOB)
{
	this->fIRST_TRADE_SPOT_FROM_BLOB = fIRST_TRADE_SPOT_FROM_BLOB;
}

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMBLOBEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMBLOBEXTERNAL(std::string  fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL)
{
	this->fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL = fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
}

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMCALCULATED()
{
	return fIRST_TRADE_SPOT_FROM_CALCULATED;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMCALCULATED(std::string  fIRST_TRADE_SPOT_FROM_CALCULATED)
{
	this->fIRST_TRADE_SPOT_FROM_CALCULATED = fIRST_TRADE_SPOT_FROM_CALCULATED;
}

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMCALCULATEDEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMCALCULATEDEXTERNAL(std::string  fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL)
{
	this->fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
}

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMFIX()
{
	return fIRST_TRADE_SPOT_FROM_FIX;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMFIX(std::string  fIRST_TRADE_SPOT_FROM_FIX)
{
	this->fIRST_TRADE_SPOT_FROM_FIX = fIRST_TRADE_SPOT_FROM_FIX;
}

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMFIXEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMFIXEXTERNAL(std::string  fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL)
{
	this->fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL = fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;
}

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMGO()
{
	return fIRST_TRADE_SPOT_FROM_GO;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMGO(std::string  fIRST_TRADE_SPOT_FROM_GO)
{
	this->fIRST_TRADE_SPOT_FROM_GO = fIRST_TRADE_SPOT_FROM_GO;
}

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMGOEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_GO_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMGOEXTERNAL(std::string  fIRST_TRADE_SPOT_FROM_GO_EXTERNAL)
{
	this->fIRST_TRADE_SPOT_FROM_GO_EXTERNAL = fIRST_TRADE_SPOT_FROM_GO_EXTERNAL;
}

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMPOLLING()
{
	return fIRST_TRADE_SPOT_FROM_POLLING;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMPOLLING(std::string  fIRST_TRADE_SPOT_FROM_POLLING)
{
	this->fIRST_TRADE_SPOT_FROM_POLLING = fIRST_TRADE_SPOT_FROM_POLLING;
}

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMPOLLINGEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMPOLLINGEXTERNAL(std::string  fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL)
{
	this->fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL = fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
}

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMSTREAMING()
{
	return fIRST_TRADE_SPOT_FROM_STREAMING;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMSTREAMING(std::string  fIRST_TRADE_SPOT_FROM_STREAMING)
{
	this->fIRST_TRADE_SPOT_FROM_STREAMING = fIRST_TRADE_SPOT_FROM_STREAMING;
}

std::string
SPOT_INSTRUMENT_METADATA::getFIRSTTRADESPOTFROMSTREAMINGEXTERNAL()
{
	return fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setFIRSTTRADESPOTFROMSTREAMINGEXTERNAL(std::string  fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL)
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

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTMAPPING()
{
	return iNSTRUMENT_MAPPING;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTMAPPING(std::string  iNSTRUMENT_MAPPING)
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

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST(std::string  iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST)
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

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST(std::string  iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST)
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

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST(std::string  iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST)
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

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST(std::string  iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST)
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

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST(std::string  iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST)
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

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST(std::string  iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST)
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

std::string
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST()
{
	return iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;
}

void
SPOT_INSTRUMENT_METADATA::setINSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST(std::string  iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST)
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
SPOT_INSTRUMENT_METADATA::getINSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION()
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

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMBACKFILL()
{
	return lAST_TRADE_SPOT_FROM_BACKFILL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMBACKFILL(std::string  lAST_TRADE_SPOT_FROM_BACKFILL)
{
	this->lAST_TRADE_SPOT_FROM_BACKFILL = lAST_TRADE_SPOT_FROM_BACKFILL;
}

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMBACKFILLEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMBACKFILLEXTERNAL(std::string  lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL)
{
	this->lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL = lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
}

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMBLOB()
{
	return lAST_TRADE_SPOT_FROM_BLOB;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMBLOB(std::string  lAST_TRADE_SPOT_FROM_BLOB)
{
	this->lAST_TRADE_SPOT_FROM_BLOB = lAST_TRADE_SPOT_FROM_BLOB;
}

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMBLOBEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMBLOBEXTERNAL(std::string  lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL)
{
	this->lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL = lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
}

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMCALCULATED()
{
	return lAST_TRADE_SPOT_FROM_CALCULATED;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMCALCULATED(std::string  lAST_TRADE_SPOT_FROM_CALCULATED)
{
	this->lAST_TRADE_SPOT_FROM_CALCULATED = lAST_TRADE_SPOT_FROM_CALCULATED;
}

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMCALCULATEDEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMCALCULATEDEXTERNAL(std::string  lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL)
{
	this->lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL = lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
}

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMFIX()
{
	return lAST_TRADE_SPOT_FROM_FIX;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMFIX(std::string  lAST_TRADE_SPOT_FROM_FIX)
{
	this->lAST_TRADE_SPOT_FROM_FIX = lAST_TRADE_SPOT_FROM_FIX;
}

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMFIXEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_FIX_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMFIXEXTERNAL(std::string  lAST_TRADE_SPOT_FROM_FIX_EXTERNAL)
{
	this->lAST_TRADE_SPOT_FROM_FIX_EXTERNAL = lAST_TRADE_SPOT_FROM_FIX_EXTERNAL;
}

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMGO()
{
	return lAST_TRADE_SPOT_FROM_GO;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMGO(std::string  lAST_TRADE_SPOT_FROM_GO)
{
	this->lAST_TRADE_SPOT_FROM_GO = lAST_TRADE_SPOT_FROM_GO;
}

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMGOEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_GO_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMGOEXTERNAL(std::string  lAST_TRADE_SPOT_FROM_GO_EXTERNAL)
{
	this->lAST_TRADE_SPOT_FROM_GO_EXTERNAL = lAST_TRADE_SPOT_FROM_GO_EXTERNAL;
}

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMPOLLING()
{
	return lAST_TRADE_SPOT_FROM_POLLING;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMPOLLING(std::string  lAST_TRADE_SPOT_FROM_POLLING)
{
	this->lAST_TRADE_SPOT_FROM_POLLING = lAST_TRADE_SPOT_FROM_POLLING;
}

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMPOLLINGEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMPOLLINGEXTERNAL(std::string  lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL)
{
	this->lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL = lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
}

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMSTREAMING()
{
	return lAST_TRADE_SPOT_FROM_STREAMING;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMSTREAMING(std::string  lAST_TRADE_SPOT_FROM_STREAMING)
{
	this->lAST_TRADE_SPOT_FROM_STREAMING = lAST_TRADE_SPOT_FROM_STREAMING;
}

std::string
SPOT_INSTRUMENT_METADATA::getLASTTRADESPOTFROMSTREAMINGEXTERNAL()
{
	return lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
}

void
SPOT_INSTRUMENT_METADATA::setLASTTRADESPOTFROMSTREAMINGEXTERNAL(std::string  lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL)
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

std::string
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA(std::string  uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;
}

std::string
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA(std::string  uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;
}

std::string
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA(std::string  uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;
}

std::string
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA(std::string  uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;
}

std::string
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA(std::string  uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;
}

std::string
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA(std::string  uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;
}

std::string
SPOT_INSTRUMENT_METADATA::getUNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA()
{
	return uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;
}

void
SPOT_INSTRUMENT_METADATA::setUNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA(std::string  uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA)
{
	this->uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA = uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;
}


