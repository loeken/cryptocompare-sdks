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

class OPENAPI_API OpenAPIReferenceRatesApi
{
public:
	OpenAPIReferenceRatesApi();
	~OpenAPIReferenceRatesApi();

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

	class IndexCcV1HistoricalDaysRequest;
	class IndexCcV1HistoricalDaysResponse;
	class IndexCcV1HistoricalHoursRequest;
	class IndexCcV1HistoricalHoursResponse;
	class IndexCcV1HistoricalMessagesRequest;
	class IndexCcV1HistoricalMessagesResponse;
	class IndexCcV1HistoricalMessagesHourRequest;
	class IndexCcV1HistoricalMessagesHourResponse;
	class IndexCcV1HistoricalMinutesRequest;
	class IndexCcV1HistoricalMinutesResponse;
	class IndexCcV1LatestInstrumentMetadataRequest;
	class IndexCcV1LatestInstrumentMetadataResponse;
	class IndexCcV1LatestTickRequest;
	class IndexCcV1LatestTickResponse;
	class IndexCcV1MarketsRequest;
	class IndexCcV1MarketsResponse;
	class IndexCcV1MarketsInstrumentsRequest;
	class IndexCcV1MarketsInstrumentsResponse;
	class IndexCcV1MarketsInstrumentsUnmappedRequest;
	class IndexCcV1MarketsInstrumentsUnmappedResponse;
	
    DECLARE_DELEGATE_OneParam(FIndexCcV1HistoricalDaysDelegate, const IndexCcV1HistoricalDaysResponse&);
    DECLARE_DELEGATE_OneParam(FIndexCcV1HistoricalHoursDelegate, const IndexCcV1HistoricalHoursResponse&);
    DECLARE_DELEGATE_OneParam(FIndexCcV1HistoricalMessagesDelegate, const IndexCcV1HistoricalMessagesResponse&);
    DECLARE_DELEGATE_OneParam(FIndexCcV1HistoricalMessagesHourDelegate, const IndexCcV1HistoricalMessagesHourResponse&);
    DECLARE_DELEGATE_OneParam(FIndexCcV1HistoricalMinutesDelegate, const IndexCcV1HistoricalMinutesResponse&);
    DECLARE_DELEGATE_OneParam(FIndexCcV1LatestInstrumentMetadataDelegate, const IndexCcV1LatestInstrumentMetadataResponse&);
    DECLARE_DELEGATE_OneParam(FIndexCcV1LatestTickDelegate, const IndexCcV1LatestTickResponse&);
    DECLARE_DELEGATE_OneParam(FIndexCcV1MarketsDelegate, const IndexCcV1MarketsResponse&);
    DECLARE_DELEGATE_OneParam(FIndexCcV1MarketsInstrumentsDelegate, const IndexCcV1MarketsInstrumentsResponse&);
    DECLARE_DELEGATE_OneParam(FIndexCcV1MarketsInstrumentsUnmappedDelegate, const IndexCcV1MarketsInstrumentsUnmappedResponse&);
    
    FHttpRequestPtr IndexCcV1HistoricalDays(const IndexCcV1HistoricalDaysRequest& Request, const FIndexCcV1HistoricalDaysDelegate& Delegate = FIndexCcV1HistoricalDaysDelegate()) const;
    FHttpRequestPtr IndexCcV1HistoricalHours(const IndexCcV1HistoricalHoursRequest& Request, const FIndexCcV1HistoricalHoursDelegate& Delegate = FIndexCcV1HistoricalHoursDelegate()) const;
    FHttpRequestPtr IndexCcV1HistoricalMessages(const IndexCcV1HistoricalMessagesRequest& Request, const FIndexCcV1HistoricalMessagesDelegate& Delegate = FIndexCcV1HistoricalMessagesDelegate()) const;
    FHttpRequestPtr IndexCcV1HistoricalMessagesHour(const IndexCcV1HistoricalMessagesHourRequest& Request, const FIndexCcV1HistoricalMessagesHourDelegate& Delegate = FIndexCcV1HistoricalMessagesHourDelegate()) const;
    FHttpRequestPtr IndexCcV1HistoricalMinutes(const IndexCcV1HistoricalMinutesRequest& Request, const FIndexCcV1HistoricalMinutesDelegate& Delegate = FIndexCcV1HistoricalMinutesDelegate()) const;
    FHttpRequestPtr IndexCcV1LatestInstrumentMetadata(const IndexCcV1LatestInstrumentMetadataRequest& Request, const FIndexCcV1LatestInstrumentMetadataDelegate& Delegate = FIndexCcV1LatestInstrumentMetadataDelegate()) const;
    FHttpRequestPtr IndexCcV1LatestTick(const IndexCcV1LatestTickRequest& Request, const FIndexCcV1LatestTickDelegate& Delegate = FIndexCcV1LatestTickDelegate()) const;
    FHttpRequestPtr IndexCcV1Markets(const IndexCcV1MarketsRequest& Request, const FIndexCcV1MarketsDelegate& Delegate = FIndexCcV1MarketsDelegate()) const;
    FHttpRequestPtr IndexCcV1MarketsInstruments(const IndexCcV1MarketsInstrumentsRequest& Request, const FIndexCcV1MarketsInstrumentsDelegate& Delegate = FIndexCcV1MarketsInstrumentsDelegate()) const;
    FHttpRequestPtr IndexCcV1MarketsInstrumentsUnmapped(const IndexCcV1MarketsInstrumentsUnmappedRequest& Request, const FIndexCcV1MarketsInstrumentsUnmappedDelegate& Delegate = FIndexCcV1MarketsInstrumentsUnmappedDelegate()) const;
    
private:
    void OnIndexCcV1HistoricalDaysResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexCcV1HistoricalDaysDelegate Delegate) const;
    void OnIndexCcV1HistoricalHoursResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexCcV1HistoricalHoursDelegate Delegate) const;
    void OnIndexCcV1HistoricalMessagesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexCcV1HistoricalMessagesDelegate Delegate) const;
    void OnIndexCcV1HistoricalMessagesHourResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexCcV1HistoricalMessagesHourDelegate Delegate) const;
    void OnIndexCcV1HistoricalMinutesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexCcV1HistoricalMinutesDelegate Delegate) const;
    void OnIndexCcV1LatestInstrumentMetadataResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexCcV1LatestInstrumentMetadataDelegate Delegate) const;
    void OnIndexCcV1LatestTickResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexCcV1LatestTickDelegate Delegate) const;
    void OnIndexCcV1MarketsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexCcV1MarketsDelegate Delegate) const;
    void OnIndexCcV1MarketsInstrumentsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexCcV1MarketsInstrumentsDelegate Delegate) const;
    void OnIndexCcV1MarketsInstrumentsUnmappedResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexCcV1MarketsInstrumentsUnmappedDelegate Delegate) const;
    
	FHttpRequestRef CreateHttpRequest(const Request& Request) const;
	bool IsValid() const;
	void HandleResponse(FHttpResponsePtr HttpResponse, bool bSucceeded, Response& InOutResponse) const;

	FString Url;
	TMap<FString,FString> AdditionalHeaderParams;
	mutable FHttpRetrySystem::FManager* RetryManager = nullptr;
	mutable TUniquePtr<HttpRetryManager> DefaultRetryManager;
};

}
