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



#include "CppRestOpenAPIClient/model/Error_Err_other_info.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



Error_Err_other_info::Error_Err_other_info()
{
    m_Param = utility::conversions::to_string_t("");
    m_ParamIsSet = false;
    m_ValuesIsSet = false;
}

Error_Err_other_info::~Error_Err_other_info()
{
}

void Error_Err_other_info::validate()
{
    // TODO: implement validation
}

web::json::value Error_Err_other_info::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_ParamIsSet)
    {
        val[utility::conversions::to_string_t(U("param"))] = ModelBase::toJson(m_Param);
    }
    if(m_ValuesIsSet)
    {
        val[utility::conversions::to_string_t(U("values"))] = ModelBase::toJson(m_Values);
    }

    return val;
}

bool Error_Err_other_info::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("param"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("param")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setParam;
            ok &= ModelBase::fromJson(fieldValue, refVal_setParam);
            setParam(refVal_setParam);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("values"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("values")));
        if(!fieldValue.is_null())
        {
            std::vector<utility::string_t> refVal_setValues;
            ok &= ModelBase::fromJson(fieldValue, refVal_setValues);
            setValues(refVal_setValues);
        }
    }
    return ok;
}

void Error_Err_other_info::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_ParamIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("param")), m_Param));
    }
    if(m_ValuesIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("values")), m_Values));
    }
}

bool Error_Err_other_info::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("param"))))
    {
        utility::string_t refVal_setParam;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("param"))), refVal_setParam );
        setParam(refVal_setParam);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("values"))))
    {
        std::vector<utility::string_t> refVal_setValues;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("values"))), refVal_setValues );
        setValues(refVal_setValues);
    }
    return ok;
}

utility::string_t Error_Err_other_info::getParam() const
{
    return m_Param;
}

void Error_Err_other_info::setParam(const utility::string_t& value)
{
    m_Param = value;
    m_ParamIsSet = true;
}

bool Error_Err_other_info::paramIsSet() const
{
    return m_ParamIsSet;
}

void Error_Err_other_info::unsetParam()
{
    m_ParamIsSet = false;
}
std::vector<utility::string_t>& Error_Err_other_info::getValues()
{
    return m_Values;
}

void Error_Err_other_info::setValues(const std::vector<utility::string_t>& value)
{
    m_Values = value;
    m_ValuesIsSet = true;
}

bool Error_Err_other_info::valuesIsSet() const
{
    return m_ValuesIsSet;
}

void Error_Err_other_info::unsetValues()
{
    m_ValuesIsSet = false;
}
}
}
}
}


