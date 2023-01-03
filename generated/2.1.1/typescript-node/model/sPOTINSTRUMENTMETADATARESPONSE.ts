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
import { SPOTINSTRUMENTMARKETDATARESPONSEErr } from './sPOTINSTRUMENTMARKETDATARESPONSEErr';
import { SPOTINSTRUMENTMETADATA } from './sPOTINSTRUMENTMETADATA';

export class SPOTINSTRUMENTMETADATARESPONSE {
    'data'?: { [key: string]: SPOTINSTRUMENTMETADATA; };
    'err'?: SPOTINSTRUMENTMARKETDATARESPONSEErr;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "data",
            "baseName": "Data",
            "type": "{ [key: string]: SPOTINSTRUMENTMETADATA; }"
        },
        {
            "name": "err",
            "baseName": "Err",
            "type": "SPOTINSTRUMENTMARKETDATARESPONSEErr"
        }    ];

    static getAttributeTypeMap() {
        return SPOTINSTRUMENTMETADATARESPONSE.attributeTypeMap;
    }
}

