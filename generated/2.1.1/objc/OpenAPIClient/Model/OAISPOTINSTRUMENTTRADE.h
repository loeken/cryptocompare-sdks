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





@protocol OAISPOTINSTRUMENTTRADE
@end

@interface OAISPOTINSTRUMENTTRADE : OAIObject

/* The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC). [optional]
 */
@property(nonatomic) NSString* bASE;
/* Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order. [optional]
 */
@property(nonatomic) NSNumber* cCSEQ;
/* The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second. [optional]
 */
@property(nonatomic) NSString* _iD;
/* The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD). [optional]
 */
@property(nonatomic) NSString* iNSTRUMENT;
/* The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD). [optional]
 */
@property(nonatomic) NSString* mAPPEDINSTRUMENT;
/* The market / exchange under consideration (e.g. Coinbase, Kraken, etc.). [optional]
 */
@property(nonatomic) NSString* mARKET;
/* The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract. [optional]
 */
@property(nonatomic) NSNumber* pRICE;
/* The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded. [optional]
 */
@property(nonatomic) NSNumber* qUANTITY;
/* The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD). [optional]
 */
@property(nonatomic) NSString* qUOTE;
/* The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded. [optional]
 */
@property(nonatomic) NSNumber* qUOTEQUANTITY;
/* The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits. [optional]
 */
@property(nonatomic) NSNumber* rECEIVEDTIMESTAMP;
/* The nanosecond part of the received timestamp. [optional]
 */
@property(nonatomic) NSNumber* rECEIVEDTIMESTAMPNS;
/* The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned. [optional]
 */
@property(nonatomic) NSString* sIDE;
/* The source of the trade update: POLLING, STREAMING, GO, BLOB etc. [optional]
 */
@property(nonatomic) NSString* sOURCE;
/* The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one. [optional]
 */
@property(nonatomic) NSNumber* tIMESTAMP;
/* The nanosecond part of the reported timestamp. [optional]
 */
@property(nonatomic) NSNumber* tIMESTAMPNS;
/* The type of the message. [optional]
 */
@property(nonatomic) NSString* tYPE;

@end