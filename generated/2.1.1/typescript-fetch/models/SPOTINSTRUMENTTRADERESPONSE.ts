/* tslint:disable */
/* eslint-disable */
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

import { exists, mapValues } from '../runtime';
import type { SPOTINSTRUMENTTRADE } from './SPOTINSTRUMENTTRADE';
import {
    SPOTINSTRUMENTTRADEFromJSON,
    SPOTINSTRUMENTTRADEFromJSONTyped,
    SPOTINSTRUMENTTRADEToJSON,
} from './SPOTINSTRUMENTTRADE';

/**
 * 
 * @export
 * @interface SPOTINSTRUMENTTRADERESPONSE
 */
export interface SPOTINSTRUMENTTRADERESPONSE {
    /**
     * 
     * @type {Array<SPOTINSTRUMENTTRADE>}
     * @memberof SPOTINSTRUMENTTRADERESPONSE
     */
    data?: Array<SPOTINSTRUMENTTRADE>;
    /**
     * 
     * @type {object}
     * @memberof SPOTINSTRUMENTTRADERESPONSE
     */
    err?: object;
}

/**
 * Check if a given object implements the SPOTINSTRUMENTTRADERESPONSE interface.
 */
export function instanceOfSPOTINSTRUMENTTRADERESPONSE(value: object): boolean {
    let isInstance = true;

    return isInstance;
}

export function SPOTINSTRUMENTTRADERESPONSEFromJSON(json: any): SPOTINSTRUMENTTRADERESPONSE {
    return SPOTINSTRUMENTTRADERESPONSEFromJSONTyped(json, false);
}

export function SPOTINSTRUMENTTRADERESPONSEFromJSONTyped(json: any, ignoreDiscriminator: boolean): SPOTINSTRUMENTTRADERESPONSE {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'data': !exists(json, 'Data') ? undefined : ((json['Data'] as Array<any>).map(SPOTINSTRUMENTTRADEFromJSON)),
        'err': !exists(json, 'Err') ? undefined : json['Err'],
    };
}

export function SPOTINSTRUMENTTRADERESPONSEToJSON(value?: SPOTINSTRUMENTTRADERESPONSE | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'Data': value.data === undefined ? undefined : ((value.data as Array<any>).map(SPOTINSTRUMENTTRADEToJSON)),
        'Err': value.err,
    };
}
