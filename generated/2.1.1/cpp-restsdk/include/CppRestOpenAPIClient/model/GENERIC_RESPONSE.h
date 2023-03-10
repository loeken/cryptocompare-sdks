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
 * GENERIC_RESPONSE.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_GENERIC_RESPONSE_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_GENERIC_RESPONSE_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include "CppRestOpenAPIClient/model/GENERIC_RESPONSE_Data.h"
#include "CppRestOpenAPIClient/Object.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

class GENERIC_RESPONSE_Data;

/// <summary>
/// 
/// </summary>
class  GENERIC_RESPONSE
    : public ModelBase
{
public:
    GENERIC_RESPONSE();
    virtual ~GENERIC_RESPONSE();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// GENERIC_RESPONSE members

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<GENERIC_RESPONSE_Data> getData() const;
    bool dataIsSet() const;
    void unsetData();

    void setData(const std::shared_ptr<GENERIC_RESPONSE_Data>& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Object> getErr() const;
    bool errIsSet() const;
    void unsetErr();

    void setErr(const std::shared_ptr<Object>& value);


protected:
    std::shared_ptr<GENERIC_RESPONSE_Data> m_Data;
    bool m_DataIsSet;
    std::shared_ptr<Object> m_Err;
    bool m_ErrIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_GENERIC_RESPONSE_H_ */
