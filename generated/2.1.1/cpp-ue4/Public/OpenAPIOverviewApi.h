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

#include "CoreMinimal.h"
#include "OpenAPIBaseModel.h"

namespace OpenAPI
{

class OPENAPI_API OpenAPIOverviewApi
{
public:
	OpenAPIOverviewApi();
	~OpenAPIOverviewApi();

	/* Sets the URL Endpoint.
	* Note: several fallback endpoints can be configured in request retry policies, see Request::SetShouldRetry */
	void SetURL(const FString& Url);

	/* Adds global header params to all requests */
	void AddHeaderParam(const FString& Key, const FString& Value);
	void ClearHeaderParams();

	/* Sets the retry manager to the user-defined retry manager. User must manage the lifetime of the retry manager.
	* If no retry manager is specified and a request needs retries, a default retry manager will be used.
	* See also: Request::SetShouldRetry */
	void SetHttpRetryManager(FHttpRetrySystem::FManager& RetryManager);
	FHttpRetrySystem::FManager& GetHttpRetryManager();

	class OverviewV1HistoricalMarketcapAllAssetsDaysRequest;
	class OverviewV1HistoricalMarketcapAllAssetsDaysResponse;
	class OverviewV1HistoricalMarketcapAllAssetsHoursRequest;
	class OverviewV1HistoricalMarketcapAllAssetsHoursResponse;
	class OverviewV1HistoricalMarketcapFtwAssetsDaysRequest;
	class OverviewV1HistoricalMarketcapFtwAssetsDaysResponse;
	class OverviewV1HistoricalMarketcapFtwAssetsHoursRequest;
	class OverviewV1HistoricalMarketcapFtwAssetsHoursResponse;
	class OverviewV1LatestMarketcapAllTickRequest;
	class OverviewV1LatestMarketcapAllTickResponse;
	class OverviewV1LatestMarketcapFtwTickRequest;
	class OverviewV1LatestMarketcapFtwTickResponse;
	
    DECLARE_DELEGATE_OneParam(FOverviewV1HistoricalMarketcapAllAssetsDaysDelegate, const OverviewV1HistoricalMarketcapAllAssetsDaysResponse&);
    DECLARE_DELEGATE_OneParam(FOverviewV1HistoricalMarketcapAllAssetsHoursDelegate, const OverviewV1HistoricalMarketcapAllAssetsHoursResponse&);
    DECLARE_DELEGATE_OneParam(FOverviewV1HistoricalMarketcapFtwAssetsDaysDelegate, const OverviewV1HistoricalMarketcapFtwAssetsDaysResponse&);
    DECLARE_DELEGATE_OneParam(FOverviewV1HistoricalMarketcapFtwAssetsHoursDelegate, const OverviewV1HistoricalMarketcapFtwAssetsHoursResponse&);
    DECLARE_DELEGATE_OneParam(FOverviewV1LatestMarketcapAllTickDelegate, const OverviewV1LatestMarketcapAllTickResponse&);
    DECLARE_DELEGATE_OneParam(FOverviewV1LatestMarketcapFtwTickDelegate, const OverviewV1LatestMarketcapFtwTickResponse&);
    
    FHttpRequestPtr OverviewV1HistoricalMarketcapAllAssetsDays(const OverviewV1HistoricalMarketcapAllAssetsDaysRequest& Request, const FOverviewV1HistoricalMarketcapAllAssetsDaysDelegate& Delegate = FOverviewV1HistoricalMarketcapAllAssetsDaysDelegate()) const;
    FHttpRequestPtr OverviewV1HistoricalMarketcapAllAssetsHours(const OverviewV1HistoricalMarketcapAllAssetsHoursRequest& Request, const FOverviewV1HistoricalMarketcapAllAssetsHoursDelegate& Delegate = FOverviewV1HistoricalMarketcapAllAssetsHoursDelegate()) const;
    FHttpRequestPtr OverviewV1HistoricalMarketcapFtwAssetsDays(const OverviewV1HistoricalMarketcapFtwAssetsDaysRequest& Request, const FOverviewV1HistoricalMarketcapFtwAssetsDaysDelegate& Delegate = FOverviewV1HistoricalMarketcapFtwAssetsDaysDelegate()) const;
    FHttpRequestPtr OverviewV1HistoricalMarketcapFtwAssetsHours(const OverviewV1HistoricalMarketcapFtwAssetsHoursRequest& Request, const FOverviewV1HistoricalMarketcapFtwAssetsHoursDelegate& Delegate = FOverviewV1HistoricalMarketcapFtwAssetsHoursDelegate()) const;
    FHttpRequestPtr OverviewV1LatestMarketcapAllTick(const OverviewV1LatestMarketcapAllTickRequest& Request, const FOverviewV1LatestMarketcapAllTickDelegate& Delegate = FOverviewV1LatestMarketcapAllTickDelegate()) const;
    FHttpRequestPtr OverviewV1LatestMarketcapFtwTick(const OverviewV1LatestMarketcapFtwTickRequest& Request, const FOverviewV1LatestMarketcapFtwTickDelegate& Delegate = FOverviewV1LatestMarketcapFtwTickDelegate()) const;
    
private:
    void OnOverviewV1HistoricalMarketcapAllAssetsDaysResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FOverviewV1HistoricalMarketcapAllAssetsDaysDelegate Delegate) const;
    void OnOverviewV1HistoricalMarketcapAllAssetsHoursResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FOverviewV1HistoricalMarketcapAllAssetsHoursDelegate Delegate) const;
    void OnOverviewV1HistoricalMarketcapFtwAssetsDaysResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FOverviewV1HistoricalMarketcapFtwAssetsDaysDelegate Delegate) const;
    void OnOverviewV1HistoricalMarketcapFtwAssetsHoursResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FOverviewV1HistoricalMarketcapFtwAssetsHoursDelegate Delegate) const;
    void OnOverviewV1LatestMarketcapAllTickResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FOverviewV1LatestMarketcapAllTickDelegate Delegate) const;
    void OnOverviewV1LatestMarketcapFtwTickResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FOverviewV1LatestMarketcapFtwTickDelegate Delegate) const;
    
	FHttpRequestRef CreateHttpRequest(const Request& Request) const;
	bool IsValid() const;
	void HandleResponse(FHttpResponsePtr HttpResponse, bool bSucceeded, Response& InOutResponse) const;

	FString Url;
	TMap<FString,FString> AdditionalHeaderParams;
	mutable FHttpRetrySystem::FManager* RetryManager = nullptr;
	mutable TUniquePtr<HttpRetryManager> DefaultRetryManager;
};

}
