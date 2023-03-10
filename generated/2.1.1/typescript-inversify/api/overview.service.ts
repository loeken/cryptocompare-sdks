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
/* tslint:disable:no-unused-variable member-ordering */

import { Observable } from 'rxjs/Observable';

import { map } from 'rxjs/operators';
import IHttpClient from '../IHttpClient';
import { inject, injectable } from 'inversify';
import { IAPIConfiguration } from '../IAPIConfiguration';
import { Headers } from '../Headers';
import HttpResponse from '../HttpResponse';

import { GENERICRESPONSE } from '../model/gENERICRESPONSE';

import { COLLECTION_FORMATS }  from '../variables';



@injectable()
export class OverviewService {
    private basePath: string = 'https://data-api.cryptocompare.com';

    constructor(@inject('IApiHttpClient') private httpClient: IHttpClient,
        @inject('IAPIConfiguration') private APIConfiguration: IAPIConfiguration ) {
        if(this.APIConfiguration.basePath)
            this.basePath = this.APIConfiguration.basePath;
    }

    /**
     * 
     * 
     * @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     
     */
    public overviewV1HistoricalMarketcapAllAssetsDays(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', observe?: 'body', headers?: Headers): Observable<GENERICRESPONSE>;
    public overviewV1HistoricalMarketcapAllAssetsDays(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', observe?: 'response', headers?: Headers): Observable<HttpResponse<GENERICRESPONSE>>;
    public overviewV1HistoricalMarketcapAllAssetsDays(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', observe: any = 'body', headers: Headers = {}): Observable<any> {
        let queryParameters: string[] = [];
        if (groups) {
            queryParameters.push('groups='+encodeURIComponent(groups.join(COLLECTION_FORMATS['csv'])));
        }
        if (limit !== undefined) {
            queryParameters.push('limit='+encodeURIComponent(String(limit)));
        }
        if (toTs !== undefined) {
            queryParameters.push('toTs='+encodeURIComponent(String(toTs)));
        }
        if (aggregate !== undefined) {
            queryParameters.push('aggregate='+encodeURIComponent(String(aggregate)));
        }
        if (fill !== undefined) {
            queryParameters.push('fill='+encodeURIComponent(String(fill)));
        }
        if (responseFormat !== undefined) {
            queryParameters.push('responseFormat='+encodeURIComponent(String(responseFormat)));
        }

        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<GENERICRESPONSE>> = this.httpClient.get(`${this.basePath}/overview/v1/historical/marketcap/all/assets/days?${queryParameters.join('&')}`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <GENERICRESPONSE>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * 
     * @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     
     */
    public overviewV1HistoricalMarketcapAllAssetsHours(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', observe?: 'body', headers?: Headers): Observable<GENERICRESPONSE>;
    public overviewV1HistoricalMarketcapAllAssetsHours(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', observe?: 'response', headers?: Headers): Observable<HttpResponse<GENERICRESPONSE>>;
    public overviewV1HistoricalMarketcapAllAssetsHours(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', observe: any = 'body', headers: Headers = {}): Observable<any> {
        let queryParameters: string[] = [];
        if (groups) {
            queryParameters.push('groups='+encodeURIComponent(groups.join(COLLECTION_FORMATS['csv'])));
        }
        if (limit !== undefined) {
            queryParameters.push('limit='+encodeURIComponent(String(limit)));
        }
        if (toTs !== undefined) {
            queryParameters.push('toTs='+encodeURIComponent(String(toTs)));
        }
        if (aggregate !== undefined) {
            queryParameters.push('aggregate='+encodeURIComponent(String(aggregate)));
        }
        if (fill !== undefined) {
            queryParameters.push('fill='+encodeURIComponent(String(fill)));
        }
        if (responseFormat !== undefined) {
            queryParameters.push('responseFormat='+encodeURIComponent(String(responseFormat)));
        }

        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<GENERICRESPONSE>> = this.httpClient.get(`${this.basePath}/overview/v1/historical/marketcap/all/assets/hours?${queryParameters.join('&')}`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <GENERICRESPONSE>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * 
     * @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     
     */
    public overviewV1HistoricalMarketcapFtwAssetsDays(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', observe?: 'body', headers?: Headers): Observable<GENERICRESPONSE>;
    public overviewV1HistoricalMarketcapFtwAssetsDays(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', observe?: 'response', headers?: Headers): Observable<HttpResponse<GENERICRESPONSE>>;
    public overviewV1HistoricalMarketcapFtwAssetsDays(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', observe: any = 'body', headers: Headers = {}): Observable<any> {
        let queryParameters: string[] = [];
        if (groups) {
            queryParameters.push('groups='+encodeURIComponent(groups.join(COLLECTION_FORMATS['csv'])));
        }
        if (limit !== undefined) {
            queryParameters.push('limit='+encodeURIComponent(String(limit)));
        }
        if (toTs !== undefined) {
            queryParameters.push('toTs='+encodeURIComponent(String(toTs)));
        }
        if (aggregate !== undefined) {
            queryParameters.push('aggregate='+encodeURIComponent(String(aggregate)));
        }
        if (fill !== undefined) {
            queryParameters.push('fill='+encodeURIComponent(String(fill)));
        }
        if (responseFormat !== undefined) {
            queryParameters.push('responseFormat='+encodeURIComponent(String(responseFormat)));
        }

        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<GENERICRESPONSE>> = this.httpClient.get(`${this.basePath}/overview/v1/historical/marketcap/ftw/assets/days?${queryParameters.join('&')}`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <GENERICRESPONSE>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * 
     * @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     
     */
    public overviewV1HistoricalMarketcapFtwAssetsHours(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', observe?: 'body', headers?: Headers): Observable<GENERICRESPONSE>;
    public overviewV1HistoricalMarketcapFtwAssetsHours(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', observe?: 'response', headers?: Headers): Observable<HttpResponse<GENERICRESPONSE>>;
    public overviewV1HistoricalMarketcapFtwAssetsHours(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', observe: any = 'body', headers: Headers = {}): Observable<any> {
        let queryParameters: string[] = [];
        if (groups) {
            queryParameters.push('groups='+encodeURIComponent(groups.join(COLLECTION_FORMATS['csv'])));
        }
        if (limit !== undefined) {
            queryParameters.push('limit='+encodeURIComponent(String(limit)));
        }
        if (toTs !== undefined) {
            queryParameters.push('toTs='+encodeURIComponent(String(toTs)));
        }
        if (aggregate !== undefined) {
            queryParameters.push('aggregate='+encodeURIComponent(String(aggregate)));
        }
        if (fill !== undefined) {
            queryParameters.push('fill='+encodeURIComponent(String(fill)));
        }
        if (responseFormat !== undefined) {
            queryParameters.push('responseFormat='+encodeURIComponent(String(responseFormat)));
        }

        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<GENERICRESPONSE>> = this.httpClient.get(`${this.basePath}/overview/v1/historical/marketcap/ftw/assets/hours?${queryParameters.join('&')}`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <GENERICRESPONSE>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * 
     * @param groups When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
     
     */
    public overviewV1LatestMarketcapAllTick(groups?: Array<string>, observe?: 'body', headers?: Headers): Observable<GENERICRESPONSE>;
    public overviewV1LatestMarketcapAllTick(groups?: Array<string>, observe?: 'response', headers?: Headers): Observable<HttpResponse<GENERICRESPONSE>>;
    public overviewV1LatestMarketcapAllTick(groups?: Array<string>, observe: any = 'body', headers: Headers = {}): Observable<any> {
        let queryParameters: string[] = [];
        if (groups) {
            queryParameters.push('groups='+encodeURIComponent(groups.join(COLLECTION_FORMATS['csv'])));
        }

        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<GENERICRESPONSE>> = this.httpClient.get(`${this.basePath}/overview/v1/latest/marketcap/all/tick?${queryParameters.join('&')}`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <GENERICRESPONSE>(httpResponse.response))
               );
        }
        return response;
    }


    /**
     * 
     * 
     * @param groups When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
     
     */
    public overviewV1LatestMarketcapFtwTick(groups?: Array<string>, observe?: 'body', headers?: Headers): Observable<GENERICRESPONSE>;
    public overviewV1LatestMarketcapFtwTick(groups?: Array<string>, observe?: 'response', headers?: Headers): Observable<HttpResponse<GENERICRESPONSE>>;
    public overviewV1LatestMarketcapFtwTick(groups?: Array<string>, observe: any = 'body', headers: Headers = {}): Observable<any> {
        let queryParameters: string[] = [];
        if (groups) {
            queryParameters.push('groups='+encodeURIComponent(groups.join(COLLECTION_FORMATS['csv'])));
        }

        headers['Accept'] = 'application/json';

        const response: Observable<HttpResponse<GENERICRESPONSE>> = this.httpClient.get(`${this.basePath}/overview/v1/latest/marketcap/ftw/tick?${queryParameters.join('&')}`, headers);
        if (observe === 'body') {
               return response.pipe(
                   map((httpResponse: HttpResponse) => <GENERICRESPONSE>(httpResponse.response))
               );
        }
        return response;
    }

}
