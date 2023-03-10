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
import { BaseAPI, COLLECTION_FORMATS } from '../runtime';
import type { OperationOpts, HttpQuery } from '../runtime';
import type {
    GENERICRESPONSE,
} from '../models';

export interface OverviewV1HistoricalMarketcapAllAssetsDaysRequest {
    groups?: Array<string>;
    limit?: number;
    toTs?: number;
    aggregate?: number;
    fill?: boolean;
    responseFormat?: OverviewV1HistoricalMarketcapAllAssetsDaysResponseFormatEnum;
}

export interface OverviewV1HistoricalMarketcapAllAssetsHoursRequest {
    groups?: Array<string>;
    limit?: number;
    toTs?: number;
    aggregate?: number;
    fill?: boolean;
    responseFormat?: OverviewV1HistoricalMarketcapAllAssetsHoursResponseFormatEnum;
}

export interface OverviewV1HistoricalMarketcapFtwAssetsDaysRequest {
    groups?: Array<string>;
    limit?: number;
    toTs?: number;
    aggregate?: number;
    fill?: boolean;
    responseFormat?: OverviewV1HistoricalMarketcapFtwAssetsDaysResponseFormatEnum;
}

export interface OverviewV1HistoricalMarketcapFtwAssetsHoursRequest {
    groups?: Array<string>;
    limit?: number;
    toTs?: number;
    aggregate?: number;
    fill?: boolean;
    responseFormat?: OverviewV1HistoricalMarketcapFtwAssetsHoursResponseFormatEnum;
}

export interface OverviewV1LatestMarketcapAllTickRequest {
    groups?: Array<string>;
}

export interface OverviewV1LatestMarketcapFtwTickRequest {
    groups?: Array<string>;
}

/**
 * no description
 */
export class OverviewApi extends BaseAPI {

    /**
     */
    overviewV1HistoricalMarketcapAllAssetsDays({ groups, limit, toTs, aggregate, fill, responseFormat }: OverviewV1HistoricalMarketcapAllAssetsDaysRequest): Observable<GENERICRESPONSE>
    overviewV1HistoricalMarketcapAllAssetsDays({ groups, limit, toTs, aggregate, fill, responseFormat }: OverviewV1HistoricalMarketcapAllAssetsDaysRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    overviewV1HistoricalMarketcapAllAssetsDays({ groups, limit, toTs, aggregate, fill, responseFormat }: OverviewV1HistoricalMarketcapAllAssetsDaysRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (groups != null) { query['groups'] = groups.join(COLLECTION_FORMATS['csv']); }
        if (limit != null) { query['limit'] = limit; }
        if (toTs != null) { query['to_ts'] = toTs; }
        if (aggregate != null) { query['aggregate'] = aggregate; }
        if (fill != null) { query['fill'] = fill; }
        if (responseFormat != null) { query['response_format'] = responseFormat; }

        return this.request<GENERICRESPONSE>({
            url: '/overview/v1/historical/marketcap/all/assets/days',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    overviewV1HistoricalMarketcapAllAssetsHours({ groups, limit, toTs, aggregate, fill, responseFormat }: OverviewV1HistoricalMarketcapAllAssetsHoursRequest): Observable<GENERICRESPONSE>
    overviewV1HistoricalMarketcapAllAssetsHours({ groups, limit, toTs, aggregate, fill, responseFormat }: OverviewV1HistoricalMarketcapAllAssetsHoursRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    overviewV1HistoricalMarketcapAllAssetsHours({ groups, limit, toTs, aggregate, fill, responseFormat }: OverviewV1HistoricalMarketcapAllAssetsHoursRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (groups != null) { query['groups'] = groups.join(COLLECTION_FORMATS['csv']); }
        if (limit != null) { query['limit'] = limit; }
        if (toTs != null) { query['to_ts'] = toTs; }
        if (aggregate != null) { query['aggregate'] = aggregate; }
        if (fill != null) { query['fill'] = fill; }
        if (responseFormat != null) { query['response_format'] = responseFormat; }

        return this.request<GENERICRESPONSE>({
            url: '/overview/v1/historical/marketcap/all/assets/hours',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    overviewV1HistoricalMarketcapFtwAssetsDays({ groups, limit, toTs, aggregate, fill, responseFormat }: OverviewV1HistoricalMarketcapFtwAssetsDaysRequest): Observable<GENERICRESPONSE>
    overviewV1HistoricalMarketcapFtwAssetsDays({ groups, limit, toTs, aggregate, fill, responseFormat }: OverviewV1HistoricalMarketcapFtwAssetsDaysRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    overviewV1HistoricalMarketcapFtwAssetsDays({ groups, limit, toTs, aggregate, fill, responseFormat }: OverviewV1HistoricalMarketcapFtwAssetsDaysRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (groups != null) { query['groups'] = groups.join(COLLECTION_FORMATS['csv']); }
        if (limit != null) { query['limit'] = limit; }
        if (toTs != null) { query['to_ts'] = toTs; }
        if (aggregate != null) { query['aggregate'] = aggregate; }
        if (fill != null) { query['fill'] = fill; }
        if (responseFormat != null) { query['response_format'] = responseFormat; }

        return this.request<GENERICRESPONSE>({
            url: '/overview/v1/historical/marketcap/ftw/assets/days',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    overviewV1HistoricalMarketcapFtwAssetsHours({ groups, limit, toTs, aggregate, fill, responseFormat }: OverviewV1HistoricalMarketcapFtwAssetsHoursRequest): Observable<GENERICRESPONSE>
    overviewV1HistoricalMarketcapFtwAssetsHours({ groups, limit, toTs, aggregate, fill, responseFormat }: OverviewV1HistoricalMarketcapFtwAssetsHoursRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    overviewV1HistoricalMarketcapFtwAssetsHours({ groups, limit, toTs, aggregate, fill, responseFormat }: OverviewV1HistoricalMarketcapFtwAssetsHoursRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (groups != null) { query['groups'] = groups.join(COLLECTION_FORMATS['csv']); }
        if (limit != null) { query['limit'] = limit; }
        if (toTs != null) { query['to_ts'] = toTs; }
        if (aggregate != null) { query['aggregate'] = aggregate; }
        if (fill != null) { query['fill'] = fill; }
        if (responseFormat != null) { query['response_format'] = responseFormat; }

        return this.request<GENERICRESPONSE>({
            url: '/overview/v1/historical/marketcap/ftw/assets/hours',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    overviewV1LatestMarketcapAllTick({ groups }: OverviewV1LatestMarketcapAllTickRequest): Observable<GENERICRESPONSE>
    overviewV1LatestMarketcapAllTick({ groups }: OverviewV1LatestMarketcapAllTickRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    overviewV1LatestMarketcapAllTick({ groups }: OverviewV1LatestMarketcapAllTickRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (groups != null) { query['groups'] = groups.join(COLLECTION_FORMATS['csv']); }

        return this.request<GENERICRESPONSE>({
            url: '/overview/v1/latest/marketcap/all/tick',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    overviewV1LatestMarketcapFtwTick({ groups }: OverviewV1LatestMarketcapFtwTickRequest): Observable<GENERICRESPONSE>
    overviewV1LatestMarketcapFtwTick({ groups }: OverviewV1LatestMarketcapFtwTickRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    overviewV1LatestMarketcapFtwTick({ groups }: OverviewV1LatestMarketcapFtwTickRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (groups != null) { query['groups'] = groups.join(COLLECTION_FORMATS['csv']); }

        return this.request<GENERICRESPONSE>({
            url: '/overview/v1/latest/marketcap/ftw/tick',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

}

/**
 * @export
 * @enum {string}
 */
export enum OverviewV1HistoricalMarketcapAllAssetsDaysResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
 * @export
 * @enum {string}
 */
export enum OverviewV1HistoricalMarketcapAllAssetsHoursResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
 * @export
 * @enum {string}
 */
export enum OverviewV1HistoricalMarketcapFtwAssetsDaysResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
/**
 * @export
 * @enum {string}
 */
export enum OverviewV1HistoricalMarketcapFtwAssetsHoursResponseFormatEnum {
    Json = 'JSON',
    Csv = 'CSV'
}
