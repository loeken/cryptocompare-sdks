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
 * OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info.h
 *
 * 
 */

#ifndef OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info_H
#define OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info_H

#include <QJsonObject>

#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info : public OAIObject {
public:
    OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info();
    OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info(QString json);
    ~OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getParam() const;
    void setParam(const QString &param);
    bool is_param_Set() const;
    bool is_param_Valid() const;

    QList<QString> getValues() const;
    void setValues(const QList<QString> &values);
    bool is_values_Set() const;
    bool is_values_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString param;
    bool m_param_isSet;
    bool m_param_isValid;

    QList<QString> values;
    bool m_values_isSet;
    bool m_values_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info)

#endif // OAISPOT_INSTRUMENT_MARKET_DATA_RESPONSE_Err_other_info_H