#ifndef _OverviewManager_H_
#define _OverviewManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Error.h"
#include "GENERIC_RESPONSE.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Overview Overview
 * \ingroup Operations
 *  @{
 */
class OverviewManager {
public:
	OverviewManager();
	virtual ~OverviewManager();

/*! \brief . *Synchronous*
 *
 * 
 * \param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
 * \param limit The number of data points to return
 * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
 * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
 * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
 * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool overviewV1HistoricalMarketcapAllAssetsDaysSync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
 * \param limit The number of data points to return
 * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
 * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
 * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
 * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool overviewV1HistoricalMarketcapAllAssetsDaysAsync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
 * \param limit The number of data points to return
 * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
 * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
 * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
 * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool overviewV1HistoricalMarketcapAllAssetsHoursSync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param groups When requesting all market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
 * \param limit The number of data points to return
 * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
 * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
 * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
 * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool overviewV1HistoricalMarketcapAllAssetsHoursAsync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
 * \param limit The number of data points to return
 * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
 * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
 * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
 * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool overviewV1HistoricalMarketcapFtwAssetsDaysSync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
 * \param limit The number of data points to return
 * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
 * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
 * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
 * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool overviewV1HistoricalMarketcapFtwAssetsDaysAsync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
 * \param limit The number of data points to return
 * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
 * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
 * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
 * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool overviewV1HistoricalMarketcapFtwAssetsHoursSync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param groups When requesting ftw universe market cap historical data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,OHLC,VOLUME
 * \param limit The number of data points to return
 * \param toTs Returns historical data before this unix timestamp. If you want to get all the available historical data, you can use limit=2000 and keep going back in time using the to_ts param. You can then keep requesting batches using: &limit=2000&to_ts={the earliest unix timestamp received}
 * \param aggregate The number of points to aggregate for each returned value. E.g. passing 5 on a minute histo data endpoint will return data at 5 minute intervals. You are still limited to a maximum of 2000 minute points so the maximum you can get is 400 5 minutes interval entries
 * \param fill Boolean value, if set to false or 0 we will not return data points for periods with no trading activity.
 * \param responseFormat The format of the data response in uppercase. It can be one of the following: JSON,CSV
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool overviewV1HistoricalMarketcapFtwAssetsHoursAsync(char * accessToken,
	std::list<std::string> groups, int limit, int toTs, int aggregate, bool fill, std::string responseFormat, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param groups When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool overviewV1LatestMarketcapAllTickSync(char * accessToken,
	std::list<std::string> groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param groups When requesting all market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool overviewV1LatestMarketcapAllTickAsync(char * accessToken,
	std::list<std::string> groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param groups When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool overviewV1LatestMarketcapFtwTickSync(char * accessToken,
	std::list<std::string> groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param groups When requesting ftw universe market cap tick data you can fiter by specific groups of interest. To do so just pass the groups of interest into the URL as a comma separted list. If left empty it will get all data that you account is allowed to access. The groups available are: ID,VALUE,LAST_UPDATE,CURRENT_HOUR,CURRENT_DAY,MOVING_24_HOUR
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool overviewV1LatestMarketcapFtwTickAsync(char * accessToken,
	std::list<std::string> groups, 
	void(* handler)(GENERIC_RESPONSE, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://data-api.cryptocompare.com";
	}
};
/** @}*/

}
}
#endif /* OverviewManager_H_ */
