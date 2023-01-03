
/*
 * SPOT_INSTRUMENT_METADATA.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_SPOT_INSTRUMENT_METADATA_H_
#define TINY_CPP_CLIENT_SPOT_INSTRUMENT_METADATA_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Object.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class SPOT_INSTRUMENT_METADATA{
public:

    /*! \brief Constructor.
	 */
    SPOT_INSTRUMENT_METADATA();
    SPOT_INSTRUMENT_METADATA(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~SPOT_INSTRUMENT_METADATA();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get This is the first time instrument was seen on instrumentListSourceType BLOB.
	 */
	int getFIRSTSEENONBLOBTS();

	/*! \brief Set This is the first time instrument was seen on instrumentListSourceType BLOB.
	 */
	void setFIRSTSEENONBLOBTS(int  fIRST_SEEN_ON_BLOB_TS);
	/*! \brief Get This is the first time instrument was seen on instrumentListSourceType FIX.
	 */
	int getFIRSTSEENONFIXTS();

	/*! \brief Set This is the first time instrument was seen on instrumentListSourceType FIX.
	 */
	void setFIRSTSEENONFIXTS(int  fIRST_SEEN_ON_FIX_TS);
	/*! \brief Get This is the first time instrument was seen on instrumentListSourceType HARDCODED.
	 */
	int getFIRSTSEENONHARDCODEDTS();

	/*! \brief Set This is the first time instrument was seen on instrumentListSourceType HARDCODED.
	 */
	void setFIRSTSEENONHARDCODEDTS(int  fIRST_SEEN_ON_HARDCODED_TS);
	/*! \brief Get This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
	 */
	int getFIRSTSEENONINDEXCOMPOSITIONTS();

	/*! \brief Set This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
	 */
	void setFIRSTSEENONINDEXCOMPOSITIONTS(int  fIRST_SEEN_ON_INDEX_COMPOSITION_TS);
	/*! \brief Get This is the first time instrument was seen on instrumentListSourceType NSQ.
	 */
	int getFIRSTSEENONNSQTS();

	/*! \brief Set This is the first time instrument was seen on instrumentListSourceType NSQ.
	 */
	void setFIRSTSEENONNSQTS(int  fIRST_SEEN_ON_NSQ_TS);
	/*! \brief Get This is the first time instrument was seen on instrumentListSourceType POLLING.
	 */
	int getFIRSTSEENONPOLLINGTS();

	/*! \brief Set This is the first time instrument was seen on instrumentListSourceType POLLING.
	 */
	void setFIRSTSEENONPOLLINGTS(int  fIRST_SEEN_ON_POLLING_TS);
	/*! \brief Get This is the first time instrument was seen on instrumentListSourceType STREAMING.
	 */
	int getFIRSTSEENONSTREAMINGTS();

	/*! \brief Set This is the first time instrument was seen on instrumentListSourceType STREAMING.
	 */
	void setFIRSTSEENONSTREAMINGTS(int  fIRST_SEEN_ON_STREAMING_TS);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getFIRSTTRADESPOTFROMBACKFILL();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setFIRSTTRADESPOTFROMBACKFILL(Object  fIRST_TRADE_SPOT_FROM_BACKFILL);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	Object getFIRSTTRADESPOTFROMBACKFILLEXTERNAL();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	void setFIRSTTRADESPOTFROMBACKFILLEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getFIRSTTRADESPOTFROMBLOB();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setFIRSTTRADESPOTFROMBLOB(Object  fIRST_TRADE_SPOT_FROM_BLOB);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	Object getFIRSTTRADESPOTFROMBLOBEXTERNAL();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	void setFIRSTTRADESPOTFROMBLOBEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getFIRSTTRADESPOTFROMCALCULATED();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setFIRSTTRADESPOTFROMCALCULATED(Object  fIRST_TRADE_SPOT_FROM_CALCULATED);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	Object getFIRSTTRADESPOTFROMCALCULATEDEXTERNAL();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	void setFIRSTTRADESPOTFROMCALCULATEDEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getFIRSTTRADESPOTFROMFIX();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setFIRSTTRADESPOTFROMFIX(Object  fIRST_TRADE_SPOT_FROM_FIX);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	Object getFIRSTTRADESPOTFROMFIXEXTERNAL();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	void setFIRSTTRADESPOTFROMFIXEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getFIRSTTRADESPOTFROMGO();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setFIRSTTRADESPOTFROMGO(Object  fIRST_TRADE_SPOT_FROM_GO);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	Object getFIRSTTRADESPOTFROMGOEXTERNAL();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	void setFIRSTTRADESPOTFROMGOEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_GO_EXTERNAL);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getFIRSTTRADESPOTFROMPOLLING();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setFIRSTTRADESPOTFROMPOLLING(Object  fIRST_TRADE_SPOT_FROM_POLLING);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	Object getFIRSTTRADESPOTFROMPOLLINGEXTERNAL();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	void setFIRSTTRADESPOTFROMPOLLINGEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getFIRSTTRADESPOTFROMSTREAMING();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setFIRSTTRADESPOTFROMSTREAMING(Object  fIRST_TRADE_SPOT_FROM_STREAMING);
	/*! \brief Get This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	Object getFIRSTTRADESPOTFROMSTREAMINGEXTERNAL();

	/*! \brief Set This is the first TRADE_SPOT that we have seen on the specific source type in external format.
	 */
	void setFIRSTTRADESPOTFROMSTREAMINGEXTERNAL(Object  fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL);
	/*! \brief Get The migration destination vm hostname.
	 */
	std::string getHOSTMIGRATIONDESTINATION();

	/*! \brief Set The migration destination vm hostname.
	 */
	void setHOSTMIGRATIONDESTINATION(std::string  hOST_MIGRATION_DESTINATION);
	/*! \brief Get The migration source vm hostname.
	 */
	std::string getHOSTMIGRATIONSOURCE();

	/*! \brief Set The migration source vm hostname.
	 */
	void setHOSTMIGRATIONSOURCE(std::string  hOST_MIGRATION_SOURCE);
	/*! \brief Get The migration status of the symbol, we only poll / stream / connect empty or SETTLED
	 */
	std::string getHOSTMIGRATIONSTATUS();

	/*! \brief Set The migration status of the symbol, we only poll / stream / connect empty or SETTLED
	 */
	void setHOSTMIGRATIONSTATUS(std::string  hOST_MIGRATION_STATUS);
	/*! \brief Get The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&?
	 */
	std::string getINSTRUMENT();

	/*! \brief Set The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&?
	 */
	void setINSTRUMENT(std::string  iNSTRUMENT);
	/*! \brief Get The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange.
	 */
	std::string getINSTRUMENTEXTERNALDATA();

	/*! \brief Set The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange.
	 */
	void setINSTRUMENTEXTERNALDATA(std::string  iNSTRUMENT_EXTERNAL_DATA);
	/*! \brief Get The current mapping information for this instrument
	 */
	Object getINSTRUMENTMAPPING();

	/*! \brief Set The current mapping information for this instrument
	 */
	void setINSTRUMENTMAPPING(Object  iNSTRUMENT_MAPPING);
	/*! \brief Get Historical mapping information for this instrument
	 */
	std::list<std::string> getINSTRUMENTMAPPINGHISTORY();

	/*! \brief Set Historical mapping information for this instrument
	 */
	void setINSTRUMENTMAPPINGHISTORY(std::list <std::string> iNSTRUMENT_MAPPING_HISTORY);
	/*! \brief Get Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	std::string getINSTRUMENTSOURCEBACKFILL();

	/*! \brief Set Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	void setINSTRUMENTSOURCEBACKFILL(std::string  iNSTRUMENT_SOURCE_BACKFILL);
	/*! \brief Get Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	std::string getINSTRUMENTSOURCEBLOB();

	/*! \brief Set Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	void setINSTRUMENTSOURCEBLOB(std::string  iNSTRUMENT_SOURCE_BLOB);
	/*! \brief Get Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	std::string getINSTRUMENTSOURCECALCULATED();

	/*! \brief Set Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	void setINSTRUMENTSOURCECALCULATED(std::string  iNSTRUMENT_SOURCE_CALCULATED);
	/*! \brief Get Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	std::string getINSTRUMENTSOURCEFIX();

	/*! \brief Set Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	void setINSTRUMENTSOURCEFIX(std::string  iNSTRUMENT_SOURCE_FIX);
	/*! \brief Get Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	std::string getINSTRUMENTSOURCEGO();

	/*! \brief Set Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	void setINSTRUMENTSOURCEGO(std::string  iNSTRUMENT_SOURCE_GO);
	/*! \brief Get Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	std::string getINSTRUMENTSOURCEPOLLING();

	/*! \brief Set Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	void setINSTRUMENTSOURCEPOLLING(std::string  iNSTRUMENT_SOURCE_POLLING);
	/*! \brief Get Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	std::string getINSTRUMENTSOURCESTREAMING();

	/*! \brief Set Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from.
	 */
	void setINSTRUMENTSOURCESTREAMING(std::string  iNSTRUMENT_SOURCE_STREAMING);
	/*! \brief Get The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data.
	 */
	std::string getINSTRUMENTSTATUS();

	/*! \brief Set The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data.
	 */
	void setINSTRUMENTSTATUS(std::string  iNSTRUMENT_STATUS);
	/*! \brief Get The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	Object getINSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST();

	/*! \brief Set The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST);
	/*! \brief Get The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS();

	/*! \brief Set The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS);
	/*! \brief Get The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS();

	/*! \brief Set The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS);
	/*! \brief Get The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS();

	/*! \brief Set The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS);
	/*! \brief Get The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	Object getINSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST();

	/*! \brief Set The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST);
	/*! \brief Get The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS();

	/*! \brief Set The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS);
	/*! \brief Get The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS();

	/*! \brief Set The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS);
	/*! \brief Get The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS();

	/*! \brief Set The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS);
	/*! \brief Get The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	Object getINSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST();

	/*! \brief Set The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST);
	/*! \brief Get The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS();

	/*! \brief Set The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS);
	/*! \brief Get The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS();

	/*! \brief Set The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS);
	/*! \brief Get The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS();

	/*! \brief Set The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS);
	/*! \brief Get The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	Object getINSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST();

	/*! \brief Set The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST);
	/*! \brief Get The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS();

	/*! \brief Set The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS);
	/*! \brief Get The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS();

	/*! \brief Set The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS);
	/*! \brief Get The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS();

	/*! \brief Set The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS);
	/*! \brief Get The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	Object getINSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST();

	/*! \brief Set The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST);
	/*! \brief Get The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS();

	/*! \brief Set The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS);
	/*! \brief Get The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS();

	/*! \brief Set The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS);
	/*! \brief Get The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS();

	/*! \brief Set The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS);
	/*! \brief Get The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	Object getINSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST();

	/*! \brief Set The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST);
	/*! \brief Get The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS();

	/*! \brief Set The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS);
	/*! \brief Get The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS();

	/*! \brief Set The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS);
	/*! \brief Get The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS();

	/*! \brief Set The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS);
	/*! \brief Get The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	Object getINSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST();

	/*! \brief Set The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST(Object  iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST);
	/*! \brief Get The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS();

	/*! \brief Set The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS);
	/*! \brief Get The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS();

	/*! \brief Set The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS(int  iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS);
	/*! \brief Get The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	int getINSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS();

	/*! \brief Set The next time we expect to make a request for TRADE_SPOT on this instrument.
	 */
	void setINSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS(int  iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS);
	/*! \brief Get This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration.
	 */
	bool isINSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION();

	/*! \brief Set This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration.
	 */
	void setINSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION(bool  iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION);
	/*! \brief Get This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT.
	 */
	std::string getINSTRUMENTTRADESPOTRESTURI();

	/*! \brief Set This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT.
	 */
	void setINSTRUMENTTRADESPOTRESTURI(std::string  iNSTRUMENT_TRADE_SPOT_REST_URI);
	/*! \brief Get The URL we send to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	std::string getINSTRUMENTTRADESPOTRESTURL();

	/*! \brief Set The URL we send to the proxy swarm to get TRADE_SPOT for the instrument.
	 */
	void setINSTRUMENTTRADESPOTRESTURL(std::string  iNSTRUMENT_TRADE_SPOT_REST_URL);
	/*! \brief Get This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument.
	 */
	std::string getINSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION();

	/*! \brief Set This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument.
	 */
	void setINSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION(std::string  iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION);
	/*! \brief Get The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter
	 */
	int getLASTCONCURRENTBATCHOFTRADESSPOTMS();

	/*! \brief Set The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter
	 */
	void setLASTCONCURRENTBATCHOFTRADESSPOTMS(int  lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS);
	/*! \brief Get This is the last time instrument was seen on instrumentListSourceType BLOB.
	 */
	int getLASTSEENONBLOBTS();

	/*! \brief Set This is the last time instrument was seen on instrumentListSourceType BLOB.
	 */
	void setLASTSEENONBLOBTS(int  lAST_SEEN_ON_BLOB_TS);
	/*! \brief Get This is the last time instrument was seen on instrumentListSourceType FIX.
	 */
	int getLASTSEENONFIXTS();

	/*! \brief Set This is the last time instrument was seen on instrumentListSourceType FIX.
	 */
	void setLASTSEENONFIXTS(int  lAST_SEEN_ON_FIX_TS);
	/*! \brief Get This is the last time instrument was seen on instrumentListSourceType HARDCODED.
	 */
	int getLASTSEENONHARDCODEDTS();

	/*! \brief Set This is the last time instrument was seen on instrumentListSourceType HARDCODED.
	 */
	void setLASTSEENONHARDCODEDTS(int  lAST_SEEN_ON_HARDCODED_TS);
	/*! \brief Get This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
	 */
	int getLASTSEENONINDEXCOMPOSITIONTS();

	/*! \brief Set This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION.
	 */
	void setLASTSEENONINDEXCOMPOSITIONTS(int  lAST_SEEN_ON_INDEX_COMPOSITION_TS);
	/*! \brief Get This is the last time instrument was seen on instrumentListSourceType NSQ.
	 */
	int getLASTSEENONNSQTS();

	/*! \brief Set This is the last time instrument was seen on instrumentListSourceType NSQ.
	 */
	void setLASTSEENONNSQTS(int  lAST_SEEN_ON_NSQ_TS);
	/*! \brief Get This is the last time instrument was seen on instrumentListSourceType POLLING.
	 */
	int getLASTSEENONPOLLINGTS();

	/*! \brief Set This is the last time instrument was seen on instrumentListSourceType POLLING.
	 */
	void setLASTSEENONPOLLINGTS(int  lAST_SEEN_ON_POLLING_TS);
	/*! \brief Get This is the last time instrument was seen on instrumentListSourceType STREAMING.
	 */
	int getLASTSEENONSTREAMINGTS();

	/*! \brief Set This is the last time instrument was seen on instrumentListSourceType STREAMING.
	 */
	void setLASTSEENONSTREAMINGTS(int  lAST_SEEN_ON_STREAMING_TS);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getLASTTRADESPOTFROMBACKFILL();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setLASTTRADESPOTFROMBACKFILL(Object  lAST_TRADE_SPOT_FROM_BACKFILL);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	Object getLASTTRADESPOTFROMBACKFILLEXTERNAL();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	void setLASTTRADESPOTFROMBACKFILLEXTERNAL(Object  lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getLASTTRADESPOTFROMBLOB();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setLASTTRADESPOTFROMBLOB(Object  lAST_TRADE_SPOT_FROM_BLOB);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	Object getLASTTRADESPOTFROMBLOBEXTERNAL();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	void setLASTTRADESPOTFROMBLOBEXTERNAL(Object  lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getLASTTRADESPOTFROMCALCULATED();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setLASTTRADESPOTFROMCALCULATED(Object  lAST_TRADE_SPOT_FROM_CALCULATED);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	Object getLASTTRADESPOTFROMCALCULATEDEXTERNAL();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	void setLASTTRADESPOTFROMCALCULATEDEXTERNAL(Object  lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getLASTTRADESPOTFROMFIX();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setLASTTRADESPOTFROMFIX(Object  lAST_TRADE_SPOT_FROM_FIX);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	Object getLASTTRADESPOTFROMFIXEXTERNAL();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	void setLASTTRADESPOTFROMFIXEXTERNAL(Object  lAST_TRADE_SPOT_FROM_FIX_EXTERNAL);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getLASTTRADESPOTFROMGO();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setLASTTRADESPOTFROMGO(Object  lAST_TRADE_SPOT_FROM_GO);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	Object getLASTTRADESPOTFROMGOEXTERNAL();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	void setLASTTRADESPOTFROMGOEXTERNAL(Object  lAST_TRADE_SPOT_FROM_GO_EXTERNAL);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getLASTTRADESPOTFROMPOLLING();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setLASTTRADESPOTFROMPOLLING(Object  lAST_TRADE_SPOT_FROM_POLLING);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	Object getLASTTRADESPOTFROMPOLLINGEXTERNAL();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	void setLASTTRADESPOTFROMPOLLINGEXTERNAL(Object  lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	Object getLASTTRADESPOTFROMSTREAMING();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific source type in internal format.
	 */
	void setLASTTRADESPOTFROMSTREAMING(Object  lAST_TRADE_SPOT_FROM_STREAMING);
	/*! \brief Get This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	Object getLASTTRADESPOTFROMSTREAMINGEXTERNAL();

	/*! \brief Set This is the last TRADE_SPOT that we have seen on the specific trade source in external format.
	 */
	void setLASTTRADESPOTFROMSTREAMINGEXTERNAL(Object  lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL);
	/*! \brief Get The version of metadata, used for version conversions/migrates.
	 */
	int getMETADATAVERSION();

	/*! \brief Set The version of metadata, used for version conversions/migrates.
	 */
	void setMETADATAVERSION(int  mETADATA_VERSION);
	/*! \brief Get This states the status of blob migration for this intrument on this exchange.
	 */
	std::string getPROCESSINGTRADESFROMBLOBSTATUS();

	/*! \brief Set This states the status of blob migration for this intrument on this exchange.
	 */
	void setPROCESSINGTRADESFROMBLOBSTATUS(std::string  pROCESSING_TRADES_FROM_BLOB_STATUS);
	/*! \brief Get This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument
	 */
	int getTOTALTRADESSPOT();

	/*! \brief Set This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument
	 */
	void setTOTALTRADESSPOT(int  tOTAL_TRADES_SPOT);
	/*! \brief Get This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	Object getUNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA();

	/*! \brief Set This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	void setUNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA);
	/*! \brief Get This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	Object getUNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA();

	/*! \brief Set This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	void setUNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA);
	/*! \brief Get This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	Object getUNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA();

	/*! \brief Set This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	void setUNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA);
	/*! \brief Get This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	Object getUNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA();

	/*! \brief Set This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	void setUNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA);
	/*! \brief Get This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	Object getUNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA();

	/*! \brief Set This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	void setUNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA);
	/*! \brief Get This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	Object getUNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA();

	/*! \brief Set This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	void setUNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA);
	/*! \brief Get This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	Object getUNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA();

	/*! \brief Set This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service.
	 */
	void setUNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA(Object  uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA);


    private:
    int fIRST_SEEN_ON_BLOB_TS{};
    int fIRST_SEEN_ON_FIX_TS{};
    int fIRST_SEEN_ON_HARDCODED_TS{};
    int fIRST_SEEN_ON_INDEX_COMPOSITION_TS{};
    int fIRST_SEEN_ON_NSQ_TS{};
    int fIRST_SEEN_ON_POLLING_TS{};
    int fIRST_SEEN_ON_STREAMING_TS{};
    Object fIRST_TRADE_SPOT_FROM_BACKFILL;
    Object fIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
    Object fIRST_TRADE_SPOT_FROM_BLOB;
    Object fIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
    Object fIRST_TRADE_SPOT_FROM_CALCULATED;
    Object fIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
    Object fIRST_TRADE_SPOT_FROM_FIX;
    Object fIRST_TRADE_SPOT_FROM_FIX_EXTERNAL;
    Object fIRST_TRADE_SPOT_FROM_GO;
    Object fIRST_TRADE_SPOT_FROM_GO_EXTERNAL;
    Object fIRST_TRADE_SPOT_FROM_POLLING;
    Object fIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
    Object fIRST_TRADE_SPOT_FROM_STREAMING;
    Object fIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
    std::string hOST_MIGRATION_DESTINATION{};
    std::string hOST_MIGRATION_SOURCE{};
    std::string hOST_MIGRATION_STATUS{};
    std::string iNSTRUMENT{};
    std::string iNSTRUMENT_EXTERNAL_DATA{};
    Object iNSTRUMENT_MAPPING;
    std::list<std::string> iNSTRUMENT_MAPPING_HISTORY;
    std::string iNSTRUMENT_SOURCE_BACKFILL{};
    std::string iNSTRUMENT_SOURCE_BLOB{};
    std::string iNSTRUMENT_SOURCE_CALCULATED{};
    std::string iNSTRUMENT_SOURCE_FIX{};
    std::string iNSTRUMENT_SOURCE_GO{};
    std::string iNSTRUMENT_SOURCE_POLLING{};
    std::string iNSTRUMENT_SOURCE_STREAMING{};
    std::string iNSTRUMENT_STATUS{};
    Object iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST;
    int iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS{};
    Object iNSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST;
    int iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS{};
    Object iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST;
    int iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS{};
    Object iNSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST;
    int iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS{};
    Object iNSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST;
    int iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS{};
    Object iNSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST;
    int iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS{};
    Object iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST;
    int iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS{};
    int iNSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS{};
    bool iNSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION{};
    std::string iNSTRUMENT_TRADE_SPOT_REST_URI{};
    std::string iNSTRUMENT_TRADE_SPOT_REST_URL{};
    std::string iNSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION{};
    int lAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS{};
    int lAST_SEEN_ON_BLOB_TS{};
    int lAST_SEEN_ON_FIX_TS{};
    int lAST_SEEN_ON_HARDCODED_TS{};
    int lAST_SEEN_ON_INDEX_COMPOSITION_TS{};
    int lAST_SEEN_ON_NSQ_TS{};
    int lAST_SEEN_ON_POLLING_TS{};
    int lAST_SEEN_ON_STREAMING_TS{};
    Object lAST_TRADE_SPOT_FROM_BACKFILL;
    Object lAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL;
    Object lAST_TRADE_SPOT_FROM_BLOB;
    Object lAST_TRADE_SPOT_FROM_BLOB_EXTERNAL;
    Object lAST_TRADE_SPOT_FROM_CALCULATED;
    Object lAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL;
    Object lAST_TRADE_SPOT_FROM_FIX;
    Object lAST_TRADE_SPOT_FROM_FIX_EXTERNAL;
    Object lAST_TRADE_SPOT_FROM_GO;
    Object lAST_TRADE_SPOT_FROM_GO_EXTERNAL;
    Object lAST_TRADE_SPOT_FROM_POLLING;
    Object lAST_TRADE_SPOT_FROM_POLLING_EXTERNAL;
    Object lAST_TRADE_SPOT_FROM_STREAMING;
    Object lAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL;
    int mETADATA_VERSION{};
    std::string pROCESSING_TRADES_FROM_BLOB_STATUS{};
    int tOTAL_TRADES_SPOT{};
    Object uNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA;
    Object uNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA;
    Object uNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA;
    Object uNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA;
    Object uNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA;
    Object uNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA;
    Object uNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA;
};
}

#endif /* TINY_CPP_CLIENT_SPOT_INSTRUMENT_METADATA_H_ */
