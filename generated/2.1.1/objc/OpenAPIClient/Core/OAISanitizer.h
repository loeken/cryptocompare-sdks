#import <Foundation/Foundation.h>

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


extern NSString * OAIPercentEscapedStringFromString(NSString *string);

extern NSString * const kOAIApplicationJSONType;

@protocol OAISanitizer <NSObject>

/**
 * Sanitize object for request
 *
 * @param object The query/path/header/form/body param to be sanitized.
 */
- (id) sanitizeForSerialization:(id) object;

/**
 * Convert parameter to NSString
 */
- (NSString *) parameterToString: (id) param;

/**
 * Convert date to NSString
 */
+ (NSString *)dateToString:(id)date;

/**
 * Detects Accept header from accepts NSArray
 *
 * @param accepts NSArray of header
 *
 * @return The Accept header
 */
-(NSString *) selectHeaderAccept:(NSArray *)accepts;

/**
 * Detects Content-Type header from contentTypes NSArray
 *
 * @param contentTypes NSArray of header
 *
 * @return The Content-Type header
 */
-(NSString *) selectHeaderContentType:(NSArray *)contentTypes;

@end

@interface OAISanitizer : NSObject <OAISanitizer>



@end
