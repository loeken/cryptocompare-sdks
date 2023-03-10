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

import type { Observable } from 'rxjs';
import type { AjaxResponse } from 'rxjs/ajax';
import { BaseAPI, throwIfNullOrUndefined, COLLECTION_FORMATS } from '../runtime';
import type { OperationOpts, HttpHeaders, HttpQuery } from '../runtime';
import type {
    GENERICRESPONSE,
    SPOTINSTRUMENTHISTODATARESPONSE,
    SPOTINSTRUMENTMARKETDATARESPONSE,
    SPOTINSTRUMENTMETADATARESPONSE,
    SPOTINSTRUMENTTRADERESPONSE,
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
 * no description
 */
export class SpotApi extends BaseAPI {

    /**
     */
    spotV1HistoricalDays({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: SpotV1HistoricalDaysRequest): Observable<SPOTINSTRUMENTHISTODATARESPONSE>
    spotV1HistoricalDays({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: SpotV1HistoricalDaysRequest, opts?: OperationOpts): Observable<AjaxResponse<SPOTINSTRUMENTHISTODATARESPONSE>>
    spotV1HistoricalDays({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: SpotV1HistoricalDaysRequest, opts?: OperationOpts): Observable<SPOTINSTRUMENTHISTODATARESPONSE | AjaxResponse<SPOTINSTRUMENTHISTODATARESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'spotV1HistoricalDays');
        throwIfNullOrUndefined(instrument, 'instrument', 'spotV1HistoricalDays');

        const query: HttpQuery = { // required parameters are used directly since they are already checked by throwIfNullOrUndefined
            'market': market,
            'instrument': instrument,
        };

        if (groups != null) { query['groups'] = groups.join(COLLECTION_FORMATS['csv']); }
        if (limit != null) { query['limit'] = limit; }
        if (toTs != null) { query['to_ts'] = toTs; }
        if (aggregate != null) { query['aggregate'] = aggregate; }
        if (fill != null) { query['fill'] = fill; }
        if (mappingPriority != null) { query['mapping_priority'] = mappingPriority; }
        if (responseFormat != null) { query['response_format'] = responseFormat; }

        return this.request<SPOTINSTRUMENTHISTODATARESPONSE>({
            url: '/spot/v1/historical/days',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    spotV1HistoricalHours({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: SpotV1HistoricalHoursRequest): Observable<SPOTINSTRUMENTHISTODATARESPONSE>
    spotV1HistoricalHours({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: SpotV1HistoricalHoursRequest, opts?: OperationOpts): Observable<AjaxResponse<SPOTINSTRUMENTHISTODATARESPONSE>>
    spotV1HistoricalHours({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: SpotV1HistoricalHoursRequest, opts?: OperationOpts): Observable<SPOTINSTRUMENTHISTODATARESPONSE | AjaxResponse<SPOTINSTRUMENTHISTODATARESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'spotV1HistoricalHours');
        throwIfNullOrUndefined(instrument, 'instrument', 'spotV1HistoricalHours');

        const query: HttpQuery = { // required parameters are used directly since they are already checked by throwIfNullOrUndefined
            'market': market,
            'instrument': instrument,
        };

        if (groups != null) { query['groups'] = groups.join(COLLECTION_FORMATS['csv']); }
        if (limit != null) { query['limit'] = limit; }
        if (toTs != null) { query['to_ts'] = toTs; }
        if (aggregate != null) { query['aggregate'] = aggregate; }
        if (fill != null) { query['fill'] = fill; }
        if (mappingPriority != null) { query['mapping_priority'] = mappingPriority; }
        if (responseFormat != null) { query['response_format'] = responseFormat; }

        return this.request<SPOTINSTRUMENTHISTODATARESPONSE>({
            url: '/spot/v1/historical/hours',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    spotV1HistoricalMinutes({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: SpotV1HistoricalMinutesRequest): Observable<SPOTINSTRUMENTHISTODATARESPONSE>
    spotV1HistoricalMinutes({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: SpotV1HistoricalMinutesRequest, opts?: OperationOpts): Observable<AjaxResponse<SPOTINSTRUMENTHISTODATARESPONSE>>
    spotV1HistoricalMinutes({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: SpotV1HistoricalMinutesRequest, opts?: OperationOpts): Observable<SPOTINSTRUMENTHISTODATARESPONSE | AjaxResponse<SPOTINSTRUMENTHISTODATARESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'spotV1HistoricalMinutes');
        throwIfNullOrUndefined(instrument, 'instrument', 'spotV1HistoricalMinutes');

        const query: HttpQuery = { // required parameters are used directly since they are already checked by throwIfNullOrUndefined
            'market': market,
            'instrument': instrument,
        };

        if (groups != null) { query['groups'] = groups.join(COLLECTION_FORMATS['csv']); }
        if (limit != null) { query['limit'] = limit; }
        if (toTs != null) { query['to_ts'] = toTs; }
        if (aggregate != null) { query['aggregate'] = aggregate; }
        if (fill != null) { query['fill'] = fill; }
        if (mappingPriority != null) { query['mapping_priority'] = mappingPriority; }
        if (responseFormat != null) { query['response_format'] = responseFormat; }

        return this.request<SPOTINSTRUMENTHISTODATARESPONSE>({
            url: '/spot/v1/historical/minutes',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    spotV1HistoricalOrderbookL2SnapshotMinute({ market, instrument, minuteTs, depth, mappingPriority, responseFormat }: SpotV1HistoricalOrderbookL2SnapshotMinuteRequest): Observable<GENERICRESPONSE>
    spotV1HistoricalOrderbookL2SnapshotMinute({ market, instrument, minuteTs, depth, mappingPriority, responseFormat }: SpotV1HistoricalOrderbookL2SnapshotMinuteRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    spotV1HistoricalOrderbookL2SnapshotMinute({ market, instrument, minuteTs, depth, mappingPriority, responseFormat }: SpotV1HistoricalOrderbookL2SnapshotMinuteRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'spotV1HistoricalOrderbookL2SnapshotMinute');
        throwIfNullOrUndefined(instrument, 'instrument', 'spotV1HistoricalOrderbookL2SnapshotMinute');
        throwIfNullOrUndefined(minuteTs, 'minuteTs', 'spotV1HistoricalOrderbookL2SnapshotMinute');

        const headers: HttpHeaders = {
            ...(this.configuration.apiKey && { 'authorization': this.configuration.apiKey('authorization') }), // api_key_header authentication
        };

        const query: HttpQuery = { // required parameters are used directly since they are already checked by throwIfNullOrUndefined
            'market': market,
            'instrument': instrument,
            'minute_ts': minuteTs,
        };

        if (depth != null) { query['depth'] = depth; }
        if (mappingPriority != null) { query['mapping_priority'] = mappingPriority; }
        if (responseFormat != null) { query['response_format'] = responseFormat; }
        if (this.configuration.apiKey != null) { query['api_key'] = this.configuration.apiKey('api_key'); } // api_key_query authentication

        return this.request<GENERICRESPONSE>({
            url: '/spot/v1/historical/orderbook/l2/snapshot/minute',
            method: 'GET',
            headers,
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    spotV1HistoricalTrades({ market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse }: SpotV1HistoricalTradesRequest): Observable<SPOTINSTRUMENTTRADERESPONSE>
    spotV1HistoricalTrades({ market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse }: SpotV1HistoricalTradesRequest, opts?: OperationOpts): Observable<AjaxResponse<SPOTINSTRUMENTTRADERESPONSE>>
    spotV1HistoricalTrades({ market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse }: SpotV1HistoricalTradesRequest, opts?: OperationOpts): Observable<SPOTINSTRUMENTTRADERESPONSE | AjaxResponse<SPOTINSTRUMENTTRADERESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'spotV1HistoricalTrades');
        throwIfNullOrUndefined(instrument, 'instrument', 'spotV1HistoricalTrades');

        const headers: HttpHeaders = {
            ...(this.configuration.apiKey && { 'authorization': this.configuration.apiKey('authorization') }), // api_key_header authentication
        };

        const query: HttpQuery = { // required parameters are used directly since they are already checked by throwIfNullOrUndefined
            'market': market,
            'instrument': instrument,
        };

        if (afterTs != null) { query['after_ts'] = afterTs; }
        if (lastCcseq != null) { query['last_ccseq'] = lastCcseq; }
        if (limit != null) { query['limit'] = limit; }
        if (mappingPriority != null) { query['mapping_priority'] = mappingPriority; }
        if (responseFormat != null) { query['response_format'] = responseFormat; }
        if (return404OnEmptyResponse != null) { query['return_404_on_empty_response'] = return404OnEmptyResponse; }
        if (this.configuration.apiKey != null) { query['api_key'] = this.configuration.apiKey('api_key'); } // api_key_query authentication

        return this.request<SPOTINSTRUMENTTRADERESPONSE>({
            url: '/spot/v1/historical/trades',
            method: 'GET',
            headers,
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    spotV1HistoricalTradesHour({ market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse }: SpotV1HistoricalTradesHourRequest): Observable<SPOTINSTRUMENTTRADERESPONSE>
    spotV1HistoricalTradesHour({ market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse }: SpotV1HistoricalTradesHourRequest, opts?: OperationOpts): Observable<AjaxResponse<SPOTINSTRUMENTTRADERESPONSE>>
    spotV1HistoricalTradesHour({ market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse }: SpotV1HistoricalTradesHourRequest, opts?: OperationOpts): Observable<SPOTINSTRUMENTTRADERESPONSE | AjaxResponse<SPOTINSTRUMENTTRADERESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'spotV1HistoricalTradesHour');
        throwIfNullOrUndefined(instrument, 'instrument', 'spotV1HistoricalTradesHour');

        const headers: HttpHeaders = {
            ...(this.configuration.apiKey && { 'authorization': this.configuration.apiKey('authorization') }), // api_key_header authentication
        };

        const query: HttpQuery = { // required parameters are used directly since they are already checked by throwIfNullOrUndefined
            'market': market,
            'instrument': instrument,
        };

        if (hourTs != null) { query['hour_ts'] = hourTs; }
        if (mappingPriority != null) { query['mapping_priority'] = mappingPriority; }
        if (responseFormat != null) { query['response_format'] = responseFormat; }
        if (return404OnEmptyResponse != null) { query['return_404_on_empty_response'] = return404OnEmptyResponse; }
        if (this.configuration.apiKey != null) { query['api_key'] = this.configuration.apiKey('api_key'); } // api_key_query authentication

        return this.request<SPOTINSTRUMENTTRADERESPONSE>({
            url: '/spot/v1/historical/trades/hour',
            method: 'GET',
            headers,
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    spotV1LatestInstrumentMetadata({ market, instruments, groups, mappingPriority }: SpotV1LatestInstrumentMetadataRequest): Observable<SPOTINSTRUMENTMETADATARESPONSE>
    spotV1LatestInstrumentMetadata({ market, instruments, groups, mappingPriority }: SpotV1LatestInstrumentMetadataRequest, opts?: OperationOpts): Observable<AjaxResponse<SPOTINSTRUMENTMETADATARESPONSE>>
    spotV1LatestInstrumentMetadata({ market, instruments, groups, mappingPriority }: SpotV1LatestInstrumentMetadataRequest, opts?: OperationOpts): Observable<SPOTINSTRUMENTMETADATARESPONSE | AjaxResponse<SPOTINSTRUMENTMETADATARESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'spotV1LatestInstrumentMetadata');
        throwIfNullOrUndefined(instruments, 'instruments', 'spotV1LatestInstrumentMetadata');

        const query: HttpQuery = { // required parameters are used directly since they are already checked by throwIfNullOrUndefined
            'market': market,
            'instruments': instruments.join(COLLECTION_FORMATS['csv']),
        };

        if (groups != null) { query['groups'] = groups.join(COLLECTION_FORMATS['csv']); }
        if (mappingPriority != null) { query['mapping_priority'] = mappingPriority; }

        return this.request<SPOTINSTRUMENTMETADATARESPONSE>({
            url: '/spot/v1/latest/instrument/metadata',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    spotV1LatestTick({ market, instruments, groups, mappingPriority }: SpotV1LatestTickRequest): Observable<SPOTINSTRUMENTMARKETDATARESPONSE>
    spotV1LatestTick({ market, instruments, groups, mappingPriority }: SpotV1LatestTickRequest, opts?: OperationOpts): Observable<AjaxResponse<SPOTINSTRUMENTMARKETDATARESPONSE>>
    spotV1LatestTick({ market, instruments, groups, mappingPriority }: SpotV1LatestTickRequest, opts?: OperationOpts): Observable<SPOTINSTRUMENTMARKETDATARESPONSE | AjaxResponse<SPOTINSTRUMENTMARKETDATARESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'spotV1LatestTick');
        throwIfNullOrUndefined(instruments, 'instruments', 'spotV1LatestTick');

        const query: HttpQuery = { // required parameters are used directly since they are already checked by throwIfNullOrUndefined
            'market': market,
            'instruments': instruments.join(COLLECTION_FORMATS['csv']),
        };

        if (groups != null) { query['groups'] = groups.join(COLLECTION_FORMATS['csv']); }
        if (mappingPriority != null) { query['mapping_priority'] = mappingPriority; }

        return this.request<SPOTINSTRUMENTMARKETDATARESPONSE>({
            url: '/spot/v1/latest/tick',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    spotV1Markets({ market }: SpotV1MarketsRequest): Observable<GENERICRESPONSE>
    spotV1Markets({ market }: SpotV1MarketsRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    spotV1Markets({ market }: SpotV1MarketsRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (market != null) { query['market'] = market; }

        return this.request<GENERICRESPONSE>({
            url: '/spot/v1/markets',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    spotV1MarketsInstruments({ market, instrument, instrumentStatus }: SpotV1MarketsInstrumentsRequest): Observable<GENERICRESPONSE>
    spotV1MarketsInstruments({ market, instrument, instrumentStatus }: SpotV1MarketsInstrumentsRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    spotV1MarketsInstruments({ market, instrument, instrumentStatus }: SpotV1MarketsInstrumentsRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (market != null) { query['market'] = market; }
        if (instrument != null) { query['instrument'] = instrument; }
        if (instrumentStatus != null) { query['instrument_status'] = instrumentStatus.join(COLLECTION_FORMATS['csv']); }

        return this.request<GENERICRESPONSE>({
            url: '/spot/v1/markets/instruments',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    spotV1MarketsInstrumentsUnmapped({ market, instrument, instrumentStatus }: SpotV1MarketsInstrumentsUnmappedRequest): Observable<GENERICRESPONSE>
    spotV1MarketsInstrumentsUnmapped({ market, instrument, instrumentStatus }: SpotV1MarketsInstrumentsUnmappedRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    spotV1MarketsInstrumentsUnmapped({ market, instrument, instrumentStatus }: SpotV1MarketsInstrumentsUnmappedRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (market != null) { query['market'] = market; }
        if (instrument != null) { query['instrument'] = instrument; }
        if (instrumentStatus != null) { query['instrument_status'] = instrumentStatus.join(COLLECTION_FORMATS['csv']); }

        return this.request<GENERICRESPONSE>({
            url: '/spot/v1/markets/instruments/unmapped',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

}

/**
 * @export
 * @enum {string}
 */
export enum SpotV1HistoricalDaysMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1HistoricalDaysResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1HistoricalHoursMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1HistoricalHoursResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1HistoricalMinutesMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1HistoricalMinutesResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1HistoricalOrderbookL2SnapshotMinuteMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1HistoricalOrderbookL2SnapshotMinuteResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1HistoricalTradesMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1HistoricalTradesResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1HistoricalTradesHourMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1HistoricalTradesHourResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1LatestInstrumentMetadataMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1LatestTickMappingPriorityEnum {
    MappedFirst = 'CHECK_MAPPED_FIRST',
    UnmappedFirst = 'CHECK_UNMAPPED_FIRST'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1MarketsInstrumentsInstrumentStatusEnum {
    Active = 'ACTIVE',
    Ignored = 'IGNORED',
    Retired = 'RETIRED',
    Expired = 'EXPIRED'
}
/**
 * @export
 * @enum {string}
 */
export enum SpotV1MarketsInstrumentsUnmappedInstrumentStatusEnum {
    Active = 'ACTIVE',
    Ignored = 'IGNORED',
    Retired = 'RETIRED',
    Expired = 'EXPIRED'
}
