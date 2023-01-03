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





@protocol OAISPOTINSTRUMENTHISTODATA
@end

@interface OAISPOTINSTRUMENTHISTODATA : OAIObject

/* The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping. [optional]
 */
@property(nonatomic) NSString* bASE;
/* The price of the last trade in this time period. If there were no trades in the time period, the open price will be given. [optional]
 */
@property(nonatomic) NSNumber* cLOSE;
/* The price of the first trade in the time period. This is only available when there is at least one trade in the time period. [optional]
 */
@property(nonatomic) NSNumber* fIRSTTRADEPRICE;
/* The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period. [optional]
 */
@property(nonatomic) NSNumber* fIRSTTRADETIMESTAMP;
/* The highest trade price in the time period. If there were no trades in the time period, the open price will be given. [optional]
 */
@property(nonatomic) NSNumber* hIGH;
/* The highest value of the trades in the time period. This is only available when there is at least one trade in the time period. [optional]
 */
@property(nonatomic) NSNumber* hIGHTRADEPRICE;
/* The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period. [optional]
 */
@property(nonatomic) NSNumber* hIGHTRADETIMESTAMP;
/* The unmapped instrument ID [optional]
 */
@property(nonatomic) NSString* iNSTRUMENT;
/* The last trade price in the time period. This is only available when there is at least one trade in the time period. [optional]
 */
@property(nonatomic) NSNumber* lASTTRADEPRICE;
/* The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period. [optional]
 */
@property(nonatomic) NSNumber* lASTTRADETIMESTAMP;
/* The lowest trade price in the time period. If there were no trades in the time period, the open price will be given. [optional]
 */
@property(nonatomic) NSNumber* lOW;
/* The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period. [optional]
 */
@property(nonatomic) NSNumber* lOWTRADEPRICE;
/* The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period. [optional]
 */
@property(nonatomic) NSNumber* lOWTRADETIMESTAMP;
/* The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped. [optional]
 */
@property(nonatomic) NSString* mAPPEDINSTRUMENT;
/* The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc). [optional]
 */
@property(nonatomic) NSString* mARKET;
/* The open price for the historical period, this is based on the closest trade before the period start. [optional]
 */
@property(nonatomic) NSNumber* oPEN;
/* The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping. [optional]
 */
@property(nonatomic) NSString* qUOTE;
/* The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned. [optional]
 */
@property(nonatomic) NSNumber* qUOTEVOLUME;
/* The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period. [optional]
 */
@property(nonatomic) NSNumber* qUOTEVOLUMEBUY;
/* The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period. [optional]
 */
@property(nonatomic) NSNumber* qUOTEVOLUMESELL;
/* The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period. [optional]
 */
@property(nonatomic) NSNumber* qUOTEVOLUMEUNKNOWN;
/* The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT. [optional]
 */
@property(nonatomic) NSNumber* tIMESTAMP;
/* The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned. [optional]
 */
@property(nonatomic) NSNumber* tOTALTRADES;
/* The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned. [optional]
 */
@property(nonatomic) NSNumber* tOTALTRADESBUY;
/* The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned. [optional]
 */
@property(nonatomic) NSNumber* tOTALTRADESSELL;
/* The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned. [optional]
 */
@property(nonatomic) NSNumber* tOTALTRADESUNKNOWN;
/* The type of the message. [optional]
 */
@property(nonatomic) NSString* tYPE;
/* The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day. [optional]
 */
@property(nonatomic) NSString* uNIT;
/* The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned. [optional]
 */
@property(nonatomic) NSNumber* vOLUME;
/* The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period. [optional]
 */
@property(nonatomic) NSNumber* vOLUMEBUY;
/* The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period. [optional]
 */
@property(nonatomic) NSNumber* vOLUMESELL;
/* The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period. [optional]
 */
@property(nonatomic) NSNumber* vOLUMEUNKNOWN;

@end