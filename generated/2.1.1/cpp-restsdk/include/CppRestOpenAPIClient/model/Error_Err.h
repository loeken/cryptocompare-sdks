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
 * Error_Err.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_Error_Err_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_Error_Err_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include <cpprest/details/basic_types.h>
#include "CppRestOpenAPIClient/model/Error_Err_other_info.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

class Error_Err_other_info;

/// <summary>
/// 
/// </summary>
class  Error_Err
    : public ModelBase
{
public:
    Error_Err();
    virtual ~Error_Err();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Error_Err members

    /// <summary>
    /// A message describing the error
    /// </summary>
    utility::string_t getMessage() const;
    bool messageIsSet() const;
    void unsetMessage();

    void setMessage(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Error_Err_other_info> getOtherInfo() const;
    bool otherInfoIsSet() const;
    void unsetOther_info();

    void setOtherInfo(const std::shared_ptr<Error_Err_other_info>& value);

    /// <summary>
    /// A public facing error type. If you want to treat a specific error use the type.
    /// </summary>
    int32_t getType() const;
    bool typeIsSet() const;
    void unsetType();

    void setType(int32_t value);


protected:
    utility::string_t m_Message;
    bool m_MessageIsSet;
    std::shared_ptr<Error_Err_other_info> m_Other_info;
    bool m_Other_infoIsSet;
    int32_t m_Type;
    bool m_TypeIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_Error_Err_H_ */
