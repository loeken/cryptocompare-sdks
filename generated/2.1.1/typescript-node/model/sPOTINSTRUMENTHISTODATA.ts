/**
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 * CryptoCompare is the world\'s leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from './models';

export class SPOTINSTRUMENTHISTODATA {
    /**
    * The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
    */
    'bASE'?: string;
    /**
    * The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
    */
    'cLOSE'?: number;
    /**
    * The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
    */
    'fIRSTTRADEPRICE'?: number;
    /**
    * The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
    */
    'fIRSTTRADETIMESTAMP'?: number;
    /**
    * The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
    */
    'hIGH'?: number;
    /**
    * The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
    */
    'hIGHTRADEPRICE'?: number;
    /**
    * The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
    */
    'hIGHTRADETIMESTAMP'?: number;
    /**
    * The unmapped instrument ID
    */
    'iNSTRUMENT'?: string;
    /**
    * The last trade price in the time period. This is only available when there is at least one trade in the time period.
    */
    'lASTTRADEPRICE'?: number;
    /**
    * The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
    */
    'lASTTRADETIMESTAMP'?: number;
    /**
    * The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
    */
    'lOW'?: number;
    /**
    * The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
    */
    'lOWTRADEPRICE'?: number;
    /**
    * The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
    */
    'lOWTRADETIMESTAMP'?: number;
    /**
    * The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
    */
    'mAPPEDINSTRUMENT'?: string;
    /**
    * The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
    */
    'mARKET'?: string;
    /**
    * The open price for the historical period, this is based on the closest trade before the period start.
    */
    'oPEN'?: number;
    /**
    * The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
    */
    'qUOTE'?: string;
    /**
    * The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
    */
    'qUOTEVOLUME'?: number;
    /**
    * The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
    */
    'qUOTEVOLUMEBUY'?: number;
    /**
    * The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
    */
    'qUOTEVOLUMESELL'?: number;
    /**
    * The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
    */
    'qUOTEVOLUMEUNKNOWN'?: number;
    /**
    * The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
    */
    'tIMESTAMP'?: number;
    /**
    * The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
    */
    'tOTALTRADES'?: number;
    /**
    * The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
    */
    'tOTALTRADESBUY'?: number;
    /**
    * The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
    */
    'tOTALTRADESSELL'?: number;
    /**
    * The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
    */
    'tOTALTRADESUNKNOWN'?: number;
    /**
    * The type of the message.
    */
    'tYPE'?: string;
    /**
    * The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
    */
    'uNIT'?: string;
    /**
    * The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
    */
    'vOLUME'?: number;
    /**
    * The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
    */
    'vOLUMEBUY'?: number;
    /**
    * The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
    */
    'vOLUMESELL'?: number;
    /**
    * The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
    */
    'vOLUMEUNKNOWN'?: number;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "bASE",
            "baseName": "BASE",
            "type": "string"
        },
        {
            "name": "cLOSE",
            "baseName": "CLOSE",
            "type": "number"
        },
        {
            "name": "fIRSTTRADEPRICE",
            "baseName": "FIRST_TRADE_PRICE",
            "type": "number"
        },
        {
            "name": "fIRSTTRADETIMESTAMP",
            "baseName": "FIRST_TRADE_TIMESTAMP",
            "type": "number"
        },
        {
            "name": "hIGH",
            "baseName": "HIGH",
            "type": "number"
        },
        {
            "name": "hIGHTRADEPRICE",
            "baseName": "HIGH_TRADE_PRICE",
            "type": "number"
        },
        {
            "name": "hIGHTRADETIMESTAMP",
            "baseName": "HIGH_TRADE_TIMESTAMP",
            "type": "number"
        },
        {
            "name": "iNSTRUMENT",
            "baseName": "INSTRUMENT",
            "type": "string"
        },
        {
            "name": "lASTTRADEPRICE",
            "baseName": "LAST_TRADE_PRICE",
            "type": "number"
        },
        {
            "name": "lASTTRADETIMESTAMP",
            "baseName": "LAST_TRADE_TIMESTAMP",
            "type": "number"
        },
        {
            "name": "lOW",
            "baseName": "LOW",
            "type": "number"
        },
        {
            "name": "lOWTRADEPRICE",
            "baseName": "LOW_TRADE_PRICE",
            "type": "number"
        },
        {
            "name": "lOWTRADETIMESTAMP",
            "baseName": "LOW_TRADE_TIMESTAMP",
            "type": "number"
        },
        {
            "name": "mAPPEDINSTRUMENT",
            "baseName": "MAPPED_INSTRUMENT",
            "type": "string"
        },
        {
            "name": "mARKET",
            "baseName": "MARKET",
            "type": "string"
        },
        {
            "name": "oPEN",
            "baseName": "OPEN",
            "type": "number"
        },
        {
            "name": "qUOTE",
            "baseName": "QUOTE",
            "type": "string"
        },
        {
            "name": "qUOTEVOLUME",
            "baseName": "QUOTE_VOLUME",
            "type": "number"
        },
        {
            "name": "qUOTEVOLUMEBUY",
            "baseName": "QUOTE_VOLUME_BUY",
            "type": "number"
        },
        {
            "name": "qUOTEVOLUMESELL",
            "baseName": "QUOTE_VOLUME_SELL",
            "type": "number"
        },
        {
            "name": "qUOTEVOLUMEUNKNOWN",
            "baseName": "QUOTE_VOLUME_UNKNOWN",
            "type": "number"
        },
        {
            "name": "tIMESTAMP",
            "baseName": "TIMESTAMP",
            "type": "number"
        },
        {
            "name": "tOTALTRADES",
            "baseName": "TOTAL_TRADES",
            "type": "number"
        },
        {
            "name": "tOTALTRADESBUY",
            "baseName": "TOTAL_TRADES_BUY",
            "type": "number"
        },
        {
            "name": "tOTALTRADESSELL",
            "baseName": "TOTAL_TRADES_SELL",
            "type": "number"
        },
        {
            "name": "tOTALTRADESUNKNOWN",
            "baseName": "TOTAL_TRADES_UNKNOWN",
            "type": "number"
        },
        {
            "name": "tYPE",
            "baseName": "TYPE",
            "type": "string"
        },
        {
            "name": "uNIT",
            "baseName": "UNIT",
            "type": "string"
        },
        {
            "name": "vOLUME",
            "baseName": "VOLUME",
            "type": "number"
        },
        {
            "name": "vOLUMEBUY",
            "baseName": "VOLUME_BUY",
            "type": "number"
        },
        {
            "name": "vOLUMESELL",
            "baseName": "VOLUME_SELL",
            "type": "number"
        },
        {
            "name": "vOLUMEUNKNOWN",
            "baseName": "VOLUME_UNKNOWN",
            "type": "number"
        }    ];

    static getAttributeTypeMap() {
        return SPOTINSTRUMENTHISTODATA.attributeTypeMap;
    }
}
