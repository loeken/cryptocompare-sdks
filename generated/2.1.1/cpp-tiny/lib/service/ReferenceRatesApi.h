#ifndef TINY_CPP_CLIENT_ReferenceRatesApi_H_
#define TINY_CPP_CLIENT_ReferenceRatesApi_H_


#include "Response.h"
#include "Arduino.h"
#include "Service.h"
#include "Helpers.h"
#include <list>

#include "Error.h"
#include "GENERIC_RESPONSE.h"

namespace Tiny {

/**
 *  Class 
 * Generated with openapi::tiny-cpp-client
 */

class ReferenceRatesApi : public Service {
public:
    ReferenceRatesApi() = default;

    virtual ~ReferenceRatesApi() = default;

    /**
    * .
    *
    * 
    * \param market The exchange to obtain data from *Required*
    * \param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. *Required*
    * \param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
    * \param limit The number of data points to return
    * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
    * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
    * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
    * \param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
    */
    Response<
                GENERIC_RESPONSE
        >
    indexCcV1HistoricalDays(
            
            std::string market
            , 
            
            std::string instrument
            , 
            std::list<std::string> groups
            
            , 
            
            int limit
            , 
            
            int toTs
            , 
            
            int aggregate
            , 
            
            bool fill
            , 
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
    );
    /**
    * .
    *
    * 
    * \param market The exchange to obtain data from *Required*
    * \param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. *Required*
    * \param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
    * \param limit The number of data points to return
    * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
    * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
    * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
    * \param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
    */
    Response<
                GENERIC_RESPONSE
        >
    indexCcV1HistoricalHours(
            
            std::string market
            , 
            
            std::string instrument
            , 
            std::list<std::string> groups
            
            , 
            
            int limit
            , 
            
            int toTs
            , 
            
            int aggregate
            , 
            
            bool fill
            , 
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
    );
    /**
    * .
    *
    * 
    * \param market The exchange to obtain data from *Required*
    * \param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. *Required*
    * \param afterTs Unix timestamp in seconds of the earliest index message in the response
    * \param lastCcseq The CCSEQ of the last message seen in the previous request. Useful for pagination within messages that happened in the same second. It will look though the messages in the same second and discard all messages until it reaches the CCSEQ from the last_ccseq parameter. If the CCSEQ is not part of that second, it will discard all messages in the second and only return messages starting from the next second onwards. When starting an integration with our API, on the first request, you should either not send a value for this paramater (defaults to 0 and does not discard any messages) or send 0. After you get a response use the TIMESTAMP and CCSEQ from the last message in the response. Pass the TIMESTAMP in the after_ts parameter and the CCSEQ in the last_ccseq parameter on your next request.
    * \param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    * \param limit The maximum number of index messages to return
    * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
    * \param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
    */
    Response<
                GENERIC_RESPONSE
        >
    indexCcV1HistoricalMessages(
            
            std::string market
            , 
            
            std::string instrument
            , 
            
            int afterTs
            , 
            
            int lastCcseq
            , 
            
            std::string mappingPriority
            , 
            
            int limit
            , 
            
            std::string responseFormat
            , 
            
            bool return404OnEmptyResponse
            
    );
    /**
    * .
    *
    * 
    * \param market The exchange to obtain data from *Required*
    * \param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. *Required*
    * \param hourTs Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
    * \param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
    * \param return404OnEmptyResponse If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
    */
    Response<
                GENERIC_RESPONSE
        >
    indexCcV1HistoricalMessagesHour(
            
            std::string market
            , 
            
            std::string instrument
            , 
            
            int hourTs
            , 
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            , 
            
            bool return404OnEmptyResponse
            
    );
    /**
    * .
    *
    * 
    * \param market The exchange to obtain data from *Required*
    * \param instrument The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first. *Required*
    * \param groups When requesting historical entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,OHLC_MESSAGE,MESSAGE,VOLUME
    * \param limit The number of data points to return
    * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
    * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
    * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
    * \param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
    */
    Response<
                GENERIC_RESPONSE
        >
    indexCcV1HistoricalMinutes(
            
            std::string market
            , 
            
            std::string instrument
            , 
            std::list<std::string> groups
            
            , 
            
            int limit
            , 
            
            int toTs
            , 
            
            int aggregate
            , 
            
            bool fill
            , 
            
            std::string mappingPriority
            , 
            
            std::string responseFormat
            
    );
    /**
    * .
    *
    * 
    * \param market The exchange to obtain data from *Required*
    * \param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. *Required*
    * \param groups When requesting metadata entries you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: STATUS,INTERNAL,GENERAL,MIGRATION,SOURCE
    * \param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    */
    Response<
                GENERIC_RESPONSE
        >
    indexCcV1LatestInstrumentMetadata(
            
            std::string market
            , 
            std::list<std::string> instruments
            
            , 
            std::list<std::string> groups
            
            , 
            
            std::string mappingPriority
            
    );
    /**
    * .
    *
    * 
    * \param market The exchange to obtain data from *Required*
    * \param instruments A comma separated array of mapped and/or unmapped instruments to retrieve for a specific market (you can use either the instrument XXBTZUSD or mapped instrument (base - quote) BTC-USD on kraken as an example). We first check each instrument against the mapped list and then against the unmapped list but you can use the mapping_priority param to check the unmapped list first. *Required*
    * \param groups When requesting tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,CURRENT_WEEK,CURRENT_MONTH,CURRENT_YEAR,MOVING_24_HOUR,MOVING_7_DAY,MOVING_30_DAY,MOVING_90_DAY,MOVING_180_DAY,MOVING_365_DAY,LIFETIME
    * \param mappingPriority The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
    */
    Response<
                GENERIC_RESPONSE
        >
    indexCcV1LatestTick(
            
            std::string market
            , 
            std::list<std::string> instruments
            
            , 
            std::list<std::string> groups
            
            , 
            
            std::string mappingPriority
            
    );
    /**
    * .
    *
    * 
    * \param market The exchange to obtain data from
    */
    Response<
                GENERIC_RESPONSE
        >
    indexCcV1Markets(
            
            std::string market
            
    );
    /**
    * .
    *
    * 
    * \param market The exchange to obtain data from
    * \param instrument The mapped instrument to retrieve on a specific market.
    * \param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
    */
    Response<
                GENERIC_RESPONSE
        >
    indexCcV1MarketsInstruments(
            
            std::string market
            , 
            
            std::string instrument
            , 
            std::list<std::string> instrumentStatus
            
            
    );
    /**
    * .
    *
    * 
    * \param market The exchange to obtain data from
    * \param instrument The unmapped instrument to retrieve on a specific market.
    * \param instrumentStatus The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
    */
    Response<
                GENERIC_RESPONSE
        >
    indexCcV1MarketsInstrumentsUnmapped(
            
            std::string market
            , 
            
            std::string instrument
            , 
            std::list<std::string> instrumentStatus
            
            
    );
}; 

} 

#endif /* TINY_CPP_CLIENT_ReferenceRatesApi_H_ */