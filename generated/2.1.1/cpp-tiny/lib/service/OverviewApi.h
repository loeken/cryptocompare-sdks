#ifndef TINY_CPP_CLIENT_OverviewApi_H_
#define TINY_CPP_CLIENT_OverviewApi_H_


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

class OverviewApi : public Service {
public:
    OverviewApi() = default;

    virtual ~OverviewApi() = default;

    /**
    * .
    *
    * 
    * \param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
    * \param limit The number of data points to return
    * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
    * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
    * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
    * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
    */
    Response<
                GENERIC_RESPONSE
        >
    overviewV1HistoricalMarketcapAllAssetsDays(
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
            
            std::string responseFormat
            
    );
    /**
    * .
    *
    * 
    * \param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
    * \param limit The number of data points to return
    * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
    * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
    * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
    * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
    */
    Response<
                GENERIC_RESPONSE
        >
    overviewV1HistoricalMarketcapAllAssetsHours(
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
            
            std::string responseFormat
            
    );
    /**
    * .
    *
    * 
    * \param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
    * \param limit The number of data points to return
    * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
    * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
    * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
    * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
    */
    Response<
                GENERIC_RESPONSE
        >
    overviewV1HistoricalMarketcapFtwAssetsDays(
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
            
            std::string responseFormat
            
    );
    /**
    * .
    *
    * 
    * \param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
    * \param limit The number of data points to return
    * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
    * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
    * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
    * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
    */
    Response<
                GENERIC_RESPONSE
        >
    overviewV1HistoricalMarketcapFtwAssetsHours(
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
            
            std::string responseFormat
            
    );
    /**
    * .
    *
    * 
    * \param groups When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
    */
    Response<
                GENERIC_RESPONSE
        >
    overviewV1LatestMarketcapAllTick(
            std::list<std::string> groups
            
            
    );
    /**
    * .
    *
    * 
    * \param groups When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
    */
    Response<
                GENERIC_RESPONSE
        >
    overviewV1LatestMarketcapFtwTick(
            std::list<std::string> groups
            
            
    );
}; 

} 

#endif /* TINY_CPP_CLIENT_OverviewApi_H_ */