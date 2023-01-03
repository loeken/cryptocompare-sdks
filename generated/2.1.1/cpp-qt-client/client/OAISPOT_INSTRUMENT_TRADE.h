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
 * OAISPOT_INSTRUMENT_TRADE.h
 *
 * 
 */

#ifndef OAISPOT_INSTRUMENT_TRADE_H
#define OAISPOT_INSTRUMENT_TRADE_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISPOT_INSTRUMENT_TRADE : public OAIObject {
public:
    OAISPOT_INSTRUMENT_TRADE();
    OAISPOT_INSTRUMENT_TRADE(QString json);
    ~OAISPOT_INSTRUMENT_TRADE() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getBase() const;
    void setBase(const QString &base);
    bool is_base_Set() const;
    bool is_base_Valid() const;

    qint32 getCcseq() const;
    void setCcseq(const qint32 &ccseq);
    bool is_ccseq_Set() const;
    bool is_ccseq_Valid() const;

    QString getId() const;
    void setId(const QString &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getInstrument() const;
    void setInstrument(const QString &instrument);
    bool is_instrument_Set() const;
    bool is_instrument_Valid() const;

    QString getMappedInstrument() const;
    void setMappedInstrument(const QString &mapped_instrument);
    bool is_mapped_instrument_Set() const;
    bool is_mapped_instrument_Valid() const;

    QString getMarket() const;
    void setMarket(const QString &market);
    bool is_market_Set() const;
    bool is_market_Valid() const;

    qint32 getPrice() const;
    void setPrice(const qint32 &price);
    bool is_price_Set() const;
    bool is_price_Valid() const;

    qint32 getQuantity() const;
    void setQuantity(const qint32 &quantity);
    bool is_quantity_Set() const;
    bool is_quantity_Valid() const;

    QString getQuote() const;
    void setQuote(const QString &quote);
    bool is_quote_Set() const;
    bool is_quote_Valid() const;

    qint32 getQuoteQuantity() const;
    void setQuoteQuantity(const qint32 &quote_quantity);
    bool is_quote_quantity_Set() const;
    bool is_quote_quantity_Valid() const;

    qint32 getReceivedTimestamp() const;
    void setReceivedTimestamp(const qint32 &received_timestamp);
    bool is_received_timestamp_Set() const;
    bool is_received_timestamp_Valid() const;

    qint32 getReceivedTimestampNs() const;
    void setReceivedTimestampNs(const qint32 &received_timestamp_ns);
    bool is_received_timestamp_ns_Set() const;
    bool is_received_timestamp_ns_Valid() const;

    QString getSide() const;
    void setSide(const QString &side);
    bool is_side_Set() const;
    bool is_side_Valid() const;

    QString getSource() const;
    void setSource(const QString &source);
    bool is_source_Set() const;
    bool is_source_Valid() const;

    qint32 getTimestamp() const;
    void setTimestamp(const qint32 &timestamp);
    bool is_timestamp_Set() const;
    bool is_timestamp_Valid() const;

    qint32 getTimestampNs() const;
    void setTimestampNs(const qint32 &timestamp_ns);
    bool is_timestamp_ns_Set() const;
    bool is_timestamp_ns_Valid() const;

    QString getType() const;
    void setType(const QString &type);
    bool is_type_Set() const;
    bool is_type_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString base;
    bool m_base_isSet;
    bool m_base_isValid;

    qint32 ccseq;
    bool m_ccseq_isSet;
    bool m_ccseq_isValid;

    QString id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString instrument;
    bool m_instrument_isSet;
    bool m_instrument_isValid;

    QString mapped_instrument;
    bool m_mapped_instrument_isSet;
    bool m_mapped_instrument_isValid;

    QString market;
    bool m_market_isSet;
    bool m_market_isValid;

    qint32 price;
    bool m_price_isSet;
    bool m_price_isValid;

    qint32 quantity;
    bool m_quantity_isSet;
    bool m_quantity_isValid;

    QString quote;
    bool m_quote_isSet;
    bool m_quote_isValid;

    qint32 quote_quantity;
    bool m_quote_quantity_isSet;
    bool m_quote_quantity_isValid;

    qint32 received_timestamp;
    bool m_received_timestamp_isSet;
    bool m_received_timestamp_isValid;

    qint32 received_timestamp_ns;
    bool m_received_timestamp_ns_isSet;
    bool m_received_timestamp_ns_isValid;

    QString side;
    bool m_side_isSet;
    bool m_side_isValid;

    QString source;
    bool m_source_isSet;
    bool m_source_isValid;

    qint32 timestamp;
    bool m_timestamp_isSet;
    bool m_timestamp_isValid;

    qint32 timestamp_ns;
    bool m_timestamp_ns_isSet;
    bool m_timestamp_ns_isValid;

    QString type;
    bool m_type_isSet;
    bool m_type_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISPOT_INSTRUMENT_TRADE)

#endif // OAISPOT_INSTRUMENT_TRADE_H