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

import { ObservableAssetApi } from "./ObservableAPI";
import { AssetApiRequestFactory, AssetApiResponseProcessor} from "../apis/AssetApi";

export interface AssetApiAssetV1DataByAddressRequest {
    /**
     * 
     * @type string
     * @memberof AssetApiassetV1DataByAddress
     */
    address: string
    /**
     * 
     * @type string
     * @memberof AssetApiassetV1DataByAddress
     */
    chainSymbol: string
    /**
     * 
     * @type string
     * @memberof AssetApiassetV1DataByAddress
     */
    groups?: string
}

export interface AssetApiAssetV1DataByIdRequest {
    /**
     * The asset id you are interested in
     * @type number
     * @memberof AssetApiassetV1DataById
     */
    assetId: number
    /**
     * 
     * @type string
     * @memberof AssetApiassetV1DataById
     */
    groups?: string
}

export interface AssetApiAssetV1DataBySymbolRequest {
    /**
     * The asset symbol you are interested in
     * @type string
     * @memberof AssetApiassetV1DataBySymbol
     */
    assetSymbol: string
    /**
     * 
     * @type string
     * @memberof AssetApiassetV1DataBySymbol
     */
    groups?: string
}

export interface AssetApiAssetV1TopListRequest {
    /**
     * The page number for the request to get {page_size} coins at the time.
     * @type number
     * @memberof AssetApiassetV1TopList
     */
    page?: number
    /**
     * The number of items returned per page
     * @type number
     * @memberof AssetApiassetV1TopList
     */
    pageSize?: number
    /**
     * The asset class/type
     * @type string
     * @memberof AssetApiassetV1TopList
     */
    assetType?: string
    /**
     * Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL )
     * @type &#39;CREATED_ON&#39; | &#39;UPDATED_ON&#39; | &#39;SYMBOL&#39;
     * @memberof AssetApiassetV1TopList
     */
    sortBy?: 'CREATED_ON' | 'UPDATED_ON' | 'SYMBOL'
    /**
     * Sort direction ( DESC,ASC )
     * @type &#39;DESC&#39; | &#39;ASC&#39;
     * @memberof AssetApiassetV1TopList
     */
    sortDirection?: 'DESC' | 'ASC'
    /**
     * 
     * @type string
     * @memberof AssetApiassetV1TopList
     */
    groups?: string
}

export class ObjectAssetApi {
    private api: ObservableAssetApi

    public constructor(configuration: Configuration, requestFactory?: AssetApiRequestFactory, responseProcessor?: AssetApiResponseProcessor) {
        this.api = new ObservableAssetApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param param the request object
     */
    public assetV1DataByAddress(param: AssetApiAssetV1DataByAddressRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.assetV1DataByAddress(param.address, param.chainSymbol, param.groups,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public assetV1DataById(param: AssetApiAssetV1DataByIdRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.assetV1DataById(param.assetId, param.groups,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public assetV1DataBySymbol(param: AssetApiAssetV1DataBySymbolRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.assetV1DataBySymbol(param.assetSymbol, param.groups,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public assetV1TopList(param: AssetApiAssetV1TopListRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.assetV1TopList(param.page, param.pageSize, param.assetType, param.sortBy, param.sortDirection, param.groups,  options).toPromise();
    }

}

import { ObservableFuturesApi } from "./ObservableAPI";
import { FuturesApiRequestFactory, FuturesApiResponseProcessor} from "../apis/FuturesApi";

export interface FuturesApiFuturesV1HistoricalDaysRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalDays
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalDays
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1HistoricalDays
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof FuturesApifuturesV1HistoricalDays
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof FuturesApifuturesV1HistoricalDays
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof FuturesApifuturesV1HistoricalDays
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalDays
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalDays
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalDays
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface FuturesApiFuturesV1HistoricalFundingRateDaysRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalFundingRateDays
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalFundingRateDays
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1HistoricalFundingRateDays
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof FuturesApifuturesV1HistoricalFundingRateDays
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof FuturesApifuturesV1HistoricalFundingRateDays
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof FuturesApifuturesV1HistoricalFundingRateDays
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalFundingRateDays
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalFundingRateDays
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalFundingRateDays
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface FuturesApiFuturesV1HistoricalFundingRateHoursRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalFundingRateHours
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalFundingRateHours
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1HistoricalFundingRateHours
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof FuturesApifuturesV1HistoricalFundingRateHours
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof FuturesApifuturesV1HistoricalFundingRateHours
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof FuturesApifuturesV1HistoricalFundingRateHours
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalFundingRateHours
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalFundingRateHours
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalFundingRateHours
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface FuturesApiFuturesV1HistoricalFundingRateMessagesRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessages
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessages
     */
    instrument: string
    /**
     * Unix timestamp in seconds of the earliest funding rate message in the response
     * @type number
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessages
     */
    afterTs?: number
    /**
     * The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
     * @type number
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessages
     */
    lastCcseq?: number
    /**
     * The maximum number of funding rate messages to return
     * @type number
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessages
     */
    limit?: number
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessages
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessages
     */
    responseFormat?: 'JSON' | 'CSV'
    /**
     * If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessages
     */
    return404OnEmptyResponse?: boolean
}

export interface FuturesApiFuturesV1HistoricalFundingRateMessagesHourRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessagesHour
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessagesHour
     */
    instrument: string
    /**
     * Unix timestamp in seconds for the hour containing the funding rate updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all funding rate updates in that hour.
     * @type number
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessagesHour
     */
    hourTs?: number
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessagesHour
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessagesHour
     */
    responseFormat?: 'JSON' | 'CSV'
    /**
     * If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalFundingRateMessagesHour
     */
    return404OnEmptyResponse?: boolean
}

export interface FuturesApiFuturesV1HistoricalFundingRateMinutesRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalFundingRateMinutes
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalFundingRateMinutes
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,OHLC,OHLC_MESSAGE,MESSAGE
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1HistoricalFundingRateMinutes
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof FuturesApifuturesV1HistoricalFundingRateMinutes
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof FuturesApifuturesV1HistoricalFundingRateMinutes
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof FuturesApifuturesV1HistoricalFundingRateMinutes
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalFundingRateMinutes
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalFundingRateMinutes
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalFundingRateMinutes
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface FuturesApiFuturesV1HistoricalHoursRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalHours
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalHours
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1HistoricalHours
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof FuturesApifuturesV1HistoricalHours
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof FuturesApifuturesV1HistoricalHours
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof FuturesApifuturesV1HistoricalHours
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalHours
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalHours
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalHours
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface FuturesApiFuturesV1HistoricalMinutesRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalMinutes
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalMinutes
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1HistoricalMinutes
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof FuturesApifuturesV1HistoricalMinutes
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof FuturesApifuturesV1HistoricalMinutes
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof FuturesApifuturesV1HistoricalMinutes
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalMinutes
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalMinutes
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalMinutes
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface FuturesApiFuturesV1HistoricalOpenInterestDaysRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalOpenInterestDays
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalOpenInterestDays
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1HistoricalOpenInterestDays
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof FuturesApifuturesV1HistoricalOpenInterestDays
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof FuturesApifuturesV1HistoricalOpenInterestDays
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof FuturesApifuturesV1HistoricalOpenInterestDays
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalOpenInterestDays
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalOpenInterestDays
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalOpenInterestDays
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface FuturesApiFuturesV1HistoricalOpenInterestHoursRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalOpenInterestHours
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalOpenInterestHours
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1HistoricalOpenInterestHours
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof FuturesApifuturesV1HistoricalOpenInterestHours
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof FuturesApifuturesV1HistoricalOpenInterestHours
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof FuturesApifuturesV1HistoricalOpenInterestHours
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalOpenInterestHours
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalOpenInterestHours
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalOpenInterestHours
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface FuturesApiFuturesV1HistoricalOpenInterestMessagesRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessages
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessages
     */
    instrument: string
    /**
     * Unix timestamp in seconds of the earliest open interest message in the response
     * @type number
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessages
     */
    afterTs?: number
    /**
     * The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
     * @type number
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessages
     */
    lastCcseq?: number
    /**
     * The maximum number of open interest messages to return
     * @type number
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessages
     */
    limit?: number
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessages
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessages
     */
    responseFormat?: 'JSON' | 'CSV'
    /**
     * If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessages
     */
    return404OnEmptyResponse?: boolean
}

export interface FuturesApiFuturesV1HistoricalOpenInterestMessagesHourRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessagesHour
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessagesHour
     */
    instrument: string
    /**
     * Unix timestamp in seconds for the hour containing the open interest updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all open interest updates in that hour.
     * @type number
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessagesHour
     */
    hourTs?: number
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessagesHour
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessagesHour
     */
    responseFormat?: 'JSON' | 'CSV'
    /**
     * If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMessagesHour
     */
    return404OnEmptyResponse?: boolean
}

export interface FuturesApiFuturesV1HistoricalOpenInterestMinutesRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMinutes
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMinutes
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_MESSAGE,MESSAGE
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMinutes
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMinutes
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMinutes
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMinutes
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMinutes
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMinutes
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalOpenInterestMinutes
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface FuturesApiFuturesV1HistoricalTradesRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalTrades
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalTrades
     */
    instrument: string
    /**
     * Unix timestamp in seconds of the earliest trade in the response.
     * @type number
     * @memberof FuturesApifuturesV1HistoricalTrades
     */
    afterTs?: number
    /**
     * The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
     * @type number
     * @memberof FuturesApifuturesV1HistoricalTrades
     */
    lastCcseq?: number
    /**
     * The maximum number of trades to return
     * @type number
     * @memberof FuturesApifuturesV1HistoricalTrades
     */
    limit?: number
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalTrades
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalTrades
     */
    responseFormat?: 'JSON' | 'CSV'
    /**
     * If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalTrades
     */
    return404OnEmptyResponse?: boolean
}

export interface FuturesApiFuturesV1HistoricalTradesHourRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1HistoricalTradesHour
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApifuturesV1HistoricalTradesHour
     */
    instrument: string
    /**
     * Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
     * @type number
     * @memberof FuturesApifuturesV1HistoricalTradesHour
     */
    hourTs?: number
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1HistoricalTradesHour
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApifuturesV1HistoricalTradesHour
     */
    responseFormat?: 'JSON' | 'CSV'
    /**
     * If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     * @type boolean
     * @memberof FuturesApifuturesV1HistoricalTradesHour
     */
    return404OnEmptyResponse?: boolean
}

export interface FuturesApiFuturesV1LatestFundingRateTickRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1LatestFundingRateTick
     */
    market: string
    /**
     * A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1LatestFundingRateTick
     */
    instruments: Array<string>
    /**
     * When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1LatestFundingRateTick
     */
    groups?: Array<string>
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1LatestFundingRateTick
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
}

export interface FuturesApiFuturesV1LatestInstrumentMetadataRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1LatestInstrumentMetadata
     */
    market: string
    /**
     * A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1LatestInstrumentMetadata
     */
    instruments: Array<string>
    /**
     * When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1LatestInstrumentMetadata
     */
    groups?: Array<string>
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1LatestInstrumentMetadata
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
}

export interface FuturesApiFuturesV1LatestOpenInterestTickRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1LatestOpenInterestTick
     */
    market: string
    /**
     * A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1LatestOpenInterestTick
     */
    instruments: Array<string>
    /**
     * When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1LatestOpenInterestTick
     */
    groups?: Array<string>
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1LatestOpenInterestTick
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
}

export interface FuturesApiFuturesV1LatestTickRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1LatestTick
     */
    market: string
    /**
     * A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1LatestTick
     */
    instruments: Array<string>
    /**
     * When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @type Array&lt;string&gt;
     * @memberof FuturesApifuturesV1LatestTick
     */
    groups?: Array<string>
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApifuturesV1LatestTick
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
}

export interface FuturesApiFuturesV1MarketsRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1Markets
     */
    market?: string
}

export interface FuturesApiFuturesV1MarketsInstrumentsRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1MarketsInstruments
     */
    market?: string
    /**
     * The mapped instrument to retrieve on a specific market.
     * @type string
     * @memberof FuturesApifuturesV1MarketsInstruments
     */
    instrument?: string
    /**
     * The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     * @type Array&lt;&#39;ACTIVE&#39; | &#39;IGNORED&#39; | &#39;RETIRED&#39; | &#39;EXPIRED&#39;&gt;
     * @memberof FuturesApifuturesV1MarketsInstruments
     */
    instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>
}

export interface FuturesApiFuturesV1MarketsInstrumentsUnmappedRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApifuturesV1MarketsInstrumentsUnmapped
     */
    market?: string
    /**
     * The unmapped instrument to retrieve on a specific market.
     * @type string
     * @memberof FuturesApifuturesV1MarketsInstrumentsUnmapped
     */
    instrument?: string
    /**
     * The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     * @type Array&lt;&#39;ACTIVE&#39; | &#39;IGNORED&#39; | &#39;RETIRED&#39; | &#39;EXPIRED&#39;&gt;
     * @memberof FuturesApifuturesV1MarketsInstrumentsUnmapped
     */
    instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>
}

export interface FuturesApiIndexV1HistoricalDaysRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApiindexV1HistoricalDays
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApiindexV1HistoricalDays
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @type Array&lt;string&gt;
     * @memberof FuturesApiindexV1HistoricalDays
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof FuturesApiindexV1HistoricalDays
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof FuturesApiindexV1HistoricalDays
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof FuturesApiindexV1HistoricalDays
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof FuturesApiindexV1HistoricalDays
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApiindexV1HistoricalDays
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApiindexV1HistoricalDays
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface FuturesApiIndexV1HistoricalHoursRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApiindexV1HistoricalHours
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApiindexV1HistoricalHours
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @type Array&lt;string&gt;
     * @memberof FuturesApiindexV1HistoricalHours
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof FuturesApiindexV1HistoricalHours
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof FuturesApiindexV1HistoricalHours
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof FuturesApiindexV1HistoricalHours
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof FuturesApiindexV1HistoricalHours
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApiindexV1HistoricalHours
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApiindexV1HistoricalHours
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface FuturesApiIndexV1HistoricalMessagesRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApiindexV1HistoricalMessages
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApiindexV1HistoricalMessages
     */
    instrument: string
    /**
     * Unix timestamp in seconds of the earliest index message in the response
     * @type number
     * @memberof FuturesApiindexV1HistoricalMessages
     */
    afterTs?: number
    /**
     * The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
     * @type number
     * @memberof FuturesApiindexV1HistoricalMessages
     */
    lastCcseq?: number
    /**
     * The maximum number of index messages to return
     * @type number
     * @memberof FuturesApiindexV1HistoricalMessages
     */
    limit?: number
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApiindexV1HistoricalMessages
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApiindexV1HistoricalMessages
     */
    responseFormat?: 'JSON' | 'CSV'
    /**
     * If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     * @type boolean
     * @memberof FuturesApiindexV1HistoricalMessages
     */
    return404OnEmptyResponse?: boolean
}

export interface FuturesApiIndexV1HistoricalMessagesHourRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApiindexV1HistoricalMessagesHour
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApiindexV1HistoricalMessagesHour
     */
    instrument: string
    /**
     * Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
     * @type number
     * @memberof FuturesApiindexV1HistoricalMessagesHour
     */
    hourTs?: number
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApiindexV1HistoricalMessagesHour
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApiindexV1HistoricalMessagesHour
     */
    responseFormat?: 'JSON' | 'CSV'
    /**
     * If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     * @type boolean
     * @memberof FuturesApiindexV1HistoricalMessagesHour
     */
    return404OnEmptyResponse?: boolean
}

export interface FuturesApiIndexV1HistoricalMinutesRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApiindexV1HistoricalMinutes
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof FuturesApiindexV1HistoricalMinutes
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @type Array&lt;string&gt;
     * @memberof FuturesApiindexV1HistoricalMinutes
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof FuturesApiindexV1HistoricalMinutes
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof FuturesApiindexV1HistoricalMinutes
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof FuturesApiindexV1HistoricalMinutes
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof FuturesApiindexV1HistoricalMinutes
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApiindexV1HistoricalMinutes
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof FuturesApiindexV1HistoricalMinutes
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface FuturesApiIndexV1LatestInstrumentMetadataRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApiindexV1LatestInstrumentMetadata
     */
    market: string
    /**
     * A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @type Array&lt;string&gt;
     * @memberof FuturesApiindexV1LatestInstrumentMetadata
     */
    instruments: Array<string>
    /**
     * When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @type Array&lt;string&gt;
     * @memberof FuturesApiindexV1LatestInstrumentMetadata
     */
    groups?: Array<string>
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApiindexV1LatestInstrumentMetadata
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
}

export interface FuturesApiIndexV1LatestTickRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApiindexV1LatestTick
     */
    market: string
    /**
     * A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @type Array&lt;string&gt;
     * @memberof FuturesApiindexV1LatestTick
     */
    instruments: Array<string>
    /**
     * When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @type Array&lt;string&gt;
     * @memberof FuturesApiindexV1LatestTick
     */
    groups?: Array<string>
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof FuturesApiindexV1LatestTick
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
}

export interface FuturesApiIndexV1MarketsRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApiindexV1Markets
     */
    market?: string
}

export interface FuturesApiIndexV1MarketsInstrumentsRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApiindexV1MarketsInstruments
     */
    market?: string
    /**
     * The mapped instrument to retrieve on a specific market.
     * @type string
     * @memberof FuturesApiindexV1MarketsInstruments
     */
    instrument?: string
    /**
     * The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     * @type Array&lt;&#39;ACTIVE&#39; | &#39;IGNORED&#39; | &#39;RETIRED&#39; | &#39;EXPIRED&#39;&gt;
     * @memberof FuturesApiindexV1MarketsInstruments
     */
    instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>
}

export interface FuturesApiIndexV1MarketsInstrumentsUnmappedRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof FuturesApiindexV1MarketsInstrumentsUnmapped
     */
    market?: string
    /**
     * The unmapped instrument to retrieve on a specific market.
     * @type string
     * @memberof FuturesApiindexV1MarketsInstrumentsUnmapped
     */
    instrument?: string
    /**
     * The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     * @type Array&lt;&#39;ACTIVE&#39; | &#39;IGNORED&#39; | &#39;RETIRED&#39; | &#39;EXPIRED&#39;&gt;
     * @memberof FuturesApiindexV1MarketsInstrumentsUnmapped
     */
    instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>
}

export class ObjectFuturesApi {
    private api: ObservableFuturesApi

    public constructor(configuration: Configuration, requestFactory?: FuturesApiRequestFactory, responseProcessor?: FuturesApiResponseProcessor) {
        this.api = new ObservableFuturesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalDays(param: FuturesApiFuturesV1HistoricalDaysRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalDays(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalFundingRateDays(param: FuturesApiFuturesV1HistoricalFundingRateDaysRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalFundingRateDays(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalFundingRateHours(param: FuturesApiFuturesV1HistoricalFundingRateHoursRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalFundingRateHours(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalFundingRateMessages(param: FuturesApiFuturesV1HistoricalFundingRateMessagesRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalFundingRateMessages(param.market, param.instrument, param.afterTs, param.lastCcseq, param.limit, param.mappingPriority, param.responseFormat, param.return404OnEmptyResponse,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalFundingRateMessagesHour(param: FuturesApiFuturesV1HistoricalFundingRateMessagesHourRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalFundingRateMessagesHour(param.market, param.instrument, param.hourTs, param.mappingPriority, param.responseFormat, param.return404OnEmptyResponse,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalFundingRateMinutes(param: FuturesApiFuturesV1HistoricalFundingRateMinutesRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalFundingRateMinutes(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalHours(param: FuturesApiFuturesV1HistoricalHoursRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalHours(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalMinutes(param: FuturesApiFuturesV1HistoricalMinutesRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalMinutes(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalOpenInterestDays(param: FuturesApiFuturesV1HistoricalOpenInterestDaysRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalOpenInterestDays(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalOpenInterestHours(param: FuturesApiFuturesV1HistoricalOpenInterestHoursRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalOpenInterestHours(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalOpenInterestMessages(param: FuturesApiFuturesV1HistoricalOpenInterestMessagesRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalOpenInterestMessages(param.market, param.instrument, param.afterTs, param.lastCcseq, param.limit, param.mappingPriority, param.responseFormat, param.return404OnEmptyResponse,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalOpenInterestMessagesHour(param: FuturesApiFuturesV1HistoricalOpenInterestMessagesHourRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalOpenInterestMessagesHour(param.market, param.instrument, param.hourTs, param.mappingPriority, param.responseFormat, param.return404OnEmptyResponse,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalOpenInterestMinutes(param: FuturesApiFuturesV1HistoricalOpenInterestMinutesRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalOpenInterestMinutes(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalTrades(param: FuturesApiFuturesV1HistoricalTradesRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalTrades(param.market, param.instrument, param.afterTs, param.lastCcseq, param.limit, param.mappingPriority, param.responseFormat, param.return404OnEmptyResponse,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1HistoricalTradesHour(param: FuturesApiFuturesV1HistoricalTradesHourRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1HistoricalTradesHour(param.market, param.instrument, param.hourTs, param.mappingPriority, param.responseFormat, param.return404OnEmptyResponse,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1LatestFundingRateTick(param: FuturesApiFuturesV1LatestFundingRateTickRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1LatestFundingRateTick(param.market, param.instruments, param.groups, param.mappingPriority,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1LatestInstrumentMetadata(param: FuturesApiFuturesV1LatestInstrumentMetadataRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1LatestInstrumentMetadata(param.market, param.instruments, param.groups, param.mappingPriority,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1LatestOpenInterestTick(param: FuturesApiFuturesV1LatestOpenInterestTickRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1LatestOpenInterestTick(param.market, param.instruments, param.groups, param.mappingPriority,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1LatestTick(param: FuturesApiFuturesV1LatestTickRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1LatestTick(param.market, param.instruments, param.groups, param.mappingPriority,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1Markets(param: FuturesApiFuturesV1MarketsRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1Markets(param.market,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1MarketsInstruments(param: FuturesApiFuturesV1MarketsInstrumentsRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1MarketsInstruments(param.market, param.instrument, param.instrumentStatus,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public futuresV1MarketsInstrumentsUnmapped(param: FuturesApiFuturesV1MarketsInstrumentsUnmappedRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.futuresV1MarketsInstrumentsUnmapped(param.market, param.instrument, param.instrumentStatus,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexV1HistoricalDays(param: FuturesApiIndexV1HistoricalDaysRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexV1HistoricalDays(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexV1HistoricalHours(param: FuturesApiIndexV1HistoricalHoursRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexV1HistoricalHours(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexV1HistoricalMessages(param: FuturesApiIndexV1HistoricalMessagesRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexV1HistoricalMessages(param.market, param.instrument, param.afterTs, param.lastCcseq, param.limit, param.mappingPriority, param.responseFormat, param.return404OnEmptyResponse,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexV1HistoricalMessagesHour(param: FuturesApiIndexV1HistoricalMessagesHourRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexV1HistoricalMessagesHour(param.market, param.instrument, param.hourTs, param.mappingPriority, param.responseFormat, param.return404OnEmptyResponse,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexV1HistoricalMinutes(param: FuturesApiIndexV1HistoricalMinutesRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexV1HistoricalMinutes(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexV1LatestInstrumentMetadata(param: FuturesApiIndexV1LatestInstrumentMetadataRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexV1LatestInstrumentMetadata(param.market, param.instruments, param.groups, param.mappingPriority,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexV1LatestTick(param: FuturesApiIndexV1LatestTickRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexV1LatestTick(param.market, param.instruments, param.groups, param.mappingPriority,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexV1Markets(param: FuturesApiIndexV1MarketsRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexV1Markets(param.market,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexV1MarketsInstruments(param: FuturesApiIndexV1MarketsInstrumentsRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexV1MarketsInstruments(param.market, param.instrument, param.instrumentStatus,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexV1MarketsInstrumentsUnmapped(param: FuturesApiIndexV1MarketsInstrumentsUnmappedRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexV1MarketsInstrumentsUnmapped(param.market, param.instrument, param.instrumentStatus,  options).toPromise();
    }

}

import { ObservableNewsApi } from "./ObservableAPI";
import { NewsApiRequestFactory, NewsApiResponseProcessor} from "../apis/NewsApi";

export interface NewsApiNewsV1ArticleListRequest {
    /**
     * Get articles from specific sources; either by their ids or keys
     * @type Array&lt;string&gt;
     * @memberof NewsApinewsV1ArticleList
     */
    sourceIds?: Array<string>
    /**
     * The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
     * @type &#39;EN&#39; | &#39;ES&#39; | &#39;PT&#39; | &#39;&#39;
     * @memberof NewsApinewsV1ArticleList
     */
    lang?: 'EN' | 'ES' | 'PT' | ''
    /**
     * News article categories to return
     * @type Array&lt;&#39;1INCH&#39; | &#39;AAVE&#39; | &#39;ADA&#39; | &#39;ALGO&#39; | &#39;ALTCOIN&#39; | &#39;ASIA&#39; | &#39;ATOM&#39; | &#39;AVAX&#39; | &#39;AXS&#39; | &#39;BAL&#39; | &#39;BAT&#39; | &#39;BCH&#39; | &#39;BLOCKCHAIN&#39; | &#39;BTC&#39; | &#39;BUSINESS&#39; | &#39;COMMODITY&#39; | &#39;COMP&#39; | &#39;CRV&#39; | &#39;DASH&#39; | &#39;DOGE&#39; | &#39;DOT&#39; | &#39;ENJ&#39; | &#39;ETC&#39; | &#39;ETH&#39; | &#39;EXCHANGE&#39; | &#39;FIAT&#39; | &#39;FIL&#39; | &#39;FTM&#39; | &#39;ICO&#39; | &#39;KNC&#39; | &#39;LINK&#39; | &#39;LRC&#39; | &#39;LTC&#39; | &#39;LUNA&#39; | &#39;LUNC&#39; | &#39;MANA&#39; | &#39;MARKET&#39; | &#39;MATIC&#39; | &#39;MINING&#39; | &#39;MKR&#39; | &#39;REGULATION&#39; | &#39;REN&#39; | &#39;SAND&#39; | &#39;SHIB&#39; | &#39;SNX&#39; | &#39;SOL&#39; | &#39;SPONSORED&#39; | &#39;SUSHI&#39; | &#39;TECHNOLOGY&#39; | &#39;TRADING&#39; | &#39;TRX&#39; | &#39;UMA&#39; | &#39;UNI&#39; | &#39;USDT&#39; | &#39;WALLET&#39; | &#39;XLM&#39; | &#39;XMR&#39; | &#39;XRP&#39; | &#39;XTZ&#39; | &#39;YFI&#39; | &#39;ZEC&#39; | &#39;ZRX&#39; | &#39;&#39;&gt;
     * @memberof NewsApinewsV1ArticleList
     */
    categories?: Array<'1INCH' | 'AAVE' | 'ADA' | 'ALGO' | 'ALTCOIN' | 'ASIA' | 'ATOM' | 'AVAX' | 'AXS' | 'BAL' | 'BAT' | 'BCH' | 'BLOCKCHAIN' | 'BTC' | 'BUSINESS' | 'COMMODITY' | 'COMP' | 'CRV' | 'DASH' | 'DOGE' | 'DOT' | 'ENJ' | 'ETC' | 'ETH' | 'EXCHANGE' | 'FIAT' | 'FIL' | 'FTM' | 'ICO' | 'KNC' | 'LINK' | 'LRC' | 'LTC' | 'LUNA' | 'LUNC' | 'MANA' | 'MARKET' | 'MATIC' | 'MINING' | 'MKR' | 'REGULATION' | 'REN' | 'SAND' | 'SHIB' | 'SNX' | 'SOL' | 'SPONSORED' | 'SUSHI' | 'TECHNOLOGY' | 'TRADING' | 'TRX' | 'UMA' | 'UNI' | 'USDT' | 'WALLET' | 'XLM' | 'XMR' | 'XRP' | 'XTZ' | 'YFI' | 'ZEC' | 'ZRX' | ''>
    /**
     * News article categories to exclude from results
     * @type Array&lt;&#39;1INCH&#39; | &#39;AAVE&#39; | &#39;ADA&#39; | &#39;ALGO&#39; | &#39;ALTCOIN&#39; | &#39;ASIA&#39; | &#39;ATOM&#39; | &#39;AVAX&#39; | &#39;AXS&#39; | &#39;BAL&#39; | &#39;BAT&#39; | &#39;BCH&#39; | &#39;BLOCKCHAIN&#39; | &#39;BTC&#39; | &#39;BUSINESS&#39; | &#39;COMMODITY&#39; | &#39;COMP&#39; | &#39;CRV&#39; | &#39;DASH&#39; | &#39;DOGE&#39; | &#39;DOT&#39; | &#39;ENJ&#39; | &#39;ETC&#39; | &#39;ETH&#39; | &#39;EXCHANGE&#39; | &#39;FIAT&#39; | &#39;FIL&#39; | &#39;FTM&#39; | &#39;ICO&#39; | &#39;KNC&#39; | &#39;LINK&#39; | &#39;LRC&#39; | &#39;LTC&#39; | &#39;LUNA&#39; | &#39;LUNC&#39; | &#39;MANA&#39; | &#39;MARKET&#39; | &#39;MATIC&#39; | &#39;MINING&#39; | &#39;MKR&#39; | &#39;REGULATION&#39; | &#39;REN&#39; | &#39;SAND&#39; | &#39;SHIB&#39; | &#39;SNX&#39; | &#39;SOL&#39; | &#39;SPONSORED&#39; | &#39;SUSHI&#39; | &#39;TECHNOLOGY&#39; | &#39;TRADING&#39; | &#39;TRX&#39; | &#39;UMA&#39; | &#39;UNI&#39; | &#39;USDT&#39; | &#39;WALLET&#39; | &#39;XLM&#39; | &#39;XMR&#39; | &#39;XRP&#39; | &#39;XTZ&#39; | &#39;YFI&#39; | &#39;ZEC&#39; | &#39;ZRX&#39; | &#39;&#39;&gt;
     * @memberof NewsApinewsV1ArticleList
     */
    excludeCategories?: Array<'1INCH' | 'AAVE' | 'ADA' | 'ALGO' | 'ALTCOIN' | 'ASIA' | 'ATOM' | 'AVAX' | 'AXS' | 'BAL' | 'BAT' | 'BCH' | 'BLOCKCHAIN' | 'BTC' | 'BUSINESS' | 'COMMODITY' | 'COMP' | 'CRV' | 'DASH' | 'DOGE' | 'DOT' | 'ENJ' | 'ETC' | 'ETH' | 'EXCHANGE' | 'FIAT' | 'FIL' | 'FTM' | 'ICO' | 'KNC' | 'LINK' | 'LRC' | 'LTC' | 'LUNA' | 'LUNC' | 'MANA' | 'MARKET' | 'MATIC' | 'MINING' | 'MKR' | 'REGULATION' | 'REN' | 'SAND' | 'SHIB' | 'SNX' | 'SOL' | 'SPONSORED' | 'SUSHI' | 'TECHNOLOGY' | 'TRADING' | 'TRX' | 'UMA' | 'UNI' | 'USDT' | 'WALLET' | 'XLM' | 'XMR' | 'XRP' | 'XTZ' | 'YFI' | 'ZEC' | 'ZRX' | ''>
    /**
     * Articles published on or before this timestamp
     * @type number
     * @memberof NewsApinewsV1ArticleList
     */
    toTs?: number
}

export interface NewsApiNewsV1CategoryListRequest {
}

export interface NewsApiNewsV1SourceListRequest {
    /**
     * The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
     * @type &#39;EN&#39; | &#39;ES&#39; | &#39;PT&#39; | &#39;&#39;
     * @memberof NewsApinewsV1SourceList
     */
    lang?: 'EN' | 'ES' | 'PT' | ''
    /**
     * RSS, API, TWITTER
     * @type &#39;RSS&#39; | &#39;API&#39; | &#39;TWITTER&#39; | &#39;&#39;
     * @memberof NewsApinewsV1SourceList
     */
    type?: 'RSS' | 'API' | 'TWITTER' | ''
    /**
     * The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
     * @type &#39;ACTIVE&#39; | &#39;INACTIVE&#39; | &#39;&#39;
     * @memberof NewsApinewsV1SourceList
     */
    status?: 'ACTIVE' | 'INACTIVE' | ''
}

export class ObjectNewsApi {
    private api: ObservableNewsApi

    public constructor(configuration: Configuration, requestFactory?: NewsApiRequestFactory, responseProcessor?: NewsApiResponseProcessor) {
        this.api = new ObservableNewsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param param the request object
     */
    public newsV1ArticleList(param: NewsApiNewsV1ArticleListRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.newsV1ArticleList(param.sourceIds, param.lang, param.categories, param.excludeCategories, param.toTs,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public newsV1CategoryList(param: NewsApiNewsV1CategoryListRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.newsV1CategoryList( options).toPromise();
    }

    /**
     * @param param the request object
     */
    public newsV1SourceList(param: NewsApiNewsV1SourceListRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.newsV1SourceList(param.lang, param.type, param.status,  options).toPromise();
    }

}

import { ObservableOverviewApi } from "./ObservableAPI";
import { OverviewApiRequestFactory, OverviewApiResponseProcessor} from "../apis/OverviewApi";

export interface OverviewApiOverviewV1HistoricalMarketcapAllAssetsDaysRequest {
    /**
     * When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @type Array&lt;string&gt;
     * @memberof OverviewApioverviewV1HistoricalMarketcapAllAssetsDays
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof OverviewApioverviewV1HistoricalMarketcapAllAssetsDays
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof OverviewApioverviewV1HistoricalMarketcapAllAssetsDays
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof OverviewApioverviewV1HistoricalMarketcapAllAssetsDays
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof OverviewApioverviewV1HistoricalMarketcapAllAssetsDays
     */
    fill?: boolean
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof OverviewApioverviewV1HistoricalMarketcapAllAssetsDays
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface OverviewApiOverviewV1HistoricalMarketcapAllAssetsHoursRequest {
    /**
     * When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @type Array&lt;string&gt;
     * @memberof OverviewApioverviewV1HistoricalMarketcapAllAssetsHours
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof OverviewApioverviewV1HistoricalMarketcapAllAssetsHours
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof OverviewApioverviewV1HistoricalMarketcapAllAssetsHours
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof OverviewApioverviewV1HistoricalMarketcapAllAssetsHours
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof OverviewApioverviewV1HistoricalMarketcapAllAssetsHours
     */
    fill?: boolean
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof OverviewApioverviewV1HistoricalMarketcapAllAssetsHours
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface OverviewApiOverviewV1HistoricalMarketcapFtwAssetsDaysRequest {
    /**
     * When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @type Array&lt;string&gt;
     * @memberof OverviewApioverviewV1HistoricalMarketcapFtwAssetsDays
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof OverviewApioverviewV1HistoricalMarketcapFtwAssetsDays
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof OverviewApioverviewV1HistoricalMarketcapFtwAssetsDays
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof OverviewApioverviewV1HistoricalMarketcapFtwAssetsDays
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof OverviewApioverviewV1HistoricalMarketcapFtwAssetsDays
     */
    fill?: boolean
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof OverviewApioverviewV1HistoricalMarketcapFtwAssetsDays
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface OverviewApiOverviewV1HistoricalMarketcapFtwAssetsHoursRequest {
    /**
     * When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
     * @type Array&lt;string&gt;
     * @memberof OverviewApioverviewV1HistoricalMarketcapFtwAssetsHours
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof OverviewApioverviewV1HistoricalMarketcapFtwAssetsHours
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof OverviewApioverviewV1HistoricalMarketcapFtwAssetsHours
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof OverviewApioverviewV1HistoricalMarketcapFtwAssetsHours
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof OverviewApioverviewV1HistoricalMarketcapFtwAssetsHours
     */
    fill?: boolean
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof OverviewApioverviewV1HistoricalMarketcapFtwAssetsHours
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface OverviewApiOverviewV1LatestMarketcapAllTickRequest {
    /**
     * When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
     * @type Array&lt;string&gt;
     * @memberof OverviewApioverviewV1LatestMarketcapAllTick
     */
    groups?: Array<string>
}

export interface OverviewApiOverviewV1LatestMarketcapFtwTickRequest {
    /**
     * When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
     * @type Array&lt;string&gt;
     * @memberof OverviewApioverviewV1LatestMarketcapFtwTick
     */
    groups?: Array<string>
}

export class ObjectOverviewApi {
    private api: ObservableOverviewApi

    public constructor(configuration: Configuration, requestFactory?: OverviewApiRequestFactory, responseProcessor?: OverviewApiResponseProcessor) {
        this.api = new ObservableOverviewApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param param the request object
     */
    public overviewV1HistoricalMarketcapAllAssetsDays(param: OverviewApiOverviewV1HistoricalMarketcapAllAssetsDaysRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.overviewV1HistoricalMarketcapAllAssetsDays(param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public overviewV1HistoricalMarketcapAllAssetsHours(param: OverviewApiOverviewV1HistoricalMarketcapAllAssetsHoursRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.overviewV1HistoricalMarketcapAllAssetsHours(param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public overviewV1HistoricalMarketcapFtwAssetsDays(param: OverviewApiOverviewV1HistoricalMarketcapFtwAssetsDaysRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.overviewV1HistoricalMarketcapFtwAssetsDays(param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public overviewV1HistoricalMarketcapFtwAssetsHours(param: OverviewApiOverviewV1HistoricalMarketcapFtwAssetsHoursRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.overviewV1HistoricalMarketcapFtwAssetsHours(param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public overviewV1LatestMarketcapAllTick(param: OverviewApiOverviewV1LatestMarketcapAllTickRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.overviewV1LatestMarketcapAllTick(param.groups,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public overviewV1LatestMarketcapFtwTick(param: OverviewApiOverviewV1LatestMarketcapFtwTickRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.overviewV1LatestMarketcapFtwTick(param.groups,  options).toPromise();
    }

}

import { ObservableReferenceRatesApi } from "./ObservableAPI";
import { ReferenceRatesApiRequestFactory, ReferenceRatesApiResponseProcessor} from "../apis/ReferenceRatesApi";

export interface ReferenceRatesApiIndexCcV1HistoricalDaysRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof ReferenceRatesApiindexCcV1HistoricalDays
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof ReferenceRatesApiindexCcV1HistoricalDays
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @type Array&lt;string&gt;
     * @memberof ReferenceRatesApiindexCcV1HistoricalDays
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof ReferenceRatesApiindexCcV1HistoricalDays
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof ReferenceRatesApiindexCcV1HistoricalDays
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof ReferenceRatesApiindexCcV1HistoricalDays
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof ReferenceRatesApiindexCcV1HistoricalDays
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof ReferenceRatesApiindexCcV1HistoricalDays
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof ReferenceRatesApiindexCcV1HistoricalDays
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface ReferenceRatesApiIndexCcV1HistoricalHoursRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof ReferenceRatesApiindexCcV1HistoricalHours
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof ReferenceRatesApiindexCcV1HistoricalHours
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @type Array&lt;string&gt;
     * @memberof ReferenceRatesApiindexCcV1HistoricalHours
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof ReferenceRatesApiindexCcV1HistoricalHours
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof ReferenceRatesApiindexCcV1HistoricalHours
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof ReferenceRatesApiindexCcV1HistoricalHours
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof ReferenceRatesApiindexCcV1HistoricalHours
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof ReferenceRatesApiindexCcV1HistoricalHours
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof ReferenceRatesApiindexCcV1HistoricalHours
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface ReferenceRatesApiIndexCcV1HistoricalMessagesRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessages
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessages
     */
    instrument: string
    /**
     * Unix timestamp in seconds of the earliest index message in the response
     * @type number
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessages
     */
    afterTs?: number
    /**
     * The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
     * @type number
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessages
     */
    lastCcseq?: number
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessages
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The maximum number of index messages to return
     * @type number
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessages
     */
    limit?: number
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessages
     */
    responseFormat?: 'JSON' | 'CSV'
    /**
     * If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     * @type boolean
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessages
     */
    return404OnEmptyResponse?: boolean
}

export interface ReferenceRatesApiIndexCcV1HistoricalMessagesHourRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessagesHour
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessagesHour
     */
    instrument: string
    /**
     * Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
     * @type number
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessagesHour
     */
    hourTs?: number
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessagesHour
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessagesHour
     */
    responseFormat?: 'JSON' | 'CSV'
    /**
     * If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     * @type boolean
     * @memberof ReferenceRatesApiindexCcV1HistoricalMessagesHour
     */
    return404OnEmptyResponse?: boolean
}

export interface ReferenceRatesApiIndexCcV1HistoricalMinutesRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof ReferenceRatesApiindexCcV1HistoricalMinutes
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof ReferenceRatesApiindexCcV1HistoricalMinutes
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
     * @type Array&lt;string&gt;
     * @memberof ReferenceRatesApiindexCcV1HistoricalMinutes
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof ReferenceRatesApiindexCcV1HistoricalMinutes
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof ReferenceRatesApiindexCcV1HistoricalMinutes
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof ReferenceRatesApiindexCcV1HistoricalMinutes
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof ReferenceRatesApiindexCcV1HistoricalMinutes
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof ReferenceRatesApiindexCcV1HistoricalMinutes
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof ReferenceRatesApiindexCcV1HistoricalMinutes
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface ReferenceRatesApiIndexCcV1LatestInstrumentMetadataRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof ReferenceRatesApiindexCcV1LatestInstrumentMetadata
     */
    market: string
    /**
     * A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @type Array&lt;string&gt;
     * @memberof ReferenceRatesApiindexCcV1LatestInstrumentMetadata
     */
    instruments: Array<string>
    /**
     * When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @type Array&lt;string&gt;
     * @memberof ReferenceRatesApiindexCcV1LatestInstrumentMetadata
     */
    groups?: Array<string>
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof ReferenceRatesApiindexCcV1LatestInstrumentMetadata
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
}

export interface ReferenceRatesApiIndexCcV1LatestTickRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof ReferenceRatesApiindexCcV1LatestTick
     */
    market: string
    /**
     * A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @type Array&lt;string&gt;
     * @memberof ReferenceRatesApiindexCcV1LatestTick
     */
    instruments: Array<string>
    /**
     * When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @type Array&lt;string&gt;
     * @memberof ReferenceRatesApiindexCcV1LatestTick
     */
    groups?: Array<string>
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof ReferenceRatesApiindexCcV1LatestTick
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
}

export interface ReferenceRatesApiIndexCcV1MarketsRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof ReferenceRatesApiindexCcV1Markets
     */
    market?: string
}

export interface ReferenceRatesApiIndexCcV1MarketsInstrumentsRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof ReferenceRatesApiindexCcV1MarketsInstruments
     */
    market?: string
    /**
     * The mapped instrument to retrieve on a specific market.
     * @type string
     * @memberof ReferenceRatesApiindexCcV1MarketsInstruments
     */
    instrument?: string
    /**
     * The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     * @type Array&lt;&#39;ACTIVE&#39; | &#39;IGNORED&#39; | &#39;RETIRED&#39; | &#39;EXPIRED&#39;&gt;
     * @memberof ReferenceRatesApiindexCcV1MarketsInstruments
     */
    instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>
}

export interface ReferenceRatesApiIndexCcV1MarketsInstrumentsUnmappedRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof ReferenceRatesApiindexCcV1MarketsInstrumentsUnmapped
     */
    market?: string
    /**
     * The unmapped instrument to retrieve on a specific market.
     * @type string
     * @memberof ReferenceRatesApiindexCcV1MarketsInstrumentsUnmapped
     */
    instrument?: string
    /**
     * The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     * @type Array&lt;&#39;ACTIVE&#39; | &#39;IGNORED&#39; | &#39;RETIRED&#39; | &#39;EXPIRED&#39;&gt;
     * @memberof ReferenceRatesApiindexCcV1MarketsInstrumentsUnmapped
     */
    instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>
}

export class ObjectReferenceRatesApi {
    private api: ObservableReferenceRatesApi

    public constructor(configuration: Configuration, requestFactory?: ReferenceRatesApiRequestFactory, responseProcessor?: ReferenceRatesApiResponseProcessor) {
        this.api = new ObservableReferenceRatesApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param param the request object
     */
    public indexCcV1HistoricalDays(param: ReferenceRatesApiIndexCcV1HistoricalDaysRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexCcV1HistoricalDays(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexCcV1HistoricalHours(param: ReferenceRatesApiIndexCcV1HistoricalHoursRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexCcV1HistoricalHours(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexCcV1HistoricalMessages(param: ReferenceRatesApiIndexCcV1HistoricalMessagesRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexCcV1HistoricalMessages(param.market, param.instrument, param.afterTs, param.lastCcseq, param.mappingPriority, param.limit, param.responseFormat, param.return404OnEmptyResponse,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexCcV1HistoricalMessagesHour(param: ReferenceRatesApiIndexCcV1HistoricalMessagesHourRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexCcV1HistoricalMessagesHour(param.market, param.instrument, param.hourTs, param.mappingPriority, param.responseFormat, param.return404OnEmptyResponse,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexCcV1HistoricalMinutes(param: ReferenceRatesApiIndexCcV1HistoricalMinutesRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexCcV1HistoricalMinutes(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexCcV1LatestInstrumentMetadata(param: ReferenceRatesApiIndexCcV1LatestInstrumentMetadataRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexCcV1LatestInstrumentMetadata(param.market, param.instruments, param.groups, param.mappingPriority,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexCcV1LatestTick(param: ReferenceRatesApiIndexCcV1LatestTickRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexCcV1LatestTick(param.market, param.instruments, param.groups, param.mappingPriority,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexCcV1Markets(param: ReferenceRatesApiIndexCcV1MarketsRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexCcV1Markets(param.market,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexCcV1MarketsInstruments(param: ReferenceRatesApiIndexCcV1MarketsInstrumentsRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexCcV1MarketsInstruments(param.market, param.instrument, param.instrumentStatus,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public indexCcV1MarketsInstrumentsUnmapped(param: ReferenceRatesApiIndexCcV1MarketsInstrumentsUnmappedRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.indexCcV1MarketsInstrumentsUnmapped(param.market, param.instrument, param.instrumentStatus,  options).toPromise();
    }

}

import { ObservableSpotApi } from "./ObservableAPI";
import { SpotApiRequestFactory, SpotApiResponseProcessor} from "../apis/SpotApi";

export interface SpotApiSpotV1HistoricalDaysRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof SpotApispotV1HistoricalDays
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof SpotApispotV1HistoricalDays
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
     * @type Array&lt;string&gt;
     * @memberof SpotApispotV1HistoricalDays
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof SpotApispotV1HistoricalDays
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof SpotApispotV1HistoricalDays
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof SpotApispotV1HistoricalDays
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof SpotApispotV1HistoricalDays
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof SpotApispotV1HistoricalDays
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof SpotApispotV1HistoricalDays
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface SpotApiSpotV1HistoricalHoursRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof SpotApispotV1HistoricalHours
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof SpotApispotV1HistoricalHours
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
     * @type Array&lt;string&gt;
     * @memberof SpotApispotV1HistoricalHours
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof SpotApispotV1HistoricalHours
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof SpotApispotV1HistoricalHours
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof SpotApispotV1HistoricalHours
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof SpotApispotV1HistoricalHours
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof SpotApispotV1HistoricalHours
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof SpotApispotV1HistoricalHours
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface SpotApiSpotV1HistoricalMinutesRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof SpotApispotV1HistoricalMinutes
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof SpotApispotV1HistoricalMinutes
     */
    instrument: string
    /**
     * When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME
     * @type Array&lt;string&gt;
     * @memberof SpotApispotV1HistoricalMinutes
     */
    groups?: Array<string>
    /**
     * The number of data points to return
     * @type number
     * @memberof SpotApispotV1HistoricalMinutes
     */
    limit?: number
    /**
     * Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit&#x3D;2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &amp;limit&#x3D;2000&amp;to_ts&#x3D;{the earliest unix timestamp received}
     * @type number
     * @memberof SpotApispotV1HistoricalMinutes
     */
    toTs?: number
    /**
     * The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
     * @type number
     * @memberof SpotApispotV1HistoricalMinutes
     */
    aggregate?: number
    /**
     * Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
     * @type boolean
     * @memberof SpotApispotV1HistoricalMinutes
     */
    fill?: boolean
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof SpotApispotV1HistoricalMinutes
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof SpotApispotV1HistoricalMinutes
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface SpotApiSpotV1HistoricalOrderbookL2SnapshotMinuteRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof SpotApispotV1HistoricalOrderbookL2SnapshotMinute
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof SpotApispotV1HistoricalOrderbookL2SnapshotMinute
     */
    instrument: string
    /**
     * Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute.
     * @type number
     * @memberof SpotApispotV1HistoricalOrderbookL2SnapshotMinute
     */
    minuteTs: number
    /**
     * The number of top bids and asks to return.
     * @type number
     * @memberof SpotApispotV1HistoricalOrderbookL2SnapshotMinute
     */
    depth?: number
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof SpotApispotV1HistoricalOrderbookL2SnapshotMinute
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof SpotApispotV1HistoricalOrderbookL2SnapshotMinute
     */
    responseFormat?: 'JSON' | 'CSV'
}

export interface SpotApiSpotV1HistoricalTradesRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof SpotApispotV1HistoricalTrades
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof SpotApispotV1HistoricalTrades
     */
    instrument: string
    /**
     * Unix timestamp in seconds of the earliest trade in the response.
     * @type number
     * @memberof SpotApispotV1HistoricalTrades
     */
    afterTs?: number
    /**
     * The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
     * @type number
     * @memberof SpotApispotV1HistoricalTrades
     */
    lastCcseq?: number
    /**
     * The maximum number of trades to return
     * @type number
     * @memberof SpotApispotV1HistoricalTrades
     */
    limit?: number
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof SpotApispotV1HistoricalTrades
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof SpotApispotV1HistoricalTrades
     */
    responseFormat?: 'JSON' | 'CSV'
    /**
     * If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     * @type boolean
     * @memberof SpotApispotV1HistoricalTrades
     */
    return404OnEmptyResponse?: boolean
}

export interface SpotApiSpotV1HistoricalTradesHourRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof SpotApispotV1HistoricalTradesHour
     */
    market: string
    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @type string
     * @memberof SpotApispotV1HistoricalTradesHour
     */
    instrument: string
    /**
     * Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour.
     * @type number
     * @memberof SpotApispotV1HistoricalTradesHour
     */
    hourTs?: number
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof SpotApispotV1HistoricalTradesHour
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @type &#39;JSON&#39; | &#39;CSV&#39;
     * @memberof SpotApispotV1HistoricalTradesHour
     */
    responseFormat?: 'JSON' | 'CSV'
    /**
     * If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     * @type boolean
     * @memberof SpotApispotV1HistoricalTradesHour
     */
    return404OnEmptyResponse?: boolean
}

export interface SpotApiSpotV1LatestInstrumentMetadataRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof SpotApispotV1LatestInstrumentMetadata
     */
    market: string
    /**
     * A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @type Array&lt;string&gt;
     * @memberof SpotApispotV1LatestInstrumentMetadata
     */
    instruments: Array<string>
    /**
     * When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
     * @type Array&lt;string&gt;
     * @memberof SpotApispotV1LatestInstrumentMetadata
     */
    groups?: Array<string>
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof SpotApispotV1LatestInstrumentMetadata
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
}

export interface SpotApiSpotV1LatestTickRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof SpotApispotV1LatestTick
     */
    market: string
    /**
     * A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first.
     * @type Array&lt;string&gt;
     * @memberof SpotApispotV1LatestTick
     */
    instruments: Array<string>
    /**
     * When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
     * @type Array&lt;string&gt;
     * @memberof SpotApispotV1LatestTick
     */
    groups?: Array<string>
    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @type &#39;CHECK_MAPPED_FIRST&#39; | &#39;CHECK_UNMAPPED_FIRST&#39;
     * @memberof SpotApispotV1LatestTick
     */
    mappingPriority?: 'CHECK_MAPPED_FIRST' | 'CHECK_UNMAPPED_FIRST'
}

export interface SpotApiSpotV1MarketsRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof SpotApispotV1Markets
     */
    market?: string
}

export interface SpotApiSpotV1MarketsInstrumentsRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof SpotApispotV1MarketsInstruments
     */
    market?: string
    /**
     * The mapped instrument to retrieve on a specific market.
     * @type string
     * @memberof SpotApispotV1MarketsInstruments
     */
    instrument?: string
    /**
     * The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     * @type Array&lt;&#39;ACTIVE&#39; | &#39;IGNORED&#39; | &#39;RETIRED&#39; | &#39;EXPIRED&#39;&gt;
     * @memberof SpotApispotV1MarketsInstruments
     */
    instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>
}

export interface SpotApiSpotV1MarketsInstrumentsUnmappedRequest {
    /**
     * The exchange to obtain data from
     * @type string
     * @memberof SpotApispotV1MarketsInstrumentsUnmapped
     */
    market?: string
    /**
     * The unmapped instrument to retrieve on a specific market.
     * @type string
     * @memberof SpotApispotV1MarketsInstrumentsUnmapped
     */
    instrument?: string
    /**
     * The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     * @type Array&lt;&#39;ACTIVE&#39; | &#39;IGNORED&#39; | &#39;RETIRED&#39; | &#39;EXPIRED&#39;&gt;
     * @memberof SpotApispotV1MarketsInstrumentsUnmapped
     */
    instrumentStatus?: Array<'ACTIVE' | 'IGNORED' | 'RETIRED' | 'EXPIRED'>
}

export class ObjectSpotApi {
    private api: ObservableSpotApi

    public constructor(configuration: Configuration, requestFactory?: SpotApiRequestFactory, responseProcessor?: SpotApiResponseProcessor) {
        this.api = new ObservableSpotApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param param the request object
     */
    public spotV1HistoricalDays(param: SpotApiSpotV1HistoricalDaysRequest, options?: Configuration): Promise<SPOTINSTRUMENTHISTODATARESPONSE> {
        return this.api.spotV1HistoricalDays(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public spotV1HistoricalHours(param: SpotApiSpotV1HistoricalHoursRequest, options?: Configuration): Promise<SPOTINSTRUMENTHISTODATARESPONSE> {
        return this.api.spotV1HistoricalHours(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public spotV1HistoricalMinutes(param: SpotApiSpotV1HistoricalMinutesRequest, options?: Configuration): Promise<SPOTINSTRUMENTHISTODATARESPONSE> {
        return this.api.spotV1HistoricalMinutes(param.market, param.instrument, param.groups, param.limit, param.toTs, param.aggregate, param.fill, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public spotV1HistoricalOrderbookL2SnapshotMinute(param: SpotApiSpotV1HistoricalOrderbookL2SnapshotMinuteRequest, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.spotV1HistoricalOrderbookL2SnapshotMinute(param.market, param.instrument, param.minuteTs, param.depth, param.mappingPriority, param.responseFormat,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public spotV1HistoricalTrades(param: SpotApiSpotV1HistoricalTradesRequest, options?: Configuration): Promise<SPOTINSTRUMENTTRADERESPONSE> {
        return this.api.spotV1HistoricalTrades(param.market, param.instrument, param.afterTs, param.lastCcseq, param.limit, param.mappingPriority, param.responseFormat, param.return404OnEmptyResponse,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public spotV1HistoricalTradesHour(param: SpotApiSpotV1HistoricalTradesHourRequest, options?: Configuration): Promise<SPOTINSTRUMENTTRADERESPONSE> {
        return this.api.spotV1HistoricalTradesHour(param.market, param.instrument, param.hourTs, param.mappingPriority, param.responseFormat, param.return404OnEmptyResponse,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public spotV1LatestInstrumentMetadata(param: SpotApiSpotV1LatestInstrumentMetadataRequest, options?: Configuration): Promise<SPOTINSTRUMENTMETADATARESPONSE> {
        return this.api.spotV1LatestInstrumentMetadata(param.market, param.instruments, param.groups, param.mappingPriority,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public spotV1LatestTick(param: SpotApiSpotV1LatestTickRequest, options?: Configuration): Promise<SPOTINSTRUMENTMARKETDATARESPONSE> {
        return this.api.spotV1LatestTick(param.market, param.instruments, param.groups, param.mappingPriority,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public spotV1Markets(param: SpotApiSpotV1MarketsRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.spotV1Markets(param.market,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public spotV1MarketsInstruments(param: SpotApiSpotV1MarketsInstrumentsRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.spotV1MarketsInstruments(param.market, param.instrument, param.instrumentStatus,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public spotV1MarketsInstrumentsUnmapped(param: SpotApiSpotV1MarketsInstrumentsUnmappedRequest = {}, options?: Configuration): Promise<GENERICRESPONSE> {
        return this.api.spotV1MarketsInstrumentsUnmapped(param.market, param.instrument, param.instrumentStatus,  options).toPromise();
    }

}
