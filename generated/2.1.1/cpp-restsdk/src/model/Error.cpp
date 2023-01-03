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



#include "CppRestOpenAPIClient/model/Error.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



Error::Error()
{
    m_DataIsSet = false;
    m_ErrIsSet = false;
}

Error::~Error()
{
}

void Error::validate()
{
    // TODO: implement validation
}

web::json::value Error::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_DataIsSet)
    {
        val[utility::conversions::to_string_t(U("Data"))] = ModelBase::toJson(m_Data);
    }
    if(m_ErrIsSet)
    {
        val[utility::conversions::to_string_t(U("Err"))] = ModelBase::toJson(m_Err);
    }

    return val;
}

bool Error::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("Data"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("Data")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Object> refVal_setData;
            ok &= ModelBase::fromJson(fieldValue, refVal_setData);
            setData(refVal_setData);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("Err"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("Err")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<Error_Err> refVal_setErr;
            ok &= ModelBase::fromJson(fieldValue, refVal_setErr);
            setErr(refVal_setErr);
        }
    }
    return ok;
}

void Error::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_DataIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("Data")), m_Data));
    }
    if(m_ErrIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("Err")), m_Err));
    }
}

bool Error::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("Data"))))
    {
        std::shared_ptr<Object> refVal_setData;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("Data"))), refVal_setData );
        setData(refVal_setData);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("Err"))))
    {
        std::shared_ptr<Error_Err> refVal_setErr;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("Err"))), refVal_setErr );
        setErr(refVal_setErr);
    }
    return ok;
}

std::shared_ptr<Object> Error::getData() const
{
    return m_Data;
}

void Error::setData(const std::shared_ptr<Object>& value)
{
    m_Data = value;
    m_DataIsSet = true;
}

bool Error::dataIsSet() const
{
    return m_DataIsSet;
}

void Error::unsetData()
{
    m_DataIsSet = false;
}
std::shared_ptr<Error_Err> Error::getErr() const
{
    return m_Err;
}

void Error::setErr(const std::shared_ptr<Error_Err>& value)
{
    m_Err = value;
    m_ErrIsSet = true;
}

bool Error::errIsSet() const
{
    return m_ErrIsSet;
}

void Error::unsetErr()
{
    m_ErrIsSet = false;
}
}
}
}
}


