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

#include "OpenAPIError.h"

#include "OpenAPIModule.h"
#include "OpenAPIHelpers.h"

#include "Templates/SharedPointer.h"

namespace OpenAPI
{

void OpenAPIError::WriteJson(JsonWriter& Writer) const
{
	Writer->WriteObjectStart();
	if (Data.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("Data")); WriteJsonValue(Writer, Data.GetValue());
	}
	if (Err.IsSet())
	{
		Writer->WriteIdentifierPrefix(TEXT("Err")); WriteJsonValue(Writer, Err.GetValue());
	}
	Writer->WriteObjectEnd();
}

bool OpenAPIError::FromJson(const TSharedPtr<FJsonValue>& JsonValue)
{
	const TSharedPtr<FJsonObject>* Object;
	if (!JsonValue->TryGetObject(Object))
		return false;

	bool ParseSuccess = true;

	ParseSuccess &= TryGetJsonValue(*Object, TEXT("Data"), Data);
	ParseSuccess &= TryGetJsonValue(*Object, TEXT("Err"), Err);

	return ParseSuccess;
}

}
