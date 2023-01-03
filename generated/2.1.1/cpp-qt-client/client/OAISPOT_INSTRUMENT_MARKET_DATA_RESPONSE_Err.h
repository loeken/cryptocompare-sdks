/**
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * The version of the OpenAPI document: 2.1.1
 * Contact: data@cryptocompare.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err.h
 *
 * 
 */

#ifndef OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_H
#define OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_H

#include <QJsonObject>

#include "OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info.h"
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info;

class OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err : public OAIObject {
public:
    OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err();
    OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err(QString json);
    ~OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getMessage() const;
    void setMessage(const QString &message);
    bool is_message_Set() const;
    bool is_message_Valid() const;

    OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info getOtherInfo() const;
    void setOtherInfo(const OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info &other_info);
    bool is_other_info_Set() const;
    bool is_other_info_Valid() const;

    qint32 getType() const;
    void setType(const qint32 &type);
    bool is_type_Set() const;
    bool is_type_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString message;
    bool m_message_isSet;
    bool m_message_isValid;

    OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info other_info;
    bool m_other_info_isSet;
    bool m_other_info_isValid;

    qint32 type;
    bool m_type_isSet;
    bool m_type_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err)

#endif // OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_H
