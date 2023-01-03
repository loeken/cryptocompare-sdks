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
#include "OpenAPISpotApi.h"

#include "OpenAPIError.h"
#include "OpenAPIGENERICRESPONSE.h"
#include "OpenAPISPOTINSTRUMENTHISTODATARESPONSE.h"
#include "OpenAPISPOTINSTRUMENTMARKETDATARESPONSE.h"
#include "OpenAPISPOTINSTRUMENTMETADATARESPONSE.h"
#include "OpenAPISPOTINSTRUMENTTRADERESPONSE.h"

namespace OpenAPI
{

/* 

*/
class OPENAPI_API OpenAPISpotApi::SpotV1HistoricalDaysRequest : public Request
{
public:
    virtual ~SpotV1HistoricalDaysRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The exchange to obtain data from */
	FString Market;
	/* The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. */
	FString Instrument;
	/* When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME */
	TOptional<TArray<FString>> Groups;
	/* The number of data points to return */
	TOptional<int32> Limit;
	/* Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} */
	TOptional<int32> ToTs;
	/* The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries */
	TOptional<int32> Aggregate;
	/* Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. */
	TOptional<bool> Fill;
	enum class MappingPriorityEnum
	{
		MappedFirst,
		UnmappedFirst,
  	};

	static FString EnumToString(const MappingPriorityEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, MappingPriorityEnum& EnumValue);
	/* The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST */
	TOptional<MappingPriorityEnum> MappingPriority;
	enum class ResponseFormatEnum
	{
		Json,
		Csv,
  	};

	static FString EnumToString(const ResponseFormatEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, ResponseFormatEnum& EnumValue);
	/* The format of the data response in uppercase. It can be one of the following: JSON,CSV */
	TOptional<ResponseFormatEnum> ResponseFormat;
};

class OPENAPI_API OpenAPISpotApi::SpotV1HistoricalDaysResponse : public Response
{
public:
    virtual ~SpotV1HistoricalDaysResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPISPOTINSTRUMENTHISTODATARESPONSE Content;
};

/* 

*/
class OPENAPI_API OpenAPISpotApi::SpotV1HistoricalHoursRequest : public Request
{
public:
    virtual ~SpotV1HistoricalHoursRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The exchange to obtain data from */
	FString Market;
	/* The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. */
	FString Instrument;
	/* When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME */
	TOptional<TArray<FString>> Groups;
	/* The number of data points to return */
	TOptional<int32> Limit;
	/* Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} */
	TOptional<int32> ToTs;
	/* The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries */
	TOptional<int32> Aggregate;
	/* Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. */
	TOptional<bool> Fill;
	enum class MappingPriorityEnum
	{
		MappedFirst,
		UnmappedFirst,
  	};

	static FString EnumToString(const MappingPriorityEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, MappingPriorityEnum& EnumValue);
	/* The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST */
	TOptional<MappingPriorityEnum> MappingPriority;
	enum class ResponseFormatEnum
	{
		Json,
		Csv,
  	};

	static FString EnumToString(const ResponseFormatEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, ResponseFormatEnum& EnumValue);
	/* The format of the data response in uppercase. It can be one of the following: JSON,CSV */
	TOptional<ResponseFormatEnum> ResponseFormat;
};

class OPENAPI_API OpenAPISpotApi::SpotV1HistoricalHoursResponse : public Response
{
public:
    virtual ~SpotV1HistoricalHoursResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPISPOTINSTRUMENTHISTODATARESPONSE Content;
};

/* 

*/
class OPENAPI_API OpenAPISpotApi::SpotV1HistoricalMinutesRequest : public Request
{
public:
    virtual ~SpotV1HistoricalMinutesRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The exchange to obtain data from */
	FString Market;
	/* The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. */
	FString Instrument;
	/* When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,OHLC,OHLC_TRADE,TRADE,VOLUME */
	TOptional<TArray<FString>> Groups;
	/* The number of data points to return */
	TOptional<int32> Limit;
	/* Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received} */
	TOptional<int32> ToTs;
	/* The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries */
	TOptional<int32> Aggregate;
	/* Boolean value, if set to false or 0 we will not return data points for periods with no trading activity. */
	TOptional<bool> Fill;
	enum class MappingPriorityEnum
	{
		MappedFirst,
		UnmappedFirst,
  	};

	static FString EnumToString(const MappingPriorityEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, MappingPriorityEnum& EnumValue);
	/* The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST */
	TOptional<MappingPriorityEnum> MappingPriority;
	enum class ResponseFormatEnum
	{
		Json,
		Csv,
  	};

	static FString EnumToString(const ResponseFormatEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, ResponseFormatEnum& EnumValue);
	/* The format of the data response in uppercase. It can be one of the following: JSON,CSV */
	TOptional<ResponseFormatEnum> ResponseFormat;
};

class OPENAPI_API OpenAPISpotApi::SpotV1HistoricalMinutesResponse : public Response
{
public:
    virtual ~SpotV1HistoricalMinutesResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPISPOTINSTRUMENTHISTODATARESPONSE Content;
};

/* 

*/
class OPENAPI_API OpenAPISpotApi::SpotV1HistoricalOrderbookL2SnapshotMinuteRequest : public Request
{
public:
    virtual ~SpotV1HistoricalOrderbookL2SnapshotMinuteRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The exchange to obtain data from */
	FString Market;
	/* The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. */
	FString Instrument;
	/* Unix timestamp in seconds for the minute of the orderbook snapshot you are interested in. You can pass any timestamp within a minute but we will round it down the the full minute timestmap and return the orderbook l2 snapshot at that minute. */
	int32 MinuteTs = 0;
	/* The number of top bids and asks to return. */
	TOptional<int32> Depth;
	enum class MappingPriorityEnum
	{
		MappedFirst,
		UnmappedFirst,
  	};

	static FString EnumToString(const MappingPriorityEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, MappingPriorityEnum& EnumValue);
	/* The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST */
	TOptional<MappingPriorityEnum> MappingPriority;
	enum class ResponseFormatEnum
	{
		Json,
		Csv,
  	};

	static FString EnumToString(const ResponseFormatEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, ResponseFormatEnum& EnumValue);
	/* The format of the data response in uppercase. It can be one of the following: JSON,CSV */
	TOptional<ResponseFormatEnum> ResponseFormat;
};

class OPENAPI_API OpenAPISpotApi::SpotV1HistoricalOrderbookL2SnapshotMinuteResponse : public Response
{
public:
    virtual ~SpotV1HistoricalOrderbookL2SnapshotMinuteResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPIGENERICRESPONSE Content;
};

/* 

*/
class OPENAPI_API OpenAPISpotApi::SpotV1HistoricalTradesRequest : public Request
{
public:
    virtual ~SpotV1HistoricalTradesRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The exchange to obtain data from */
	FString Market;
	/* The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. */
	FString Instrument;
	/* Unix timestamp in seconds of the earliest trade in the response. */
	TOptional<int32> AfterTs;
	/* The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request. */
	TOptional<int32> LastCcseq;
	/* The maximum number of trades to return */
	TOptional<int32> Limit;
	enum class MappingPriorityEnum
	{
		MappedFirst,
		UnmappedFirst,
  	};

	static FString EnumToString(const MappingPriorityEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, MappingPriorityEnum& EnumValue);
	/* The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST */
	TOptional<MappingPriorityEnum> MappingPriority;
	enum class ResponseFormatEnum
	{
		Json,
		Csv,
  	};

	static FString EnumToString(const ResponseFormatEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, ResponseFormatEnum& EnumValue);
	/* The format of the data response in uppercase. It can be one of the following: JSON,CSV */
	TOptional<ResponseFormatEnum> ResponseFormat;
	/* If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. */
	TOptional<bool> Return404OnEmptyResponse;
};

class OPENAPI_API OpenAPISpotApi::SpotV1HistoricalTradesResponse : public Response
{
public:
    virtual ~SpotV1HistoricalTradesResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPISPOTINSTRUMENTTRADERESPONSE Content;
};

/* 

*/
class OPENAPI_API OpenAPISpotApi::SpotV1HistoricalTradesHourRequest : public Request
{
public:
    virtual ~SpotV1HistoricalTradesHourRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The exchange to obtain data from */
	FString Market;
	/* The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. */
	FString Instrument;
	/* Unix timestamp in seconds for the hour containing the trades you are interested in. You can pass any timestamp within an hour but we will round it down the the full hour timestmap and return all trades in that hour. */
	TOptional<int32> HourTs;
	enum class MappingPriorityEnum
	{
		MappedFirst,
		UnmappedFirst,
  	};

	static FString EnumToString(const MappingPriorityEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, MappingPriorityEnum& EnumValue);
	/* The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST */
	TOptional<MappingPriorityEnum> MappingPriority;
	enum class ResponseFormatEnum
	{
		Json,
		Csv,
  	};

	static FString EnumToString(const ResponseFormatEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, ResponseFormatEnum& EnumValue);
	/* The format of the data response in uppercase. It can be one of the following: JSON,CSV */
	TOptional<ResponseFormatEnum> ResponseFormat;
	/* If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats. */
	TOptional<bool> Return404OnEmptyResponse;
};

class OPENAPI_API OpenAPISpotApi::SpotV1HistoricalTradesHourResponse : public Response
{
public:
    virtual ~SpotV1HistoricalTradesHourResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPISPOTINSTRUMENTTRADERESPONSE Content;
};

/* 

*/
class OPENAPI_API OpenAPISpotApi::SpotV1LatestInstrumentMetadataRequest : public Request
{
public:
    virtual ~SpotV1LatestInstrumentMetadataRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The exchange to obtain data from */
	FString Market;
	/* A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. */
	TArray<FString> Instruments;
	/* When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE */
	TOptional<TArray<FString>> Groups;
	enum class MappingPriorityEnum
	{
		MappedFirst,
		UnmappedFirst,
  	};

	static FString EnumToString(const MappingPriorityEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, MappingPriorityEnum& EnumValue);
	/* The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST */
	TOptional<MappingPriorityEnum> MappingPriority;
};

class OPENAPI_API OpenAPISpotApi::SpotV1LatestInstrumentMetadataResponse : public Response
{
public:
    virtual ~SpotV1LatestInstrumentMetadataResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPISPOTINSTRUMENTMETADATARESPONSE Content;
};

/* 

*/
class OPENAPI_API OpenAPISpotApi::SpotV1LatestTickRequest : public Request
{
public:
    virtual ~SpotV1LatestTickRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The exchange to obtain data from */
	FString Market;
	/* A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. */
	TArray<FString> Instruments;
	/* When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,MAPPING,VALUE,LAST_UPDATE,LAST_PROCESSED,TOP_OF_BOOK,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME */
	TOptional<TArray<FString>> Groups;
	enum class MappingPriorityEnum
	{
		MappedFirst,
		UnmappedFirst,
  	};

	static FString EnumToString(const MappingPriorityEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, MappingPriorityEnum& EnumValue);
	/* The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST */
	TOptional<MappingPriorityEnum> MappingPriority;
};

class OPENAPI_API OpenAPISpotApi::SpotV1LatestTickResponse : public Response
{
public:
    virtual ~SpotV1LatestTickResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPISPOTINSTRUMENTMARKETDATARESPONSE Content;
};

/* 

*/
class OPENAPI_API OpenAPISpotApi::SpotV1MarketsRequest : public Request
{
public:
    virtual ~SpotV1MarketsRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The exchange to obtain data from */
	TOptional<FString> Market;
};

class OPENAPI_API OpenAPISpotApi::SpotV1MarketsResponse : public Response
{
public:
    virtual ~SpotV1MarketsResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPIGENERICRESPONSE Content;
};

/* 

*/
class OPENAPI_API OpenAPISpotApi::SpotV1MarketsInstrumentsRequest : public Request
{
public:
    virtual ~SpotV1MarketsInstrumentsRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The exchange to obtain data from */
	TOptional<FString> Market;
	/* The mapped instrument to retrieve on a specific market. */
	TOptional<FString> Instrument;
	enum class InstrumentStatusEnum
	{
		Active,
		Ignored,
		Retired,
		Expired,
  	};

	static FString EnumToString(const InstrumentStatusEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, InstrumentStatusEnum& EnumValue);
	/* The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED */
	TOptional<TArray<InstrumentStatusEnum>> InstrumentStatus;
};

class OPENAPI_API OpenAPISpotApi::SpotV1MarketsInstrumentsResponse : public Response
{
public:
    virtual ~SpotV1MarketsInstrumentsResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPIGENERICRESPONSE Content;
};

/* 

*/
class OPENAPI_API OpenAPISpotApi::SpotV1MarketsInstrumentsUnmappedRequest : public Request
{
public:
    virtual ~SpotV1MarketsInstrumentsUnmappedRequest() {}
	void SetupHttpRequest(const FHttpRequestRef& HttpRequest) const final;
	FString ComputePath() const final;

	/* The exchange to obtain data from */
	TOptional<FString> Market;
	/* The unmapped instrument to retrieve on a specific market. */
	TOptional<FString> Instrument;
	enum class InstrumentStatusEnum
	{
		Active,
		Ignored,
		Retired,
		Expired,
  	};

	static FString EnumToString(const InstrumentStatusEnum& EnumValue);
	static bool EnumFromString(const FString& EnumAsString, InstrumentStatusEnum& EnumValue);
	/* The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED */
	TOptional<TArray<InstrumentStatusEnum>> InstrumentStatus;
};

class OPENAPI_API OpenAPISpotApi::SpotV1MarketsInstrumentsUnmappedResponse : public Response
{
public:
    virtual ~SpotV1MarketsInstrumentsUnmappedResponse() {}
	void SetHttpResponseCode(EHttpResponseCodes::Type InHttpResponseCode) final;
	bool FromJson(const TSharedPtr<FJsonValue>& JsonValue) final;

    OpenAPIGENERICRESPONSE Content;
};

}