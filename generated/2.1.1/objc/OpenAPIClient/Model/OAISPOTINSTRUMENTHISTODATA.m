#import "OAISPOTINSTRUMENTHISTODATA.h"

@implementation OAISPOTINSTRUMENTHISTODATA

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bASE": @"BASE", @"cLOSE": @"CLOSE", @"fIRSTTRADEPRICE": @"FIRST_TRADE_PRICE", @"fIRSTTRADETIMESTAMP": @"FIRST_TRADE_TIMESTAMP", @"hIGH": @"HIGH", @"hIGHTRADEPRICE": @"HIGH_TRADE_PRICE", @"hIGHTRADETIMESTAMP": @"HIGH_TRADE_TIMESTAMP", @"iNSTRUMENT": @"INSTRUMENT", @"lASTTRADEPRICE": @"LAST_TRADE_PRICE", @"lASTTRADETIMESTAMP": @"LAST_TRADE_TIMESTAMP", @"lOW": @"LOW", @"lOWTRADEPRICE": @"LOW_TRADE_PRICE", @"lOWTRADETIMESTAMP": @"LOW_TRADE_TIMESTAMP", @"mAPPEDINSTRUMENT": @"MAPPED_INSTRUMENT", @"mARKET": @"MARKET", @"oPEN": @"OPEN", @"qUOTE": @"QUOTE", @"qUOTEVOLUME": @"QUOTE_VOLUME", @"qUOTEVOLUMEBUY": @"QUOTE_VOLUME_BUY", @"qUOTEVOLUMESELL": @"QUOTE_VOLUME_SELL", @"qUOTEVOLUMEUNKNOWN": @"QUOTE_VOLUME_UNKNOWN", @"tIMESTAMP": @"TIMESTAMP", @"tOTALTRADES": @"TOTAL_TRADES", @"tOTALTRADESBUY": @"TOTAL_TRADES_BUY", @"tOTALTRADESSELL": @"TOTAL_TRADES_SELL", @"tOTALTRADESUNKNOWN": @"TOTAL_TRADES_UNKNOWN", @"tYPE": @"TYPE", @"uNIT": @"UNIT", @"vOLUME": @"VOLUME", @"vOLUMEBUY": @"VOLUME_BUY", @"vOLUMESELL": @"VOLUME_SELL", @"vOLUMEUNKNOWN": @"VOLUME_UNKNOWN" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bASE", @"cLOSE", @"fIRSTTRADEPRICE", @"fIRSTTRADETIMESTAMP", @"hIGH", @"hIGHTRADEPRICE", @"hIGHTRADETIMESTAMP", @"iNSTRUMENT", @"lASTTRADEPRICE", @"lASTTRADETIMESTAMP", @"lOW", @"lOWTRADEPRICE", @"lOWTRADETIMESTAMP", @"mAPPEDINSTRUMENT", @"mARKET", @"oPEN", @"qUOTE", @"qUOTEVOLUME", @"qUOTEVOLUMEBUY", @"qUOTEVOLUMESELL", @"qUOTEVOLUMEUNKNOWN", @"tIMESTAMP", @"tOTALTRADES", @"tOTALTRADESBUY", @"tOTALTRADESSELL", @"tOTALTRADESUNKNOWN", @"tYPE", @"uNIT", @"vOLUME", @"vOLUMEBUY", @"vOLUMESELL", @"vOLUMEUNKNOWN"];
  return [optionalProperties containsObject:propertyName];
}

@end
