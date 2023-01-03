#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
* CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
*
* The version of the OpenAPI document: 2.1.1
* Contact: data@cryptocompare.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAISPOTINSTRUMENTMETADATA
@end

@interface OAISPOTINSTRUMENTMETADATA : OAIObject

/* This is the first time instrument was seen on instrumentListSourceType BLOB. [optional]
 */
@property(nonatomic) NSNumber* fIRSTSEENONBLOBTS;
/* This is the first time instrument was seen on instrumentListSourceType FIX. [optional]
 */
@property(nonatomic) NSNumber* fIRSTSEENONFIXTS;
/* This is the first time instrument was seen on instrumentListSourceType HARDCODED. [optional]
 */
@property(nonatomic) NSNumber* fIRSTSEENONHARDCODEDTS;
/* This is the first time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. [optional]
 */
@property(nonatomic) NSNumber* fIRSTSEENONINDEXCOMPOSITIONTS;
/* This is the first time instrument was seen on instrumentListSourceType NSQ. [optional]
 */
@property(nonatomic) NSNumber* fIRSTSEENONNSQTS;
/* This is the first time instrument was seen on instrumentListSourceType POLLING. [optional]
 */
@property(nonatomic) NSNumber* fIRSTSEENONPOLLINGTS;
/* This is the first time instrument was seen on instrumentListSourceType STREAMING. [optional]
 */
@property(nonatomic) NSNumber* fIRSTSEENONSTREAMINGTS;
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMBACKFILL;
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMBACKFILLEXTERNAL;
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMBLOB;
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMBLOBEXTERNAL;
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMCALCULATED;
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMCALCULATEDEXTERNAL;
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMFIX;
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMFIXEXTERNAL;
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMGO;
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMGOEXTERNAL;
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMPOLLING;
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMPOLLINGEXTERNAL;
/* This is the first TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMSTREAMING;
/* This is the first TRADE_SPOT that we have seen on the specific source type in external format. [optional]
 */
@property(nonatomic) NSObject* fIRSTTRADESPOTFROMSTREAMINGEXTERNAL;
/* The migration destination vm hostname. [optional]
 */
@property(nonatomic) NSString* hOSTMIGRATIONDESTINATION;
/* The migration source vm hostname. [optional]
 */
@property(nonatomic) NSString* hOSTMIGRATIONSOURCE;
/* The migration status of the symbol, we only poll / stream / connect empty or SETTLED [optional]
 */
@property(nonatomic) NSString* hOSTMIGRATIONSTATUS;
/* The instrument ID as it is on the exchange with small modifications - we do not allow the following characters inside isntrument ids: ,/&? [optional]
 */
@property(nonatomic) NSString* iNSTRUMENT;
/* The full data we get from the polling endpoint for this specific instrument. This is a JSON stringified object with different properties per exchange. [optional]
 */
@property(nonatomic) NSString* iNSTRUMENTEXTERNALDATA;
/* The current mapping information for this instrument [optional]
 */
@property(nonatomic) NSObject* iNSTRUMENTMAPPING;
/* Historical mapping information for this instrument [optional]
 */
@property(nonatomic) NSArray<NSString*>* iNSTRUMENTMAPPINGHISTORY;
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. [optional]
 */
@property(nonatomic) NSString* iNSTRUMENTSOURCEBACKFILL;
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. [optional]
 */
@property(nonatomic) NSString* iNSTRUMENTSOURCEBLOB;
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. [optional]
 */
@property(nonatomic) NSString* iNSTRUMENTSOURCECALCULATED;
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. [optional]
 */
@property(nonatomic) NSString* iNSTRUMENTSOURCEFIX;
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. [optional]
 */
@property(nonatomic) NSString* iNSTRUMENTSOURCEGO;
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. [optional]
 */
@property(nonatomic) NSString* iNSTRUMENTSOURCEPOLLING;
/* Where do we get the instrument id / INSTRUMENT_{messageName}_REST_URI / INSTRUMENT_{messageName}_STREAMING_SUBSCRIPTION etc from. [optional]
 */
@property(nonatomic) NSString* iNSTRUMENTSOURCESTREAMING;
/* The status of the symbol, we only poll / stream / connect to the ACTIVE ones, for the RETIRED / IGNORED / EXPIRED  one we no longer query for data. [optional]
 */
@property(nonatomic) NSString* iNSTRUMENTSTATUS;
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSObject* iNSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST;
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS;
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS;
/* The next time we expect to make a request for TRADE_SPOT on this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS;
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSObject* iNSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST;
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS;
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS;
/* The next time we expect to make a request for TRADE_SPOT on this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS;
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSObject* iNSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST;
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS;
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS;
/* The next time we expect to make a request for TRADE_SPOT on this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS;
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSObject* iNSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST;
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS;
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS;
/* The next time we expect to make a request for TRADE_SPOT on this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS;
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSObject* iNSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST;
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS;
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS;
/* The next time we expect to make a request for TRADE_SPOT on this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS;
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSObject* iNSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST;
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS;
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS;
/* The next time we expect to make a request for TRADE_SPOT on this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS;
/* The last proxied REST request we sent to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSObject* iNSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST;
/* The last time we sent a request to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS;
/* The last time we received a request from the proxy swarm with TRADE_SPOT for this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS;
/* The next time we expect to make a request for TRADE_SPOT on this instrument. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS;
/* This flags the exchange instrument as in ready to consume TRADE_SPOT via a streaming integration. [optional]
 */
@property(nonatomic) NSNumber* iNSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION;
/* This is used to build up the request in some cases, this is where we put the id we use when querying for TRADE_SPOT. [optional]
 */
@property(nonatomic) NSString* iNSTRUMENTTRADESPOTRESTURI;
/* The URL we send to the proxy swarm to get TRADE_SPOT for the instrument. [optional]
 */
@property(nonatomic) NSString* iNSTRUMENTTRADESPOTRESTURL;
/* This is used to build up the subscription in some cases, this is where we put the id we use when subscribing for TRADE_SPOT on this instrument. [optional]
 */
@property(nonatomic) NSString* iNSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION;
/* The timestamp last encountered where the batch of trades from TRADES_SPOT all occured at the same time. This is an issue when making the next request that requires polling by timestamp as a start/from parameter [optional]
 */
@property(nonatomic) NSNumber* lASTCONCURRENTBATCHOFTRADESSPOTMS;
/* This is the last time instrument was seen on instrumentListSourceType BLOB. [optional]
 */
@property(nonatomic) NSNumber* lASTSEENONBLOBTS;
/* This is the last time instrument was seen on instrumentListSourceType FIX. [optional]
 */
@property(nonatomic) NSNumber* lASTSEENONFIXTS;
/* This is the last time instrument was seen on instrumentListSourceType HARDCODED. [optional]
 */
@property(nonatomic) NSNumber* lASTSEENONHARDCODEDTS;
/* This is the last time instrument was seen on instrumentListSourceType INDEX_COMPOSITION. [optional]
 */
@property(nonatomic) NSNumber* lASTSEENONINDEXCOMPOSITIONTS;
/* This is the last time instrument was seen on instrumentListSourceType NSQ. [optional]
 */
@property(nonatomic) NSNumber* lASTSEENONNSQTS;
/* This is the last time instrument was seen on instrumentListSourceType POLLING. [optional]
 */
@property(nonatomic) NSNumber* lASTSEENONPOLLINGTS;
/* This is the last time instrument was seen on instrumentListSourceType STREAMING. [optional]
 */
@property(nonatomic) NSNumber* lASTSEENONSTREAMINGTS;
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMBACKFILL;
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMBACKFILLEXTERNAL;
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMBLOB;
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMBLOBEXTERNAL;
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMCALCULATED;
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMCALCULATEDEXTERNAL;
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMFIX;
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMFIXEXTERNAL;
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMGO;
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMGOEXTERNAL;
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMPOLLING;
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMPOLLINGEXTERNAL;
/* This is the last TRADE_SPOT that we have seen on the specific source type in internal format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMSTREAMING;
/* This is the last TRADE_SPOT that we have seen on the specific trade source in external format. [optional]
 */
@property(nonatomic) NSObject* lASTTRADESPOTFROMSTREAMINGEXTERNAL;
/* The version of metadata, used for version conversions/migrates. [optional]
 */
@property(nonatomic) NSNumber* mETADATAVERSION;
/* This states the status of blob migration for this intrument on this exchange. [optional]
 */
@property(nonatomic) NSString* pROCESSINGTRADESFROMBLOBSTATUS;
/* This is both the CCSEQ and the total TRADES_SPOT we have processed on this instrument [optional]
 */
@property(nonatomic) NSNumber* tOTALTRADESSPOT;
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. [optional]
 */
@property(nonatomic) NSObject* uNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA;
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. [optional]
 */
@property(nonatomic) NSObject* uNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA;
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. [optional]
 */
@property(nonatomic) NSObject* uNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA;
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. [optional]
 */
@property(nonatomic) NSObject* uNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA;
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. [optional]
 */
@property(nonatomic) NSObject* uNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA;
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. [optional]
 */
@property(nonatomic) NSObject* uNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA;
/* This is any extra helper TRADE_SPOT data that we would need for creating polling requests or subscribing with non standard information and anything that is very specific to one exchange API/Integration and it does not fit any of the other existing fields and is definitly only updated or written in only one service. [optional]
 */
@property(nonatomic) NSObject* uNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA;

@end