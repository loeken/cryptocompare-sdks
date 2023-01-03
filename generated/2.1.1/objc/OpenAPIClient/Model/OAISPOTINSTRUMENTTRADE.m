#import "OAISPOTINSTRUMENTTRADE.h"

@implementation OAISPOTINSTRUMENTTRADE

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bASE": @"BASE", @"cCSEQ": @"CCSEQ", @"_iD": @"ID", @"iNSTRUMENT": @"INSTRUMENT", @"mAPPEDINSTRUMENT": @"MAPPED_INSTRUMENT", @"mARKET": @"MARKET", @"pRICE": @"PRICE", @"qUANTITY": @"QUANTITY", @"qUOTE": @"QUOTE", @"qUOTEQUANTITY": @"QUOTE_QUANTITY", @"rECEIVEDTIMESTAMP": @"RECEIVED_TIMESTAMP", @"rECEIVEDTIMESTAMPNS": @"RECEIVED_TIMESTAMP_NS", @"sIDE": @"SIDE", @"sOURCE": @"SOURCE", @"tIMESTAMP": @"TIMESTAMP", @"tIMESTAMPNS": @"TIMESTAMP_NS", @"tYPE": @"TYPE" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bASE", @"cCSEQ", @"_iD", @"iNSTRUMENT", @"mAPPEDINSTRUMENT", @"mARKET", @"pRICE", @"qUANTITY", @"qUOTE", @"qUOTEQUANTITY", @"rECEIVEDTIMESTAMP", @"rECEIVEDTIMESTAMPNS", @"sIDE", @"sOURCE", @"tIMESTAMP", @"tIMESTAMPNS", @"tYPE"];
  return [optionalProperties containsObject:propertyName];
}

@end
