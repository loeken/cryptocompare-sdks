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
 *
 */

import ApiClient from '../ApiClient';

/**
 * The SPOTINSTRUMENTHISTODATA model module.
 * @module model/SPOTINSTRUMENTHISTODATA
 * @version 2.1.1
 */
class SPOTINSTRUMENTHISTODATA {
    /**
     * @member {String} BASE
     * @type {String}
     */
    BASE;
    /**
     * @member {Number} CLOSE
     * @type {Number}
     */
    CLOSE;
    /**
     * @member {Number} FIRST_TRADE_PRICE
     * @type {Number}
     */
    FIRST_TRADE_PRICE;
    /**
     * @member {Number} FIRST_TRADE_TIMESTAMP
     * @type {Number}
     */
    FIRST_TRADE_TIMESTAMP;
    /**
     * @member {Number} HIGH
     * @type {Number}
     */
    HIGH;
    /**
     * @member {Number} HIGH_TRADE_PRICE
     * @type {Number}
     */
    HIGH_TRADE_PRICE;
    /**
     * @member {Number} HIGH_TRADE_TIMESTAMP
     * @type {Number}
     */
    HIGH_TRADE_TIMESTAMP;
    /**
     * @member {String} INSTRUMENT
     * @type {String}
     */
    INSTRUMENT;
    /**
     * @member {Number} LAST_TRADE_PRICE
     * @type {Number}
     */
    LAST_TRADE_PRICE;
    /**
     * @member {Number} LAST_TRADE_TIMESTAMP
     * @type {Number}
     */
    LAST_TRADE_TIMESTAMP;
    /**
     * @member {Number} LOW
     * @type {Number}
     */
    LOW;
    /**
     * @member {Number} LOW_TRADE_PRICE
     * @type {Number}
     */
    LOW_TRADE_PRICE;
    /**
     * @member {Number} LOW_TRADE_TIMESTAMP
     * @type {Number}
     */
    LOW_TRADE_TIMESTAMP;
    /**
     * @member {String} MAPPED_INSTRUMENT
     * @type {String}
     */
    MAPPED_INSTRUMENT;
    /**
     * @member {String} MARKET
     * @type {String}
     */
    MARKET;
    /**
     * @member {Number} OPEN
     * @type {Number}
     */
    OPEN;
    /**
     * @member {String} QUOTE
     * @type {String}
     */
    QUOTE;
    /**
     * @member {Number} QUOTE_VOLUME
     * @type {Number}
     */
    QUOTE_VOLUME;
    /**
     * @member {Number} QUOTE_VOLUME_BUY
     * @type {Number}
     */
    QUOTE_VOLUME_BUY;
    /**
     * @member {Number} QUOTE_VOLUME_SELL
     * @type {Number}
     */
    QUOTE_VOLUME_SELL;
    /**
     * @member {Number} QUOTE_VOLUME_UNKNOWN
     * @type {Number}
     */
    QUOTE_VOLUME_UNKNOWN;
    /**
     * @member {Number} TIMESTAMP
     * @type {Number}
     */
    TIMESTAMP;
    /**
     * @member {Number} TOTAL_TRADES
     * @type {Number}
     */
    TOTAL_TRADES;
    /**
     * @member {Number} TOTAL_TRADES_BUY
     * @type {Number}
     */
    TOTAL_TRADES_BUY;
    /**
     * @member {Number} TOTAL_TRADES_SELL
     * @type {Number}
     */
    TOTAL_TRADES_SELL;
    /**
     * @member {Number} TOTAL_TRADES_UNKNOWN
     * @type {Number}
     */
    TOTAL_TRADES_UNKNOWN;
    /**
     * @member {String} TYPE
     * @type {String}
     */
    TYPE;
    /**
     * @member {String} UNIT
     * @type {String}
     */
    UNIT;
    /**
     * @member {Number} VOLUME
     * @type {Number}
     */
    VOLUME;
    /**
     * @member {Number} VOLUME_BUY
     * @type {Number}
     */
    VOLUME_BUY;
    /**
     * @member {Number} VOLUME_SELL
     * @type {Number}
     */
    VOLUME_SELL;
    /**
     * @member {Number} VOLUME_UNKNOWN
     * @type {Number}
     */
    VOLUME_UNKNOWN;

    

    /**
     * Constructs a new <code>SPOTINSTRUMENTHISTODATA</code>.
     * @alias module:model/SPOTINSTRUMENTHISTODATA
     */
    constructor() { 
        
        SPOTINSTRUMENTHISTODATA.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>SPOTINSTRUMENTHISTODATA</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/SPOTINSTRUMENTHISTODATA} obj Optional instance to populate.
     * @return {module:model/SPOTINSTRUMENTHISTODATA} The populated <code>SPOTINSTRUMENTHISTODATA</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new SPOTINSTRUMENTHISTODATA();

            if (data.hasOwnProperty('BASE')) {
                obj['BASE'] = ApiClient.convertToType(data['BASE'], 'String');
            }
            if (data.hasOwnProperty('CLOSE')) {
                obj['CLOSE'] = ApiClient.convertToType(data['CLOSE'], 'Number');
            }
            if (data.hasOwnProperty('FIRST_TRADE_PRICE')) {
                obj['FIRST_TRADE_PRICE'] = ApiClient.convertToType(data['FIRST_TRADE_PRICE'], 'Number');
            }
            if (data.hasOwnProperty('FIRST_TRADE_TIMESTAMP')) {
                obj['FIRST_TRADE_TIMESTAMP'] = ApiClient.convertToType(data['FIRST_TRADE_TIMESTAMP'], 'Number');
            }
            if (data.hasOwnProperty('HIGH')) {
                obj['HIGH'] = ApiClient.convertToType(data['HIGH'], 'Number');
            }
            if (data.hasOwnProperty('HIGH_TRADE_PRICE')) {
                obj['HIGH_TRADE_PRICE'] = ApiClient.convertToType(data['HIGH_TRADE_PRICE'], 'Number');
            }
            if (data.hasOwnProperty('HIGH_TRADE_TIMESTAMP')) {
                obj['HIGH_TRADE_TIMESTAMP'] = ApiClient.convertToType(data['HIGH_TRADE_TIMESTAMP'], 'Number');
            }
            if (data.hasOwnProperty('INSTRUMENT')) {
                obj['INSTRUMENT'] = ApiClient.convertToType(data['INSTRUMENT'], 'String');
            }
            if (data.hasOwnProperty('LAST_TRADE_PRICE')) {
                obj['LAST_TRADE_PRICE'] = ApiClient.convertToType(data['LAST_TRADE_PRICE'], 'Number');
            }
            if (data.hasOwnProperty('LAST_TRADE_TIMESTAMP')) {
                obj['LAST_TRADE_TIMESTAMP'] = ApiClient.convertToType(data['LAST_TRADE_TIMESTAMP'], 'Number');
            }
            if (data.hasOwnProperty('LOW')) {
                obj['LOW'] = ApiClient.convertToType(data['LOW'], 'Number');
            }
            if (data.hasOwnProperty('LOW_TRADE_PRICE')) {
                obj['LOW_TRADE_PRICE'] = ApiClient.convertToType(data['LOW_TRADE_PRICE'], 'Number');
            }
            if (data.hasOwnProperty('LOW_TRADE_TIMESTAMP')) {
                obj['LOW_TRADE_TIMESTAMP'] = ApiClient.convertToType(data['LOW_TRADE_TIMESTAMP'], 'Number');
            }
            if (data.hasOwnProperty('MAPPED_INSTRUMENT')) {
                obj['MAPPED_INSTRUMENT'] = ApiClient.convertToType(data['MAPPED_INSTRUMENT'], 'String');
            }
            if (data.hasOwnProperty('MARKET')) {
                obj['MARKET'] = ApiClient.convertToType(data['MARKET'], 'String');
            }
            if (data.hasOwnProperty('OPEN')) {
                obj['OPEN'] = ApiClient.convertToType(data['OPEN'], 'Number');
            }
            if (data.hasOwnProperty('QUOTE')) {
                obj['QUOTE'] = ApiClient.convertToType(data['QUOTE'], 'String');
            }
            if (data.hasOwnProperty('QUOTE_VOLUME')) {
                obj['QUOTE_VOLUME'] = ApiClient.convertToType(data['QUOTE_VOLUME'], 'Number');
            }
            if (data.hasOwnProperty('QUOTE_VOLUME_BUY')) {
                obj['QUOTE_VOLUME_BUY'] = ApiClient.convertToType(data['QUOTE_VOLUME_BUY'], 'Number');
            }
            if (data.hasOwnProperty('QUOTE_VOLUME_SELL')) {
                obj['QUOTE_VOLUME_SELL'] = ApiClient.convertToType(data['QUOTE_VOLUME_SELL'], 'Number');
            }
            if (data.hasOwnProperty('QUOTE_VOLUME_UNKNOWN')) {
                obj['QUOTE_VOLUME_UNKNOWN'] = ApiClient.convertToType(data['QUOTE_VOLUME_UNKNOWN'], 'Number');
            }
            if (data.hasOwnProperty('TIMESTAMP')) {
                obj['TIMESTAMP'] = ApiClient.convertToType(data['TIMESTAMP'], 'Number');
            }
            if (data.hasOwnProperty('TOTAL_TRADES')) {
                obj['TOTAL_TRADES'] = ApiClient.convertToType(data['TOTAL_TRADES'], 'Number');
            }
            if (data.hasOwnProperty('TOTAL_TRADES_BUY')) {
                obj['TOTAL_TRADES_BUY'] = ApiClient.convertToType(data['TOTAL_TRADES_BUY'], 'Number');
            }
            if (data.hasOwnProperty('TOTAL_TRADES_SELL')) {
                obj['TOTAL_TRADES_SELL'] = ApiClient.convertToType(data['TOTAL_TRADES_SELL'], 'Number');
            }
            if (data.hasOwnProperty('TOTAL_TRADES_UNKNOWN')) {
                obj['TOTAL_TRADES_UNKNOWN'] = ApiClient.convertToType(data['TOTAL_TRADES_UNKNOWN'], 'Number');
            }
            if (data.hasOwnProperty('TYPE')) {
                obj['TYPE'] = ApiClient.convertToType(data['TYPE'], 'String');
            }
            if (data.hasOwnProperty('UNIT')) {
                obj['UNIT'] = ApiClient.convertToType(data['UNIT'], 'String');
            }
            if (data.hasOwnProperty('VOLUME')) {
                obj['VOLUME'] = ApiClient.convertToType(data['VOLUME'], 'Number');
            }
            if (data.hasOwnProperty('VOLUME_BUY')) {
                obj['VOLUME_BUY'] = ApiClient.convertToType(data['VOLUME_BUY'], 'Number');
            }
            if (data.hasOwnProperty('VOLUME_SELL')) {
                obj['VOLUME_SELL'] = ApiClient.convertToType(data['VOLUME_SELL'], 'Number');
            }
            if (data.hasOwnProperty('VOLUME_UNKNOWN')) {
                obj['VOLUME_UNKNOWN'] = ApiClient.convertToType(data['VOLUME_UNKNOWN'], 'Number');
            }
        }
        return obj;
    }
}



export default SPOTINSTRUMENTHISTODATA;
