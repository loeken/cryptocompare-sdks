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
 * AssetApi.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_API_AssetApi_H_
#define ORG_OPENAPITOOLS_CLIENT_API_AssetApi_H_



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



class  AssetApi 
{
public:

    explicit AssetApi( std::shared_ptr<const ApiClient> apiClient );

    virtual ~AssetApi();

    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="address"></param>
    /// <param name="chainSymbol"></param>
    /// <param name="groups"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::shared_ptr<GENERIC_RESPONSE>> assetV1DataByAddress(
        utility::string_t address,
        utility::string_t chainSymbol,
        boost::optional<utility::string_t> groups
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="assetId">The asset id you are interested in</param>
    /// <param name="groups"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::shared_ptr<GENERIC_RESPONSE>> assetV1DataById(
        int32_t assetId,
        boost::optional<utility::string_t> groups
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="assetSymbol">The asset symbol you are interested in</param>
    /// <param name="groups"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::shared_ptr<GENERIC_RESPONSE>> assetV1DataBySymbol(
        utility::string_t assetSymbol,
        boost::optional<utility::string_t> groups
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="page">The page number for the request to get {page_size} coins at the time. (optional, default to 0)</param>
    /// <param name="pageSize">The number of items returned per page (optional, default to 0)</param>
    /// <param name="assetType">The asset class/type (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="sortBy">Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="sortDirection">Sort direction ( DESC,ASC ) (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="groups"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::shared_ptr<GENERIC_RESPONSE>> assetV1TopList(
        boost::optional<int32_t> page,
        boost::optional<int32_t> pageSize,
        boost::optional<utility::string_t> assetType,
        boost::optional<utility::string_t> sortBy,
        boost::optional<utility::string_t> sortDirection,
        boost::optional<utility::string_t> groups
    ) const;

protected:
    std::shared_ptr<const ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_API_AssetApi_H_ */

