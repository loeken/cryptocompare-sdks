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
import ErrorErr from './ErrorErr';

/**
 * The Error model module.
 * @module model/Error
 * @version 2.1.1
 */
class Error {
    /**
     * @member {Object} Data
     * @type {Object}
     */
    Data;
    /**
     * @member {module:model/ErrorErr} Err
     * @type {module:model/ErrorErr}
     */
    Err;

    

    /**
     * Constructs a new <code>Error</code>.
     * @alias module:model/Error
     */
    constructor() { 
        
        Error.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Error</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Error} obj Optional instance to populate.
     * @return {module:model/Error} The populated <code>Error</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Error();

            if (data.hasOwnProperty('Data')) {
                obj['Data'] = ApiClient.convertToType(data['Data'], Object);
            }
            if (data.hasOwnProperty('Err')) {
                obj['Err'] = ErrorErr.constructFromObject(data['Err']);
            }
        }
        return obj;
    }
}



export default Error;

