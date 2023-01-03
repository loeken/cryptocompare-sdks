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



#include "CppRestOpenAPIClient/model/Error_Err.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



Error_Err::Error_Err()
{
    m_Message = utility::conversions::to_string_t("");
    m_MessageIsSet = false;
    m_Other_infoIsSet = false;
    m_Type = 0;
    m_TypeIsSet = false;
}

Error_Err::~Error_Err()
{
}

void Error_Err::validate()
{
    // TODO: implement validation
}

web::json::value Error_Err::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_MessageIsSet)
    {
        val[utility::conversions::to_string_t(U("message"))] = ModelBase::toJson(m_Message);
    }
    if(m_Other_infoIsSet)
    {
        val[utility::conversions::to_string_t(U("other_info"))] = ModelBase::toJson(m_Other_info);
    }
    if(m_TypeIsSet)
    {
        val[utility::conversions::to_string_t(U("type"))] = ModelBase::toJson(m_Type);
    }

    return val;
}

bool Error_Err::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("message"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("message")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setMessage;
            ok &= ModelBase::fromJson(fieldValue, refVal_setMessage);
            setMessage(refVal_setMessage);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("other_info"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("other_info")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Error_Err_other_info> refVal_setOtherInfo;
            ok &= ModelBase::fromJson(fieldValue, refVal_setOtherInfo);
            setOtherInfo(refVal_setOtherInfo);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("type"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("type")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setType;
            ok &= ModelBase::fromJson(fieldValue, refVal_setType);
            setType(refVal_setType);
        }
    }
    return ok;
}

void Error_Err::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_MessageIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("message")), m_Message));
    }
    if(m_Other_infoIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("other_info")), m_Other_info));
    }
    if(m_TypeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("type")), m_Type));
    }
}

bool Error_Err::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("message"))))
    {
        utility::string_t refVal_setMessage;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("message"))), refVal_setMessage );
        setMessage(refVal_setMessage);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("other_info"))))
    {
        std::shared_ptr<Error_Err_other_info> refVal_setOtherInfo;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("other_info"))), refVal_setOtherInfo );
        setOtherInfo(refVal_setOtherInfo);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("type"))))
    {
        int32_t refVal_setType;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("type"))), refVal_setType );
        setType(refVal_setType);
    }
    return ok;
}

utility::string_t Error_Err::getMessage() const
{
    return m_Message;
}

void Error_Err::setMessage(const utility::string_t& value)
{
    m_Message = value;
    m_MessageIsSet = true;
}

bool Error_Err::messageIsSet() const
{
    return m_MessageIsSet;
}

void Error_Err::unsetMessage()
{
    m_MessageIsSet = false;
}
std::shared_ptr<Error_Err_other_info> Error_Err::getOtherInfo() const
{
    return m_Other_info;
}

void Error_Err::setOtherInfo(const std::shared_ptr<Error_Err_other_info>& value)
{
    m_Other_info = value;
    m_Other_infoIsSet = true;
}

bool Error_Err::otherInfoIsSet() const
{
    return m_Other_infoIsSet;
}

void Error_Err::unsetOther_info()
{
    m_Other_infoIsSet = false;
}
int32_t Error_Err::getType() const
{
    return m_Type;
}

void Error_Err::setType(int32_t value)
{
    m_Type = value;
    m_TypeIsSet = true;
}

bool Error_Err::typeIsSet() const
{
    return m_TypeIsSet;
}

void Error_Err::unsetType()
{
    m_TypeIsSet = false;
}
}
}
}
}


