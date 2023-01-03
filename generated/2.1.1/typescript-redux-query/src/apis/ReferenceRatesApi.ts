// tslint:disable
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


import { HttpMethods, QueryConfig, ResponseBody, ResponseText } from 'redux-query';
import * as runtime from '../runtime';
import {
    GENERICRESPONSE,
    GENERICRESPONSEFromJSON,
    GENERICRESPONSEToJSON,
} from '../models';

export interface IndexCcV1HistoricalDaysRequest {
    market: string;
    instrument: string;
    groups?: Array<string>;
    limit?: number;
    toTs?: number;
    aggregate?: number;
    fill?: boolean;
    mappingPriority?: IndexCcV1HistoricalDaysMappingPriorityEnum;
    responseFormat?: IndexCcV1HistoricalDaysResponseFormatEnum;
}

export interface IndexCcV1HistoricalHoursRequest {
    market: string;
    instrument: string;
    groups?: Array<string>;
    limit?: number;
    toTs?: number;
    aggregate?: number;
    fill?: boolean;
    mappingPriority?: IndexCcV1HistoricalHoursMappingPriorityEnum;
    responseFormat?: IndexCcV1HistoricalHoursResponseFormatEnum;
}

export interface IndexCcV1HistoricalMessagesRequest {
    market: string;
    instrument: string;
    afterTs?: number;
    lastCcseq?: number;
    mappingPriority?: IndexCcV1HistoricalMessagesMappingPriorityEnum;
    limit?: number;
    responseFormat?: IndexCcV1HistoricalMessagesResponseFormatEnum;
    return404OnEmptyResponse?: boolean;
}

export interface IndexCcV1HistoricalMessagesHourRequest {
    market: string;
    instrument: string;
    hourTs?: number;
    mappingPriority?: IndexCcV1HistoricalMessagesHourMappingPriorityEnum;
    responseFormat?: IndexCcV1HistoricalMessagesHourResponseFormatEnum;
    return404OnEmptyResponse?: boolean;
}

export interface IndexCcV1HistoricalMinutesRequest {
    market: string;
    instrument: string;
    groups?: Array<string>;
    limit?: number;
    toTs?: number;
    aggregate?: number;
    fill?: boolean;
    mappingPriority?: IndexCcV1HistoricalMinutesMappingPriorityEnum;
    responseFormat?: IndexCcV1HistoricalMinutesResponseFormatEnum;
}

export interface IndexCcV1LatestInstrumentMetadataRequest {
    market: string;
    instruments: Array<string>;
    groups?: Array<string>;
    mappingPriority?: IndexCcV1LatestInstrumentMetadataMappingPriorityEnum;
}

export interface IndexCcV1LatestTickRequest {
    market: string;
    instruments: Array<string>;
    groups?: Array<string>;
    mappingPriority?: IndexCcV1LatestTickMappingPriorityEnum;
}

export interface IndexCcV1MarketsRequest {
    market?: string;
}

export interface IndexCcV1MarketsInstrumentsRequest {
    market?: string;
    instrument?: string;
    instrumentStatus?: Array<IndexCcV1MarketsInstrumentsInstrumentStatusEnum>;
}

export interface IndexCcV1MarketsInstrumentsUnmappedRequest {
    market?: string;
    instrument?: string;
    instrumentStatus?: Array<IndexCcV1MarketsInstrumentsUnmappedInstrumentStatusEnum>;
}


/**
 */
function indexCcV1HistoricalDaysRaw<T>(requestParameters: IndexCcV1HistoricalDaysRequest, requestConfig: runtime.TypedQueryConfig<T, GENERICRESPONSE> = {}): QueryConfig<T> {
    if (requestParameters.market === null || requestParameters.market === undefined) {
        throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling indexCcV1HistoricalDays.');
    }

    if (requestParameters.instrument === null || requestParameters.instrument === undefined) {
        throw new runtime.RequiredError('instrument','Required parameter requestParameters.instrument was null or undefined when calling indexCcV1HistoricalDays.');
    }

    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.market !== undefined) {
        queryParameters['market'] = requestParameters.market;
    }


    if (requestParameters.instrument !== undefined) {
        queryParameters['instrument'] = requestParameters.instrument;
    }


    if (requestParameters.groups) {
        queryParameters['groups'] = requestParameters.groups?.join(runtime.COLLECTION_FORMATS["csv"]);
    }


    if (requestParameters.limit !== undefined) {
        queryParameters['limit'] = requestParameters.limit;
    }


    if (requestParameters.toTs !== undefined) {
        queryParameters['to_ts'] = requestParameters.toTs;
    }


    if (requestParameters.aggregate !== undefined) {
        queryParameters['aggregate'] = requestParameters.aggregate;
    }


    if (requestParameters.fill !== undefined) {
        queryParameters['fill'] = requestParameters.fill;
    }


    if (requestParameters.mappingPriority !== undefined) {
        queryParameters['mapping_priority'] = requestParameters.mappingPriority;
    }


    if (requestParameters.responseFormat !== undefined) {
        queryParameters['response_format'] = requestParameters.responseFormat;
    }

    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/index/cc/v1/historical/days`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(GENERICRESPONSEFromJSON(body), text);
    }

    return config;
}

/**
*/
export function indexCcV1HistoricalDays<T>(requestParameters: IndexCcV1HistoricalDaysRequest, requestConfig?: runtime.TypedQueryConfig<T, GENERICRESPONSE>): QueryConfig<T> {
    return indexCcV1HistoricalDaysRaw(requestParameters, requestConfig);
}

/**
 */
function indexCcV1HistoricalHoursRaw<T>(requestParameters: IndexCcV1HistoricalHoursRequest, requestConfig: runtime.TypedQueryConfig<T, GENERICRESPONSE> = {}): QueryConfig<T> {
    if (requestParameters.market === null || requestParameters.market === undefined) {
        throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling indexCcV1HistoricalHours.');
    }

    if (requestParameters.instrument === null || requestParameters.instrument === undefined) {
        throw new runtime.RequiredError('instrument','Required parameter requestParameters.instrument was null or undefined when calling indexCcV1HistoricalHours.');
    }

    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.market !== undefined) {
        queryParameters['market'] = requestParameters.market;
    }


    if (requestParameters.instrument !== undefined) {
        queryParameters['instrument'] = requestParameters.instrument;
    }


    if (requestParameters.groups) {
        queryParameters['groups'] = requestParameters.groups?.join(runtime.COLLECTION_FORMATS["csv"]);
    }


    if (requestParameters.limit !== undefined) {
        queryParameters['limit'] = requestParameters.limit;
    }


    if (requestParameters.toTs !== undefined) {
        queryParameters['to_ts'] = requestParameters.toTs;
    }


    if (requestParameters.aggregate !== undefined) {
        queryParameters['aggregate'] = requestParameters.aggregate;
    }


    if (requestParameters.fill !== undefined) {
        queryParameters['fill'] = requestParameters.fill;
    }


    if (requestParameters.mappingPriority !== undefined) {
        queryParameters['mapping_priority'] = requestParameters.mappingPriority;
    }


    if (requestParameters.responseFormat !== undefined) {
        queryParameters['response_format'] = requestParameters.responseFormat;
    }

    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/index/cc/v1/historical/hours`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(GENERICRESPONSEFromJSON(body), text);
    }

    return config;
}

/**
*/
export function indexCcV1HistoricalHours<T>(requestParameters: IndexCcV1HistoricalHoursRequest, requestConfig?: runtime.TypedQueryConfig<T, GENERICRESPONSE>): QueryConfig<T> {
    return indexCcV1HistoricalHoursRaw(requestParameters, requestConfig);
}

/**
 */
function indexCcV1HistoricalMessagesRaw<T>(requestParameters: IndexCcV1HistoricalMessagesRequest, requestConfig: runtime.TypedQueryConfig<T, GENERICRESPONSE> = {}): QueryConfig<T> {
    if (requestParameters.market === null || requestParameters.market === undefined) {
        throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling indexCcV1HistoricalMessages.');
    }

    if (requestParameters.instrument === null || requestParameters.instrument === undefined) {
        throw new runtime.RequiredError('instrument','Required parameter requestParameters.instrument was null or undefined when calling indexCcV1HistoricalMessages.');
    }

    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.market !== undefined) {
        queryParameters['market'] = requestParameters.market;
    }


    if (requestParameters.instrument !== undefined) {
        queryParameters['instrument'] = requestParameters.instrument;
    }


    if (requestParameters.afterTs !== undefined) {
        queryParameters['after_ts'] = requestParameters.afterTs;
    }


    if (requestParameters.lastCcseq !== undefined) {
        queryParameters['last_ccseq'] = requestParameters.lastCcseq;
    }


    if (requestParameters.mappingPriority !== undefined) {
        queryParameters['mapping_priority'] = requestParameters.mappingPriority;
    }


    if (requestParameters.limit !== undefined) {
        queryParameters['limit'] = requestParameters.limit;
    }


    if (requestParameters.responseFormat !== undefined) {
        queryParameters['response_format'] = requestParameters.responseFormat;
    }


    if (requestParameters.return404OnEmptyResponse !== undefined) {
        queryParameters['return_404_on_empty_response'] = requestParameters.return404OnEmptyResponse;
    }

    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    meta.authType = ['api_key', 'header'];
    meta.authType = ['api_key', 'query'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/index/cc/v1/historical/messages`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(GENERICRESPONSEFromJSON(body), text);
    }

    return config;
}

/**
*/
export function indexCcV1HistoricalMessages<T>(requestParameters: IndexCcV1HistoricalMessagesRequest, requestConfig?: runtime.TypedQueryConfig<T, GENERICRESPONSE>): QueryConfig<T> {
    return indexCcV1HistoricalMessagesRaw(requestParameters, requestConfig);
}

/**
 */
function indexCcV1HistoricalMessagesHourRaw<T>(requestParameters: IndexCcV1HistoricalMessagesHourRequest, requestConfig: runtime.TypedQueryConfig<T, GENERICRESPONSE> = {}): QueryConfig<T> {
    if (requestParameters.market === null || requestParameters.market === undefined) {
        throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling indexCcV1HistoricalMessagesHour.');
    }

    if (requestParameters.instrument === null || requestParameters.instrument === undefined) {
        throw new runtime.RequiredError('instrument','Required parameter requestParameters.instrument was null or undefined when calling indexCcV1HistoricalMessagesHour.');
    }

    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.market !== undefined) {
        queryParameters['market'] = requestParameters.market;
    }


    if (requestParameters.instrument !== undefined) {
        queryParameters['instrument'] = requestParameters.instrument;
    }


    if (requestParameters.hourTs !== undefined) {
        queryParameters['hour_ts'] = requestParameters.hourTs;
    }


    if (requestParameters.mappingPriority !== undefined) {
        queryParameters['mapping_priority'] = requestParameters.mappingPriority;
    }


    if (requestParameters.responseFormat !== undefined) {
        queryParameters['response_format'] = requestParameters.responseFormat;
    }


    if (requestParameters.return404OnEmptyResponse !== undefined) {
        queryParameters['return_404_on_empty_response'] = requestParameters.return404OnEmptyResponse;
    }

    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    meta.authType = ['api_key', 'header'];
    meta.authType = ['api_key', 'query'];
    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/index/cc/v1/historical/messages/hour`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(GENERICRESPONSEFromJSON(body), text);
    }

    return config;
}

/**
*/
export function indexCcV1HistoricalMessagesHour<T>(requestParameters: IndexCcV1HistoricalMessagesHourRequest, requestConfig?: runtime.TypedQueryConfig<T, GENERICRESPONSE>): QueryConfig<T> {
    return indexCcV1HistoricalMessagesHourRaw(requestParameters, requestConfig);
}

/**
 */
function indexCcV1HistoricalMinutesRaw<T>(requestParameters: IndexCcV1HistoricalMinutesRequest, requestConfig: runtime.TypedQueryConfig<T, GENERICRESPONSE> = {}): QueryConfig<T> {
    if (requestParameters.market === null || requestParameters.market === undefined) {
        throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling indexCcV1HistoricalMinutes.');
    }

    if (requestParameters.instrument === null || requestParameters.instrument === undefined) {
        throw new runtime.RequiredError('instrument','Required parameter requestParameters.instrument was null or undefined when calling indexCcV1HistoricalMinutes.');
    }

    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.market !== undefined) {
        queryParameters['market'] = requestParameters.market;
    }


    if (requestParameters.instrument !== undefined) {
        queryParameters['instrument'] = requestParameters.instrument;
    }


    if (requestParameters.groups) {
        queryParameters['groups'] = requestParameters.groups?.join(runtime.COLLECTION_FORMATS["csv"]);
    }


    if (requestParameters.limit !== undefined) {
        queryParameters['limit'] = requestParameters.limit;
    }


    if (requestParameters.toTs !== undefined) {
        queryParameters['to_ts'] = requestParameters.toTs;
    }


    if (requestParameters.aggregate !== undefined) {
        queryParameters['aggregate'] = requestParameters.aggregate;
    }


    if (requestParameters.fill !== undefined) {
        queryParameters['fill'] = requestParameters.fill;
    }


    if (requestParameters.mappingPriority !== undefined) {
        queryParameters['mapping_priority'] = requestParameters.mappingPriority;
    }


    if (requestParameters.responseFormat !== undefined) {
        queryParameters['response_format'] = requestParameters.responseFormat;
    }

    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/index/cc/v1/historical/minutes`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(GENERICRESPONSEFromJSON(body), text);
    }

    return config;
}

/**
*/
export function indexCcV1HistoricalMinutes<T>(requestParameters: IndexCcV1HistoricalMinutesRequest, requestConfig?: runtime.TypedQueryConfig<T, GENERICRESPONSE>): QueryConfig<T> {
    return indexCcV1HistoricalMinutesRaw(requestParameters, requestConfig);
}

/**
 */
function indexCcV1LatestInstrumentMetadataRaw<T>(requestParameters: IndexCcV1LatestInstrumentMetadataRequest, requestConfig: runtime.TypedQueryConfig<T, GENERICRESPONSE> = {}): QueryConfig<T> {
    if (requestParameters.market === null || requestParameters.market === undefined) {
        throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling indexCcV1LatestInstrumentMetadata.');
    }

    if (requestParameters.instruments === null || requestParameters.instruments === undefined) {
        throw new runtime.RequiredError('instruments','Required parameter requestParameters.instruments was null or undefined when calling indexCcV1LatestInstrumentMetadata.');
    }

    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.market !== undefined) {
        queryParameters['market'] = requestParameters.market;
    }


    if (requestParameters.instruments) {
        queryParameters['instruments'] = requestParameters.instruments?.join(runtime.COLLECTION_FORMATS["csv"]);
    }


    if (requestParameters.groups) {
        queryParameters['groups'] = requestParameters.groups?.join(runtime.COLLECTION_FORMATS["csv"]);
    }


    if (requestParameters.mappingPriority !== undefined) {
        queryParameters['mapping_priority'] = requestParameters.mappingPriority;
    }

    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/index/cc/v1/latest/instrument/metadata`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(GENERICRESPONSEFromJSON(body), text);
    }

    return config;
}

/**
*/
export function indexCcV1LatestInstrumentMetadata<T>(requestParameters: IndexCcV1LatestInstrumentMetadataRequest, requestConfig?: runtime.TypedQueryConfig<T, GENERICRESPONSE>): QueryConfig<T> {
    return indexCcV1LatestInstrumentMetadataRaw(requestParameters, requestConfig);
}

/**
 */
function indexCcV1LatestTickRaw<T>(requestParameters: IndexCcV1LatestTickRequest, requestConfig: runtime.TypedQueryConfig<T, GENERICRESPONSE> = {}): QueryConfig<T> {
    if (requestParameters.market === null || requestParameters.market === undefined) {
        throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling indexCcV1LatestTick.');
    }

    if (requestParameters.instruments === null || requestParameters.instruments === undefined) {
        throw new runtime.RequiredError('instruments','Required parameter requestParameters.instruments was null or undefined when calling indexCcV1LatestTick.');
    }

    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.market !== undefined) {
        queryParameters['market'] = requestParameters.market;
    }


    if (requestParameters.instruments) {
        queryParameters['instruments'] = requestParameters.instruments?.join(runtime.COLLECTION_FORMATS["csv"]);
    }


    if (requestParameters.groups) {
        queryParameters['groups'] = requestParameters.groups?.join(runtime.COLLECTION_FORMATS["csv"]);
    }


    if (requestParameters.mappingPriority !== undefined) {
        queryParameters['mapping_priority'] = requestParameters.mappingPriority;
    }

    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/index/cc/v1/latest/tick`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(GENERICRESPONSEFromJSON(body), text);
    }

    return config;
}

/**
*/
export function indexCcV1LatestTick<T>(requestParameters: IndexCcV1LatestTickRequest, requestConfig?: runtime.TypedQueryConfig<T, GENERICRESPONSE>): QueryConfig<T> {
    return indexCcV1LatestTickRaw(requestParameters, requestConfig);
}

/**
 */
function indexCcV1MarketsRaw<T>(requestParameters: IndexCcV1MarketsRequest, requestConfig: runtime.TypedQueryConfig<T, GENERICRESPONSE> = {}): QueryConfig<T> {
    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.market !== undefined) {
        queryParameters['market'] = requestParameters.market;
    }

    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/index/cc/v1/markets`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(GENERICRESPONSEFromJSON(body), text);
    }

    return config;
}

/**
*/
export function indexCcV1Markets<T>(requestParameters: IndexCcV1MarketsRequest, requestConfig?: runtime.TypedQueryConfig<T, GENERICRESPONSE>): QueryConfig<T> {
    return indexCcV1MarketsRaw(requestParameters, requestConfig);
}

/**
 */
function indexCcV1MarketsInstrumentsRaw<T>(requestParameters: IndexCcV1MarketsInstrumentsRequest, requestConfig: runtime.TypedQueryConfig<T, GENERICRESPONSE> = {}): QueryConfig<T> {
    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.market !== undefined) {
        queryParameters['market'] = requestParameters.market;
    }


    if (requestParameters.instrument !== undefined) {
        queryParameters['instrument'] = requestParameters.instrument;
    }


    if (requestParameters.instrumentStatus) {
        queryParameters['instrument_status'] = requestParameters.instrumentStatus?.join(runtime.COLLECTION_FORMATS["csv"]);
    }

    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/index/cc/v1/markets/instruments`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(GENERICRESPONSEFromJSON(body), text);
    }

    return config;
}

/**
*/
export function indexCcV1MarketsInstruments<T>(requestParameters: IndexCcV1MarketsInstrumentsRequest, requestConfig?: runtime.TypedQueryConfig<T, GENERICRESPONSE>): QueryConfig<T> {
    return indexCcV1MarketsInstrumentsRaw(requestParameters, requestConfig);
}

/**
 */
function indexCcV1MarketsInstrumentsUnmappedRaw<T>(requestParameters: IndexCcV1MarketsInstrumentsUnmappedRequest, requestConfig: runtime.TypedQueryConfig<T, GENERICRESPONSE> = {}): QueryConfig<T> {
    let queryParameters = null;

    queryParameters = {};


    if (requestParameters.market !== undefined) {
        queryParameters['market'] = requestParameters.market;
    }


    if (requestParameters.instrument !== undefined) {
        queryParameters['instrument'] = requestParameters.instrument;
    }


    if (requestParameters.instrumentStatus) {
        queryParameters['instrument_status'] = requestParameters.instrumentStatus?.join(runtime.COLLECTION_FORMATS["csv"]);
    }

    const headerParameters : runtime.HttpHeaders = {};


    const { meta = {} } = requestConfig;

    const config: QueryConfig<T> = {
        url: `${runtime.Configuration.basePath}/index/cc/v1/markets/instruments/unmapped`,
        meta,
        update: requestConfig.update,
        queryKey: requestConfig.queryKey,
        optimisticUpdate: requestConfig.optimisticUpdate,
        force: requestConfig.force,
        rollback: requestConfig.rollback,
        options: {
            method: 'GET',
            headers: headerParameters,
        },
        body: queryParameters,
    };

    const { transform: requestTransform } = requestConfig;
    if (requestTransform) {
        config.transform = (body: ResponseBody, text: ResponseBody) => requestTransform(GENERICRESPONSEFromJSON(body), text);
    }

    return config;
}

/**
*/
export function indexCcV1MarketsInstrumentsUnmapped<T>(requestParameters: IndexCcV1MarketsInstrumentsUnmappedRequest, requestConfig?: runtime.TypedQueryConfig<T, GENERICRESPONSE>): QueryConfig<T> {
    return indexCcV1MarketsInstrumentsUnmappedRaw(requestParameters, requestConfig);
}


/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1HistoricalDaysMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1HistoricalDaysResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1HistoricalHoursMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1HistoricalHoursResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1HistoricalMessagesMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1HistoricalMessagesResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1HistoricalMessagesHourMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1HistoricalMessagesHourResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1HistoricalMinutesMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1HistoricalMinutesResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1LatestInstrumentMetadataMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1LatestTickMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1MarketsInstrumentsInstrumentStatusEnum {
    Active = 'ACTIVE',
    Ignored = 'IGNORED',
    Retired = 'RETIRED',
    Expired = 'EXPIRED'
}
/**
    * @export
    * @enum {string}
    */
export enum IndexCcV1MarketsInstrumentsUnmappedInstrumentStatusEnum {
    Active = 'ACTIVE',
    Ignored = 'IGNORED',
    Retired = 'RETIRED',
    Expired = 'EXPIRED'
}
