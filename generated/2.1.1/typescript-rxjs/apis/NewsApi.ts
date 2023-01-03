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

export interface NewsV1ArticleListRequest {
    sourceIds?: Array<string>;
    lang?: NewsV1ArticleListLangEnum;
    categories?: Array<NewsV1ArticleListCategoriesEnum>;
    excludeCategories?: Array<NewsV1ArticleListExcludeCategoriesEnum>;
    toTs?: number;
}

export interface NewsV1SourceListRequest {
    lang?: NewsV1SourceListLangEnum;
    type?: NewsV1SourceListTypeEnum;
    status?: NewsV1SourceListStatusEnum;
}

/**
 * no description
 */
export class NewsApi extends BaseAPI {

    /**
     */
    newsV1ArticleList({ sourceIds, lang, categories, excludeCategories, toTs }: NewsV1ArticleListRequest): Observable<GENERICRESPONSE>
    newsV1ArticleList({ sourceIds, lang, categories, excludeCategories, toTs }: NewsV1ArticleListRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    newsV1ArticleList({ sourceIds, lang, categories, excludeCategories, toTs }: NewsV1ArticleListRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (sourceIds != null) { query['source_ids'] = sourceIds.join(COLLECTION_FORMATS['csv']); }
        if (lang != null) { query['lang'] = lang; }
        if (categories != null) { query['categories'] = categories.join(COLLECTION_FORMATS['csv']); }
        if (excludeCategories != null) { query['exclude_categories'] = excludeCategories.join(COLLECTION_FORMATS['csv']); }
        if (toTs != null) { query['to_ts'] = toTs; }

        return this.request<GENERICRESPONSE>({
            url: '/news/v1/article/list',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

    /**
     */
    newsV1CategoryList(): Observable<GENERICRESPONSE>
    newsV1CategoryList(opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    newsV1CategoryList(opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {
        return this.request<GENERICRESPONSE>({
            url: '/news/v1/category/list',
            method: 'GET',
        }, opts?.responseOpts);
    };

    /**
     */
    newsV1SourceList({ lang, type, status }: NewsV1SourceListRequest): Observable<GENERICRESPONSE>
    newsV1SourceList({ lang, type, status }: NewsV1SourceListRequest, opts?: OperationOpts): Observable<AjaxResponse<GENERICRESPONSE>>
    newsV1SourceList({ lang, type, status }: NewsV1SourceListRequest, opts?: OperationOpts): Observable<GENERICRESPONSE | AjaxResponse<GENERICRESPONSE>> {

        const query: HttpQuery = {};

        if (lang != null) { query['lang'] = lang; }
        if (type != null) { query['type'] = type; }
        if (status != null) { query['status'] = status; }

        return this.request<GENERICRESPONSE>({
            url: '/news/v1/source/list',
            method: 'GET',
            query,
        }, opts?.responseOpts);
    };

}

/**
 * @export
 * @enum {string}
 */
export enum NewsV1ArticleListLangEnum {
    En = 'EN',
    Es = 'ES',
    Pt = 'PT',
    Empty = ''
}
/**
 * @export
 * @enum {string}
 */
export enum NewsV1ArticleListCategoriesEnum {
    _1Inch = '1INCH',
    Aave = 'AAVE',
    Ada = 'ADA',
    Algo = 'ALGO',
    Altcoin = 'ALTCOIN',
    Asia = 'ASIA',
    Atom = 'ATOM',
    Avax = 'AVAX',
    Axs = 'AXS',
    Bal = 'BAL',
    Bat = 'BAT',
    Bch = 'BCH',
    Blockchain = 'BLOCKCHAIN',
    Btc = 'BTC',
    Business = 'BUSINESS',
    Commodity = 'COMMODITY',
    Comp = 'COMP',
    Crv = 'CRV',
    Dash = 'DASH',
    Doge = 'DOGE',
    Dot = 'DOT',
    Enj = 'ENJ',
    Etc = 'ETC',
    Eth = 'ETH',
    Exchange = 'EXCHANGE',
    Fiat = 'FIAT',
    Fil = 'FIL',
    Ftm = 'FTM',
    Ico = 'ICO',
    Knc = 'KNC',
    Link = 'LINK',
    Lrc = 'LRC',
    Ltc = 'LTC',
    Luna = 'LUNA',
    Lunc = 'LUNC',
    Mana = 'MANA',
    Market = 'MARKET',
    Matic = 'MATIC',
    Mining = 'MINING',
    Mkr = 'MKR',
    Regulation = 'REGULATION',
    Ren = 'REN',
    Sand = 'SAND',
    Shib = 'SHIB',
    Snx = 'SNX',
    Sol = 'SOL',
    Sponsored = 'SPONSORED',
    Sushi = 'SUSHI',
    Technology = 'TECHNOLOGY',
    Trading = 'TRADING',
    Trx = 'TRX',
    Uma = 'UMA',
    Uni = 'UNI',
    Usdt = 'USDT',
    Wallet = 'WALLET',
    Xlm = 'XLM',
    Xmr = 'XMR',
    Xrp = 'XRP',
    Xtz = 'XTZ',
    Yfi = 'YFI',
    Zec = 'ZEC',
    Zrx = 'ZRX',
    Empty = ''
}
/**
 * @export
 * @enum {string}
 */
export enum NewsV1ArticleListExcludeCategoriesEnum {
    _1Inch = '1INCH',
    Aave = 'AAVE',
    Ada = 'ADA',
    Algo = 'ALGO',
    Altcoin = 'ALTCOIN',
    Asia = 'ASIA',
    Atom = 'ATOM',
    Avax = 'AVAX',
    Axs = 'AXS',
    Bal = 'BAL',
    Bat = 'BAT',
    Bch = 'BCH',
    Blockchain = 'BLOCKCHAIN',
    Btc = 'BTC',
    Business = 'BUSINESS',
    Commodity = 'COMMODITY',
    Comp = 'COMP',
    Crv = 'CRV',
    Dash = 'DASH',
    Doge = 'DOGE',
    Dot = 'DOT',
    Enj = 'ENJ',
    Etc = 'ETC',
    Eth = 'ETH',
    Exchange = 'EXCHANGE',
    Fiat = 'FIAT',
    Fil = 'FIL',
    Ftm = 'FTM',
    Ico = 'ICO',
    Knc = 'KNC',
    Link = 'LINK',
    Lrc = 'LRC',
    Ltc = 'LTC',
    Luna = 'LUNA',
    Lunc = 'LUNC',
    Mana = 'MANA',
    Market = 'MARKET',
    Matic = 'MATIC',
    Mining = 'MINING',
    Mkr = 'MKR',
    Regulation = 'REGULATION',
    Ren = 'REN',
    Sand = 'SAND',
    Shib = 'SHIB',
    Snx = 'SNX',
    Sol = 'SOL',
    Sponsored = 'SPONSORED',
    Sushi = 'SUSHI',
    Technology = 'TECHNOLOGY',
    Trading = 'TRADING',
    Trx = 'TRX',
    Uma = 'UMA',
    Uni = 'UNI',
    Usdt = 'USDT',
    Wallet = 'WALLET',
    Xlm = 'XLM',
    Xmr = 'XMR',
    Xrp = 'XRP',
    Xtz = 'XTZ',
    Yfi = 'YFI',
    Zec = 'ZEC',
    Zrx = 'ZRX',
    Empty = ''
}
/**
 * @export
 * @enum {string}
 */
export enum NewsV1SourceListLangEnum {
    En = 'EN',
    Es = 'ES',
    Pt = 'PT',
    Empty = ''
}
/**
 * @export
 * @enum {string}
 */
export enum NewsV1SourceListTypeEnum {
    Rss = 'RSS',
    Api = 'API',
    Twitter = 'TWITTER',
    Empty = ''
}
/**
 * @export
 * @enum {string}
 */
export enum NewsV1SourceListStatusEnum {
    Active = 'ACTIVE',
    Inactive = 'INACTIVE',
    Empty = ''
}
