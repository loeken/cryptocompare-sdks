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

#include "OpenAPISPOTINSTRUMENTHISTODATA.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI
{

void OpenAPISPOTINSTRUMENTHISTODATA::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	if (Base.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("BASE")); WriteJsonValue(Writer, Base.GetValue());
	}
	if (Close.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("CLOSE")); WriteJsonValue(Writer, Close.GetValue());
	}
	if (FirstTradePrice.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("FIRST_TRADE_PRICE")); WriteJsonValue(Writer, FirstTradePrice.GetValue());
	}
	if (FirstTradeTimestamp.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("FIRST_TRADE_TIMESTAMP")); WriteJsonValue(Writer, FirstTradeTimestamp.GetValue());
	}
	if (High.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("HIGH")); WriteJsonValue(Writer, High.GetValue());
	}
	if (HighTradePrice.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("HIGH_TRADE_PRICE")); WriteJsonValue(Writer, HighTradePrice.GetValue());
	}
	if (HighTradeTimestamp.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("HIGH_TRADE_TIMESTAMP")); WriteJsonValue(Writer, HighTradeTimestamp.GetValue());
	}
	if (Instrument.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("INSTRUMENT")); WriteJsonValue(Writer, Instrument.GetValue());
	}
	if (LastTradePrice.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("LAST_TRADE_PRICE")); WriteJsonValue(Writer, LastTradePrice.GetValue());
	}
	if (LastTradeTimestamp.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("LAST_TRADE_TIMESTAMP")); WriteJsonValue(Writer, LastTradeTimestamp.GetValue());
	}
	if (Low.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("LOW")); WriteJsonValue(Writer, Low.GetValue());
	}
	if (LowTradePrice.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("LOW_TRADE_PRICE")); WriteJsonValue(Writer, LowTradePrice.GetValue());
	}
	if (LowTradeTimestamp.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("LOW_TRADE_TIMESTAMP")); WriteJsonValue(Writer, LowTradeTimestamp.GetValue());
	}
	if (MappedInstrument.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("MAPPED_INSTRUMENT")); WriteJsonValue(Writer, MappedInstrument.GetValue());
	}
	if (Market.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("MARKET")); WriteJsonValue(Writer, Market.GetValue());
	}
	if (Open.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("OPEN")); WriteJsonValue(Writer, Open.GetValue());
	}
	if (Quote.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("QUOTE")); WriteJsonValue(Writer, Quote.GetValue());
	}
	if (QuoteVolume.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("QUOTE_VOLUME")); WriteJsonValue(Writer, QuoteVolume.GetValue());
	}
	if (QuoteVolumeBuy.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("QUOTE_VOLUME_BUY")); WriteJsonValue(Writer, QuoteVolumeBuy.GetValue());
	}
	if (QuoteVolumeSell.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("QUOTE_VOLUME_SELL")); WriteJsonValue(Writer, QuoteVolumeSell.GetValue());
	}
	if (QuoteVolumeUnknown.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("QUOTE_VOLUME_UNKNOWN")); WriteJsonValue(Writer, QuoteVolumeUnknown.GetValue());
	}
	if (Timestamp.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("TIMESTAMP")); WriteJsonValue(Writer, Timestamp.GetValue());
	}
	if (TotalTrades.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("TOTAL_TRADES")); WriteJsonValue(Writer, TotalTrades.GetValue());
	}
	if (TotalTradesBuy.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("TOTAL_TRADES_BUY")); WriteJsonValue(Writer, TotalTradesBuy.GetValue());
	}
	if (TotalTradesSell.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("TOTAL_TRADES_SELL")); WriteJsonValue(Writer, TotalTradesSell.GetValue());
	}
	if (TotalTradesUnknown.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("TOTAL_TRADES_UNKNOWN")); WriteJsonValue(Writer, TotalTradesUnknown.GetValue());
	}
	if (Type.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("TYPE")); WriteJsonValue(Writer, Type.GetValue());
	}
	if (Unit.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("UNIT")); WriteJsonValue(Writer, Unit.GetValue());
	}
	if (Volume.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("VOLUME")); WriteJsonValue(Writer, Volume.GetValue());
	}
	if (VolumeBuy.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("VOLUME_BUY")); WriteJsonValue(Writer, VolumeBuy.GetValue());
	}
	if (VolumeSell.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("VOLUME_SELL")); WriteJsonValue(Writer, VolumeSell.GetValue());
	}
	if (VolumeUnknown.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("VOLUME_UNKNOWN")); WriteJsonValue(Writer, VolumeUnknown.GetValue());
	}
	Writer->WriteObjectEnd();
}

bool OpenAPISPOTINSTRUMENTHISTODATA::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("BASE"), Base);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("CLOSE"), Close);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("FIRST_TRADE_PRICE"), FirstTradePrice);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("FIRST_TRADE_TIMESTAMP"), FirstTradeTimestamp);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("HIGH"), High);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("HIGH_TRADE_PRICE"), HighTradePrice);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("HIGH_TRADE_TIMESTAMP"), HighTradeTimestamp);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("INSTRUMENT"), Instrument);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("LAST_TRADE_PRICE"), LastTradePrice);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("LAST_TRADE_TIMESTAMP"), LastTradeTimestamp);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("LOW"), Low);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("LOW_TRADE_PRICE"), LowTradePrice);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("LOW_TRADE_TIMESTAMP"), LowTradeTimestamp);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("MAPPED_INSTRUMENT"), MappedInstrument);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("MARKET"), Market);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("OPEN"), Open);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("QUOTE"), Quote);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("QUOTE_VOLUME"), QuoteVolume);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("QUOTE_VOLUME_BUY"), QuoteVolumeBuy);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("QUOTE_VOLUME_SELL"), QuoteVolumeSell);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("QUOTE_VOLUME_UNKNOWN"), QuoteVolumeUnknown);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("TIMESTAMP"), Timestamp);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("TOTAL_TRADES"), TotalTrades);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("TOTAL_TRADES_BUY"), TotalTradesBuy);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("TOTAL_TRADES_SELL"), TotalTradesSell);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("TOTAL_TRADES_UNKNOWN"), TotalTradesUnknown);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("TYPE"), Type);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("UNIT"), Unit);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("VOLUME"), Volume);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("VOLUME_BUY"), VolumeBuy);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("VOLUME_SELL"), VolumeSell);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("VOLUME_UNKNOWN"), VolumeUnknown);

	return ParseSuccess;
}

}
