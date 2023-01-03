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
 * Error_Err_other_info.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_Error_Err_other_info_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_Error_Err_other_info_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include <cpprest/details/basic_types.h>
#include <vector>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  Error_Err_other_info
    : public ModelBase
{
public:
    Error_Err_other_info();
    virtual ~Error_Err_other_info();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Error_Err_other_info members

    /// <summary>
    /// The parameter that is resposible for the error
    /// </summary>
    utility::string_t getParam() const;
    bool paramIsSet() const;
    void unsetParam();

    void setParam(const utility::string_t& value);

    /// <summary>
    /// The values resposible for the error
    /// </summary>
    std::vector<utility::string_t>& getValues();
    bool valuesIsSet() const;
    void unsetValues();

    void setValues(const std::vector<utility::string_t>& value);


protected:
    utility::string_t m_Param;
    bool m_ParamIsSet;
    std::vector<utility::string_t> m_Values;
    bool m_ValuesIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_Error_Err_other_info_H_ */
