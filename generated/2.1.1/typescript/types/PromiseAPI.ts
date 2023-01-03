import { ResponseContext, RequestContext, HttpFile } from '../http/http';
import { Configuration} from '../configuration'

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
import { ObservableAssetApi } from './ObservableAPI';

import { AssetApiRequestFactory, AssetApiResponseProcessor} from "../apis/AssetApi";
export class PromiseAssetApi {
    private api: ObservableAssetApi

    public constructor(
        configuration: Configuration,
        requestFactory?: AssetApiRequestFactory,
        responseProcessor?: AssetApiResponseProcessor
    ) {
        this.api = new ObservableAssetApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param address 
     * @param chainSymbol 
     * @param groups 
     */
    public assetV1DataByAddress(address: string, chainSymbol: string, groups?: string, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.assetV1DataByAddress(address, chainSymbol, groups, _options);
        return result.toPromise();
    }

    /**
     * @param assetId The asset id you are interested in
     * @param groups 
     */
    public assetV1DataById(assetId: number, groups?: string, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.assetV1DataById(assetId, groups, _options);
        return result.toPromise();
    }

    /**
     * @param assetSymbol The asset symbol you are interested in
     * @param groups 
     */
    public assetV1DataBySymbol(assetSymbol: string, groups?: string, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.assetV1DataBySymbol(assetSymbol, groups, _options);
        return result.toPromise();
    }

    /**
     * @param page The page number for the request to get {page_size} coins at the time.
     * @param pageSize The number of items returned per page
     * @param assetType The asset class/type
     * @param sortBy Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
     * @param sortDirection Sort direction ( DESC,ASC )
     * @param groups 
     */
    public assetV1TopList(page?: number, pageSize?: number, assetType?: string, sortBy?: 'CREATED_ON' | 'UPDATED_ON' | 'SYMBOL', sortDirection?: 'DESC' | 'ASC', groups?: string, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.assetV1TopList(page, pageSize, assetType, sortBy, sortDirection, groups, _options);
        return result.toPromise();
    }


}



import { ObservableFuturesApi } from './ObservableAPI';

import { FuturesApiRequestFactory, FuturesApiResponseProcessor} from "../apis/FuturesApi";
export class PromiseFuturesApi {
    private api: ObservableFuturesApi

    public constructor(
        configuration: Configuration,
        requestFactory?: FuturesApiRequestFactory,
        responseProcessor?: FuturesApiResponseProcessor
    ) {
        this.api = new ObservableFuturesApi(configuration, requestFactory, responseProcessor);
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
    public futuresV1HistoricalDays(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public futuresV1HistoricalFundingRateDays(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalFundingRateDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public futuresV1HistoricalFundingRateHours(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalFundingRateHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public futuresV1HistoricalFundingRateMessages(market: string, instrument: string, afterTs?: number, lastCcseq?: number, limit?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalFundingRateMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param hourTs Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public futuresV1HistoricalFundingRateMessagesHour(market: string, instrument: string, hourTs?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalFundingRateMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, _options);
        return result.toPromise();
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
    public futuresV1HistoricalFundingRateMinutes(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalFundingRateMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public futuresV1HistoricalHours(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public futuresV1HistoricalMinutes(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public futuresV1HistoricalOpenInterestDays(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalOpenInterestDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public futuresV1HistoricalOpenInterestHours(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalOpenInterestHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public futuresV1HistoricalOpenInterestMessages(market: string, instrument: string, afterTs?: number, lastCcseq?: number, limit?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalOpenInterestMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param hourTs Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public futuresV1HistoricalOpenInterestMessagesHour(market: string, instrument: string, hourTs?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalOpenInterestMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, _options);
        return result.toPromise();
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
    public futuresV1HistoricalOpenInterestMinutes(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalOpenInterestMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public futuresV1HistoricalTrades(market: string, instrument: string, afterTs?: number, lastCcseq?: number, limit?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param hourTs Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public futuresV1HistoricalTradesHour(market: string, instrument: string, hourTs?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public futuresV1LatestFundingRateTick(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1LatestFundingRateTick(market, instruments, groups, mappingPriority, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public futuresV1LatestInstrumentMetadata(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public futuresV1LatestOpenInterestTick(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1LatestOpenInterestTick(market, instruments, groups, mappingPriority, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public futuresV1LatestTick(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1LatestTick(market, instruments, groups, mappingPriority, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     */
    public futuresV1Markets(market?: string, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1Markets(market, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public futuresV1MarketsInstruments(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1MarketsInstruments(market, instrument, instrumentStatus, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The unmapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public futuresV1MarketsInstrumentsUnmapped(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.futuresV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus, _options);
        return result.toPromise();
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
    public indexV1HistoricalDays(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public indexV1HistoricalHours(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public indexV1HistoricalMessages(market: string, instrument: string, afterTs?: number, lastCcseq?: number, limit?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexV1HistoricalMessages(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param hourTs Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public indexV1HistoricalMessagesHour(market: string, instrument: string, hourTs?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexV1HistoricalMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, _options);
        return result.toPromise();
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
    public indexV1HistoricalMinutes(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public indexV1LatestInstrumentMetadata(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public indexV1LatestTick(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexV1LatestTick(market, instruments, groups, mappingPriority, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     */
    public indexV1Markets(market?: string, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexV1Markets(market, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public indexV1MarketsInstruments(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexV1MarketsInstruments(market, instrument, instrumentStatus, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The unmapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public indexV1MarketsInstrumentsUnmapped(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus, _options);
        return result.toPromise();
    }


}



import { ObservableNewsApi } from './ObservableAPI';

import { NewsApiRequestFactory, NewsApiResponseProcessor} from "../apis/NewsApi";
export class PromiseNewsApi {
    private api: ObservableNewsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: NewsApiRequestFactory,
        responseProcessor?: NewsApiResponseProcessor
    ) {
        this.api = new ObservableNewsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param sourceIds Get articles from specific sources; either by their ids or keys
     * @param lang The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
     * @param categories News article categories to return
     * @param excludeCategories News article categories to exclude from results
     * @param toTs Articles published on or before this timestamp
     */
    public newsV1ArticleList(sourceIds?: Array<string>, lang?: 'EN' | 'ES' | 'PT' | '', categories?: Array<'1INCH' | 'AAVE' | 'ADA' | 'ALGO' | 'ALTCOIN' | 'ASIA' | 'ATOM' | 'AVAX' | 'AXS' | 'BAL' | 'BAT' | 'BCH' | 'BLOCKCHAIN' | 'BTC' | 'BUSINESS' | 'COMMODITY' | 'COMP' | 'CRV' | 'DASH' | 'DOGE' | 'DOT' | 'ENJ' | 'ETC' | 'ETH' | 'EXCHANGE' | 'FIAT' | 'FIL' | 'FTM' | 'ICO' | 'KNC' | 'LINK' | 'LRC' | 'LTC' | 'LUNA' | 'LUNC' | 'MANA' | 'MARKET' | 'MATIC' | 'MINING' | 'MKR' | 'REGULATION' | 'REN' | 'SAND' | 'SHIB' | 'SNX' | 'SOL' | 'SPONSORED' | 'SUSHI' | 'TECHNOLOGY' | 'TRADING' | 'TRX' | 'UMA' | 'UNI' | 'USDT' | 'WALLET' | 'XLM' | 'XMR' | 'XRP' | 'XTZ' | 'YFI' | 'ZEC' | 'ZRX' | ''>, excludeCategories?: Array<'1INCH' | 'AAVE' | 'ADA' | 'ALGO' | 'ALTCOIN' | 'ASIA' | 'ATOM' | 'AVAX' | 'AXS' | 'BAL' | 'BAT' | 'BCH' | 'BLOCKCHAIN' | 'BTC' | 'BUSINESS' | 'COMMODITY' | 'COMP' | 'CRV' | 'DASH' | 'DOGE' | 'DOT' | 'ENJ' | 'ETC' | 'ETH' | 'EXCHANGE' | 'FIAT' | 'FIL' | 'FTM' | 'ICO' | 'KNC' | 'LINK' | 'LRC' | 'LTC' | 'LUNA' | 'LUNC' | 'MANA' | 'MARKET' | 'MATIC' | 'MINING' | 'MKR' | 'REGULATION' | 'REN' | 'SAND' | 'SHIB' | 'SNX' | 'SOL' | 'SPONSORED' | 'SUSHI' | 'TECHNOLOGY' | 'TRADING' | 'TRX' | 'UMA' | 'UNI' | 'USDT' | 'WALLET' | 'XLM' | 'XMR' | 'XRP' | 'XTZ' | 'YFI' | 'ZEC' | 'ZRX' | ''>, toTs?: number, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.newsV1ArticleList(sourceIds, lang, categories, excludeCategories, toTs, _options);
        return result.toPromise();
    }

    /**
     */
    public newsV1CategoryList(_options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.newsV1CategoryList(_options);
        return result.toPromise();
    }

    /**
     * @param lang The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
     * @param type RSS, API, TWITTER
     * @param status The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
     */
    public newsV1SourceList(lang?: 'EN' | 'ES' | 'PT' | '', type?: 'RSS' | 'API' | 'TWITTER' | '', status?: 'ACTIVE' | 'INACTIVE' | '', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.newsV1SourceList(lang, type, status, _options);
        return result.toPromise();
    }


}



import { ObservableOverviewApi } from './ObservableAPI';

import { OverviewApiRequestFactory, OverviewApiResponseProcessor} from "../apis/OverviewApi";
export class PromiseOverviewApi {
    private api: ObservableOverviewApi

    public constructor(
        configuration: Configuration,
        requestFactory?: OverviewApiRequestFactory,
        responseProcessor?: OverviewApiResponseProcessor
    ) {
        this.api = new ObservableOverviewApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public overviewV1HistoricalMarketcapAllAssetsDays(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.overviewV1HistoricalMarketcapAllAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat, _options);
        return result.toPromise();
    }

    /**
     * @param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public overviewV1HistoricalMarketcapAllAssetsHours(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.overviewV1HistoricalMarketcapAllAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat, _options);
        return result.toPromise();
    }

    /**
     * @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public overviewV1HistoricalMarketcapFtwAssetsDays(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.overviewV1HistoricalMarketcapFtwAssetsDays(groups, limit, toTs, aggregate, fill, responseFormat, _options);
        return result.toPromise();
    }

    /**
     * @param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @param limit The number of data points to return
     * @param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public overviewV1HistoricalMarketcapFtwAssetsHours(groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.overviewV1HistoricalMarketcapFtwAssetsHours(groups, limit, toTs, aggregate, fill, responseFormat, _options);
        return result.toPromise();
    }

    /**
     * @param groups When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
     */
    public overviewV1LatestMarketcapAllTick(groups?: Array<string>, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.overviewV1LatestMarketcapAllTick(groups, _options);
        return result.toPromise();
    }

    /**
     * @param groups When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
     */
    public overviewV1LatestMarketcapFtwTick(groups?: Array<string>, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.overviewV1LatestMarketcapFtwTick(groups, _options);
        return result.toPromise();
    }


}



import { ObservableReferenceRatesApi } from './ObservableAPI';

import { ReferenceRatesApiRequestFactory, ReferenceRatesApiResponseProcessor} from "../apis/ReferenceRatesApi";
export class PromiseReferenceRatesApi {
    private api: ObservableReferenceRatesApi

    public constructor(
        configuration: Configuration,
        requestFactory?: ReferenceRatesApiRequestFactory,
        responseProcessor?: ReferenceRatesApiResponseProcessor
    ) {
        this.api = new ObservableReferenceRatesApi(configuration, requestFactory, responseProcessor);
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
    public indexCcV1HistoricalDays(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexCcV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public indexCcV1HistoricalHours(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexCcV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public indexCcV1HistoricalMessages(market: string, instrument: string, afterTs?: number, lastCcseq?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', limit?: number, responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexCcV1HistoricalMessages(market, instrument, afterTs, lastCcseq, mappingPriority, limit, responseFormat, return404OnEmptyResponse, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param hourTs Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public indexCcV1HistoricalMessagesHour(market: string, instrument: string, hourTs?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexCcV1HistoricalMessagesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, _options);
        return result.toPromise();
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
    public indexCcV1HistoricalMinutes(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexCcV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public indexCcV1LatestInstrumentMetadata(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexCcV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public indexCcV1LatestTick(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexCcV1LatestTick(market, instruments, groups, mappingPriority, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     */
    public indexCcV1Markets(market?: string, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexCcV1Markets(market, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public indexCcV1MarketsInstruments(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexCcV1MarketsInstruments(market, instrument, instrumentStatus, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The unmapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public indexCcV1MarketsInstrumentsUnmapped(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.indexCcV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus, _options);
        return result.toPromise();
    }


}



import { ObservableSpotApi } from './ObservableAPI';

import { SpotApiRequestFactory, SpotApiResponseProcessor} from "../apis/SpotApi";
export class PromiseSpotApi {
    private api: ObservableSpotApi

    public constructor(
        configuration: Configuration,
        requestFactory?: SpotApiRequestFactory,
        responseProcessor?: SpotApiResponseProcessor
    ) {
        this.api = new ObservableSpotApi(configuration, requestFactory, responseProcessor);
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
    public spotV1HistoricalDays(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<SPOTINSTRUMENTHISTODATARESPONSE> {
        const result = this.api.spotV1HistoricalDays(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public spotV1HistoricalHours(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<SPOTINSTRUMENTHISTODATARESPONSE> {
        const result = this.api.spotV1HistoricalHours(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public spotV1HistoricalMinutes(market: string, instrument: string, groups?: Array<string>, limit?: number, toTs?: number, aggregate?: number, fill?: boolean, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<SPOTINSTRUMENTHISTODATARESPONSE> {
        const result = this.api.spotV1HistoricalMinutes(market, instrument, groups, limit, toTs, aggregate, fill, mappingPriority, responseFormat, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param minuteTs Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
     * @param depth The number of top bids and asks to return.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     */
    public spotV1HistoricalOrderbookL2SnapshotMinute(market: string, instrument: string, minuteTs: number, depth?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.spotV1HistoricalOrderbookL2SnapshotMinute(market, instrument, minuteTs, depth, mappingPriority, responseFormat, _options);
        return result.toPromise();
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
    public spotV1HistoricalTrades(market: string, instrument: string, afterTs?: number, lastCcseq?: number, limit?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<SPOTINSTRUMENTTRADERESPONSE> {
        const result = this.api.spotV1HistoricalTrades(market, instrument, afterTs, lastCcseq, limit, mappingPriority, responseFormat, return404OnEmptyResponse, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @param hourTs Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     */
    public spotV1HistoricalTradesHour(market: string, instrument: string, hourTs?: number, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', responseFormat?: 'JSON' | 'CSV', return404OnEmptyResponse?: boolean, _options?: Configuration): Promise<SPOTINSTRUMENTTRADERESPONSE> {
        const result = this.api.spotV1HistoricalTradesHour(market, instrument, hourTs, mappingPriority, responseFormat, return404OnEmptyResponse, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public spotV1LatestInstrumentMetadata(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Promise<SPOTINSTRUMENTMETADATARESPONSE> {
        const result = this.api.spotV1LatestInstrumentMetadata(market, instruments, groups, mappingPriority, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     */
    public spotV1LatestTick(market: string, instruments: Array<string>, groups?: Array<string>, mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST', _options?: Configuration): Promise<SPOTINSTRUMENTMARKETDATARESPONSE> {
        const result = this.api.spotV1LatestTick(market, instruments, groups, mappingPriority, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     */
    public spotV1Markets(market?: string, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.spotV1Markets(market, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The mapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public spotV1MarketsInstruments(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.spotV1MarketsInstruments(market, instrument, instrumentStatus, _options);
        return result.toPromise();
    }

    /**
     * @param market The exchange to obtain data from
     * @param instrument The unmapped instrument to retrieve on a specific market.
     * @param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     */
    public spotV1MarketsInstrumentsUnmapped(market?: string, instrument?: string, instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>, _options?: Configuration): Promise<GENERICRESPONSE> {
        const result = this.api.spotV1MarketsInstrumentsUnmapped(market, instrument, instrumentStatus, _options);
        return result.toPromise();
    }


}



