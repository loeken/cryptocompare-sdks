#import "OAISPOTINSTRUMENTMETADATA.h"

@implementation OAISPOTINSTRUMENTMETADATA

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.iNSTRUMENTSTATUS = @"ACTIVE";
    self.iNSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION = @(NO);
    self.mETADATAVERSION = @4;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"fIRSTSEENONBLOBTS": @"FIRST_SEEN_ON_BLOB_TS", @"fIRSTSEENONFIXTS": @"FIRST_SEEN_ON_FIX_TS", @"fIRSTSEENONHARDCODEDTS": @"FIRST_SEEN_ON_HARDCODED_TS", @"fIRSTSEENONINDEXCOMPOSITIONTS": @"FIRST_SEEN_ON_INDEX_COMPOSITION_TS", @"fIRSTSEENONNSQTS": @"FIRST_SEEN_ON_NSQ_TS", @"fIRSTSEENONPOLLINGTS": @"FIRST_SEEN_ON_POLLING_TS", @"fIRSTSEENONSTREAMINGTS": @"FIRST_SEEN_ON_STREAMING_TS", @"fIRSTTRADESPOTFROMBACKFILL": @"FIRST_TRADE_SPOT_FROM_BACKFILL", @"fIRSTTRADESPOTFROMBACKFILLEXTERNAL": @"FIRST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL", @"fIRSTTRADESPOTFROMBLOB": @"FIRST_TRADE_SPOT_FROM_BLOB", @"fIRSTTRADESPOTFROMBLOBEXTERNAL": @"FIRST_TRADE_SPOT_FROM_BLOB_EXTERNAL", @"fIRSTTRADESPOTFROMCALCULATED": @"FIRST_TRADE_SPOT_FROM_CALCULATED", @"fIRSTTRADESPOTFROMCALCULATEDEXTERNAL": @"FIRST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL", @"fIRSTTRADESPOTFROMFIX": @"FIRST_TRADE_SPOT_FROM_FIX", @"fIRSTTRADESPOTFROMFIXEXTERNAL": @"FIRST_TRADE_SPOT_FROM_FIX_EXTERNAL", @"fIRSTTRADESPOTFROMGO": @"FIRST_TRADE_SPOT_FROM_GO", @"fIRSTTRADESPOTFROMGOEXTERNAL": @"FIRST_TRADE_SPOT_FROM_GO_EXTERNAL", @"fIRSTTRADESPOTFROMPOLLING": @"FIRST_TRADE_SPOT_FROM_POLLING", @"fIRSTTRADESPOTFROMPOLLINGEXTERNAL": @"FIRST_TRADE_SPOT_FROM_POLLING_EXTERNAL", @"fIRSTTRADESPOTFROMSTREAMING": @"FIRST_TRADE_SPOT_FROM_STREAMING", @"fIRSTTRADESPOTFROMSTREAMINGEXTERNAL": @"FIRST_TRADE_SPOT_FROM_STREAMING_EXTERNAL", @"hOSTMIGRATIONDESTINATION": @"HOST_MIGRATION_DESTINATION", @"hOSTMIGRATIONSOURCE": @"HOST_MIGRATION_SOURCE", @"hOSTMIGRATIONSTATUS": @"HOST_MIGRATION_STATUS", @"iNSTRUMENT": @"INSTRUMENT", @"iNSTRUMENTEXTERNALDATA": @"INSTRUMENT_EXTERNAL_DATA", @"iNSTRUMENTMAPPING": @"INSTRUMENT_MAPPING", @"iNSTRUMENTMAPPINGHISTORY": @"INSTRUMENT_MAPPING_HISTORY", @"iNSTRUMENTSOURCEBACKFILL": @"INSTRUMENT_SOURCE_BACKFILL", @"iNSTRUMENTSOURCEBLOB": @"INSTRUMENT_SOURCE_BLOB", @"iNSTRUMENTSOURCECALCULATED": @"INSTRUMENT_SOURCE_CALCULATED", @"iNSTRUMENTSOURCEFIX": @"INSTRUMENT_SOURCE_FIX", @"iNSTRUMENTSOURCEGO": @"INSTRUMENT_SOURCE_GO", @"iNSTRUMENTSOURCEPOLLING": @"INSTRUMENT_SOURCE_POLLING", @"iNSTRUMENTSOURCESTREAMING": @"INSTRUMENT_SOURCE_STREAMING", @"iNSTRUMENTSTATUS": @"INSTRUMENT_STATUS", @"iNSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST": @"INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_LAST_PROXIED_REST_REQUEST", @"iNSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_REQUEST_TS", @"iNSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS": @"INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_LAST_RESPONSE_TS", @"iNSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_BACKFILL_REST_URI_NEXT_REQUEST_TS", @"iNSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST": @"INSTRUMENT_TRADE_SPOT_FROM_BLOB_LAST_PROXIED_REST_REQUEST", @"iNSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_REQUEST_TS", @"iNSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS": @"INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_LAST_RESPONSE_TS", @"iNSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_BLOB_REST_URI_NEXT_REQUEST_TS", @"iNSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST": @"INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_LAST_PROXIED_REST_REQUEST", @"iNSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_REQUEST_TS", @"iNSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS": @"INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_LAST_RESPONSE_TS", @"iNSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_CALCULATED_REST_URI_NEXT_REQUEST_TS", @"iNSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST": @"INSTRUMENT_TRADE_SPOT_FROM_FIX_LAST_PROXIED_REST_REQUEST", @"iNSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_REQUEST_TS", @"iNSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS": @"INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_LAST_RESPONSE_TS", @"iNSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_FIX_REST_URI_NEXT_REQUEST_TS", @"iNSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST": @"INSTRUMENT_TRADE_SPOT_FROM_GO_LAST_PROXIED_REST_REQUEST", @"iNSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_REQUEST_TS", @"iNSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS": @"INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_LAST_RESPONSE_TS", @"iNSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_GO_REST_URI_NEXT_REQUEST_TS", @"iNSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST": @"INSTRUMENT_TRADE_SPOT_FROM_POLLING_LAST_PROXIED_REST_REQUEST", @"iNSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_REQUEST_TS", @"iNSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS": @"INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_LAST_RESPONSE_TS", @"iNSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_POLLING_REST_URI_NEXT_REQUEST_TS", @"iNSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST": @"INSTRUMENT_TRADE_SPOT_FROM_STREAMING_LAST_PROXIED_REST_REQUEST", @"iNSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_REQUEST_TS", @"iNSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS": @"INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_LAST_RESPONSE_TS", @"iNSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS": @"INSTRUMENT_TRADE_SPOT_FROM_STREAMING_REST_URI_NEXT_REQUEST_TS", @"iNSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION": @"INSTRUMENT_TRADE_SPOT_IS_READY_FOR_STREAMING_INTEGRATION", @"iNSTRUMENTTRADESPOTRESTURI": @"INSTRUMENT_TRADE_SPOT_REST_URI", @"iNSTRUMENTTRADESPOTRESTURL": @"INSTRUMENT_TRADE_SPOT_REST_URL", @"iNSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION": @"INSTRUMENT_TRADE_SPOT_STREAMING_SUBSCRIPTION", @"lASTCONCURRENTBATCHOFTRADESSPOTMS": @"LAST_CONCURRENT_BATCH_OF_TRADES_SPOT_MS", @"lASTSEENONBLOBTS": @"LAST_SEEN_ON_BLOB_TS", @"lASTSEENONFIXTS": @"LAST_SEEN_ON_FIX_TS", @"lASTSEENONHARDCODEDTS": @"LAST_SEEN_ON_HARDCODED_TS", @"lASTSEENONINDEXCOMPOSITIONTS": @"LAST_SEEN_ON_INDEX_COMPOSITION_TS", @"lASTSEENONNSQTS": @"LAST_SEEN_ON_NSQ_TS", @"lASTSEENONPOLLINGTS": @"LAST_SEEN_ON_POLLING_TS", @"lASTSEENONSTREAMINGTS": @"LAST_SEEN_ON_STREAMING_TS", @"lASTTRADESPOTFROMBACKFILL": @"LAST_TRADE_SPOT_FROM_BACKFILL", @"lASTTRADESPOTFROMBACKFILLEXTERNAL": @"LAST_TRADE_SPOT_FROM_BACKFILL_EXTERNAL", @"lASTTRADESPOTFROMBLOB": @"LAST_TRADE_SPOT_FROM_BLOB", @"lASTTRADESPOTFROMBLOBEXTERNAL": @"LAST_TRADE_SPOT_FROM_BLOB_EXTERNAL", @"lASTTRADESPOTFROMCALCULATED": @"LAST_TRADE_SPOT_FROM_CALCULATED", @"lASTTRADESPOTFROMCALCULATEDEXTERNAL": @"LAST_TRADE_SPOT_FROM_CALCULATED_EXTERNAL", @"lASTTRADESPOTFROMFIX": @"LAST_TRADE_SPOT_FROM_FIX", @"lASTTRADESPOTFROMFIXEXTERNAL": @"LAST_TRADE_SPOT_FROM_FIX_EXTERNAL", @"lASTTRADESPOTFROMGO": @"LAST_TRADE_SPOT_FROM_GO", @"lASTTRADESPOTFROMGOEXTERNAL": @"LAST_TRADE_SPOT_FROM_GO_EXTERNAL", @"lASTTRADESPOTFROMPOLLING": @"LAST_TRADE_SPOT_FROM_POLLING", @"lASTTRADESPOTFROMPOLLINGEXTERNAL": @"LAST_TRADE_SPOT_FROM_POLLING_EXTERNAL", @"lASTTRADESPOTFROMSTREAMING": @"LAST_TRADE_SPOT_FROM_STREAMING", @"lASTTRADESPOTFROMSTREAMINGEXTERNAL": @"LAST_TRADE_SPOT_FROM_STREAMING_EXTERNAL", @"mETADATAVERSION": @"METADATA_VERSION", @"pROCESSINGTRADESFROMBLOBSTATUS": @"PROCESSING_TRADES_FROM_BLOB_STATUS", @"tOTALTRADESSPOT": @"TOTAL_TRADES_SPOT", @"uNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA": @"UNSTRUCTURED_TRADE_SPOT_FROM_BACKFILL_INTERNAL_DATA", @"uNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA": @"UNSTRUCTURED_TRADE_SPOT_FROM_BLOB_INTERNAL_DATA", @"uNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA": @"UNSTRUCTURED_TRADE_SPOT_FROM_CALCULATED_INTERNAL_DATA", @"uNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA": @"UNSTRUCTURED_TRADE_SPOT_FROM_FIX_INTERNAL_DATA", @"uNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA": @"UNSTRUCTURED_TRADE_SPOT_FROM_GO_INTERNAL_DATA", @"uNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA": @"UNSTRUCTURED_TRADE_SPOT_FROM_POLLING_INTERNAL_DATA", @"uNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA": @"UNSTRUCTURED_TRADE_SPOT_FROM_STREAMING_INTERNAL_DATA" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"fIRSTSEENONBLOBTS", @"fIRSTSEENONFIXTS", @"fIRSTSEENONHARDCODEDTS", @"fIRSTSEENONINDEXCOMPOSITIONTS", @"fIRSTSEENONNSQTS", @"fIRSTSEENONPOLLINGTS", @"fIRSTSEENONSTREAMINGTS", @"fIRSTTRADESPOTFROMBACKFILL", @"fIRSTTRADESPOTFROMBACKFILLEXTERNAL", @"fIRSTTRADESPOTFROMBLOB", @"fIRSTTRADESPOTFROMBLOBEXTERNAL", @"fIRSTTRADESPOTFROMCALCULATED", @"fIRSTTRADESPOTFROMCALCULATEDEXTERNAL", @"fIRSTTRADESPOTFROMFIX", @"fIRSTTRADESPOTFROMFIXEXTERNAL", @"fIRSTTRADESPOTFROMGO", @"fIRSTTRADESPOTFROMGOEXTERNAL", @"fIRSTTRADESPOTFROMPOLLING", @"fIRSTTRADESPOTFROMPOLLINGEXTERNAL", @"fIRSTTRADESPOTFROMSTREAMING", @"fIRSTTRADESPOTFROMSTREAMINGEXTERNAL", @"hOSTMIGRATIONDESTINATION", @"hOSTMIGRATIONSOURCE", @"hOSTMIGRATIONSTATUS", @"iNSTRUMENT", @"iNSTRUMENTEXTERNALDATA", @"iNSTRUMENTMAPPING", @"iNSTRUMENTMAPPINGHISTORY", @"iNSTRUMENTSOURCEBACKFILL", @"iNSTRUMENTSOURCEBLOB", @"iNSTRUMENTSOURCECALCULATED", @"iNSTRUMENTSOURCEFIX", @"iNSTRUMENTSOURCEGO", @"iNSTRUMENTSOURCEPOLLING", @"iNSTRUMENTSOURCESTREAMING", @"iNSTRUMENTSTATUS", @"iNSTRUMENTTRADESPOTFROMBACKFILLLASTPROXIEDRESTREQUEST", @"iNSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTREQUESTTS", @"iNSTRUMENTTRADESPOTFROMBACKFILLRESTURILASTRESPONSETS", @"iNSTRUMENTTRADESPOTFROMBACKFILLRESTURINEXTREQUESTTS", @"iNSTRUMENTTRADESPOTFROMBLOBLASTPROXIEDRESTREQUEST", @"iNSTRUMENTTRADESPOTFROMBLOBRESTURILASTREQUESTTS", @"iNSTRUMENTTRADESPOTFROMBLOBRESTURILASTRESPONSETS", @"iNSTRUMENTTRADESPOTFROMBLOBRESTURINEXTREQUESTTS", @"iNSTRUMENTTRADESPOTFROMCALCULATEDLASTPROXIEDRESTREQUEST", @"iNSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTREQUESTTS", @"iNSTRUMENTTRADESPOTFROMCALCULATEDRESTURILASTRESPONSETS", @"iNSTRUMENTTRADESPOTFROMCALCULATEDRESTURINEXTREQUESTTS", @"iNSTRUMENTTRADESPOTFROMFIXLASTPROXIEDRESTREQUEST", @"iNSTRUMENTTRADESPOTFROMFIXRESTURILASTREQUESTTS", @"iNSTRUMENTTRADESPOTFROMFIXRESTURILASTRESPONSETS", @"iNSTRUMENTTRADESPOTFROMFIXRESTURINEXTREQUESTTS", @"iNSTRUMENTTRADESPOTFROMGOLASTPROXIEDRESTREQUEST", @"iNSTRUMENTTRADESPOTFROMGORESTURILASTREQUESTTS", @"iNSTRUMENTTRADESPOTFROMGORESTURILASTRESPONSETS", @"iNSTRUMENTTRADESPOTFROMGORESTURINEXTREQUESTTS", @"iNSTRUMENTTRADESPOTFROMPOLLINGLASTPROXIEDRESTREQUEST", @"iNSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTREQUESTTS", @"iNSTRUMENTTRADESPOTFROMPOLLINGRESTURILASTRESPONSETS", @"iNSTRUMENTTRADESPOTFROMPOLLINGRESTURINEXTREQUESTTS", @"iNSTRUMENTTRADESPOTFROMSTREAMINGLASTPROXIEDRESTREQUEST", @"iNSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTREQUESTTS", @"iNSTRUMENTTRADESPOTFROMSTREAMINGRESTURILASTRESPONSETS", @"iNSTRUMENTTRADESPOTFROMSTREAMINGRESTURINEXTREQUESTTS", @"iNSTRUMENTTRADESPOTISREADYFORSTREAMINGINTEGRATION", @"iNSTRUMENTTRADESPOTRESTURI", @"iNSTRUMENTTRADESPOTRESTURL", @"iNSTRUMENTTRADESPOTSTREAMINGSUBSCRIPTION", @"lASTCONCURRENTBATCHOFTRADESSPOTMS", @"lASTSEENONBLOBTS", @"lASTSEENONFIXTS", @"lASTSEENONHARDCODEDTS", @"lASTSEENONINDEXCOMPOSITIONTS", @"lASTSEENONNSQTS", @"lASTSEENONPOLLINGTS", @"lASTSEENONSTREAMINGTS", @"lASTTRADESPOTFROMBACKFILL", @"lASTTRADESPOTFROMBACKFILLEXTERNAL", @"lASTTRADESPOTFROMBLOB", @"lASTTRADESPOTFROMBLOBEXTERNAL", @"lASTTRADESPOTFROMCALCULATED", @"lASTTRADESPOTFROMCALCULATEDEXTERNAL", @"lASTTRADESPOTFROMFIX", @"lASTTRADESPOTFROMFIXEXTERNAL", @"lASTTRADESPOTFROMGO", @"lASTTRADESPOTFROMGOEXTERNAL", @"lASTTRADESPOTFROMPOLLING", @"lASTTRADESPOTFROMPOLLINGEXTERNAL", @"lASTTRADESPOTFROMSTREAMING", @"lASTTRADESPOTFROMSTREAMINGEXTERNAL", @"mETADATAVERSION", @"pROCESSINGTRADESFROMBLOBSTATUS", @"tOTALTRADESSPOT", @"uNSTRUCTUREDTRADESPOTFROMBACKFILLINTERNALDATA", @"uNSTRUCTUREDTRADESPOTFROMBLOBINTERNALDATA", @"uNSTRUCTUREDTRADESPOTFROMCALCULATEDINTERNALDATA", @"uNSTRUCTUREDTRADESPOTFROMFIXINTERNALDATA", @"uNSTRUCTUREDTRADESPOTFROMGOINTERNALDATA", @"uNSTRUCTUREDTRADESPOTFROMPOLLINGINTERNALDATA", @"uNSTRUCTUREDTRADESPOTFROMSTREAMINGINTERNALDATA"];
  return [optionalProperties containsObject:propertyName];
}

@end