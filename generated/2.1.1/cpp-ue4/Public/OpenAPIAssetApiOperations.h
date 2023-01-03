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
#include "OpenAPIAssetApi.h"

#include "OpenAPIError.h"
#include "OpenAPIGENERICRESPONSE.h"

namespace OpenAPI
{

/* 

*/
class OPENAPI_API OpenAPIAssetApi::AssetV1DataByAddressRequest : public Request
{
public:
    virtual ~AssetV1DataByAddressRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	FString Address;
	FString ChainSymbol;
	TOptional<FString> Groups;
};

class OPENAPI_API OpenAPIAssetApi::AssetV1DataByAddressResponse : public Response
{
public:
    virtual ~AssetV1DataByAddressResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPIGENERICRESPONSE Content;
};

/* 

*/
class OPENAPI_API OpenAPIAssetApi::AssetV1DataByIdRequest : public Request
{
public:
    virtual ~AssetV1DataByIdRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The asset id you are interested in */
	int32 AssetId = 0;
	TOptional<FString> Groups;
};

class OPENAPI_API OpenAPIAssetApi::AssetV1DataByIdResponse : public Response
{
public:
    virtual ~AssetV1DataByIdResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPIGENERICRESPONSE Content;
};

/* 

*/
class OPENAPI_API OpenAPIAssetApi::AssetV1DataBySymbolRequest : public Request
{
public:
    virtual ~AssetV1DataBySymbolRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The asset symbol you are interested in */
	FString AssetSymbol;
	TOptional<FString> Groups;
};

class OPENAPI_API OpenAPIAssetApi::AssetV1DataBySymbolResponse : public Response
{
public:
    virtual ~AssetV1DataBySymbolResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPIGENERICRESPONSE Content;
};

/* 

*/
class OPENAPI_API OpenAPIAssetApi::AssetV1TopListRequest : public Request
{
public:
    virtual ~AssetV1TopListRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The page number for the request to get {page_size} coins at the time. */
	TOptional<int32> Page;
	/* The number of items returned per page */
	TOptional<int32> PageSize;
	/* The asset class/type */
	TOptional<FString> AssetType;
	enum class SortByEnum
	{
		CreatedOn,
		UpdatedOn,
		Symbol,
  	};

	static FString EnumToString(const SortByEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, SortByEnum& EnumValue);
	/* Sort by field ( CREATED_ON,UPDATED_ON,SYMBOL ) */
	TOptional<SortByEnum> SortBy;
	enum class SortDirectionEnum
	{
		Desc,
		Asc,
  	};

	static FString EnumToString(const SortDirectionEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, SortDirectionEnum& EnumValue);
	/* Sort direction ( DESC,ASC ) */
	TOptional<SortDirectionEnum> SortDirection;
	TOptional<FString> Groups;
};

class OPENAPI_API OpenAPIAssetApi::AssetV1TopListResponse : public Response
{
public:
    virtual ~AssetV1TopListResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPIGENERICRESPONSE Content;
};

}
