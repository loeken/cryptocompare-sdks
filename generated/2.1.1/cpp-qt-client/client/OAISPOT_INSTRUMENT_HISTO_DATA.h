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
 * OAISPOT_INSTRUMENT_HISTO_DATA.h
 *
 * 
 */

#ifndef OAISPOT_INSTRUMENT_HISTO_DATA_H
#define OAISPOT_INSTRUMENT_HISTO_DATA_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISPOT_INSTRUMENT_HISTO_DATA : public OAIObject {
public:
    OAISPOT_INSTRUMENT_HISTO_DATA();
    OAISPOT_INSTRUMENT_HISTO_DATA(QString json);
    ~OAISPOT_INSTRUMENT_HISTO_DATA() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getBase() const;
    void setBase(const QString &base);
    bool is_base_Set() const;
    bool is_base_Valid() const;

    qint32 getClose() const;
    void setClose(const qint32 &close);
    bool is_close_Set() const;
    bool is_close_Valid() const;

    qint32 getFirstTradePrice() const;
    void setFirstTradePrice(const qint32 &first_trade_price);
    bool is_first_trade_price_Set() const;
    bool is_first_trade_price_Valid() const;

    qint32 getFirstTradeTimestamp() const;
    void setFirstTradeTimestamp(const qint32 &first_trade_timestamp);
    bool is_first_trade_timestamp_Set() const;
    bool is_first_trade_timestamp_Valid() const;

    qint32 getHigh() const;
    void setHigh(const qint32 &high);
    bool is_high_Set() const;
    bool is_high_Valid() const;

    qint32 getHighTradePrice() const;
    void setHighTradePrice(const qint32 &high_trade_price);
    bool is_high_trade_price_Set() const;
    bool is_high_trade_price_Valid() const;

    qint32 getHighTradeTimestamp() const;
    void setHighTradeTimestamp(const qint32 &high_trade_timestamp);
    bool is_high_trade_timestamp_Set() const;
    bool is_high_trade_timestamp_Valid() const;

    QString getInstrument() const;
    void setInstrument(const QString &instrument);
    bool is_instrument_Set() const;
    bool is_instrument_Valid() const;

    qint32 getLastTradePrice() const;
    void setLastTradePrice(const qint32 &last_trade_price);
    bool is_last_trade_price_Set() const;
    bool is_last_trade_price_Valid() const;

    qint32 getLastTradeTimestamp() const;
    void setLastTradeTimestamp(const qint32 &last_trade_timestamp);
    bool is_last_trade_timestamp_Set() const;
    bool is_last_trade_timestamp_Valid() const;

    qint32 getLow() const;
    void setLow(const qint32 &low);
    bool is_low_Set() const;
    bool is_low_Valid() const;

    qint32 getLowTradePrice() const;
    void setLowTradePrice(const qint32 &low_trade_price);
    bool is_low_trade_price_Set() const;
    bool is_low_trade_price_Valid() const;

    qint32 getLowTradeTimestamp() const;
    void setLowTradeTimestamp(const qint32 &low_trade_timestamp);
    bool is_low_trade_timestamp_Set() const;
    bool is_low_trade_timestamp_Valid() const;

    QString getMappedInstrument() const;
    void setMappedInstrument(const QString &mapped_instrument);
    bool is_mapped_instrument_Set() const;
    bool is_mapped_instrument_Valid() const;

    QString getMarket() const;
    void setMarket(const QString &market);
    bool is_market_Set() const;
    bool is_market_Valid() const;

    qint32 getOpen() const;
    void setOpen(const qint32 &open);
    bool is_open_Set() const;
    bool is_open_Valid() const;

    QString getQuote() const;
    void setQuote(const QString &quote);
    bool is_quote_Set() const;
    bool is_quote_Valid() const;

    qint32 getQuoteVolume() const;
    void setQuoteVolume(const qint32 &quote_volume);
    bool is_quote_volume_Set() const;
    bool is_quote_volume_Valid() const;

    qint32 getQuoteVolumeBuy() const;
    void setQuoteVolumeBuy(const qint32 &quote_volume_buy);
    bool is_quote_volume_buy_Set() const;
    bool is_quote_volume_buy_Valid() const;

    qint32 getQuoteVolumeSell() const;
    void setQuoteVolumeSell(const qint32 &quote_volume_sell);
    bool is_quote_volume_sell_Set() const;
    bool is_quote_volume_sell_Valid() const;

    qint32 getQuoteVolumeUnknown() const;
    void setQuoteVolumeUnknown(const qint32 &quote_volume_unknown);
    bool is_quote_volume_unknown_Set() const;
    bool is_quote_volume_unknown_Valid() const;

    qint32 getTimestamp() const;
    void setTimestamp(const qint32 &timestamp);
    bool is_timestamp_Set() const;
    bool is_timestamp_Valid() const;

    qint32 getTotalTrades() const;
    void setTotalTrades(const qint32 &total_trades);
    bool is_total_trades_Set() const;
    bool is_total_trades_Valid() const;

    qint32 getTotalTradesBuy() const;
    void setTotalTradesBuy(const qint32 &total_trades_buy);
    bool is_total_trades_buy_Set() const;
    bool is_total_trades_buy_Valid() const;

    qint32 getTotalTradesSell() const;
    void setTotalTradesSell(const qint32 &total_trades_sell);
    bool is_total_trades_sell_Set() const;
    bool is_total_trades_sell_Valid() const;

    qint32 getTotalTradesUnknown() const;
    void setTotalTradesUnknown(const qint32 &total_trades_unknown);
    bool is_total_trades_unknown_Set() const;
    bool is_total_trades_unknown_Valid() const;

    QString getType() const;
    void setType(const QString &type);
    bool is_type_Set() const;
    bool is_type_Valid() const;

    QString getUnit() const;
    void setUnit(const QString &unit);
    bool is_unit_Set() const;
    bool is_unit_Valid() const;

    qint32 getVolume() const;
    void setVolume(const qint32 &volume);
    bool is_volume_Set() const;
    bool is_volume_Valid() const;

    qint32 getVolumeBuy() const;
    void setVolumeBuy(const qint32 &volume_buy);
    bool is_volume_buy_Set() const;
    bool is_volume_buy_Valid() const;

    qint32 getVolumeSell() const;
    void setVolumeSell(const qint32 &volume_sell);
    bool is_volume_sell_Set() const;
    bool is_volume_sell_Valid() const;

    qint32 getVolumeUnknown() const;
    void setVolumeUnknown(const qint32 &volume_unknown);
    bool is_volume_unknown_Set() const;
    bool is_volume_unknown_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString base;
    bool m_base_isSet;
    bool m_base_isValid;

    qint32 close;
    bool m_close_isSet;
    bool m_close_isValid;

    qint32 first_trade_price;
    bool m_first_trade_price_isSet;
    bool m_first_trade_price_isValid;

    qint32 first_trade_timestamp;
    bool m_first_trade_timestamp_isSet;
    bool m_first_trade_timestamp_isValid;

    qint32 high;
    bool m_high_isSet;
    bool m_high_isValid;

    qint32 high_trade_price;
    bool m_high_trade_price_isSet;
    bool m_high_trade_price_isValid;

    qint32 high_trade_timestamp;
    bool m_high_trade_timestamp_isSet;
    bool m_high_trade_timestamp_isValid;

    QString instrument;
    bool m_instrument_isSet;
    bool m_instrument_isValid;

    qint32 last_trade_price;
    bool m_last_trade_price_isSet;
    bool m_last_trade_price_isValid;

    qint32 last_trade_timestamp;
    bool m_last_trade_timestamp_isSet;
    bool m_last_trade_timestamp_isValid;

    qint32 low;
    bool m_low_isSet;
    bool m_low_isValid;

    qint32 low_trade_price;
    bool m_low_trade_price_isSet;
    bool m_low_trade_price_isValid;

    qint32 low_trade_timestamp;
    bool m_low_trade_timestamp_isSet;
    bool m_low_trade_timestamp_isValid;

    QString mapped_instrument;
    bool m_mapped_instrument_isSet;
    bool m_mapped_instrument_isValid;

    QString market;
    bool m_market_isSet;
    bool m_market_isValid;

    qint32 open;
    bool m_open_isSet;
    bool m_open_isValid;

    QString quote;
    bool m_quote_isSet;
    bool m_quote_isValid;

    qint32 quote_volume;
    bool m_quote_volume_isSet;
    bool m_quote_volume_isValid;

    qint32 quote_volume_buy;
    bool m_quote_volume_buy_isSet;
    bool m_quote_volume_buy_isValid;

    qint32 quote_volume_sell;
    bool m_quote_volume_sell_isSet;
    bool m_quote_volume_sell_isValid;

    qint32 quote_volume_unknown;
    bool m_quote_volume_unknown_isSet;
    bool m_quote_volume_unknown_isValid;

    qint32 timestamp;
    bool m_timestamp_isSet;
    bool m_timestamp_isValid;

    qint32 total_trades;
    bool m_total_trades_isSet;
    bool m_total_trades_isValid;

    qint32 total_trades_buy;
    bool m_total_trades_buy_isSet;
    bool m_total_trades_buy_isValid;

    qint32 total_trades_sell;
    bool m_total_trades_sell_isSet;
    bool m_total_trades_sell_isValid;

    qint32 total_trades_unknown;
    bool m_total_trades_unknown_isSet;
    bool m_total_trades_unknown_isValid;

    QString type;
    bool m_type_isSet;
    bool m_type_isValid;

    QString unit;
    bool m_unit_isSet;
    bool m_unit_isValid;

    qint32 volume;
    bool m_volume_isSet;
    bool m_volume_isValid;

    qint32 volume_buy;
    bool m_volume_buy_isSet;
    bool m_volume_buy_isValid;

    qint32 volume_sell;
    bool m_volume_sell_isSet;
    bool m_volume_sell_isValid;

    qint32 volume_unknown;
    bool m_volume_unknown_isSet;
    bool m_volume_unknown_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISPOT_INSTRUMENT_HISTO_DATA)

#endif // OAISPOT_INSTRUMENT_HISTO_DATA_H
