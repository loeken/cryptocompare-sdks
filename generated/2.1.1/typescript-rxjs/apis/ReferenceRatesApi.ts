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
 * no description
 */
export class ReferenceRatesApi extends BaseAPI {

    /**
     */
    indexCcV1HistoricalDays({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: IndexCcV1HistoricalDaysRequest): Observable<GENERICRESPONSE>
    indexCcV1HistoricalDays({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: IndexCcV1HistoricalDaysRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    indexCcV1HistoricalDays({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: IndexCcV1HistoricalDaysRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'indexCcV1HistoricalDays');
        throwIfNullOrUndefined(instrument, 'instrument', 'indexCcV1HistoricalDays');

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

        return this.request<GENERICRESPONSE>({
            url: '/index/cc/v1/historical/days',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    indexCcV1HistoricalHours({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: IndexCcV1HistoricalHoursRequest): Observable<GENERICRESPONSE>
    indexCcV1HistoricalHours({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: IndexCcV1HistoricalHoursRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    indexCcV1HistoricalHours({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: IndexCcV1HistoricalHoursRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'indexCcV1HistoricalHours');
        throwIfNullOrUndefined(instrument, 'instrument', 'indexCcV1HistoricalHours');

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

        return this.request<GENERICRESPONSE>({
            url: '/index/cc/v1/historical/hours',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    indexCcV1HistoricalMessages({ market, instrument, afterTs, lastCcseq, mappingPriority, limit, responseFormat, return404OnEmptyResponse }: IndexCcV1HistoricalMessagesRequest): Observable<GENERICRESPONSE>
    indexCcV1HistoricalMessages({ market, instrument, afterTs, lastCcseq, mappingPriority, limit, responseFormat, return404OnEmptyResponse }: IndexCcV1HistoricalMessagesRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    indexCcV1HistoricalMessages({ market, instrument, afterTs, lastCcseq, mappingPriority, limit, responseFormat, return404OnEmptyResponse }: IndexCcV1HistoricalMessagesRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'indexCcV1HistoricalMessages');
        throwIfNullOrUndefined(instrument, 'instrument', 'indexCcV1HistoricalMessages');

        const headers: HttpHeaders = {
            ...(this.configuration.apiKey && { 'authorization': this.configuration.apiKey('authorization') }), // api_key_header authentication
        };

        const query: HttpQuery = { // required parameters are used directly since they are already checked by throwIfNullOrUndefined
            'market': market,
            'instrument': instrument,
        };

        if (afterTs != null) { query['after_ts'] = afterTs; }
        if (lastCcseq != null) { query['last_ccseq'] = lastCcseq; }
        if (mappingPriority != null) { query['mapping_priority'] = mappingPriority; }
        if (limit != null) { query['limit'] = limit; }
        if (responseFormat != null) { query['response_format'] = responseFormat; }
        if (return404OnEmptyResponse != null) { query['return_404_on_empty_response'] = return404OnEmptyResponse; }
        if (this.configuration.apiKey != null) { query['api_key'] = this.configuration.apiKey('api_key'); } // api_key_query authentication

        return this.request<GENERICRESPONSE>({
            url: '/index/cc/v1/historical/messages',
            method: 'GET',
            headers,
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    indexCcV1HistoricalMessagesHour({ market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse }: IndexCcV1HistoricalMessagesHourRequest): Observable<GENERICRESPONSE>
    indexCcV1HistoricalMessagesHour({ market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse }: IndexCcV1HistoricalMessagesHourRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    indexCcV1HistoricalMessagesHour({ market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse }: IndexCcV1HistoricalMessagesHourRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'indexCcV1HistoricalMessagesHour');
        throwIfNullOrUndefined(instrument, 'instrument', 'indexCcV1HistoricalMessagesHour');

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

        return this.request<GENERICRESPONSE>({
            url: '/index/cc/v1/historical/messages/hour',
            method: 'GET',
            headers,
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    indexCcV1HistoricalMinutes({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: IndexCcV1HistoricalMinutesRequest): Observable<GENERICRESPONSE>
    indexCcV1HistoricalMinutes({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: IndexCcV1HistoricalMinutesRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    indexCcV1HistoricalMinutes({ market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat }: IndexCcV1HistoricalMinutesRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'indexCcV1HistoricalMinutes');
        throwIfNullOrUndefined(instrument, 'instrument', 'indexCcV1HistoricalMinutes');

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

        return this.request<GENERICRESPONSE>({
            url: '/index/cc/v1/historical/minutes',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    indexCcV1LatestInstrumentMetadata({ market, instruments, groups, mappingPriority }: IndexCcV1LatestInstrumentMetadataRequest): Observable<GENERICRESPONSE>
    indexCcV1LatestInstrumentMetadata({ market, instruments, groups, mappingPriority }: IndexCcV1LatestInstrumentMetadataRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    indexCcV1LatestInstrumentMetadata({ market, instruments, groups, mappingPriority }: IndexCcV1LatestInstrumentMetadataRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'indexCcV1LatestInstrumentMetadata');
        throwIfNullOrUndefined(instruments, 'instruments', 'indexCcV1LatestInstrumentMetadata');

        const query: HttpQuery = { // required parameters are used directly since they are already checked by throwIfNullOrUndefined
            'market': market,
            'instruments': instruments.join(COLLECTION_FORMATS['csv']),
        };

        if (groups != null) { query['groups'] = groups.join(COLLECTION_FORMATS['csv']); }
        if (mappingPriority != null) { query['mapping_priority'] = mappingPriority; }

        return this.request<GENERICRESPONSE>({
            url: '/index/cc/v1/latest/instrument/metadata',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    indexCcV1LatestTick({ market, instruments, groups, mappingPriority }: IndexCcV1LatestTickRequest): Observable<GENERICRESPONSE>
    indexCcV1LatestTick({ market, instruments, groups, mappingPriority }: IndexCcV1LatestTickRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    indexCcV1LatestTick({ market, instruments, groups, mappingPriority }: IndexCcV1LatestTickRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {
        throwIfNullOrUndefined(market, 'market', 'indexCcV1LatestTick');
        throwIfNullOrUndefined(instruments, 'instruments', 'indexCcV1LatestTick');

        const query: HttpQuery = { // required parameters are used directly since they are already checked by throwIfNullOrUndefined
            'market': market,
            'instruments': instruments.join(COLLECTION_FORMATS['csv']),
        };

        if (groups != null) { query['groups'] = groups.join(COLLECTION_FORMATS['csv']); }
        if (mappingPriority != null) { query['mapping_priority'] = mappingPriority; }

        return this.request<GENERICRESPONSE>({
            url: '/index/cc/v1/latest/tick',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    indexCcV1Markets({ market }: IndexCcV1MarketsRequest): Observable<GENERICRESPONSE>
    indexCcV1Markets({ market }: IndexCcV1MarketsRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    indexCcV1Markets({ market }: IndexCcV1MarketsRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (market != null) { query['market'] = market; }

        return this.request<GENERICRESPONSE>({
            url: '/index/cc/v1/markets',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    indexCcV1MarketsInstruments({ market, instrument, instrumentStatus }: IndexCcV1MarketsInstrumentsRequest): Observable<GENERICRESPONSE>
    indexCcV1MarketsInstruments({ market, instrument, instrumentStatus }: IndexCcV1MarketsInstrumentsRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    indexCcV1MarketsInstruments({ market, instrument, instrumentStatus }: IndexCcV1MarketsInstrumentsRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (market != null) { query['market'] = market; }
        if (instrument != null) { query['instrument'] = instrument; }
        if (instrumentStatus != null) { query['instrument_status'] = instrumentStatus.join(COLLECTION_FORMATS['csv']); }

        return this.request<GENERICRESPONSE>({
            url: '/index/cc/v1/markets/instruments',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    indexCcV1MarketsInstrumentsUnmapped({ market, instrument, instrumentStatus }: IndexCcV1MarketsInstrumentsUnmappedRequest): Observable<GENERICRESPONSE>
    indexCcV1MarketsInstrumentsUnmapped({ market, instrument, instrumentStatus }: IndexCcV1MarketsInstrumentsUnmappedRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    indexCcV1MarketsInstrumentsUnmapped({ market, instrument, instrumentStatus }: IndexCcV1MarketsInstrumentsUnmappedRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (market != null) { query['market'] = market; }
        if (instrument != null) { query['instrument'] = instrument; }
        if (instrumentStatus != null) { query['instrument_status'] = instrumentStatus.join(COLLECTION_FORMATS['csv']); }

        return this.request<GENERICRESPONSE>({
            url: '/index/cc/v1/markets/instruments/unmapped',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

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
