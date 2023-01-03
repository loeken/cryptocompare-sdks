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

import { Inject, Injectable, Optional } from '@nestjs/common';
import { HttpService } from '@nestjs/axios';
import { AxiosResponse } from 'axios';
import { Observable } from 'rxjs';
import { GENERICRESPONSE } from '../model/gENERICRESPONSE';
import { Configuration } from '../configuration';


@Injectable()
export class AssetService {

    protected basePath = 'https://data-api.cryptocompare.com';
    public defaultHeaders: Record<string,string> = {};
    public configuration = new Configuration();

    constructor(protected httpClient: HttpService, @Optional() configuration: Configuration) {
        this.configuration = configuration || this.configuration;
        this.basePath = configuration?.basePath || this.basePath;
    }

    /**
     * @param consumes string[] mime-types
     * @return true: consumes contains 'multipart/form-data', false: otherwise
     */
    private canConsumeForm(consumes: string[]): boolean {
        const form = 'multipart/form-data';
        return consumes.includes(form);
    }

    /**
     * 
     * 
     * @param address 
     * @param chainSymbol 
     * @param groups 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public assetV1DataByAddress(address: string, chainSymbol: string, groups?: string, ): Observable<AxiosResponse<GENERICRESPONSE>>;
    public assetV1DataByAddress(address: string, chainSymbol: string, groups?: string, ): Observable<any> {

        if (address === null || address === undefined) {
            throw new Error('Required parameter address was null or undefined when calling assetV1DataByAddress.');
        }

        if (chainSymbol === null || chainSymbol === undefined) {
            throw new Error('Required parameter chainSymbol was null or undefined when calling assetV1DataByAddress.');
        }


        let queryParameters = new URLSearchParams();
        if (address !== undefined && address !== null) {
            queryParameters.append('address', <any>address);
        }
        if (chainSymbol !== undefined && chainSymbol !== null) {
            queryParameters.append('chain_symbol', <any>chainSymbol);
        }
        if (groups !== undefined && groups !== null) {
            queryParameters.append('groups', <any>groups);
        }

        let headers = {...this.defaultHeaders};

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected != undefined) {
            headers['Accept'] = httpHeaderAcceptSelected;
        }

        // to determine the Content-Type header
        const consumes: string[] = [
        ];
        return this.httpClient.get<GENERICRESPONSE>(`${this.basePath}/asset/v1/data/by/address`,
            {
                params: queryParameters,
                withCredentials: this.configuration.withCredentials,
                headers: headers
            }
        );
    }
    /**
     * 
     * 
     * @param assetId The asset id you are interested in
     * @param groups 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public assetV1DataById(assetId: number, groups?: string, ): Observable<AxiosResponse<GENERICRESPONSE>>;
    public assetV1DataById(assetId: number, groups?: string, ): Observable<any> {

        if (assetId === null || assetId === undefined) {
            throw new Error('Required parameter assetId was null or undefined when calling assetV1DataById.');
        }


        let queryParameters = new URLSearchParams();
        if (assetId !== undefined && assetId !== null) {
            queryParameters.append('asset_id', <any>assetId);
        }
        if (groups !== undefined && groups !== null) {
            queryParameters.append('groups', <any>groups);
        }

        let headers = {...this.defaultHeaders};

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected != undefined) {
            headers['Accept'] = httpHeaderAcceptSelected;
        }

        // to determine the Content-Type header
        const consumes: string[] = [
        ];
        return this.httpClient.get<GENERICRESPONSE>(`${this.basePath}/asset/v1/data/by/id`,
            {
                params: queryParameters,
                withCredentials: this.configuration.withCredentials,
                headers: headers
            }
        );
    }
    /**
     * 
     * 
     * @param assetSymbol The asset symbol you are interested in
     * @param groups 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public assetV1DataBySymbol(assetSymbol: string, groups?: string, ): Observable<AxiosResponse<GENERICRESPONSE>>;
    public assetV1DataBySymbol(assetSymbol: string, groups?: string, ): Observable<any> {

        if (assetSymbol === null || assetSymbol === undefined) {
            throw new Error('Required parameter assetSymbol was null or undefined when calling assetV1DataBySymbol.');
        }


        let queryParameters = new URLSearchParams();
        if (assetSymbol !== undefined && assetSymbol !== null) {
            queryParameters.append('asset_symbol', <any>assetSymbol);
        }
        if (groups !== undefined && groups !== null) {
            queryParameters.append('groups', <any>groups);
        }

        let headers = {...this.defaultHeaders};

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected != undefined) {
            headers['Accept'] = httpHeaderAcceptSelected;
        }

        // to determine the Content-Type header
        const consumes: string[] = [
        ];
        return this.httpClient.get<GENERICRESPONSE>(`${this.basePath}/asset/v1/data/by/symbol`,
            {
                params: queryParameters,
                withCredentials: this.configuration.withCredentials,
                headers: headers
            }
        );
    }
    /**
     * 
     * 
     * @param page The page number for the request to get {page_size} coins at the time.
     * @param pageSize The number of items returned per page
     * @param assetType The asset class/type
     * @param sortBy Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
     * @param sortDirection Sort direction ( DESC,ASC )
     * @param groups 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public assetV1TopList(page?: number, pageSize?: number, assetType?: string, sortBy?: 'CREATED_ON' | 'UPDATED_ON' | 'SYMBOL', sortDirection?: 'DESC' | 'ASC', groups?: string, ): Observable<AxiosResponse<GENERICRESPONSE>>;
    public assetV1TopList(page?: number, pageSize?: number, assetType?: string, sortBy?: 'CREATED_ON' | 'UPDATED_ON' | 'SYMBOL', sortDirection?: 'DESC' | 'ASC', groups?: string, ): Observable<any> {







        let queryParameters = new URLSearchParams();
        if (page !== undefined && page !== null) {
            queryParameters.append('page', <any>page);
        }
        if (pageSize !== undefined && pageSize !== null) {
            queryParameters.append('page_size', <any>pageSize);
        }
        if (assetType !== undefined && assetType !== null) {
            queryParameters.append('asset_type', <any>assetType);
        }
        if (sortBy !== undefined && sortBy !== null) {
            queryParameters.append('sort_by', <any>sortBy);
        }
        if (sortDirection !== undefined && sortDirection !== null) {
            queryParameters.append('sort_direction', <any>sortDirection);
        }
        if (groups !== undefined && groups !== null) {
            queryParameters.append('groups', <any>groups);
        }

        let headers = {...this.defaultHeaders};

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected != undefined) {
            headers['Accept'] = httpHeaderAcceptSelected;
        }

        // to determine the Content-Type header
        const consumes: string[] = [
        ];
        return this.httpClient.get<GENERICRESPONSE>(`${this.basePath}/asset/v1/top/list`,
            {
                params: queryParameters,
                withCredentials: this.configuration.withCredentials,
                headers: headers
            }
        );
    }
}