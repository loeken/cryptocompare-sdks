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

class OPENAPI_API OpenAPINewsApi
{
public:
	OpenAPINewsApi();
	~OpenAPINewsApi();

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

	class NewsV1ArticleListRequest;
	class NewsV1ArticleListResponse;
	class NewsV1CategoryListRequest;
	class NewsV1CategoryListResponse;
	class NewsV1SourceListRequest;
	class NewsV1SourceListResponse;
	
    DECLARE_DELEGATE_OneParam(FNewsV1ArticleListDelegate, const NewsV1ArticleListResponse&);
    DECLARE_DELEGATE_OneParam(FNewsV1CategoryListDelegate, const NewsV1CategoryListResponse&);
    DECLARE_DELEGATE_OneParam(FNewsV1SourceListDelegate, const NewsV1SourceListResponse&);
    
    FHttpRequestPtr NewsV1ArticleList(const NewsV1ArticleListRequest& Request, const FNewsV1ArticleListDelegate& Delegate = FNewsV1ArticleListDelegate()) const;
    FHttpRequestPtr NewsV1CategoryList(const NewsV1CategoryListRequest& Request, const FNewsV1CategoryListDelegate& Delegate = FNewsV1CategoryListDelegate()) const;
    FHttpRequestPtr NewsV1SourceList(const NewsV1SourceListRequest& Request, const FNewsV1SourceListDelegate& Delegate = FNewsV1SourceListDelegate()) const;
    
private:
    void OnNewsV1ArticleListResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FNewsV1ArticleListDelegate Delegate) const;
    void OnNewsV1CategoryListResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FNewsV1CategoryListDelegate Delegate) const;
    void OnNewsV1SourceListResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FNewsV1SourceListDelegate Delegate) const;
    
	FHttpRequestRef CreateHttpRequest(const Request& Request) const;
	bool IsValid() const;
	void HandleResponse(FHttpResponsePtr HttpResponse, bool bSucceeded, Response& InOutResponse) const;

	FString Url;
	TMap<FString,FString> AdditionalHeaderParams;
	mutable FHttpRetrySystem::FManager* RetryManager = nullptr;
	mutable TUniquePtr<HttpRetryManager> DefaultRetryManager;
};

}
