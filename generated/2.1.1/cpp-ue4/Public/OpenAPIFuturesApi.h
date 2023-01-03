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

class OPENAPI_API OpenAPIFuturesApi
{
public:
	OpenAPIFuturesApi();
	~OpenAPIFuturesApi();

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

	class FuturesV1HistoricalDaysRequest;
	class FuturesV1HistoricalDaysResponse;
	class FuturesV1HistoricalFundingRateDaysRequest;
	class FuturesV1HistoricalFundingRateDaysResponse;
	class FuturesV1HistoricalFundingRateHoursRequest;
	class FuturesV1HistoricalFundingRateHoursResponse;
	class FuturesV1HistoricalFundingRateMessagesRequest;
	class FuturesV1HistoricalFundingRateMessagesResponse;
	class FuturesV1HistoricalFundingRateMessagesHourRequest;
	class FuturesV1HistoricalFundingRateMessagesHourResponse;
	class FuturesV1HistoricalFundingRateMinutesRequest;
	class FuturesV1HistoricalFundingRateMinutesResponse;
	class FuturesV1HistoricalHoursRequest;
	class FuturesV1HistoricalHoursResponse;
	class FuturesV1HistoricalMinutesRequest;
	class FuturesV1HistoricalMinutesResponse;
	class FuturesV1HistoricalOpenInterestDaysRequest;
	class FuturesV1HistoricalOpenInterestDaysResponse;
	class FuturesV1HistoricalOpenInterestHoursRequest;
	class FuturesV1HistoricalOpenInterestHoursResponse;
	class FuturesV1HistoricalOpenInterestMessagesRequest;
	class FuturesV1HistoricalOpenInterestMessagesResponse;
	class FuturesV1HistoricalOpenInterestMessagesHourRequest;
	class FuturesV1HistoricalOpenInterestMessagesHourResponse;
	class FuturesV1HistoricalOpenInterestMinutesRequest;
	class FuturesV1HistoricalOpenInterestMinutesResponse;
	class FuturesV1HistoricalTradesRequest;
	class FuturesV1HistoricalTradesResponse;
	class FuturesV1HistoricalTradesHourRequest;
	class FuturesV1HistoricalTradesHourResponse;
	class FuturesV1LatestFundingRateTickRequest;
	class FuturesV1LatestFundingRateTickResponse;
	class FuturesV1LatestInstrumentMetadataRequest;
	class FuturesV1LatestInstrumentMetadataResponse;
	class FuturesV1LatestOpenInterestTickRequest;
	class FuturesV1LatestOpenInterestTickResponse;
	class FuturesV1LatestTickRequest;
	class FuturesV1LatestTickResponse;
	class FuturesV1MarketsRequest;
	class FuturesV1MarketsResponse;
	class FuturesV1MarketsInstrumentsRequest;
	class FuturesV1MarketsInstrumentsResponse;
	class FuturesV1MarketsInstrumentsUnmappedRequest;
	class FuturesV1MarketsInstrumentsUnmappedResponse;
	class IndexV1HistoricalDaysRequest;
	class IndexV1HistoricalDaysResponse;
	class IndexV1HistoricalHoursRequest;
	class IndexV1HistoricalHoursResponse;
	class IndexV1HistoricalMessagesRequest;
	class IndexV1HistoricalMessagesResponse;
	class IndexV1HistoricalMessagesHourRequest;
	class IndexV1HistoricalMessagesHourResponse;
	class IndexV1HistoricalMinutesRequest;
	class IndexV1HistoricalMinutesResponse;
	class IndexV1LatestInstrumentMetadataRequest;
	class IndexV1LatestInstrumentMetadataResponse;
	class IndexV1LatestTickRequest;
	class IndexV1LatestTickResponse;
	class IndexV1MarketsRequest;
	class IndexV1MarketsResponse;
	class IndexV1MarketsInstrumentsRequest;
	class IndexV1MarketsInstrumentsResponse;
	class IndexV1MarketsInstrumentsUnmappedRequest;
	class IndexV1MarketsInstrumentsUnmappedResponse;
	
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalDaysDelegate, const FuturesV1HistoricalDaysResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalFundingRateDaysDelegate, const FuturesV1HistoricalFundingRateDaysResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalFundingRateHoursDelegate, const FuturesV1HistoricalFundingRateHoursResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalFundingRateMessagesDelegate, const FuturesV1HistoricalFundingRateMessagesResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalFundingRateMessagesHourDelegate, const FuturesV1HistoricalFundingRateMessagesHourResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalFundingRateMinutesDelegate, const FuturesV1HistoricalFundingRateMinutesResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalHoursDelegate, const FuturesV1HistoricalHoursResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalMinutesDelegate, const FuturesV1HistoricalMinutesResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalOpenInterestDaysDelegate, const FuturesV1HistoricalOpenInterestDaysResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalOpenInterestHoursDelegate, const FuturesV1HistoricalOpenInterestHoursResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalOpenInterestMessagesDelegate, const FuturesV1HistoricalOpenInterestMessagesResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalOpenInterestMessagesHourDelegate, const FuturesV1HistoricalOpenInterestMessagesHourResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalOpenInterestMinutesDelegate, const FuturesV1HistoricalOpenInterestMinutesResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalTradesDelegate, const FuturesV1HistoricalTradesResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1HistoricalTradesHourDelegate, const FuturesV1HistoricalTradesHourResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1LatestFundingRateTickDelegate, const FuturesV1LatestFundingRateTickResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1LatestInstrumentMetadataDelegate, const FuturesV1LatestInstrumentMetadataResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1LatestOpenInterestTickDelegate, const FuturesV1LatestOpenInterestTickResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1LatestTickDelegate, const FuturesV1LatestTickResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1MarketsDelegate, const FuturesV1MarketsResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1MarketsInstrumentsDelegate, const FuturesV1MarketsInstrumentsResponse&);
    DECLARE_DELEGATE_OneParam(FFuturesV1MarketsInstrumentsUnmappedDelegate, const FuturesV1MarketsInstrumentsUnmappedResponse&);
    DECLARE_DELEGATE_OneParam(FIndexV1HistoricalDaysDelegate, const IndexV1HistoricalDaysResponse&);
    DECLARE_DELEGATE_OneParam(FIndexV1HistoricalHoursDelegate, const IndexV1HistoricalHoursResponse&);
    DECLARE_DELEGATE_OneParam(FIndexV1HistoricalMessagesDelegate, const IndexV1HistoricalMessagesResponse&);
    DECLARE_DELEGATE_OneParam(FIndexV1HistoricalMessagesHourDelegate, const IndexV1HistoricalMessagesHourResponse&);
    DECLARE_DELEGATE_OneParam(FIndexV1HistoricalMinutesDelegate, const IndexV1HistoricalMinutesResponse&);
    DECLARE_DELEGATE_OneParam(FIndexV1LatestInstrumentMetadataDelegate, const IndexV1LatestInstrumentMetadataResponse&);
    DECLARE_DELEGATE_OneParam(FIndexV1LatestTickDelegate, const IndexV1LatestTickResponse&);
    DECLARE_DELEGATE_OneParam(FIndexV1MarketsDelegate, const IndexV1MarketsResponse&);
    DECLARE_DELEGATE_OneParam(FIndexV1MarketsInstrumentsDelegate, const IndexV1MarketsInstrumentsResponse&);
    DECLARE_DELEGATE_OneParam(FIndexV1MarketsInstrumentsUnmappedDelegate, const IndexV1MarketsInstrumentsUnmappedResponse&);
    
    FHttpRequestPtr FuturesV1HistoricalDays(const FuturesV1HistoricalDaysRequest& Request, const FFuturesV1HistoricalDaysDelegate& Delegate = FFuturesV1HistoricalDaysDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalFundingRateDays(const FuturesV1HistoricalFundingRateDaysRequest& Request, const FFuturesV1HistoricalFundingRateDaysDelegate& Delegate = FFuturesV1HistoricalFundingRateDaysDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalFundingRateHours(const FuturesV1HistoricalFundingRateHoursRequest& Request, const FFuturesV1HistoricalFundingRateHoursDelegate& Delegate = FFuturesV1HistoricalFundingRateHoursDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalFundingRateMessages(const FuturesV1HistoricalFundingRateMessagesRequest& Request, const FFuturesV1HistoricalFundingRateMessagesDelegate& Delegate = FFuturesV1HistoricalFundingRateMessagesDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalFundingRateMessagesHour(const FuturesV1HistoricalFundingRateMessagesHourRequest& Request, const FFuturesV1HistoricalFundingRateMessagesHourDelegate& Delegate = FFuturesV1HistoricalFundingRateMessagesHourDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalFundingRateMinutes(const FuturesV1HistoricalFundingRateMinutesRequest& Request, const FFuturesV1HistoricalFundingRateMinutesDelegate& Delegate = FFuturesV1HistoricalFundingRateMinutesDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalHours(const FuturesV1HistoricalHoursRequest& Request, const FFuturesV1HistoricalHoursDelegate& Delegate = FFuturesV1HistoricalHoursDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalMinutes(const FuturesV1HistoricalMinutesRequest& Request, const FFuturesV1HistoricalMinutesDelegate& Delegate = FFuturesV1HistoricalMinutesDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalOpenInterestDays(const FuturesV1HistoricalOpenInterestDaysRequest& Request, const FFuturesV1HistoricalOpenInterestDaysDelegate& Delegate = FFuturesV1HistoricalOpenInterestDaysDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalOpenInterestHours(const FuturesV1HistoricalOpenInterestHoursRequest& Request, const FFuturesV1HistoricalOpenInterestHoursDelegate& Delegate = FFuturesV1HistoricalOpenInterestHoursDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalOpenInterestMessages(const FuturesV1HistoricalOpenInterestMessagesRequest& Request, const FFuturesV1HistoricalOpenInterestMessagesDelegate& Delegate = FFuturesV1HistoricalOpenInterestMessagesDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalOpenInterestMessagesHour(const FuturesV1HistoricalOpenInterestMessagesHourRequest& Request, const FFuturesV1HistoricalOpenInterestMessagesHourDelegate& Delegate = FFuturesV1HistoricalOpenInterestMessagesHourDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalOpenInterestMinutes(const FuturesV1HistoricalOpenInterestMinutesRequest& Request, const FFuturesV1HistoricalOpenInterestMinutesDelegate& Delegate = FFuturesV1HistoricalOpenInterestMinutesDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalTrades(const FuturesV1HistoricalTradesRequest& Request, const FFuturesV1HistoricalTradesDelegate& Delegate = FFuturesV1HistoricalTradesDelegate()) const;
    FHttpRequestPtr FuturesV1HistoricalTradesHour(const FuturesV1HistoricalTradesHourRequest& Request, const FFuturesV1HistoricalTradesHourDelegate& Delegate = FFuturesV1HistoricalTradesHourDelegate()) const;
    FHttpRequestPtr FuturesV1LatestFundingRateTick(const FuturesV1LatestFundingRateTickRequest& Request, const FFuturesV1LatestFundingRateTickDelegate& Delegate = FFuturesV1LatestFundingRateTickDelegate()) const;
    FHttpRequestPtr FuturesV1LatestInstrumentMetadata(const FuturesV1LatestInstrumentMetadataRequest& Request, const FFuturesV1LatestInstrumentMetadataDelegate& Delegate = FFuturesV1LatestInstrumentMetadataDelegate()) const;
    FHttpRequestPtr FuturesV1LatestOpenInterestTick(const FuturesV1LatestOpenInterestTickRequest& Request, const FFuturesV1LatestOpenInterestTickDelegate& Delegate = FFuturesV1LatestOpenInterestTickDelegate()) const;
    FHttpRequestPtr FuturesV1LatestTick(const FuturesV1LatestTickRequest& Request, const FFuturesV1LatestTickDelegate& Delegate = FFuturesV1LatestTickDelegate()) const;
    FHttpRequestPtr FuturesV1Markets(const FuturesV1MarketsRequest& Request, const FFuturesV1MarketsDelegate& Delegate = FFuturesV1MarketsDelegate()) const;
    FHttpRequestPtr FuturesV1MarketsInstruments(const FuturesV1MarketsInstrumentsRequest& Request, const FFuturesV1MarketsInstrumentsDelegate& Delegate = FFuturesV1MarketsInstrumentsDelegate()) const;
    FHttpRequestPtr FuturesV1MarketsInstrumentsUnmapped(const FuturesV1MarketsInstrumentsUnmappedRequest& Request, const FFuturesV1MarketsInstrumentsUnmappedDelegate& Delegate = FFuturesV1MarketsInstrumentsUnmappedDelegate()) const;
    FHttpRequestPtr IndexV1HistoricalDays(const IndexV1HistoricalDaysRequest& Request, const FIndexV1HistoricalDaysDelegate& Delegate = FIndexV1HistoricalDaysDelegate()) const;
    FHttpRequestPtr IndexV1HistoricalHours(const IndexV1HistoricalHoursRequest& Request, const FIndexV1HistoricalHoursDelegate& Delegate = FIndexV1HistoricalHoursDelegate()) const;
    FHttpRequestPtr IndexV1HistoricalMessages(const IndexV1HistoricalMessagesRequest& Request, const FIndexV1HistoricalMessagesDelegate& Delegate = FIndexV1HistoricalMessagesDelegate()) const;
    FHttpRequestPtr IndexV1HistoricalMessagesHour(const IndexV1HistoricalMessagesHourRequest& Request, const FIndexV1HistoricalMessagesHourDelegate& Delegate = FIndexV1HistoricalMessagesHourDelegate()) const;
    FHttpRequestPtr IndexV1HistoricalMinutes(const IndexV1HistoricalMinutesRequest& Request, const FIndexV1HistoricalMinutesDelegate& Delegate = FIndexV1HistoricalMinutesDelegate()) const;
    FHttpRequestPtr IndexV1LatestInstrumentMetadata(const IndexV1LatestInstrumentMetadataRequest& Request, const FIndexV1LatestInstrumentMetadataDelegate& Delegate = FIndexV1LatestInstrumentMetadataDelegate()) const;
    FHttpRequestPtr IndexV1LatestTick(const IndexV1LatestTickRequest& Request, const FIndexV1LatestTickDelegate& Delegate = FIndexV1LatestTickDelegate()) const;
    FHttpRequestPtr IndexV1Markets(const IndexV1MarketsRequest& Request, const FIndexV1MarketsDelegate& Delegate = FIndexV1MarketsDelegate()) const;
    FHttpRequestPtr IndexV1MarketsInstruments(const IndexV1MarketsInstrumentsRequest& Request, const FIndexV1MarketsInstrumentsDelegate& Delegate = FIndexV1MarketsInstrumentsDelegate()) const;
    FHttpRequestPtr IndexV1MarketsInstrumentsUnmapped(const IndexV1MarketsInstrumentsUnmappedRequest& Request, const FIndexV1MarketsInstrumentsUnmappedDelegate& Delegate = FIndexV1MarketsInstrumentsUnmappedDelegate()) const;
    
private:
    void OnFuturesV1HistoricalDaysResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalDaysDelegate Delegate) const;
    void OnFuturesV1HistoricalFundingRateDaysResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalFundingRateDaysDelegate Delegate) const;
    void OnFuturesV1HistoricalFundingRateHoursResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalFundingRateHoursDelegate Delegate) const;
    void OnFuturesV1HistoricalFundingRateMessagesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalFundingRateMessagesDelegate Delegate) const;
    void OnFuturesV1HistoricalFundingRateMessagesHourResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalFundingRateMessagesHourDelegate Delegate) const;
    void OnFuturesV1HistoricalFundingRateMinutesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalFundingRateMinutesDelegate Delegate) const;
    void OnFuturesV1HistoricalHoursResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalHoursDelegate Delegate) const;
    void OnFuturesV1HistoricalMinutesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalMinutesDelegate Delegate) const;
    void OnFuturesV1HistoricalOpenInterestDaysResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalOpenInterestDaysDelegate Delegate) const;
    void OnFuturesV1HistoricalOpenInterestHoursResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalOpenInterestHoursDelegate Delegate) const;
    void OnFuturesV1HistoricalOpenInterestMessagesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalOpenInterestMessagesDelegate Delegate) const;
    void OnFuturesV1HistoricalOpenInterestMessagesHourResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalOpenInterestMessagesHourDelegate Delegate) const;
    void OnFuturesV1HistoricalOpenInterestMinutesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalOpenInterestMinutesDelegate Delegate) const;
    void OnFuturesV1HistoricalTradesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalTradesDelegate Delegate) const;
    void OnFuturesV1HistoricalTradesHourResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1HistoricalTradesHourDelegate Delegate) const;
    void OnFuturesV1LatestFundingRateTickResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1LatestFundingRateTickDelegate Delegate) const;
    void OnFuturesV1LatestInstrumentMetadataResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1LatestInstrumentMetadataDelegate Delegate) const;
    void OnFuturesV1LatestOpenInterestTickResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1LatestOpenInterestTickDelegate Delegate) const;
    void OnFuturesV1LatestTickResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1LatestTickDelegate Delegate) const;
    void OnFuturesV1MarketsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1MarketsDelegate Delegate) const;
    void OnFuturesV1MarketsInstrumentsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1MarketsInstrumentsDelegate Delegate) const;
    void OnFuturesV1MarketsInstrumentsUnmappedResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FFuturesV1MarketsInstrumentsUnmappedDelegate Delegate) const;
    void OnIndexV1HistoricalDaysResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexV1HistoricalDaysDelegate Delegate) const;
    void OnIndexV1HistoricalHoursResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexV1HistoricalHoursDelegate Delegate) const;
    void OnIndexV1HistoricalMessagesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexV1HistoricalMessagesDelegate Delegate) const;
    void OnIndexV1HistoricalMessagesHourResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexV1HistoricalMessagesHourDelegate Delegate) const;
    void OnIndexV1HistoricalMinutesResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexV1HistoricalMinutesDelegate Delegate) const;
    void OnIndexV1LatestInstrumentMetadataResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexV1LatestInstrumentMetadataDelegate Delegate) const;
    void OnIndexV1LatestTickResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexV1LatestTickDelegate Delegate) const;
    void OnIndexV1MarketsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexV1MarketsDelegate Delegate) const;
    void OnIndexV1MarketsInstrumentsResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexV1MarketsInstrumentsDelegate Delegate) const;
    void OnIndexV1MarketsInstrumentsUnmappedResponse(FHttpRequestPtr HttpRequest, FHttpResponsePtr HttpResponse, bool bSucceeded, FIndexV1MarketsInstrumentsUnmappedDelegate Delegate) const;
    
	FHttpRequestRef CreateHttpRequest(const Request& Request) const;
	bool IsValid() const;
	void HandleResponse(FHttpResponsePtr HttpResponse, bool bSucceeded, Response& InOutResponse) const;

	FString Url;
	TMap<FString,FString> AdditionalHeaderParams;
	mutable FHttpRetrySystem::FManager* RetryManager = nullptr;
	mutable TUniquePtr<HttpRetryManager> DefaultRetryManager;
};

}
