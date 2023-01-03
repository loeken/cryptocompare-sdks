/**
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 6.3.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * NewsApi.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_API_NewsApi_H_
#define ORG_OPENAPITOOLS_CLIENT_API_NewsApi_H_



#include "CppRestOpenAPIClient/ApiClient.h"

#include "CppRestOpenAPIClient/model/Error.h"
#include "CppRestOpenAPIClient/model/GENERIC_RESPONSE.h"
#include <cpprest/details/basic_types.h>
#include <boost/optional.hpp>

namespace org {
namespace openapitools {
namespace client {
namespace api {

using namespace org::openapitools::client::model;



class  NewsApi 
{
public:

    explicit NewsApi( std::shared_ptr<const ApiClient> apiClient );

    virtual ~NewsApi();

    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="sourceIds">Get articles from specific sources; either by their ids or keys (optional, default to std::vector&lt;std::shared_ptr&lt;utility::string_t&gt;&gt;())</param>
    /// <param name="lang">The article Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="categories">News article categories to return (optional, default to std::vector&lt;std::shared_ptr&lt;utility::string_t&gt;&gt;())</param>
    /// <param name="excludeCategories">News article categories to exclude from results (optional, default to std::vector&lt;std::shared_ptr&lt;utility::string_t&gt;&gt;())</param>
    /// <param name="toTs">Articles published on or before this timestamp (optional, default to 0)</param>
    pplx::task<std::shared_ptr<GENERIC_RESPONSE>> newsV1ArticleList(
        boost::optional<std::vector<utility::string_t>> sourceIds,
        boost::optional<utility::string_t> lang,
        boost::optional<std::vector<utility::string_t>> categories,
        boost::optional<std::vector<utility::string_t>> excludeCategories,
        boost::optional<int32_t> toTs
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    pplx::task<std::shared_ptr<GENERIC_RESPONSE>> newsV1CategoryList(
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="lang">The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES) (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="type">RSS, API, TWITTER (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="status">The status for the  article source entry. Allowed values: ACTIVE, INACTIVE (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::shared_ptr<GENERIC_RESPONSE>> newsV1SourceList(
        boost::optional<utility::string_t> lang,
        boost::optional<utility::string_t> type,
        boost::optional<utility::string_t> status
    ) const;

protected:
    std::shared_ptr<const ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_API_NewsApi_H_ */

