//
// NewsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class NewsAPI {

    /**
     * enum for parameter lang
     */
    public enum Lang_newsV1ArticleList: String, CaseIterable {
        case en = "EN"
        case es = "ES"
        case pt = "PT"
        case empty = ""
    }

    /**
     * enum for parameter categories
     */
    public enum Categories_newsV1ArticleList: String, CaseIterable {
        case _1iNCH = "1INCH"
        case aave = "AAVE"
        case ada = "ADA"
        case algo = "ALGO"
        case altcoin = "ALTCOIN"
        case asia = "ASIA"
        case atom = "ATOM"
        case avax = "AVAX"
        case axs = "AXS"
        case bal = "BAL"
        case bat = "BAT"
        case bch = "BCH"
        case blockchain = "BLOCKCHAIN"
        case btc = "BTC"
        case business = "BUSINESS"
        case commodity = "COMMODITY"
        case comp = "COMP"
        case crv = "CRV"
        case dash = "DASH"
        case doge = "DOGE"
        case dot = "DOT"
        case enj = "ENJ"
        case etc = "ETC"
        case eth = "ETH"
        case exchange = "EXCHANGE"
        case fiat = "FIAT"
        case fil = "FIL"
        case ftm = "FTM"
        case ico = "ICO"
        case knc = "KNC"
        case link = "LINK"
        case lrc = "LRC"
        case ltc = "LTC"
        case luna = "LUNA"
        case lunc = "LUNC"
        case mana = "MANA"
        case market = "MARKET"
        case matic = "MATIC"
        case mining = "MINING"
        case mkr = "MKR"
        case regulation = "REGULATION"
        case ren = "REN"
        case sand = "SAND"
        case shib = "SHIB"
        case snx = "SNX"
        case sol = "SOL"
        case sponsored = "SPONSORED"
        case sushi = "SUSHI"
        case technology = "TECHNOLOGY"
        case trading = "TRADING"
        case trx = "TRX"
        case uma = "UMA"
        case uni = "UNI"
        case usdt = "USDT"
        case wallet = "WALLET"
        case xlm = "XLM"
        case xmr = "XMR"
        case xrp = "XRP"
        case xtz = "XTZ"
        case yfi = "YFI"
        case zec = "ZEC"
        case zrx = "ZRX"
        case empty = ""
    }

    /**
     * enum for parameter excludeCategories
     */
    public enum ExcludeCategories_newsV1ArticleList: String, CaseIterable {
        case _1iNCH = "1INCH"
        case aave = "AAVE"
        case ada = "ADA"
        case algo = "ALGO"
        case altcoin = "ALTCOIN"
        case asia = "ASIA"
        case atom = "ATOM"
        case avax = "AVAX"
        case axs = "AXS"
        case bal = "BAL"
        case bat = "BAT"
        case bch = "BCH"
        case blockchain = "BLOCKCHAIN"
        case btc = "BTC"
        case business = "BUSINESS"
        case commodity = "COMMODITY"
        case comp = "COMP"
        case crv = "CRV"
        case dash = "DASH"
        case doge = "DOGE"
        case dot = "DOT"
        case enj = "ENJ"
        case etc = "ETC"
        case eth = "ETH"
        case exchange = "EXCHANGE"
        case fiat = "FIAT"
        case fil = "FIL"
        case ftm = "FTM"
        case ico = "ICO"
        case knc = "KNC"
        case link = "LINK"
        case lrc = "LRC"
        case ltc = "LTC"
        case luna = "LUNA"
        case lunc = "LUNC"
        case mana = "MANA"
        case market = "MARKET"
        case matic = "MATIC"
        case mining = "MINING"
        case mkr = "MKR"
        case regulation = "REGULATION"
        case ren = "REN"
        case sand = "SAND"
        case shib = "SHIB"
        case snx = "SNX"
        case sol = "SOL"
        case sponsored = "SPONSORED"
        case sushi = "SUSHI"
        case technology = "TECHNOLOGY"
        case trading = "TRADING"
        case trx = "TRX"
        case uma = "UMA"
        case uni = "UNI"
        case usdt = "USDT"
        case wallet = "WALLET"
        case xlm = "XLM"
        case xmr = "XMR"
        case xrp = "XRP"
        case xtz = "XTZ"
        case yfi = "YFI"
        case zec = "ZEC"
        case zrx = "ZRX"
        case empty = ""
    }

    /**

     - parameter sourceIds: (query) Get articles from specific sources; either by their ids or keys (optional)
     - parameter lang: (query) The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional, default to .en)
     - parameter categories: (query) News article categories to return (optional)
     - parameter excludeCategories: (query) News article categories to exclude from results (optional)
     - parameter toTs: (query) Articles published on or before this timestamp (optional, default to -1)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func newsV1ArticleList(sourceIds: [String]? = nil, lang: Lang_newsV1ArticleList? = nil, categories: [Categories_newsV1ArticleList]? = nil, excludeCategories: [ExcludeCategories_newsV1ArticleList]? = nil, toTs: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GENERICRESPONSE?, _ error: Error?) -> Void)) -> RequestTask {
        return newsV1ArticleListWithRequestBuilder(sourceIds: sourceIds, lang: lang, categories: categories, excludeCategories: excludeCategories, toTs: toTs).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /news/v1/article/list
     - parameter sourceIds: (query) Get articles from specific sources; either by their ids or keys (optional)
     - parameter lang: (query) The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional, default to .en)
     - parameter categories: (query) News article categories to return (optional)
     - parameter excludeCategories: (query) News article categories to exclude from results (optional)
     - parameter toTs: (query) Articles published on or before this timestamp (optional, default to -1)
     - returns: RequestBuilder<GENERICRESPONSE> 
     */
    open class func newsV1ArticleListWithRequestBuilder(sourceIds: [String]? = nil, lang: Lang_newsV1ArticleList? = nil, categories: [Categories_newsV1ArticleList]? = nil, excludeCategories: [ExcludeCategories_newsV1ArticleList]? = nil, toTs: Int? = nil) -> RequestBuilder<GENERICRESPONSE> {
        let localVariablePath = "/news/v1/article/list"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "source_ids": (wrappedValue: sourceIds?.encodeToJSON(), isExplode: false),
            "lang": (wrappedValue: lang?.encodeToJSON(), isExplode: false),
            "categories": (wrappedValue: categories?.encodeToJSON(), isExplode: false),
            "exclude_categories": (wrappedValue: excludeCategories?.encodeToJSON(), isExplode: false),
            "to_ts": (wrappedValue: toTs?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GENERICRESPONSE>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func newsV1CategoryList(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GENERICRESPONSE?, _ error: Error?) -> Void)) -> RequestTask {
        return newsV1CategoryListWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /news/v1/category/list
     - returns: RequestBuilder<GENERICRESPONSE> 
     */
    open class func newsV1CategoryListWithRequestBuilder() -> RequestBuilder<GENERICRESPONSE> {
        let localVariablePath = "/news/v1/category/list"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GENERICRESPONSE>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     * enum for parameter lang
     */
    public enum Lang_newsV1SourceList: String, CaseIterable {
        case en = "EN"
        case es = "ES"
        case pt = "PT"
        case empty = ""
    }

    /**
     * enum for parameter type
     */
    public enum ModelType_newsV1SourceList: String, CaseIterable {
        case rss = "RSS"
        case api = "API"
        case twitter = "TWITTER"
        case empty = ""
    }

    /**
     * enum for parameter status
     */
    public enum Status_newsV1SourceList: String, CaseIterable {
        case active = "ACTIVE"
        case inactive = "INACTIVE"
        case empty = ""
    }

    /**

     - parameter lang: (query) The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional, default to .en)
     - parameter type: (query) RSS, API, TWITTER (optional, default to .rss)
     - parameter status: (query) The status for the  article source entry. Allowed values: ACTIVE, INACTIVE (optional, default to .active)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func newsV1SourceList(lang: Lang_newsV1SourceList? = nil, type: ModelType_newsV1SourceList? = nil, status: Status_newsV1SourceList? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: GENERICRESPONSE?, _ error: Error?) -> Void)) -> RequestTask {
        return newsV1SourceListWithRequestBuilder(lang: lang, type: type, status: status).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /news/v1/source/list
     - parameter lang: (query) The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional, default to .en)
     - parameter type: (query) RSS, API, TWITTER (optional, default to .rss)
     - parameter status: (query) The status for the  article source entry. Allowed values: ACTIVE, INACTIVE (optional, default to .active)
     - returns: RequestBuilder<GENERICRESPONSE> 
     */
    open class func newsV1SourceListWithRequestBuilder(lang: Lang_newsV1SourceList? = nil, type: ModelType_newsV1SourceList? = nil, status: Status_newsV1SourceList? = nil) -> RequestBuilder<GENERICRESPONSE> {
        let localVariablePath = "/news/v1/source/list"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "lang": (wrappedValue: lang?.encodeToJSON(), isExplode: false),
            "type": (wrappedValue: type?.encodeToJSON(), isExplode: false),
            "status": (wrappedValue: status?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GENERICRESPONSE>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}