import { ResponseContext, RequestContext, HttpFile } from '../http/http';
import { Configuration} from '../configuration'
import { Observable, of, from } from '../rxjsStub';
import {mergeMap, map} from  '../rxjsStub';
import { ErrorErr } from '../models/ErrorErr';
import { ErrorErrOtherInfo } from '../models/ErrorErrOtherInfo';
import { GENERICRESPONSE } from '../models/GENERICRESPONSE';
import { GENERICRESPONSEData } from '../models/GENERICRESPONSEData';
import { ModelError } from '../models/ModelError';
import { SPOTINSTRUMENTHISTODATA } from '../models/SPOTINSTRUMENTHISTODATA';
import { SPOTINSTRUMENTHISTODATARESPONSE } from '../models/SPOTINSTRUMENTHISTODATARESPONSE';
import { SPOTINSTRUMENTMARKETDATA } from '../models/SPOTINSTRUMENTMARKETDATA';
import { SPOTINSTRUMENTMARKETDATARESPONSE } from '../models/SPOTINSTRUMENTMARKETDATARESPONSE';
import { SPOTINSTRUMENTMARKETDATARESPONSEErr } from '../models/SPOTINSTRUMENTMARKETDATARESPONSEErr';
import { SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo } from '../models/SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo';
import { SPOTINSTRUMENTMETADATA } from '../models/SPOTINSTRUMENTMETADATA';
import { SPOTINSTRUMENTMETADATARESPONSE } from '../models/SPOTINSTRUMENTMETADATARESPONSE';
import { SPOTINSTRUMENTTRADE } from '../models/SPOTINSTRUMENTTRADE';
import { SPOTINSTRUMENTTRADERESPONSE } from '../models/SPOTINSTRUMENTTRADERESPONSE';

import { AssetApiRequestFactory, AssetApiResponseProcessor} from "../apis/AssetApi";
export class ObservableAssetApi {
    private requestFactory: AssetApiRequestFactory;
    private responseProcessor: AssetApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: AssetApiRequestFactory,
        responseProcessor?: AssetApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new AssetApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new AssetApiResponseProcessor();
    }

    /**
     * @param address 
     * @param chainSymbol 
     * @param groups 
     */
    public assetV1DataByAddress(address: string, chainSymbol: string, groups?: string, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.assetV1DataByAddress(address, chainSymbol, groups, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.assetV1DataByAddress(rsp)));
            }));
    }

    /**
     * @param assetId The asset id you are interested in
     * @param groups 
     */
    public assetV1DataById(assetId: number, groups?: string, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.assetV1DataById(assetId, groups, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.assetV1DataById(rsp)));
            }));
    }

    /**
     * @param assetSymbol The asset symbol you are interested in
     * @param groups 
     */
    public assetV1DataBySymbol(assetSymbol: string, groups?: string, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.assetV1DataBySymbol(assetSymbol, groups, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.assetV1DataBySymbol(rsp)));
            }));
    }

    /**
     * @param page The page number for the request to get {page_size} coins at the time.
     * @param pageSize The number of items returned per page
     * @param assetType The asset class/type
     * @param sortBy Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
     * @param sortDirection Sort direction ( DESC,ASC )
     * @param groups 
     */
    public assetV1TopList(page?: number, pageSize?: number, assetType?: string, sortBy?: 'CREATED_ON' | 'UPDATED_ON' | 'SYMBOL', sortDirection?: 'DESC' | 'ASC', groups?: string, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.assetV1TopList(page, pageSize, assetType, sortBy, sortDirection, groups, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.assetV1TopList(rsp)));
            }));
    }

}

import { FuturesApiRequestFactory, FuturesApiResponseProcessor} from "../apis/FuturesApi";
export class ObservableFuturesApi {
    private requestFactory: FuturesApiRequestFactory;
    private responseProcessor: FuturesApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: FuturesApiRequestFactory,
        responseProcessor?: FuturesApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new FuturesApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new FuturesApiResponseProcessor();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public futuresV1HistoricalDays(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalDays(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public futuresV1HistoricalFundingRateDays(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalFundingRateDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalFundingRateDays(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public futuresV1HistoricalFundingRateHours(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalFundingRateHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalFundingRateHours(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param afterTs Unix timestamp in seconds of the earliest funding rate message in the response
     * @param lastCcseq The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
     * @param limit The maximum number of funding rate messages to return
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public futuresV1HistoricalFundingRateMessages(market: string, instrument: string, afterTs?: number, lastCcseq?: number, limit?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalFundingRateMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalFundingRateMessages(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param hourTs Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public futuresV1HistoricalFundingRateMessagesHour(market: string, instrument: string, hourTs?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalFundingRateMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalFundingRateMessagesHour(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public futuresV1HistoricalFundingRateMinutes(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalFundingRateMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalFundingRateMinutes(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public futuresV1HistoricalHours(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalHours(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public futuresV1HistoricalMinutes(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalMinutes(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public futuresV1HistoricalOpenInterestDays(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalOpenInterestDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalOpenInterestDays(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public futuresV1HistoricalOpenInterestHours(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalOpenInterestHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalOpenInterestHours(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param afterTs Unix timestamp in seconds of the earliest open interest message in the response
     * @param lastCcseq The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
     * @param limit The maximum number of open interest messages to return
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public futuresV1HistoricalOpenInterestMessages(market: string, instrument: string, afterTs?: number, lastCcseq?: number, limit?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalOpenInterestMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalOpenInterestMessages(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param hourTs Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public futuresV1HistoricalOpenInterestMessagesHour(market: string, instrument: string, hourTs?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalOpenInterestMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalOpenInterestMessagesHour(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public futuresV1HistoricalOpenInterestMinutes(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalOpenInterestMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalOpenInterestMinutes(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param afterTs Unix timestamp in seconds of the earliest trade in the response.
     * @param lastCcseq The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
     * @param limit The maximum number of trades to return
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public futuresV1HistoricalTrades(market: string, instrument: string, afterTs?: number, lastCcseq?: number, limit?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalTrades(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param hourTs Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public futuresV1HistoricalTradesHour(market: string, instrument: string, hourTs?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1HistoricalTradesHour(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public futuresV1LatestFundingRateTick(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1LatestFundingRateTick(market, instruments, groups, mappingPriority, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1LatestFundingRateTick(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public futuresV1LatestInstrumentMetadata(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1LatestInstrumentMetadata(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public futuresV1LatestOpenInterestTick(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1LatestOpenInterestTick(market, instruments, groups, mappingPriority, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1LatestOpenInterestTick(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public futuresV1LatestTick(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1LatestTick(market, instruments, groups, mappingPriority, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1LatestTick(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     */
    public futuresV1Markets(market?: string, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1Markets(market, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1Markets(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public futuresV1MarketsInstruments(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1MarketsInstruments(market, instrument, instrumentStatus, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1MarketsInstruments(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The unmapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public futuresV1MarketsInstrumentsUnmapped(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.futuresV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.futuresV1MarketsInstrumentsUnmapped(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public indexV1HistoricalDays(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexV1HistoricalDays(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public indexV1HistoricalHours(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexV1HistoricalHours(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param afterTs Unix timestamp in seconds of the earliest index message in the response
     * @param lastCcseq The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
     * @param limit The maximum number of index messages to return
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public indexV1HistoricalMessages(market: string, instrument: string, afterTs?: number, lastCcseq?: number, limit?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexV1HistoricalMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexV1HistoricalMessages(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param hourTs Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public indexV1HistoricalMessagesHour(market: string, instrument: string, hourTs?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexV1HistoricalMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexV1HistoricalMessagesHour(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public indexV1HistoricalMinutes(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexV1HistoricalMinutes(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public indexV1LatestInstrumentMetadata(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexV1LatestInstrumentMetadata(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public indexV1LatestTick(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexV1LatestTick(market, instruments, groups, mappingPriority, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexV1LatestTick(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     */
    public indexV1Markets(market?: string, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexV1Markets(market, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexV1Markets(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public indexV1MarketsInstruments(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexV1MarketsInstruments(market, instrument, instrumentStatus, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexV1MarketsInstruments(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The unmapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public indexV1MarketsInstrumentsUnmapped(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexV1MarketsInstrumentsUnmapped(rsp)));
            }));
    }

}

import { NewsApiRequestFactory, NewsApiResponseProcessor} from "../apis/NewsApi";
export class ObservableNewsApi {
    private requestFactory: NewsApiRequestFactory;
    private responseProcessor: NewsApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: NewsApiRequestFactory,
        responseProcessor?: NewsApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new NewsApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new NewsApiResponseProcessor();
    }

    /**
     * @param sourceIds Get articles from specific sources; either by their ids or keys
     * @param lang The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
     * @param categories News article categories to return
     * @param excludeCategories News article categories to exclude from results
     * @param toTs Articles published on or before this timestamp
     */
    public newsV1ArticleList(sourceIds?: Array<string>, lang?: 'EN' | 'ES' | 'PT' | '', categories?: Array<'1INCH' | 'AAVE' | 'ADA' | 'ALGO' | 'ALTCOIN' | 'ASIA' | 'ATOM' | 'AVAX' | 'AXS' | 'BAL' | 'BAT' | 'BCH' | 'BLOCKCHAIN' | 'BTC' | 'BUSINESS' | 'COMMODITY' | 'COMP' | 'CRV' | 'DASH' | 'DOGE' | 'DOT' | 'ENJ' | 'ETC' | 'ETH' | 'EXCHANGE' | 'FIAT' | 'FIL' | 'FTM' | 'ICO' | 'KNC' | 'LINK' | 'LRC' | 'LTC' | 'LUNA' | 'LUNC' | 'MANA' | 'MARKET' | 'MATIC' | 'MINING' | 'MKR' | 'REGULATION' | 'REN' | 'SAND' | 'SHIB' | 'SNX' | 'SOL' | 'SPONSORED' | 'SUSHI' | 'TECHNOLOGY' | 'TRADING' | 'TRX' | 'UMA' | 'UNI' | 'USDT' | 'WALLET' | 'XLM' | 'XMR' | 'XRP' | 'XTZ' | 'YFI' | 'ZEC' | 'ZRX' | ''>, excludeCategories?: Array<'1INCH' | 'AAVE' | 'ADA' | 'ALGO' | 'ALTCOIN' | 'ASIA' | 'ATOM' | 'AVAX' | 'AXS' | 'BAL' | 'BAT' | 'BCH' | 'BLOCKCHAIN' | 'BTC' | 'BUSINESS' | 'COMMODITY' | 'COMP' | 'CRV' | 'DASH' | 'DOGE' | 'DOT' | 'ENJ' | 'ETC' | 'ETH' | 'EXCHANGE' | 'FIAT' | 'FIL' | 'FTM' | 'ICO' | 'KNC' | 'LINK' | 'LRC' | 'LTC' | 'LUNA' | 'LUNC' | 'MANA' | 'MARKET' | 'MATIC' | 'MINING' | 'MKR' | 'REGULATION' | 'REN' | 'SAND' | 'SHIB' | 'SNX' | 'SOL' | 'SPONSORED' | 'SUSHI' | 'TECHNOLOGY' | 'TRADING' | 'TRX' | 'UMA' | 'UNI' | 'USDT' | 'WALLET' | 'XLM' | 'XMR' | 'XRP' | 'XTZ' | 'YFI' | 'ZEC' | 'ZRX' | ''>, toTs?: number, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.newsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.newsV1ArticleList(rsp)));
            }));
    }

    /**
     */
    public newsV1CategoryList(_options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.newsV1CategoryList(_options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.newsV1CategoryList(rsp)));
            }));
    }

    /**
     * @param lang The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
     * @param type RSS, API, TWITTER
     * @param status The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
     */
    public newsV1SourceList(lang?: 'EN' | 'ES' | 'PT' | '', type?: 'RSS' | 'API' | 'TWITTER' | '', status?: 'ACTIVE' | 'INACTIVE' | '', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.newsV1SourceList(lang, type, status, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.newsV1SourceList(rsp)));
            }));
    }

}

import { OverviewApiRequestFactory, OverviewApiResponseProcessor} from "../apis/OverviewApi";
export class ObservableOverviewApi {
    private requestFactory: OverviewApiRequestFactory;
    private responseProcessor: OverviewApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: OverviewApiRequestFactory,
        responseProcessor?: OverviewApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new OverviewApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new OverviewApiResponseProcessor();
    }

    /**
     * @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public overviewV1HistoricalMarketcapAllAssetsDays(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.overviewV1HistoricalMarketcapAllAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.overviewV1HistoricalMarketcapAllAssetsDays(rsp)));
            }));
    }

    /**
     * @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public overviewV1HistoricalMarketcapAllAssetsHours(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.overviewV1HistoricalMarketcapAllAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.overviewV1HistoricalMarketcapAllAssetsHours(rsp)));
            }));
    }

    /**
     * @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public overviewV1HistoricalMarketcapFtwAssetsDays(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.overviewV1HistoricalMarketcapFtwAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.overviewV1HistoricalMarketcapFtwAssetsDays(rsp)));
            }));
    }

    /**
     * @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public overviewV1HistoricalMarketcapFtwAssetsHours(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.overviewV1HistoricalMarketcapFtwAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.overviewV1HistoricalMarketcapFtwAssetsHours(rsp)));
            }));
    }

    /**
     * @param groups When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
     */
    public overviewV1LatestMarketcapAllTick(groups?: Array<string>, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.overviewV1LatestMarketcapAllTick(groups, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.overviewV1LatestMarketcapAllTick(rsp)));
            }));
    }

    /**
     * @param groups When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
     */
    public overviewV1LatestMarketcapFtwTick(groups?: Array<string>, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.overviewV1LatestMarketcapFtwTick(groups, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.overviewV1LatestMarketcapFtwTick(rsp)));
            }));
    }

}

import { ReferenceRatesApiRequestFactory, ReferenceRatesApiResponseProcessor} from "../apis/ReferenceRatesApi";
export class ObservableReferenceRatesApi {
    private requestFactory: ReferenceRatesApiRequestFactory;
    private responseProcessor: ReferenceRatesApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: ReferenceRatesApiRequestFactory,
        responseProcessor?: ReferenceRatesApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new ReferenceRatesApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new ReferenceRatesApiResponseProcessor();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public indexCcV1HistoricalDays(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexCcV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexCcV1HistoricalDays(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public indexCcV1HistoricalHours(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexCcV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexCcV1HistoricalHours(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param afterTs Unix timestamp in seconds of the earliest index message in the response
     * @param lastCcseq The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param limit The maximum number of index messages to return
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public indexCcV1HistoricalMessages(market: string, instrument: string, afterTs?: number, lastCcseq?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', limit?: number, responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexCcV1HistoricalMessages(market, instrument, afterTs, lastCcseq, mappingPriority, limit, responseFormat, return404OnEmptyResponse, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexCcV1HistoricalMessages(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param hourTs Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public indexCcV1HistoricalMessagesHour(market: string, instrument: string, hourTs?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexCcV1HistoricalMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexCcV1HistoricalMessagesHour(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public indexCcV1HistoricalMinutes(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexCcV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexCcV1HistoricalMinutes(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public indexCcV1LatestInstrumentMetadata(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexCcV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexCcV1LatestInstrumentMetadata(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public indexCcV1LatestTick(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexCcV1LatestTick(market, instruments, groups, mappingPriority, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexCcV1LatestTick(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     */
    public indexCcV1Markets(market?: string, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexCcV1Markets(market, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexCcV1Markets(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public indexCcV1MarketsInstruments(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexCcV1MarketsInstruments(market, instrument, instrumentStatus, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexCcV1MarketsInstruments(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The unmapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public indexCcV1MarketsInstrumentsUnmapped(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.indexCcV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.indexCcV1MarketsInstrumentsUnmapped(rsp)));
            }));
    }

}

import { SpotApiRequestFactory, SpotApiResponseProcessor} from "../apis/SpotApi";
export class ObservableSpotApi {
    private requestFactory: SpotApiRequestFactory;
    private responseProcessor: SpotApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: SpotApiRequestFactory,
        responseProcessor?: SpotApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new SpotApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new SpotApiResponseProcessor();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public spotV1HistoricalDays(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<SPOTINSTRUMENTHISTODATARESPONSE> {
        const requestContextPromise = this.requestFactory.spotV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.spotV1HistoricalDays(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public spotV1HistoricalHours(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<SPOTINSTRUMENTHISTODATARESPONSE> {
        const requestContextPromise = this.requestFactory.spotV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.spotV1HistoricalHours(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public spotV1HistoricalMinutes(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<SPOTINSTRUMENTHISTODATARESPONSE> {
        const requestContextPromise = this.requestFactory.spotV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.spotV1HistoricalMinutes(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param minuteTs Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
     * @param depth The number of top bids and asks to return.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public spotV1HistoricalOrderbookL2SnapshotMinute(market: string, instrument: string, minuteTs: number, depth?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.spotV1HistoricalOrderbookL2SnapshotMinute(market, instrument, minuteTs, depth, mappingPriority, responseFormat, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.spotV1HistoricalOrderbookL2SnapshotMinute(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param afterTs Unix timestamp in seconds of the earliest trade in the response.
     * @param lastCcseq The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
     * @param limit The maximum number of trades to return
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public spotV1HistoricalTrades(market: string, instrument: string, afterTs?: number, lastCcseq?: number, limit?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Observable<SPOTINSTRUMENTTRADERESPONSE> {
        const requestContextPromise = this.requestFactory.spotV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.spotV1HistoricalTrades(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param hourTs Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public spotV1HistoricalTradesHour(market: string, instrument: string, hourTs?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Observable<SPOTINSTRUMENTTRADERESPONSE> {
        const requestContextPromise = this.requestFactory.spotV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.spotV1HistoricalTradesHour(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public spotV1LatestInstrumentMetadata(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Observable<SPOTINSTRUMENTMETADATARESPONSE> {
        const requestContextPromise = this.requestFactory.spotV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.spotV1LatestInstrumentMetadata(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public spotV1LatestTick(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Observable<SPOTINSTRUMENTMARKETDATARESPONSE> {
        const requestContextPromise = this.requestFactory.spotV1LatestTick(market, instruments, groups, mappingPriority, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.spotV1LatestTick(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     */
    public spotV1Markets(market?: string, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.spotV1Markets(market, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.spotV1Markets(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public spotV1MarketsInstruments(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.spotV1MarketsInstruments(market, instrument, instrumentStatus, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.spotV1MarketsInstruments(rsp)));
            }));
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The unmapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public spotV1MarketsInstrumentsUnmapped(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Observable<GENERICRESPONSE> {
        const requestContextPromise = this.requestFactory.spotV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.spotV1MarketsInstrumentsUnmapped(rsp)));
            }));
    }

}
