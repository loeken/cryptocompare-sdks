// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError, COLLECTION_FORMATS} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { GENERICRESPONSE } from '../models/GENERICRESPONSE';
import { SPOTINSTRUMENTHISTODATARESPONSE } from '../models/SPOTINSTRUMENTHISTODATARESPONSE';
import { SPOTINSTRUMENTMARKETDATARESPONSE } from '../models/SPOTINSTRUMENTMARKETDATARESPONSE';
import { SPOTINSTRUMENTMETADATARESPONSE } from '../models/SPOTINSTRUMENTMETADATARESPONSE';
import { SPOTINSTRUMENTTRADERESPONSE } from '../models/SPOTINSTRUMENTTRADERESPONSE';

/**
 * no description
 */
export class SpotApiRequestFactory extends BaseAPIRequestFactory {

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
    public async spotV1HistoricalDays(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'market' is not null or undefined
        if (market === null || market === undefined) {
            throw new RequiredError("SpotApi", "spotV1HistoricalDays", "market");
        }


        // verify required parameter 'instrument' is not null or undefined
        if (instrument === null || instrument === undefined) {
            throw new RequiredError("SpotApi", "spotV1HistoricalDays", "instrument");
        }









        // Path Params
        const localVarPath = '/spot/v1/historical/days';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (market !== undefined) {
            requestContext.setQueryParam("market", ObjectSerializer.serialize(market, "string", ""));
        }

        // Query Params
        if (instrument !== undefined) {
            requestContext.setQueryParam("instrument", ObjectSerializer.serialize(instrument, "string", ""));
        }

        // Query Params
        if (groups !== undefined) {
            requestContext.setQueryParam("groups", ObjectSerializer.serialize(groups, "Array<string>", ""));
        }

        // Query Params
        if (limit !== undefined) {
            requestContext.setQueryParam("limit", ObjectSerializer.serialize(limit, "number", ""));
        }

        // Query Params
        if (toTs !== undefined) {
            requestContext.setQueryParam("to_ts", ObjectSerializer.serialize(toTs, "number", ""));
        }

        // Query Params
        if (aggregate !== undefined) {
            requestContext.setQueryParam("aggregate", ObjectSerializer.serialize(aggregate, "number", ""));
        }

        // Query Params
        if (fill !== undefined) {
            requestContext.setQueryParam("fill", ObjectSerializer.serialize(fill, "boolean", ""));
        }

        // Query Params
        if (mappingPriority !== undefined) {
            requestContext.setQueryParam("mapping_priority", ObjectSerializer.serialize(mappingPriority, "'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'", ""));
        }

        // Query Params
        if (responseFormat !== undefined) {
            requestContext.setQueryParam("response_format", ObjectSerializer.serialize(responseFormat, "'JSON' | 'CSV'", ""));
        }


        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
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
    public async spotV1HistoricalHours(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'market' is not null or undefined
        if (market === null || market === undefined) {
            throw new RequiredError("SpotApi", "spotV1HistoricalHours", "market");
        }


        // verify required parameter 'instrument' is not null or undefined
        if (instrument === null || instrument === undefined) {
            throw new RequiredError("SpotApi", "spotV1HistoricalHours", "instrument");
        }









        // Path Params
        const localVarPath = '/spot/v1/historical/hours';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (market !== undefined) {
            requestContext.setQueryParam("market", ObjectSerializer.serialize(market, "string", ""));
        }

        // Query Params
        if (instrument !== undefined) {
            requestContext.setQueryParam("instrument", ObjectSerializer.serialize(instrument, "string", ""));
        }

        // Query Params
        if (groups !== undefined) {
            requestContext.setQueryParam("groups", ObjectSerializer.serialize(groups, "Array<string>", ""));
        }

        // Query Params
        if (limit !== undefined) {
            requestContext.setQueryParam("limit", ObjectSerializer.serialize(limit, "number", ""));
        }

        // Query Params
        if (toTs !== undefined) {
            requestContext.setQueryParam("to_ts", ObjectSerializer.serialize(toTs, "number", ""));
        }

        // Query Params
        if (aggregate !== undefined) {
            requestContext.setQueryParam("aggregate", ObjectSerializer.serialize(aggregate, "number", ""));
        }

        // Query Params
        if (fill !== undefined) {
            requestContext.setQueryParam("fill", ObjectSerializer.serialize(fill, "boolean", ""));
        }

        // Query Params
        if (mappingPriority !== undefined) {
            requestContext.setQueryParam("mapping_priority", ObjectSerializer.serialize(mappingPriority, "'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'", ""));
        }

        // Query Params
        if (responseFormat !== undefined) {
            requestContext.setQueryParam("response_format", ObjectSerializer.serialize(responseFormat, "'JSON' | 'CSV'", ""));
        }


        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
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
    public async spotV1HistoricalMinutes(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'market' is not null or undefined
        if (market === null || market === undefined) {
            throw new RequiredError("SpotApi", "spotV1HistoricalMinutes", "market");
        }


        // verify required parameter 'instrument' is not null or undefined
        if (instrument === null || instrument === undefined) {
            throw new RequiredError("SpotApi", "spotV1HistoricalMinutes", "instrument");
        }









        // Path Params
        const localVarPath = '/spot/v1/historical/minutes';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (market !== undefined) {
            requestContext.setQueryParam("market", ObjectSerializer.serialize(market, "string", ""));
        }

        // Query Params
        if (instrument !== undefined) {
            requestContext.setQueryParam("instrument", ObjectSerializer.serialize(instrument, "string", ""));
        }

        // Query Params
        if (groups !== undefined) {
            requestContext.setQueryParam("groups", ObjectSerializer.serialize(groups, "Array<string>", ""));
        }

        // Query Params
        if (limit !== undefined) {
            requestContext.setQueryParam("limit", ObjectSerializer.serialize(limit, "number", ""));
        }

        // Query Params
        if (toTs !== undefined) {
            requestContext.setQueryParam("to_ts", ObjectSerializer.serialize(toTs, "number", ""));
        }

        // Query Params
        if (aggregate !== undefined) {
            requestContext.setQueryParam("aggregate", ObjectSerializer.serialize(aggregate, "number", ""));
        }

        // Query Params
        if (fill !== undefined) {
            requestContext.setQueryParam("fill", ObjectSerializer.serialize(fill, "boolean", ""));
        }

        // Query Params
        if (mappingPriority !== undefined) {
            requestContext.setQueryParam("mapping_priority", ObjectSerializer.serialize(mappingPriority, "'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'", ""));
        }

        // Query Params
        if (responseFormat !== undefined) {
            requestContext.setQueryParam("response_format", ObjectSerializer.serialize(responseFormat, "'JSON' | 'CSV'", ""));
        }


        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param minuteTs Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
     * @param depth The number of top bids and asks to return.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public async spotV1HistoricalOrderbookL2SnapshotMinute(market: string, instrument: string, minuteTs: number, depth?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'market' is not null or undefined
        if (market === null || market === undefined) {
            throw new RequiredError("SpotApi", "spotV1HistoricalOrderbookL2SnapshotMinute", "market");
        }


        // verify required parameter 'instrument' is not null or undefined
        if (instrument === null || instrument === undefined) {
            throw new RequiredError("SpotApi", "spotV1HistoricalOrderbookL2SnapshotMinute", "instrument");
        }


        // verify required parameter 'minuteTs' is not null or undefined
        if (minuteTs === null || minuteTs === undefined) {
            throw new RequiredError("SpotApi", "spotV1HistoricalOrderbookL2SnapshotMinute", "minuteTs");
        }





        // Path Params
        const localVarPath = '/spot/v1/historical/orderbook/l2/snapshot/minute';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (market !== undefined) {
            requestContext.setQueryParam("market", ObjectSerializer.serialize(market, "string", ""));
        }

        // Query Params
        if (instrument !== undefined) {
            requestContext.setQueryParam("instrument", ObjectSerializer.serialize(instrument, "string", ""));
        }

        // Query Params
        if (minuteTs !== undefined) {
            requestContext.setQueryParam("minute_ts", ObjectSerializer.serialize(minuteTs, "number", ""));
        }

        // Query Params
        if (depth !== undefined) {
            requestContext.setQueryParam("depth", ObjectSerializer.serialize(depth, "number", ""));
        }

        // Query Params
        if (mappingPriority !== undefined) {
            requestContext.setQueryParam("mapping_priority", ObjectSerializer.serialize(mappingPriority, "'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'", ""));
        }

        // Query Params
        if (responseFormat !== undefined) {
            requestContext.setQueryParam("response_format", ObjectSerializer.serialize(responseFormat, "'JSON' | 'CSV'", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["api_key_header"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["api_key_query"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
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
    public async spotV1HistoricalTrades(market: string, instrument: string, afterTs?: number, lastCcseq?: number, limit?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'market' is not null or undefined
        if (market === null || market === undefined) {
            throw new RequiredError("SpotApi", "spotV1HistoricalTrades", "market");
        }


        // verify required parameter 'instrument' is not null or undefined
        if (instrument === null || instrument === undefined) {
            throw new RequiredError("SpotApi", "spotV1HistoricalTrades", "instrument");
        }








        // Path Params
        const localVarPath = '/spot/v1/historical/trades';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (market !== undefined) {
            requestContext.setQueryParam("market", ObjectSerializer.serialize(market, "string", ""));
        }

        // Query Params
        if (instrument !== undefined) {
            requestContext.setQueryParam("instrument", ObjectSerializer.serialize(instrument, "string", ""));
        }

        // Query Params
        if (afterTs !== undefined) {
            requestContext.setQueryParam("after_ts", ObjectSerializer.serialize(afterTs, "number", ""));
        }

        // Query Params
        if (lastCcseq !== undefined) {
            requestContext.setQueryParam("last_ccseq", ObjectSerializer.serialize(lastCcseq, "number", ""));
        }

        // Query Params
        if (limit !== undefined) {
            requestContext.setQueryParam("limit", ObjectSerializer.serialize(limit, "number", ""));
        }

        // Query Params
        if (mappingPriority !== undefined) {
            requestContext.setQueryParam("mapping_priority", ObjectSerializer.serialize(mappingPriority, "'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'", ""));
        }

        // Query Params
        if (responseFormat !== undefined) {
            requestContext.setQueryParam("response_format", ObjectSerializer.serialize(responseFormat, "'JSON' | 'CSV'", ""));
        }

        // Query Params
        if (return404OnEmptyResponse !== undefined) {
            requestContext.setQueryParam("return_404_on_empty_response", ObjectSerializer.serialize(return404OnEmptyResponse, "boolean", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["api_key_header"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["api_key_query"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param hourTs Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public async spotV1HistoricalTradesHour(market: string, instrument: string, hourTs?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'market' is not null or undefined
        if (market === null || market === undefined) {
            throw new RequiredError("SpotApi", "spotV1HistoricalTradesHour", "market");
        }


        // verify required parameter 'instrument' is not null or undefined
        if (instrument === null || instrument === undefined) {
            throw new RequiredError("SpotApi", "spotV1HistoricalTradesHour", "instrument");
        }






        // Path Params
        const localVarPath = '/spot/v1/historical/trades/hour';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (market !== undefined) {
            requestContext.setQueryParam("market", ObjectSerializer.serialize(market, "string", ""));
        }

        // Query Params
        if (instrument !== undefined) {
            requestContext.setQueryParam("instrument", ObjectSerializer.serialize(instrument, "string", ""));
        }

        // Query Params
        if (hourTs !== undefined) {
            requestContext.setQueryParam("hour_ts", ObjectSerializer.serialize(hourTs, "number", ""));
        }

        // Query Params
        if (mappingPriority !== undefined) {
            requestContext.setQueryParam("mapping_priority", ObjectSerializer.serialize(mappingPriority, "'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'", ""));
        }

        // Query Params
        if (responseFormat !== undefined) {
            requestContext.setQueryParam("response_format", ObjectSerializer.serialize(responseFormat, "'JSON' | 'CSV'", ""));
        }

        // Query Params
        if (return404OnEmptyResponse !== undefined) {
            requestContext.setQueryParam("return_404_on_empty_response", ObjectSerializer.serialize(return404OnEmptyResponse, "boolean", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["api_key_header"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["api_key_query"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public async spotV1LatestInstrumentMetadata(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'market' is not null or undefined
        if (market === null || market === undefined) {
            throw new RequiredError("SpotApi", "spotV1LatestInstrumentMetadata", "market");
        }


        // verify required parameter 'instruments' is not null or undefined
        if (instruments === null || instruments === undefined) {
            throw new RequiredError("SpotApi", "spotV1LatestInstrumentMetadata", "instruments");
        }




        // Path Params
        const localVarPath = '/spot/v1/latest/instrument/metadata';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (market !== undefined) {
            requestContext.setQueryParam("market", ObjectSerializer.serialize(market, "string", ""));
        }

        // Query Params
        if (instruments !== undefined) {
            requestContext.setQueryParam("instruments", ObjectSerializer.serialize(instruments, "Array<string>", ""));
        }

        // Query Params
        if (groups !== undefined) {
            requestContext.setQueryParam("groups", ObjectSerializer.serialize(groups, "Array<string>", ""));
        }

        // Query Params
        if (mappingPriority !== undefined) {
            requestContext.setQueryParam("mapping_priority", ObjectSerializer.serialize(mappingPriority, "'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'", ""));
        }


        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public async spotV1LatestTick(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'market' is not null or undefined
        if (market === null || market === undefined) {
            throw new RequiredError("SpotApi", "spotV1LatestTick", "market");
        }


        // verify required parameter 'instruments' is not null or undefined
        if (instruments === null || instruments === undefined) {
            throw new RequiredError("SpotApi", "spotV1LatestTick", "instruments");
        }




        // Path Params
        const localVarPath = '/spot/v1/latest/tick';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (market !== undefined) {
            requestContext.setQueryParam("market", ObjectSerializer.serialize(market, "string", ""));
        }

        // Query Params
        if (instruments !== undefined) {
            requestContext.setQueryParam("instruments", ObjectSerializer.serialize(instruments, "Array<string>", ""));
        }

        // Query Params
        if (groups !== undefined) {
            requestContext.setQueryParam("groups", ObjectSerializer.serialize(groups, "Array<string>", ""));
        }

        // Query Params
        if (mappingPriority !== undefined) {
            requestContext.setQueryParam("mapping_priority", ObjectSerializer.serialize(mappingPriority, "'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'", ""));
        }


        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param market The exchange to obtain data from
     */
    public async spotV1Markets(market?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;


        // Path Params
        const localVarPath = '/spot/v1/markets';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (market !== undefined) {
            requestContext.setQueryParam("market", ObjectSerializer.serialize(market, "string", ""));
        }


        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public async spotV1MarketsInstruments(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;




        // Path Params
        const localVarPath = '/spot/v1/markets/instruments';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (market !== undefined) {
            requestContext.setQueryParam("market", ObjectSerializer.serialize(market, "string", ""));
        }

        // Query Params
        if (instrument !== undefined) {
            requestContext.setQueryParam("instrument", ObjectSerializer.serialize(instrument, "string", ""));
        }

        // Query Params
        if (instrumentStatus !== undefined) {
            requestContext.setQueryParam("instrument_status", ObjectSerializer.serialize(instrumentStatus, "Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>", ""));
        }


        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The unmapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public async spotV1MarketsInstrumentsUnmapped(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;




        // Path Params
        const localVarPath = '/spot/v1/markets/instruments/unmapped';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (market !== undefined) {
            requestContext.setQueryParam("market", ObjectSerializer.serialize(market, "string", ""));
        }

        // Query Params
        if (instrument !== undefined) {
            requestContext.setQueryParam("instrument", ObjectSerializer.serialize(instrument, "string", ""));
        }

        // Query Params
        if (instrumentStatus !== undefined) {
            requestContext.setQueryParam("instrument_status", ObjectSerializer.serialize(instrumentStatus, "Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>", ""));
        }


        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

}

export class SpotApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to spotV1HistoricalDays
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async spotV1HistoricalDays(response: ResponseContext): Promise<SPOTINSTRUMENTHISTODATARESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SPOTINSTRUMENTHISTODATARESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTHISTODATARESPONSE", ""
            ) as SPOTINSTRUMENTHISTODATARESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SPOTINSTRUMENTHISTODATARESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTHISTODATARESPONSE", ""
            ) as SPOTINSTRUMENTHISTODATARESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to spotV1HistoricalHours
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async spotV1HistoricalHours(response: ResponseContext): Promise<SPOTINSTRUMENTHISTODATARESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SPOTINSTRUMENTHISTODATARESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTHISTODATARESPONSE", ""
            ) as SPOTINSTRUMENTHISTODATARESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SPOTINSTRUMENTHISTODATARESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTHISTODATARESPONSE", ""
            ) as SPOTINSTRUMENTHISTODATARESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to spotV1HistoricalMinutes
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async spotV1HistoricalMinutes(response: ResponseContext): Promise<SPOTINSTRUMENTHISTODATARESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SPOTINSTRUMENTHISTODATARESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTHISTODATARESPONSE", ""
            ) as SPOTINSTRUMENTHISTODATARESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SPOTINSTRUMENTHISTODATARESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTHISTODATARESPONSE", ""
            ) as SPOTINSTRUMENTHISTODATARESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to spotV1HistoricalOrderbookL2SnapshotMinute
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async spotV1HistoricalOrderbookL2SnapshotMinute(response: ResponseContext): Promise<GENERICRESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to spotV1HistoricalTrades
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async spotV1HistoricalTrades(response: ResponseContext): Promise<SPOTINSTRUMENTTRADERESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SPOTINSTRUMENTTRADERESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTTRADERESPONSE", ""
            ) as SPOTINSTRUMENTTRADERESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SPOTINSTRUMENTTRADERESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTTRADERESPONSE", ""
            ) as SPOTINSTRUMENTTRADERESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to spotV1HistoricalTradesHour
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async spotV1HistoricalTradesHour(response: ResponseContext): Promise<SPOTINSTRUMENTTRADERESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SPOTINSTRUMENTTRADERESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTTRADERESPONSE", ""
            ) as SPOTINSTRUMENTTRADERESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SPOTINSTRUMENTTRADERESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTTRADERESPONSE", ""
            ) as SPOTINSTRUMENTTRADERESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to spotV1LatestInstrumentMetadata
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async spotV1LatestInstrumentMetadata(response: ResponseContext): Promise<SPOTINSTRUMENTMETADATARESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SPOTINSTRUMENTMETADATARESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTMETADATARESPONSE", ""
            ) as SPOTINSTRUMENTMETADATARESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SPOTINSTRUMENTMETADATARESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTMETADATARESPONSE", ""
            ) as SPOTINSTRUMENTMETADATARESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to spotV1LatestTick
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async spotV1LatestTick(response: ResponseContext): Promise<SPOTINSTRUMENTMARKETDATARESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SPOTINSTRUMENTMARKETDATARESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTMARKETDATARESPONSE", ""
            ) as SPOTINSTRUMENTMARKETDATARESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SPOTINSTRUMENTMARKETDATARESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SPOTINSTRUMENTMARKETDATARESPONSE", ""
            ) as SPOTINSTRUMENTMARKETDATARESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to spotV1Markets
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async spotV1Markets(response: ResponseContext): Promise<GENERICRESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to spotV1MarketsInstruments
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async spotV1MarketsInstruments(response: ResponseContext): Promise<GENERICRESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to spotV1MarketsInstrumentsUnmapped
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async spotV1MarketsInstrumentsUnmapped(response: ResponseContext): Promise<GENERICRESPONSE > {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }
        if (isCodeInRange("400", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 400 error occurs when some of the data sent is malformed.", body, response.headers);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 401 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 403 error occurs when you don&#39;t use a valid API Key on an endpoint that requires authetication.", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 404 error can either be returned when some/all of parameters sent are not found within our system. This could be beacuse parameters like market, instrument, news source, symbol, asset_id etc. are invalid", body, response.headers);
        }
        if (isCodeInRange("405", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 405 error occurs the user tries to use a http method (GET,POST,PUT etc) that is not supported.", body, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 429 error occurs when you go over the API Key limit. Rate limits are eforced on a second (resets every second), minute (resers every minute), hour (resets every hour), day (resets every day) and month (resets every month) granularity. You can upgrade your account and access higher rate limits.", body, response.headers);
        }
        if (isCodeInRange("500", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 500 error occurs our API is up but does not know how to / can&#39;t handle the request.", body, response.headers);
        }
        if (isCodeInRange("502", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 502 error occurs when our API is not running. This error is returned by our proxy / load balancer.", body, response.headers);
        }
        if (isCodeInRange("503", response.httpStatusCode)) {
            const body: Error = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Error", ""
            ) as Error;
            throw new ApiException<Error>(response.httpStatusCode, "The 503 error occurs when there is an issue with one of our data sources and we can&#39;t even return a partial answer.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: GENERICRESPONSE = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GENERICRESPONSE", ""
            ) as GENERICRESPONSE;
            return body;
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
