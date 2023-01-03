/**
 * CryptoCompare Market, Index, Reference Data, News and Overview Metrcis API for the Cryptocurrency Industry
 * CryptoCompare is the world's leading digital asset data company, providing services that cater to corporate, government and retail clients. Our main reference index is widely recognized as a reliable benchmark, and we have been authorized by the Financial Conduct Authority (FCA) in the United Kingdom to operate as a benchmark administrator. In addition to catering to corporate, government, and retail clients, we offer a range of services including comprehensive market data for cryptocurrency exchanges in both the centralized and decentralized finance sectors, as well as individual asset data on custodians, supported platforms, and privacy solutions. Our offerings include price, volume, trade, and orderbook updates, as well as historical OHLCV data.
 *
 * OpenAPI spec version: 2.1.1
 * Contact: data@cryptocompare.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

#pragma once

#include "OpenAPIBaseModel.h"

namespace OpenAPI
{

/*
 * OpenAPISPOTINSTRUMENTTRADE
 *
 * 
 */
class OPENAPI_API OpenAPISPOTINSTRUMENTTRADE : public Model
{
public:
    virtual ~OpenAPISPOTINSTRUMENTTRADE() {}
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;
	void WriteJson(JsonWriter& Writer) const final;

	/* The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC). */
	TOptional<FString> Base;
	/* Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order. */
	TOptional<int32> Ccseq;
	/* The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second. */
	TOptional<FString> Id;
	/* The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD). */
	TOptional<FString> Instrument;
	/* The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD). */
	TOptional<FString> MappedInstrument;
	/* The market / exchange under consideration (e.g. Coinbase, Kraken, etc.). */
	TOptional<FString> Market;
	/* The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract. */
	TOptional<int32> Price;
	/* The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded. */
	TOptional<int32> Quantity;
	/* The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD). */
	TOptional<FString> Quote;
	/* The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded. */
	TOptional<int32> QuoteQuantity;
	/* The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits. */
	TOptional<int32> ReceivedTimestamp;
	/* The nanosecond part of the received timestamp. */
	TOptional<int32> ReceivedTimestampNs;
	/* The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned. */
	TOptional<FString> Side;
	/* The source of the trade update: POLLING, STREAMING, GO, BLOB etc. */
	TOptional<FString> Source;
	/* The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one. */
	TOptional<int32> Timestamp;
	/* The nanosecond part of the reported timestamp. */
	TOptional<int32> TimestampNs;
	/* The type of the message. */
	TOptional<FString> Type;
};

}
