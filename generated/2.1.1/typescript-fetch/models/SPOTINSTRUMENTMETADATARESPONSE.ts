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
import type { SPOTINSTRUMENTMARKETDATARESPONSEErr } from './SPOTINSTRUMENTMARKETDATARESPONSEErr';
import {
    SPOTINSTRUMENTMARKETDATARESPONSEErrFromJSON,
    SPOTINSTRUMENTMARKETDATARESPONSEErrFromJSONTyped,
    SPOTINSTRUMENTMARKETDATARESPONSEErrToJSON,
} from './SPOTINSTRUMENTMARKETDATARESPONSEErr';
import type { SPOTINSTRUMENTMETADATA } from './SPOTINSTRUMENTMETADATA';
import {
    SPOTINSTRUMENTMETADATAFromJSON,
    SPOTINSTRUMENTMETADATAFromJSONTyped,
    SPOTINSTRUMENTMETADATAToJSON,
} from './SPOTINSTRUMENTMETADATA';

/**
 * 
 * @export
 * @interface SPOTINSTRUMENTMETADATARESPONSE
 */
export interface SPOTINSTRUMENTMETADATARESPONSE {
    /**
     * 
     * @type {{ [key: string]: SPOTINSTRUMENTMETADATA; }}
     * @memberof SPOTINSTRUMENTMETADATARESPONSE
     */
    data?: { [key: string]: SPOTINSTRUMENTMETADATA; };
    /**
     * 
     * @type {SPOTINSTRUMENTMARKETDATARESPONSEErr}
     * @memberof SPOTINSTRUMENTMETADATARESPONSE
     */
    err?: SPOTINSTRUMENTMARKETDATARESPONSEErr;
}

/**
 * Check if a given object implements the SPOTINSTRUMENTMETADATARESPONSE interface.
 */
export function instanceOfSPOTINSTRUMENTMETADATARESPONSE(value: object): boolean {
    let isInstance = true;

    return isInstance;
}

export function SPOTINSTRUMENTMETADATARESPONSEFromJSON(json: any): SPOTINSTRUMENTMETADATARESPONSE {
    return SPOTINSTRUMENTMETADATARESPONSEFromJSONTyped(json, false);
}

export function SPOTINSTRUMENTMETADATARESPONSEFromJSONTyped(json: any, ignoreDiscriminator: boolean): SPOTINSTRUMENTMETADATARESPONSE {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'data': !exists(json, 'Data') ? undefined : (mapValues(json['Data'], SPOTINSTRUMENTMETADATAFromJSON)),
        'err': !exists(json, 'Err') ? undefined : SPOTINSTRUMENTMARKETDATARESPONSEErrFromJSON(json['Err']),
    };
}

export function SPOTINSTRUMENTMETADATARESPONSEToJSON(value?: SPOTINSTRUMENTMETADATARESPONSE | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'Data': value.data === undefined ? undefined : (mapValues(value.data, SPOTINSTRUMENTMETADATAToJSON)),
        'Err': SPOTINSTRUMENTMARKETDATARESPONSEErrToJSON(value.err),
    };
}

