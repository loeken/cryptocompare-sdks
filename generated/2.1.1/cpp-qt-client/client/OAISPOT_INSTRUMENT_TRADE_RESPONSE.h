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
 * OAISPOT_INSTRUMENT_TRADE_RESPONSE.h
 *
 * 
 */

#ifndef OAISPOT_INSTRUMENT_TRADE_RESPONSE_H
#define OAISPOT_INSTRUMENT_TRADE_RESPONSE_H

#include <QJsonObject>

#include "OAIObject.h"
#include "OAISPOT_INSTRUMENT_TRADE.h"
#include <QList>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAISPOT_INSTRUMENT_TRADE;

class OAISPOT_INSTRUMENT_TRADE_RESPONSE : public OAIObject {
public:
    OAISPOT_INSTRUMENT_TRADE_RESPONSE();
    OAISPOT_INSTRUMENT_TRADE_RESPONSE(QString json);
    ~OAISPOT_INSTRUMENT_TRADE_RESPONSE() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QList<OAISPOT_INSTRUMENT_TRADE> getData() const;
    void setData(const QList<OAISPOT_INSTRUMENT_TRADE> &data);
    bool is_data_Set() const;
    bool is_data_Valid() const;

    OAIObject getErr() const;
    void setErr(const OAIObject &err);
    bool is_err_Set() const;
    bool is_err_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QList<OAISPOT_INSTRUMENT_TRADE> data;
    bool m_data_isSet;
    bool m_data_isValid;

    OAIObject err;
    bool m_err_isSet;
    bool m_err_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISPOT_INSTRUMENT_TRADE_RESPONSE)

#endif // OAISPOT_INSTRUMENT_TRADE_RESPONSE_H
