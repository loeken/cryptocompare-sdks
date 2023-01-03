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


import * as runtime from '../runtime';
import type {
  GENERICRESPONSE,
  SPOTINSTRUMENTHISTODATARESPONSE,
  SPOTINSTRUMENTMARKETDATARESPONSE,
  SPOTINSTRUMENTMETADATARESPONSE,
  SPOTINSTRUMENTTRADERESPONSE,
} from '../models';
import {
    GENERICRESPONSEFromJSON,
    GENERICRESPONSEToJSON,
    SPOTINSTRUMENTHISTODATARESPONSEFromJSON,
    SPOTINSTRUMENTHISTODATARESPONSEToJSON,
    SPOTINSTRUMENTMARKETDATARESPONSEFromJSON,
    SPOTINSTRUMENTMARKETDATARESPONSEToJSON,
    SPOTINSTRUMENTMETADATARESPONSEFromJSON,
    SPOTINSTRUMENTMETADATARESPONSEToJSON,
    SPOTINSTRUMENTTRADERESPONSEFromJSON,
    SPOTINSTRUMENTTRADERESPONSEToJSON,
} from '../models';

export interface SpotV1HistoricalDaysRequest {
    market: string;
    instrument: string;
    groups?: Array<string>;
    limit?: number;
    toTs?: number;
    aggregate?: number;
    fill?: boolean;
    mappingPriority?: SpotV1HistoricalDaysMappingPriorityEnum;
    responseFormat?: SpotV1HistoricalDaysResponseFormatEnum;
}

export interface SpotV1HistoricalHoursRequest {
    market: string;
    instrument: string;
    groups?: Array<string>;
    limit?: number;
    toTs?: number;
    aggregate?: number;
    fill?: boolean;
    mappingPriority?: SpotV1HistoricalHoursMappingPriorityEnum;
    responseFormat?: SpotV1HistoricalHoursResponseFormatEnum;
}

export interface SpotV1HistoricalMinutesRequest {
    market: string;
    instrument: string;
    groups?: Array<string>;
    limit?: number;
    toTs?: number;
    aggregate?: number;
    fill?: boolean;
    mappingPriority?: SpotV1HistoricalMinutesMappingPriorityEnum;
    responseFormat?: SpotV1HistoricalMinutesResponseFormatEnum;
}

export interface SpotV1HistoricalOrderbookL2SnapshotMinuteRequest {
    market: string;
    instrument: string;
    minuteTs: number;
    depth?: number;
    mappingPriority?: SpotV1HistoricalOrderbookL2SnapshotMinuteMappingPriorityEnum;
    responseFormat?: SpotV1HistoricalOrderbookL2SnapshotMinuteResponseFormatEnum;
}

export interface SpotV1HistoricalTradesRequest {
    market: string;
    instrument: string;
    afterTs?: number;
    lastCcseq?: number;
    limit?: number;
    mappingPriority?: SpotV1HistoricalTradesMappingPriorityEnum;
    responseFormat?: SpotV1HistoricalTradesResponseFormatEnum;
    return404OnEmptyResponse?: boolean;
}

export interface SpotV1HistoricalTradesHourRequest {
    market: string;
    instrument: string;
    hourTs?: number;
    mappingPriority?: SpotV1HistoricalTradesHourMappingPriorityEnum;
    responseFormat?: SpotV1HistoricalTradesHourResponseFormatEnum;
    return404OnEmptyResponse?: boolean;
}

export interface SpotV1LatestInstrumentMetadataRequest {
    market: string;
    instruments: Array<string>;
    groups?: Array<string>;
    mappingPriority?: SpotV1LatestInstrumentMetadataMappingPriorityEnum;
}

export interface SpotV1LatestTickRequest {
    market: string;
    instruments: Array<string>;
    groups?: Array<string>;
    mappingPriority?: SpotV1LatestTickMappingPriorityEnum;
}

export interface SpotV1MarketsRequest {
    market?: string;
}

export interface SpotV1MarketsInstrumentsRequest {
    market?: string;
    instrument?: string;
    instrumentStatus?: Array<SpotV1MarketsInstrumentsInstrumentStatusEnum>;
}

export interface SpotV1MarketsInstrumentsUnmappedRequest {
    market?: string;
    instrument?: string;
    instrumentStatus?: Array<SpotV1MarketsInstrumentsUnmappedInstrumentStatusEnum>;
}

/**
 * 
 */
export class SpotApi extends runtime.BaseAPI {

    /**
     */
    async spotV1HistoricalDaysRaw(requestParameters: SpotV1HistoricalDaysRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<runtime.ApiResponse<SPOTINSTRUMENTHISTODATARESPONSE>> {
        if (requestParameters.market === null || requestParameters.market === undefined) {
            throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling spotV1HistoricalDays.');
        }

        if (requestParameters.instrument === null || requestParameters.instrument === undefined) {
            throw new runtime.RequiredError('instrument','Required parameter requestParameters.instrument was null or undefined when calling spotV1HistoricalDays.');
        }

        const queryParameters: any = {};

        if (requestParameters.market !== undefined) {
            queryParameters['market'] = requestParameters.market;
        }

        if (requestParameters.instrument !== undefined) {
            queryParameters['instrument'] = requestParameters.instrument;
        }

        if (requestParameters.groups) {
            queryParameters['groups'] = requestParameters.groups.join(runtime.COLLECTION_FORMATS["csv"]);
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

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/spot/v1/historical/days`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => SPOTINSTRUMENTHISTODATARESPONSEFromJSON(jsonValue));
    }

    /**
     */
    async spotV1HistoricalDays(requestParameters: SpotV1HistoricalDaysRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<SPOTINSTRUMENTHISTODATARESPONSE> {
        const response = await this.spotV1HistoricalDaysRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     */
    async spotV1HistoricalHoursRaw(requestParameters: SpotV1HistoricalHoursRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<runtime.ApiResponse<SPOTINSTRUMENTHISTODATARESPONSE>> {
        if (requestParameters.market === null || requestParameters.market === undefined) {
            throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling spotV1HistoricalHours.');
        }

        if (requestParameters.instrument === null || requestParameters.instrument === undefined) {
            throw new runtime.RequiredError('instrument','Required parameter requestParameters.instrument was null or undefined when calling spotV1HistoricalHours.');
        }

        const queryParameters: any = {};

        if (requestParameters.market !== undefined) {
            queryParameters['market'] = requestParameters.market;
        }

        if (requestParameters.instrument !== undefined) {
            queryParameters['instrument'] = requestParameters.instrument;
        }

        if (requestParameters.groups) {
            queryParameters['groups'] = requestParameters.groups.join(runtime.COLLECTION_FORMATS["csv"]);
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

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/spot/v1/historical/hours`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => SPOTINSTRUMENTHISTODATARESPONSEFromJSON(jsonValue));
    }

    /**
     */
    async spotV1HistoricalHours(requestParameters: SpotV1HistoricalHoursRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<SPOTINSTRUMENTHISTODATARESPONSE> {
        const response = await this.spotV1HistoricalHoursRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     */
    async spotV1HistoricalMinutesRaw(requestParameters: SpotV1HistoricalMinutesRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<runtime.ApiResponse<SPOTINSTRUMENTHISTODATARESPONSE>> {
        if (requestParameters.market === null || requestParameters.market === undefined) {
            throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling spotV1HistoricalMinutes.');
        }

        if (requestParameters.instrument === null || requestParameters.instrument === undefined) {
            throw new runtime.RequiredError('instrument','Required parameter requestParameters.instrument was null or undefined when calling spotV1HistoricalMinutes.');
        }

        const queryParameters: any = {};

        if (requestParameters.market !== undefined) {
            queryParameters['market'] = requestParameters.market;
        }

        if (requestParameters.instrument !== undefined) {
            queryParameters['instrument'] = requestParameters.instrument;
        }

        if (requestParameters.groups) {
            queryParameters['groups'] = requestParameters.groups.join(runtime.COLLECTION_FORMATS["csv"]);
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

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/spot/v1/historical/minutes`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => SPOTINSTRUMENTHISTODATARESPONSEFromJSON(jsonValue));
    }

    /**
     */
    async spotV1HistoricalMinutes(requestParameters: SpotV1HistoricalMinutesRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<SPOTINSTRUMENTHISTODATARESPONSE> {
        const response = await this.spotV1HistoricalMinutesRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     */
    async spotV1HistoricalOrderbookL2SnapshotMinuteRaw(requestParameters: SpotV1HistoricalOrderbookL2SnapshotMinuteRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<runtime.ApiResponse<GENERICRESPONSE>> {
        if (requestParameters.market === null || requestParameters.market === undefined) {
            throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling spotV1HistoricalOrderbookL2SnapshotMinute.');
        }

        if (requestParameters.instrument === null || requestParameters.instrument === undefined) {
            throw new runtime.RequiredError('instrument','Required parameter requestParameters.instrument was null or undefined when calling spotV1HistoricalOrderbookL2SnapshotMinute.');
        }

        if (requestParameters.minuteTs === null || requestParameters.minuteTs === undefined) {
            throw new runtime.RequiredError('minuteTs','Required parameter requestParameters.minuteTs was null or undefined when calling spotV1HistoricalOrderbookL2SnapshotMinute.');
        }

        const queryParameters: any = {};

        if (requestParameters.market !== undefined) {
            queryParameters['market'] = requestParameters.market;
        }

        if (requestParameters.instrument !== undefined) {
            queryParameters['instrument'] = requestParameters.instrument;
        }

        if (requestParameters.minuteTs !== undefined) {
            queryParameters['minute_ts'] = requestParameters.minuteTs;
        }

        if (requestParameters.depth !== undefined) {
            queryParameters['depth'] = requestParameters.depth;
        }

        if (requestParameters.mappingPriority !== undefined) {
            queryParameters['mapping_priority'] = requestParameters.mappingPriority;
        }

        if (requestParameters.responseFormat !== undefined) {
            queryParameters['response_format'] = requestParameters.responseFormat;
        }

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.apiKey) {
            headerParameters["authorization"] = this.configuration.apiKey("authorization"); // api_key_header authentication
        }

        if (this.configuration && this.configuration.apiKey) {
            queryParameters["api_key"] = this.configuration.apiKey("api_key"); // api_key_query authentication
        }

        const response = await this.request({
            path: `/spot/v1/historical/orderbook/l2/snapshot/minute`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => GENERICRESPONSEFromJSON(jsonValue));
    }

    /**
     */
    async spotV1HistoricalOrderbookL2SnapshotMinute(requestParameters: SpotV1HistoricalOrderbookL2SnapshotMinuteRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<GENERICRESPONSE> {
        const response = await this.spotV1HistoricalOrderbookL2SnapshotMinuteRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     */
    async spotV1HistoricalTradesRaw(requestParameters: SpotV1HistoricalTradesRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<runtime.ApiResponse<SPOTINSTRUMENTTRADERESPONSE>> {
        if (requestParameters.market === null || requestParameters.market === undefined) {
            throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling spotV1HistoricalTrades.');
        }

        if (requestParameters.instrument === null || requestParameters.instrument === undefined) {
            throw new runtime.RequiredError('instrument','Required parameter requestParameters.instrument was null or undefined when calling spotV1HistoricalTrades.');
        }

        const queryParameters: any = {};

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

        if (requestParameters.limit !== undefined) {
            queryParameters['limit'] = requestParameters.limit;
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

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.apiKey) {
            headerParameters["authorization"] = this.configuration.apiKey("authorization"); // api_key_header authentication
        }

        if (this.configuration && this.configuration.apiKey) {
            queryParameters["api_key"] = this.configuration.apiKey("api_key"); // api_key_query authentication
        }

        const response = await this.request({
            path: `/spot/v1/historical/trades`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => SPOTINSTRUMENTTRADERESPONSEFromJSON(jsonValue));
    }

    /**
     */
    async spotV1HistoricalTrades(requestParameters: SpotV1HistoricalTradesRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<SPOTINSTRUMENTTRADERESPONSE> {
        const response = await this.spotV1HistoricalTradesRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     */
    async spotV1HistoricalTradesHourRaw(requestParameters: SpotV1HistoricalTradesHourRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<runtime.ApiResponse<SPOTINSTRUMENTTRADERESPONSE>> {
        if (requestParameters.market === null || requestParameters.market === undefined) {
            throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling spotV1HistoricalTradesHour.');
        }

        if (requestParameters.instrument === null || requestParameters.instrument === undefined) {
            throw new runtime.RequiredError('instrument','Required parameter requestParameters.instrument was null or undefined when calling spotV1HistoricalTradesHour.');
        }

        const queryParameters: any = {};

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

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.apiKey) {
            headerParameters["authorization"] = this.configuration.apiKey("authorization"); // api_key_header authentication
        }

        if (this.configuration && this.configuration.apiKey) {
            queryParameters["api_key"] = this.configuration.apiKey("api_key"); // api_key_query authentication
        }

        const response = await this.request({
            path: `/spot/v1/historical/trades/hour`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => SPOTINSTRUMENTTRADERESPONSEFromJSON(jsonValue));
    }

    /**
     */
    async spotV1HistoricalTradesHour(requestParameters: SpotV1HistoricalTradesHourRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<SPOTINSTRUMENTTRADERESPONSE> {
        const response = await this.spotV1HistoricalTradesHourRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     */
    async spotV1LatestInstrumentMetadataRaw(requestParameters: SpotV1LatestInstrumentMetadataRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<runtime.ApiResponse<SPOTINSTRUMENTMETADATARESPONSE>> {
        if (requestParameters.market === null || requestParameters.market === undefined) {
            throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling spotV1LatestInstrumentMetadata.');
        }

        if (requestParameters.instruments === null || requestParameters.instruments === undefined) {
            throw new runtime.RequiredError('instruments','Required parameter requestParameters.instruments was null or undefined when calling spotV1LatestInstrumentMetadata.');
        }

        const queryParameters: any = {};

        if (requestParameters.market !== undefined) {
            queryParameters['market'] = requestParameters.market;
        }

        if (requestParameters.instruments) {
            queryParameters['instruments'] = requestParameters.instruments.join(runtime.COLLECTION_FORMATS["csv"]);
        }

        if (requestParameters.groups) {
            queryParameters['groups'] = requestParameters.groups.join(runtime.COLLECTION_FORMATS["csv"]);
        }

        if (requestParameters.mappingPriority !== undefined) {
            queryParameters['mapping_priority'] = requestParameters.mappingPriority;
        }

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/spot/v1/latest/instrument/metadata`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => SPOTINSTRUMENTMETADATARESPONSEFromJSON(jsonValue));
    }

    /**
     */
    async spotV1LatestInstrumentMetadata(requestParameters: SpotV1LatestInstrumentMetadataRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<SPOTINSTRUMENTMETADATARESPONSE> {
        const response = await this.spotV1LatestInstrumentMetadataRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     */
    async spotV1LatestTickRaw(requestParameters: SpotV1LatestTickRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<runtime.ApiResponse<SPOTINSTRUMENTMARKETDATARESPONSE>> {
        if (requestParameters.market === null || requestParameters.market === undefined) {
            throw new runtime.RequiredError('market','Required parameter requestParameters.market was null or undefined when calling spotV1LatestTick.');
        }

        if (requestParameters.instruments === null || requestParameters.instruments === undefined) {
            throw new runtime.RequiredError('instruments','Required parameter requestParameters.instruments was null or undefined when calling spotV1LatestTick.');
        }

        const queryParameters: any = {};

        if (requestParameters.market !== undefined) {
            queryParameters['market'] = requestParameters.market;
        }

        if (requestParameters.instruments) {
            queryParameters['instruments'] = requestParameters.instruments.join(runtime.COLLECTION_FORMATS["csv"]);
        }

        if (requestParameters.groups) {
            queryParameters['groups'] = requestParameters.groups.join(runtime.COLLECTION_FORMATS["csv"]);
        }

        if (requestParameters.mappingPriority !== undefined) {
            queryParameters['mapping_priority'] = requestParameters.mappingPriority;
        }

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/spot/v1/latest/tick`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => SPOTINSTRUMENTMARKETDATARESPONSEFromJSON(jsonValue));
    }

    /**
     */
    async spotV1LatestTick(requestParameters: SpotV1LatestTickRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<SPOTINSTRUMENTMARKETDATARESPONSE> {
        const response = await this.spotV1LatestTickRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     */
    async spotV1MarketsRaw(requestParameters: SpotV1MarketsRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<runtime.ApiResponse<GENERICRESPONSE>> {
        const queryParameters: any = {};

        if (requestParameters.market !== undefined) {
            queryParameters['market'] = requestParameters.market;
        }

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/spot/v1/markets`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => GENERICRESPONSEFromJSON(jsonValue));
    }

    /**
     */
    async spotV1Markets(requestParameters: SpotV1MarketsRequest = {}, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<GENERICRESPONSE> {
        const response = await this.spotV1MarketsRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     */
    async spotV1MarketsInstrumentsRaw(requestParameters: SpotV1MarketsInstrumentsRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<runtime.ApiResponse<GENERICRESPONSE>> {
        const queryParameters: any = {};

        if (requestParameters.market !== undefined) {
            queryParameters['market'] = requestParameters.market;
        }

        if (requestParameters.instrument !== undefined) {
            queryParameters['instrument'] = requestParameters.instrument;
        }

        if (requestParameters.instrumentStatus) {
            queryParameters['instrument_status'] = requestParameters.instrumentStatus.join(runtime.COLLECTION_FORMATS["csv"]);
        }

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/spot/v1/markets/instruments`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => GENERICRESPONSEFromJSON(jsonValue));
    }

    /**
     */
    async spotV1MarketsInstruments(requestParameters: SpotV1MarketsInstrumentsRequest = {}, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<GENERICRESPONSE> {
        const response = await this.spotV1MarketsInstrumentsRaw(requestParameters, initOverrides);
        return await response.value();
    }

    /**
     */
    async spotV1MarketsInstrumentsUnmappedRaw(requestParameters: SpotV1MarketsInstrumentsUnmappedRequest, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<runtime.ApiResponse<GENERICRESPONSE>> {
        const queryParameters: any = {};

        if (requestParameters.market !== undefined) {
            queryParameters['market'] = requestParameters.market;
        }

        if (requestParameters.instrument !== undefined) {
            queryParameters['instrument'] = requestParameters.instrument;
        }

        if (requestParameters.instrumentStatus) {
            queryParameters['instrument_status'] = requestParameters.instrumentStatus.join(runtime.COLLECTION_FORMATS["csv"]);
        }

        const headerParameters: runtime.HTTPHeaders = {};

        const response = await this.request({
            path: `/spot/v1/markets/instruments/unmapped`,
            method: 'GET',
            headers: headerParameters,
            query: queryParameters,
        }, initOverrides);

        return new runtime.JSONApiResponse(response, (jsonValue) => GENERICRESPONSEFromJSON(jsonValue));
    }

    /**
     */
    async spotV1MarketsInstrumentsUnmapped(requestParameters: SpotV1MarketsInstrumentsUnmappedRequest = {}, initOverrides?: RequestInit | runtime.InitOverrideFunction): Promise<GENERICRESPONSE> {
        const response = await this.spotV1MarketsInstrumentsUnmappedRaw(requestParameters, initOverrides);
        return await response.value();
    }

}

/**
 * @export
 */
export const SpotV1HistoricalDaysMappingPriorityEnum = {
    MappedFirst: 'CHECK_MAPPED_FIRST',
    UnmappedFirst: 'CHECK_UNMAPPED_FIRST'
} as const;
export type SpotV1HistoricalDaysMappingPriorityEnum = typeof SpotV1HistoricalDaysMappingPriorityEnum[keyof typeof SpotV1HistoricalDaysMappingPriorityEnum];
/**
 * @export
 */
export const SpotV1HistoricalDaysResponseFormatEnum = {
    Json: 'JSON',
    Csv: 'CSV'
} as const;
export type SpotV1HistoricalDaysResponseFormatEnum = typeof SpotV1HistoricalDaysResponseFormatEnum[keyof typeof SpotV1HistoricalDaysResponseFormatEnum];
/**
 * @export
 */
export const SpotV1HistoricalHoursMappingPriorityEnum = {
    MappedFirst: 'CHECK_MAPPED_FIRST',
    UnmappedFirst: 'CHECK_UNMAPPED_FIRST'
} as const;
export type SpotV1HistoricalHoursMappingPriorityEnum = typeof SpotV1HistoricalHoursMappingPriorityEnum[keyof typeof SpotV1HistoricalHoursMappingPriorityEnum];
/**
 * @export
 */
export const SpotV1HistoricalHoursResponseFormatEnum = {
    Json: 'JSON',
    Csv: 'CSV'
} as const;
export type SpotV1HistoricalHoursResponseFormatEnum = typeof SpotV1HistoricalHoursResponseFormatEnum[keyof typeof SpotV1HistoricalHoursResponseFormatEnum];
/**
 * @export
 */
export const SpotV1HistoricalMinutesMappingPriorityEnum = {
    MappedFirst: 'CHECK_MAPPED_FIRST',
    UnmappedFirst: 'CHECK_UNMAPPED_FIRST'
} as const;
export type SpotV1HistoricalMinutesMappingPriorityEnum = typeof SpotV1HistoricalMinutesMappingPriorityEnum[keyof typeof SpotV1HistoricalMinutesMappingPriorityEnum];
/**
 * @export
 */
export const SpotV1HistoricalMinutesResponseFormatEnum = {
    Json: 'JSON',
    Csv: 'CSV'
} as const;
export type SpotV1HistoricalMinutesResponseFormatEnum = typeof SpotV1HistoricalMinutesResponseFormatEnum[keyof typeof SpotV1HistoricalMinutesResponseFormatEnum];
/**
 * @export
 */
export const SpotV1HistoricalOrderbookL2SnapshotMinuteMappingPriorityEnum = {
    MappedFirst: 'CHECK_MAPPED_FIRST',
    UnmappedFirst: 'CHECK_UNMAPPED_FIRST'
} as const;
export type SpotV1HistoricalOrderbookL2SnapshotMinuteMappingPriorityEnum = typeof SpotV1HistoricalOrderbookL2SnapshotMinuteMappingPriorityEnum[keyof typeof SpotV1HistoricalOrderbookL2SnapshotMinuteMappingPriorityEnum];
/**
 * @export
 */
export const SpotV1HistoricalOrderbookL2SnapshotMinuteResponseFormatEnum = {
    Json: 'JSON',
    Csv: 'CSV'
} as const;
export type SpotV1HistoricalOrderbookL2SnapshotMinuteResponseFormatEnum = typeof SpotV1HistoricalOrderbookL2SnapshotMinuteResponseFormatEnum[keyof typeof SpotV1HistoricalOrderbookL2SnapshotMinuteResponseFormatEnum];
/**
 * @export
 */
export const SpotV1HistoricalTradesMappingPriorityEnum = {
    MappedFirst: 'CHECK_MAPPED_FIRST',
    UnmappedFirst: 'CHECK_UNMAPPED_FIRST'
} as const;
export type SpotV1HistoricalTradesMappingPriorityEnum = typeof SpotV1HistoricalTradesMappingPriorityEnum[keyof typeof SpotV1HistoricalTradesMappingPriorityEnum];
/**
 * @export
 */
export const SpotV1HistoricalTradesResponseFormatEnum = {
    Json: 'JSON',
    Csv: 'CSV'
} as const;
export type SpotV1HistoricalTradesResponseFormatEnum = typeof SpotV1HistoricalTradesResponseFormatEnum[keyof typeof SpotV1HistoricalTradesResponseFormatEnum];
/**
 * @export
 */
export const SpotV1HistoricalTradesHourMappingPriorityEnum = {
    MappedFirst: 'CHECK_MAPPED_FIRST',
    UnmappedFirst: 'CHECK_UNMAPPED_FIRST'
} as const;
export type SpotV1HistoricalTradesHourMappingPriorityEnum = typeof SpotV1HistoricalTradesHourMappingPriorityEnum[keyof typeof SpotV1HistoricalTradesHourMappingPriorityEnum];
/**
 * @export
 */
export const SpotV1HistoricalTradesHourResponseFormatEnum = {
    Json: 'JSON',
    Csv: 'CSV'
} as const;
export type SpotV1HistoricalTradesHourResponseFormatEnum = typeof SpotV1HistoricalTradesHourResponseFormatEnum[keyof typeof SpotV1HistoricalTradesHourResponseFormatEnum];
/**
 * @export
 */
export const SpotV1LatestInstrumentMetadataMappingPriorityEnum = {
    MappedFirst: 'CHECK_MAPPED_FIRST',
    UnmappedFirst: 'CHECK_UNMAPPED_FIRST'
} as const;
export type SpotV1LatestInstrumentMetadataMappingPriorityEnum = typeof SpotV1LatestInstrumentMetadataMappingPriorityEnum[keyof typeof SpotV1LatestInstrumentMetadataMappingPriorityEnum];
/**
 * @export
 */
export const SpotV1LatestTickMappingPriorityEnum = {
    MappedFirst: 'CHECK_MAPPED_FIRST',
    UnmappedFirst: 'CHECK_UNMAPPED_FIRST'
} as const;
export type SpotV1LatestTickMappingPriorityEnum = typeof SpotV1LatestTickMappingPriorityEnum[keyof typeof SpotV1LatestTickMappingPriorityEnum];
/**
 * @export
 */
export const SpotV1MarketsInstrumentsInstrumentStatusEnum = {
    Active: 'ACTIVE',
    Ignored: 'IGNORED',
    Retired: 'RETIRED',
    Expired: 'EXPIRED'
} as const;
export type SpotV1MarketsInstrumentsInstrumentStatusEnum = typeof SpotV1MarketsInstrumentsInstrumentStatusEnum[keyof typeof SpotV1MarketsInstrumentsInstrumentStatusEnum];
/**
 * @export
 */
export const SpotV1MarketsInstrumentsUnmappedInstrumentStatusEnum = {
    Active: 'ACTIVE',
    Ignored: 'IGNORED',
    Retired: 'RETIRED',
    Expired: 'EXPIRED'
} as const;
export type SpotV1MarketsInstrumentsUnmappedInstrumentStatusEnum = typeof SpotV1MarketsInstrumentsUnmappedInstrumentStatusEnum[keyof typeof SpotV1MarketsInstrumentsUnmappedInstrumentStatusEnum];