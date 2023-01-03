/*
 * SPOT_INSTRUMENT_MARKET_DATA.h
 *
 * 
 */

#ifndef _SPOT_INSTRUMENT_MARKET_DATA_H_
#define _SPOT_INSTRUMENT_MARKET_DATA_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class SPOT_INSTRUMENT_MARKET_DATA : public Object {
public:
	/*! \brief Constructor.
	 */
	SPOT_INSTRUMENT_MARKET_DATA();
	SPOT_INSTRUMENT_MARKET_DATA(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SPOT_INSTRUMENT_MARKET_DATA();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped.
	 */
	std::string getBASE();

	/*! \brief Set The mapped from asset (base / symbol/ coin), e.g. BTC. Only available on instruments that have been mapped.
	 */
	void setBASE(std::string  bASE);
	/*! \brief Get Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send.
	 */
	int getCCSEQ();

	/*! \brief Set Our internal sequence number for this tick update. This is unique per market / exchange and trading pair / instrument. It will always be increasing by 1 for each new tick update we send.
	 */
	void setCCSEQ(int  cCSEQ);
	/*! \brief Get The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
	 */
	int getCURRENTDAYHIGH();

	/*! \brief Set The highest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
	 */
	void setCURRENTDAYHIGH(int  cURRENT_DAY_HIGH);
	/*! \brief Get The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
	 */
	int getCURRENTDAYLOW();

	/*! \brief Set The lowest trade price of the current day (00:00:00 GMT/UTC). If there were no updates in the time period, the open price will be given. Given in the quote asset.
	 */
	void setCURRENTDAYLOW(int  cURRENT_DAY_LOW);
	/*! \brief Get The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset.
	 */
	int getCURRENTDAYOPEN();

	/*! \brief Set The open price for the current day, this is based on the closest trade occurring before the start of the current day (00:00:00 GMT/UTC). Given in the quote asset.
	 */
	void setCURRENTDAYOPEN(int  cURRENT_DAY_OPEN);
	/*! \brief Get The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
	 */
	int getCURRENTDAYQUOTEVOLUME();

	/*! \brief Set The sum of all trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
	 */
	void setCURRENTDAYQUOTEVOLUME(int  cURRENT_DAY_QUOTE_VOLUME);
	/*! \brief Get The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
	 */
	int getCURRENTDAYQUOTEVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
	 */
	void setCURRENTDAYQUOTEVOLUMEBUY(int  cURRENT_DAY_QUOTE_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
	 */
	int getCURRENTDAYQUOTEVOLUMESELL();

	/*! \brief Set The sum of all sell trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
	 */
	void setCURRENTDAYQUOTEVOLUMESELL(int  cURRENT_DAY_QUOTE_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
	 */
	int getCURRENTDAYQUOTEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quote quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the quote asset.
	 */
	void setCURRENTDAYQUOTEVOLUMEUNKNOWN(int  cURRENT_DAY_QUOTE_VOLUME_UNKNOWN);
	/*! \brief Get The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC).
	 */
	int getCURRENTDAYTOTALTRADES();

	/*! \brief Set The total number of trades that have occurred since the start of the current day (00:00:00 GMT/UTC).
	 */
	void setCURRENTDAYTOTALTRADES(int  cURRENT_DAY_TOTAL_TRADES);
	/*! \brief Get The total number of buy trades since the start of the current day (00:00:00 GMT/UTC).
	 */
	int getCURRENTDAYTOTALTRADESBUY();

	/*! \brief Set The total number of buy trades since the start of the current day (00:00:00 GMT/UTC).
	 */
	void setCURRENTDAYTOTALTRADESBUY(int  cURRENT_DAY_TOTAL_TRADES_BUY);
	/*! \brief Get The total number of sell trades since the start of the current day (00:00:00 GMT/UTC).
	 */
	int getCURRENTDAYTOTALTRADESSELL();

	/*! \brief Set The total number of sell trades since the start of the current day (00:00:00 GMT/UTC).
	 */
	void setCURRENTDAYTOTALTRADESSELL(int  cURRENT_DAY_TOTAL_TRADES_SELL);
	/*! \brief Get The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC).
	 */
	int getCURRENTDAYTOTALTRADESUNKNOWN();

	/*! \brief Set The total number of unknown trades since the start of the current day (00:00:00 GMT/UTC).
	 */
	void setCURRENTDAYTOTALTRADESUNKNOWN(int  cURRENT_DAY_TOTAL_TRADES_UNKNOWN);
	/*! \brief Get The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
	 */
	int getCURRENTDAYVOLUME();

	/*! \brief Set The sum of all trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
	 */
	void setCURRENTDAYVOLUME(int  cURRENT_DAY_VOLUME);
	/*! \brief Get The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
	 */
	int getCURRENTDAYVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
	 */
	void setCURRENTDAYVOLUMEBUY(int  cURRENT_DAY_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
	 */
	int getCURRENTDAYVOLUMESELL();

	/*! \brief Set The sum of all sell trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
	 */
	void setCURRENTDAYVOLUMESELL(int  cURRENT_DAY_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
	 */
	int getCURRENTDAYVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quantities from the start of the current day (00:00:00 GMT/UTC) until now. Given in the base asset.
	 */
	void setCURRENTDAYVOLUMEUNKNOWN(int  cURRENT_DAY_VOLUME_UNKNOWN);
	/*! \brief Get The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
	 */
	int getCURRENTHOURHIGH();

	/*! \brief Set The highest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
	 */
	void setCURRENTHOURHIGH(int  cURRENT_HOUR_HIGH);
	/*! \brief Get The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
	 */
	int getCURRENTHOURLOW();

	/*! \brief Set The lowest trade price of the current hour. If there were no updates in the time period, the open price will be given. Given in the quote asset.
	 */
	void setCURRENTHOURLOW(int  cURRENT_HOUR_LOW);
	/*! \brief Get The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset.
	 */
	int getCURRENTHOUROPEN();

	/*! \brief Set The open price for the current hour, this is based on the closest trade occurring before the start of the current hour. Given in the quote asset.
	 */
	void setCURRENTHOUROPEN(int  cURRENT_HOUR_OPEN);
	/*! \brief Get The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset.
	 */
	int getCURRENTHOURQUOTEVOLUME();

	/*! \brief Set The sum of all trade quote quantities from the start of the current hour until now. Given in the quote asset.
	 */
	void setCURRENTHOURQUOTEVOLUME(int  cURRENT_HOUR_QUOTE_VOLUME);
	/*! \brief Get The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset.
	 */
	int getCURRENTHOURQUOTEVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quote quantities from the start of the current hour until now. Given in the quote asset.
	 */
	void setCURRENTHOURQUOTEVOLUMEBUY(int  cURRENT_HOUR_QUOTE_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset.
	 */
	int getCURRENTHOURQUOTEVOLUMESELL();

	/*! \brief Set The sum of all sell trade quote quantities from the start of the current hour until now. Given in the quote asset.
	 */
	void setCURRENTHOURQUOTEVOLUMESELL(int  cURRENT_HOUR_QUOTE_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset.
	 */
	int getCURRENTHOURQUOTEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quote quantities from the start of the current hour until now. Given in the quote asset.
	 */
	void setCURRENTHOURQUOTEVOLUMEUNKNOWN(int  cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN);
	/*! \brief Get The total number of trades that have occurred since the start of the current hour.
	 */
	int getCURRENTHOURTOTALTRADES();

	/*! \brief Set The total number of trades that have occurred since the start of the current hour.
	 */
	void setCURRENTHOURTOTALTRADES(int  cURRENT_HOUR_TOTAL_TRADES);
	/*! \brief Get The total number of buy trades since the start of the current hour.
	 */
	int getCURRENTHOURTOTALTRADESBUY();

	/*! \brief Set The total number of buy trades since the start of the current hour.
	 */
	void setCURRENTHOURTOTALTRADESBUY(int  cURRENT_HOUR_TOTAL_TRADES_BUY);
	/*! \brief Get The total number of sell trades since the start of the current hour.
	 */
	int getCURRENTHOURTOTALTRADESSELL();

	/*! \brief Set The total number of sell trades since the start of the current hour.
	 */
	void setCURRENTHOURTOTALTRADESSELL(int  cURRENT_HOUR_TOTAL_TRADES_SELL);
	/*! \brief Get The total number of unknown trades since the start of the current hour.
	 */
	int getCURRENTHOURTOTALTRADESUNKNOWN();

	/*! \brief Set The total number of unknown trades since the start of the current hour.
	 */
	void setCURRENTHOURTOTALTRADESUNKNOWN(int  cURRENT_HOUR_TOTAL_TRADES_UNKNOWN);
	/*! \brief Get The sum of all trade quantities from the start of the current hour until now. Given in the base asset.
	 */
	int getCURRENTHOURVOLUME();

	/*! \brief Set The sum of all trade quantities from the start of the current hour until now. Given in the base asset.
	 */
	void setCURRENTHOURVOLUME(int  cURRENT_HOUR_VOLUME);
	/*! \brief Get The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset.
	 */
	int getCURRENTHOURVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quantities from the start of the current hour until now. Given in the base asset.
	 */
	void setCURRENTHOURVOLUMEBUY(int  cURRENT_HOUR_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset.
	 */
	int getCURRENTHOURVOLUMESELL();

	/*! \brief Set The sum of all sell trade quantities from the start of the current hour until now. Given in the base asset.
	 */
	void setCURRENTHOURVOLUMESELL(int  cURRENT_HOUR_VOLUME_SELL);
	/*! \brief Get The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset.
	 */
	int getCURRENTHOURVOLUMEUNKNOWN();

	/*! \brief Set The sum of all trade quote quantities from the start of the current hour until now. Given in the base asset.
	 */
	void setCURRENTHOURVOLUMEUNKNOWN(int  cURRENT_HOUR_VOLUME_UNKNOWN);
	/*! \brief Get The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
	 */
	int getCURRENTMONTHHIGH();

	/*! \brief Set The highest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
	 */
	void setCURRENTMONTHHIGH(int  cURRENT_MONTH_HIGH);
	/*! \brief Get The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
	 */
	int getCURRENTMONTHLOW();

	/*! \brief Set The lowest traded price of the month excluding the current day. The period will run from the 1st of the month - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the month. If today is the 1st of the month, this value will be CURRENT_MONTH_OPEN. Given in the quote asset.
	 */
	void setCURRENTMONTHLOW(int  cURRENT_MONTH_LOW);
	/*! \brief Get The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset.
	 */
	int getCURRENTMONTHOPEN();

	/*! \brief Set The price of the closest trade to the 1st day (00:00:00 GMT/UTC) of this month. In a highly liquid market, this would be the last trade that happened on the previous month at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full monthly value. Given in the quote asset.
	 */
	void setCURRENTMONTHOPEN(int  cURRENT_MONTH_OPEN);
	/*! \brief Get The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
	 */
	int getCURRENTMONTHQUOTEVOLUME();

	/*! \brief Set The sum of all trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
	 */
	void setCURRENTMONTHQUOTEVOLUME(int  cURRENT_MONTH_QUOTE_VOLUME);
	/*! \brief Get The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
	 */
	int getCURRENTMONTHQUOTEVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
	 */
	void setCURRENTMONTHQUOTEVOLUMEBUY(int  cURRENT_MONTH_QUOTE_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
	 */
	int getCURRENTMONTHQUOTEVOLUMESELL();

	/*! \brief Set The sum of all sell trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
	 */
	void setCURRENTMONTHQUOTEVOLUMESELL(int  cURRENT_MONTH_QUOTE_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
	 */
	int getCURRENTMONTHQUOTEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quote quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the quote asset.
	 */
	void setCURRENTMONTHQUOTEVOLUMEUNKNOWN(int  cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN);
	/*! \brief Get The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
	 */
	int getCURRENTMONTHTOTALTRADES();

	/*! \brief Set The total number of trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
	 */
	void setCURRENTMONTHTOTALTRADES(int  cURRENT_MONTH_TOTAL_TRADES);
	/*! \brief Get The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
	 */
	int getCURRENTMONTHTOTALTRADESBUY();

	/*! \brief Set The total number of buy trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
	 */
	void setCURRENTMONTHTOTALTRADESBUY(int  cURRENT_MONTH_TOTAL_TRADES_BUY);
	/*! \brief Get The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
	 */
	int getCURRENTMONTHTOTALTRADESSELL();

	/*! \brief Set The total number of sell trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
	 */
	void setCURRENTMONTHTOTALTRADESSELL(int  cURRENT_MONTH_TOTAL_TRADES_SELL);
	/*! \brief Get The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
	 */
	int getCURRENTMONTHTOTALTRADESUNKNOWN();

	/*! \brief Set The total number of unknown trades between the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the 1st of the month, this value will be 0.
	 */
	void setCURRENTMONTHTOTALTRADESUNKNOWN(int  cURRENT_MONTH_TOTAL_TRADES_UNKNOWN);
	/*! \brief Get The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
	 */
	int getCURRENTMONTHVOLUME();

	/*! \brief Set The sum of all trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
	 */
	void setCURRENTMONTHVOLUME(int  cURRENT_MONTH_VOLUME);
	/*! \brief Get The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
	 */
	int getCURRENTMONTHVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
	 */
	void setCURRENTMONTHVOLUMEBUY(int  cURRENT_MONTH_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
	 */
	int getCURRENTMONTHVOLUMESELL();

	/*! \brief Set The sum of all sell trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
	 */
	void setCURRENTMONTHVOLUMESELL(int  cURRENT_MONTH_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
	 */
	int getCURRENTMONTHVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quantities from the 1st of the month (xxxx:xx:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the month. If today is the first of the month, this value will be 0. Given in the base asset.
	 */
	void setCURRENTMONTHVOLUMEUNKNOWN(int  cURRENT_MONTH_VOLUME_UNKNOWN);
	/*! \brief Get The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset.
	 */
	int getCURRENTWEEKHIGH();

	/*! \brief Set The highest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be the same as CURRENT_WEEK_OPEN. Given in the quote asset.
	 */
	void setCURRENTWEEKHIGH(int  cURRENT_WEEK_HIGH);
	/*! \brief Get The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset.
	 */
	int getCURRENTWEEKLOW();

	/*! \brief Set The lowest traded price of the week excluding the current day. The period will run from Monday - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the week. If today is Monday, this value will be CURRENT_WEEK_LOW. Given in the quote asset.
	 */
	void setCURRENTWEEKLOW(int  cURRENT_WEEK_LOW);
	/*! \brief Get The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset.
	 */
	int getCURRENTWEEKOPEN();

	/*! \brief Set The price of the closest trade to Monday (00:00:00 GMT/UTC) of this week. In a highly liquid market, this would be the last trade that happened on the previous Sunday at (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full weekly value. Given in the quote asset.
	 */
	void setCURRENTWEEKOPEN(int  cURRENT_WEEK_OPEN);
	/*! \brief Get The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
	 */
	int getCURRENTWEEKQUOTEVOLUME();

	/*! \brief Set The sum of all trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
	 */
	void setCURRENTWEEKQUOTEVOLUME(int  cURRENT_WEEK_QUOTE_VOLUME);
	/*! \brief Get The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
	 */
	int getCURRENTWEEKQUOTEVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
	 */
	void setCURRENTWEEKQUOTEVOLUMEBUY(int  cURRENT_WEEK_QUOTE_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
	 */
	int getCURRENTWEEKQUOTEVOLUMESELL();

	/*! \brief Set The sum of all sell trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
	 */
	void setCURRENTWEEKQUOTEVOLUMESELL(int  cURRENT_WEEK_QUOTE_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
	 */
	int getCURRENTWEEKQUOTEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quote quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the quote asset.
	 */
	void setCURRENTWEEKQUOTEVOLUMEUNKNOWN(int  cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN);
	/*! \brief Get The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
	 */
	int getCURRENTWEEKTOTALTRADES();

	/*! \brief Set The total number of trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
	 */
	void setCURRENTWEEKTOTALTRADES(int  cURRENT_WEEK_TOTAL_TRADES);
	/*! \brief Get The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
	 */
	int getCURRENTWEEKTOTALTRADESBUY();

	/*! \brief Set The total number of buy trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
	 */
	void setCURRENTWEEKTOTALTRADESBUY(int  cURRENT_WEEK_TOTAL_TRADES_BUY);
	/*! \brief Get The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
	 */
	int getCURRENTWEEKTOTALTRADESSELL();

	/*! \brief Set The total number of sell trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
	 */
	void setCURRENTWEEKTOTALTRADESSELL(int  cURRENT_WEEK_TOTAL_TRADES_SELL);
	/*! \brief Get The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
	 */
	int getCURRENTWEEKTOTALTRADESUNKNOWN();

	/*! \brief Set The total number of unknown trades between Monday (00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0.
	 */
	void setCURRENTWEEKTOTALTRADESUNKNOWN(int  cURRENT_WEEK_TOTAL_TRADES_UNKNOWN);
	/*! \brief Get The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
	 */
	int getCURRENTWEEKVOLUME();

	/*! \brief Set The sum of all trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
	 */
	void setCURRENTWEEKVOLUME(int  cURRENT_WEEK_VOLUME);
	/*! \brief Get The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
	 */
	int getCURRENTWEEKVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
	 */
	void setCURRENTWEEKVOLUMEBUY(int  cURRENT_WEEK_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
	 */
	int getCURRENTWEEKVOLUMESELL();

	/*! \brief Set The sum of all sell trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
	 */
	void setCURRENTWEEKVOLUMESELL(int  cURRENT_WEEK_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
	 */
	int getCURRENTWEEKVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quantities from Monday (00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the week. If today is Monday, this value will be 0. Given in the base asset.
	 */
	void setCURRENTWEEKVOLUMEUNKNOWN(int  cURRENT_WEEK_VOLUME_UNKNOWN);
	/*! \brief Get The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
	 */
	int getCURRENTYEARHIGH();

	/*! \brief Set The highest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
	 */
	void setCURRENTYEARHIGH(int  cURRENT_YEAR_HIGH);
	/*! \brief Get The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
	 */
	int getCURRENTYEARLOW();

	/*! \brief Set The lowest traded price of the year excluding the current day. The period runs from the 1st of January - 00:00:00 GMT/UTC to the beginning - 00:00:00 GMT/UTC of the current day of the year. If today is the 1st of January, this value will be CURRENT_YEAR_OPEN. Given in the quote asset.
	 */
	void setCURRENTYEARLOW(int  cURRENT_YEAR_LOW);
	/*! \brief Get The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset.
	 */
	int getCURRENTYEAROPEN();

	/*! \brief Set The price of the closest trade to the 1st of January (00:00:00 GMT/UTC) of this year. In a highly liquid market, this would be the last trade that happened on on the 31st of December of the previous year (23:59:59 999 GMT/UTC). This will always be supplied and there is no need to do any calculation to get the full yearly value. Given in the quote asset.
	 */
	void setCURRENTYEAROPEN(int  cURRENT_YEAR_OPEN);
	/*! \brief Get The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
	 */
	int getCURRENTYEARQUOTEVOLUME();

	/*! \brief Set The sum of all trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
	 */
	void setCURRENTYEARQUOTEVOLUME(int  cURRENT_YEAR_QUOTE_VOLUME);
	/*! \brief Get The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
	 */
	int getCURRENTYEARQUOTEVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
	 */
	void setCURRENTYEARQUOTEVOLUMEBUY(int  cURRENT_YEAR_QUOTE_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
	 */
	int getCURRENTYEARQUOTEVOLUMESELL();

	/*! \brief Set The sum of all sell trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
	 */
	void setCURRENTYEARQUOTEVOLUMESELL(int  cURRENT_YEAR_QUOTE_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
	 */
	int getCURRENTYEARQUOTEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quote quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the quote asset.
	 */
	void setCURRENTYEARQUOTEVOLUMEUNKNOWN(int  cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN);
	/*! \brief Get The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
	 */
	int getCURRENTYEARTOTALTRADES();

	/*! \brief Set The total number of trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
	 */
	void setCURRENTYEARTOTALTRADES(int  cURRENT_YEAR_TOTAL_TRADES);
	/*! \brief Get The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
	 */
	int getCURRENTYEARTOTALTRADESBUY();

	/*! \brief Set The total number of buy trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
	 */
	void setCURRENTYEARTOTALTRADESBUY(int  cURRENT_YEAR_TOTAL_TRADES_BUY);
	/*! \brief Get The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
	 */
	int getCURRENTYEARTOTALTRADESSELL();

	/*! \brief Set The total number of sell trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
	 */
	void setCURRENTYEARTOTALTRADESSELL(int  cURRENT_YEAR_TOTAL_TRADES_SELL);
	/*! \brief Get The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
	 */
	int getCURRENTYEARTOTALTRADESUNKNOWN();

	/*! \brief Set The total number of unknown trades between the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) and the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0.
	 */
	void setCURRENTYEARTOTALTRADESUNKNOWN(int  cURRENT_YEAR_TOTAL_TRADES_UNKNOWN);
	/*! \brief Get The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
	 */
	int getCURRENTYEARVOLUME();

	/*! \brief Set The sum of all trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
	 */
	void setCURRENTYEARVOLUME(int  cURRENT_YEAR_VOLUME);
	/*! \brief Get The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
	 */
	int getCURRENTYEARVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
	 */
	void setCURRENTYEARVOLUMEBUY(int  cURRENT_YEAR_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
	 */
	int getCURRENTYEARVOLUMESELL();

	/*! \brief Set The sum of all sell trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
	 */
	void setCURRENTYEARVOLUMESELL(int  cURRENT_YEAR_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
	 */
	int getCURRENTYEARVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quantities from the 1st of January (xxxx:01:01 00:00:00 GMT/UTC) to the beginning (00:00:00 GMT/UTC) of the current day of the year. If today is the 1st of January, this value will be 0. Given in the base asset.
	 */
	void setCURRENTYEARVOLUMEUNKNOWN(int  cURRENT_YEAR_VOLUME_UNKNOWN);
	/*! \brief Get The unmapped instrument ID
	 */
	std::string getINSTRUMENT();

	/*! \brief Set The unmapped instrument ID
	 */
	void setINSTRUMENT(std::string  iNSTRUMENT);
	/*! \brief Get The CCSEQ of the latest trade.
	 */
	std::string getLASTPROCESSEDTRADECCSEQ();

	/*! \brief Set The CCSEQ of the latest trade.
	 */
	void setLASTPROCESSEDTRADECCSEQ(std::string  lAST_PROCESSED_TRADE_CCSEQ);
	/*! \brief Get The price in the quote asset of the last trade processed, as reported by the market / exchange.
	 */
	int getLASTPROCESSEDTRADEPRICE();

	/*! \brief Set The price in the quote asset of the last trade processed, as reported by the market / exchange.
	 */
	void setLASTPROCESSEDTRADEPRICE(int  lAST_PROCESSED_TRADE_PRICE);
	/*! \brief Get The quantity of the last processed trade in the from symbol (base / coin).
	 */
	int getLASTPROCESSEDTRADEQUANTITY();

	/*! \brief Set The quantity of the last processed trade in the from symbol (base / coin).
	 */
	void setLASTPROCESSEDTRADEQUANTITY(int  lAST_PROCESSED_TRADE_QUANTITY);
	/*! \brief Get The  volume of the last processed trade in the to asset / quote.
	 */
	int getLASTPROCESSEDTRADEQUOTEQUANTITY();

	/*! \brief Set The  volume of the last processed trade in the to asset / quote.
	 */
	void setLASTPROCESSEDTRADEQUOTEQUANTITY(int  lAST_PROCESSED_TRADE_QUOTE_QUANTITY);
	/*! \brief Get The side of the last processed trade.
	 */
	std::string getLASTPROCESSEDTRADESIDE();

	/*! \brief Set The side of the last processed trade.
	 */
	void setLASTPROCESSEDTRADESIDE(std::string  lAST_PROCESSED_TRADE_SIDE);
	/*! \brief Get The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned.
	 */
	int getLASTPROCESSEDTRADETS();

	/*! \brief Set The timestamp in seconds that the last trade was processed, as reported by the market / exchange. If the market / exchange does not provide this information, the timestamp that the trade was received will be returned.
	 */
	void setLASTPROCESSEDTRADETS(int  lAST_PROCESSED_TRADE_TS);
	/*! \brief Get The CCSEQ of the latest trade.
	 */
	std::string getLASTTRADECCSEQ();

	/*! \brief Set The CCSEQ of the latest trade.
	 */
	void setLASTTRADECCSEQ(std::string  lAST_TRADE_CCSEQ);
	/*! \brief Get The ID of the latest trade.
	 */
	std::string getLASTTRADEID();

	/*! \brief Set The ID of the latest trade.
	 */
	void setLASTTRADEID(std::string  lAST_TRADE_ID);
	/*! \brief Get The quantity of the latest trade in the from symbol (base / coin).
	 */
	int getLASTTRADEQUANTITY();

	/*! \brief Set The quantity of the latest trade in the from symbol (base / coin).
	 */
	void setLASTTRADEQUANTITY(int  lAST_TRADE_QUANTITY);
	/*! \brief Get The volume of the latest trade in the to asset / quote.
	 */
	int getLASTTRADEQUOTEQUANTITY();

	/*! \brief Set The volume of the latest trade in the to asset / quote.
	 */
	void setLASTTRADEQUOTEQUANTITY(int  lAST_TRADE_QUOTE_QUANTITY);
	/*! \brief Get The side of the latest trade.
	 */
	std::string getLASTTRADESIDE();

	/*! \brief Set The side of the latest trade.
	 */
	void setLASTTRADESIDE(std::string  lAST_TRADE_SIDE);
	/*! \brief Get The timestamp of the first trade ever recorded for the instrument
	 */
	int getLIFETIMEFIRSTTRADETS();

	/*! \brief Set The timestamp of the first trade ever recorded for the instrument
	 */
	void setLIFETIMEFIRSTTRADETS(int  lIFETIME_FIRST_TRADE_TS);
	/*! \brief Get The price of the highest trade ever executed for this instrument. Given in the quote asset.
	 */
	int getLIFETIMEHIGH();

	/*! \brief Set The price of the highest trade ever executed for this instrument. Given in the quote asset.
	 */
	void setLIFETIMEHIGH(int  lIFETIME_HIGH);
	/*! \brief Get The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset.
	 */
	int getLIFETIMEHIGHTS();

	/*! \brief Set The the timestamp of the highest trade ever executed for this instrument. Given in the quote asset.
	 */
	void setLIFETIMEHIGHTS(int  lIFETIME_HIGH_TS);
	/*! \brief Get The price of the lowest trade ever executed for this instrument. Given in the quote asset.
	 */
	int getLIFETIMELOW();

	/*! \brief Set The price of the lowest trade ever executed for this instrument. Given in the quote asset.
	 */
	void setLIFETIMELOW(int  lIFETIME_LOW);
	/*! \brief Get The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset.
	 */
	int getLIFETIMELOWTS();

	/*! \brief Set The timestamp of the lowest trade ever executed for this instrument. Given in the quote asset.
	 */
	void setLIFETIMELOWTS(int  lIFETIME_LOW_TS);
	/*! \brief Get The price of the first trade of the instrument. Given in the quote asset.
	 */
	int getLIFETIMEOPEN();

	/*! \brief Set The price of the first trade of the instrument. Given in the quote asset.
	 */
	void setLIFETIMEOPEN(int  lIFETIME_OPEN);
	/*! \brief Get The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset.
	 */
	int getLIFETIMEQUOTEVOLUME();

	/*! \brief Set The sum of all trade quote quantities of all the trades of this instrument. Given in the quote asset.
	 */
	void setLIFETIMEQUOTEVOLUME(int  lIFETIME_QUOTE_VOLUME);
	/*! \brief Get The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset.
	 */
	int getLIFETIMEQUOTEVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quote quantities of all the trades of this instrument. Given in the quote asset.
	 */
	void setLIFETIMEQUOTEVOLUMEBUY(int  lIFETIME_QUOTE_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset.
	 */
	int getLIFETIMEQUOTEVOLUMESELL();

	/*! \brief Set The sum of all sell trade quote quantities of all the trades of this instrument. Given in the quote asset.
	 */
	void setLIFETIMEQUOTEVOLUMESELL(int  lIFETIME_QUOTE_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset.
	 */
	int getLIFETIMEQUOTEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quote quantities of all the trades of this instrument. Given in the quote asset.
	 */
	void setLIFETIMEQUOTEVOLUMEUNKNOWN(int  lIFETIME_QUOTE_VOLUME_UNKNOWN);
	/*! \brief Get The total number of all trades that have ever been executed for this instrument.
	 */
	int getLIFETIMETOTALTRADES();

	/*! \brief Set The total number of all trades that have ever been executed for this instrument.
	 */
	void setLIFETIMETOTALTRADES(int  lIFETIME_TOTAL_TRADES);
	/*! \brief Get The total number of all buy trades that have ever been executed for this instrument.
	 */
	int getLIFETIMETOTALTRADESBUY();

	/*! \brief Set The total number of all buy trades that have ever been executed for this instrument.
	 */
	void setLIFETIMETOTALTRADESBUY(int  lIFETIME_TOTAL_TRADES_BUY);
	/*! \brief Get The total number of all sell trades that have ever been executed for this instrument.
	 */
	int getLIFETIMETOTALTRADESSELL();

	/*! \brief Set The total number of all sell trades that have ever been executed for this instrument.
	 */
	void setLIFETIMETOTALTRADESSELL(int  lIFETIME_TOTAL_TRADES_SELL);
	/*! \brief Get The total number of all unknown trades that have ever been executed for this instrument.
	 */
	int getLIFETIMETOTALTRADESUNKNOWN();

	/*! \brief Set The total number of all unknown trades that have ever been executed for this instrument.
	 */
	void setLIFETIMETOTALTRADESUNKNOWN(int  lIFETIME_TOTAL_TRADES_UNKNOWN);
	/*! \brief Get The sum of all trade quantities of all the trades of this instrument. Given in the base asset.
	 */
	int getLIFETIMEVOLUME();

	/*! \brief Set The sum of all trade quantities of all the trades of this instrument. Given in the base asset.
	 */
	void setLIFETIMEVOLUME(int  lIFETIME_VOLUME);
	/*! \brief Get The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset.
	 */
	int getLIFETIMEVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quantities of all the trades of this instrument. Given in the base asset.
	 */
	void setLIFETIMEVOLUMEBUY(int  lIFETIME_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset.
	 */
	int getLIFETIMEVOLUMESELL();

	/*! \brief Set The sum of all sell trade quantities of all the trades of this instrument. Given in the base asset.
	 */
	void setLIFETIMEVOLUMESELL(int  lIFETIME_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset.
	 */
	int getLIFETIMEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quantities of all the trades of this instrument. Given in the base asset.
	 */
	void setLIFETIMEVOLUMEUNKNOWN(int  lIFETIME_VOLUME_UNKNOWN);
	/*! \brief Get The mapped instrument ID, derived from our mapping rules. This takes the form: \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
	 */
	std::string getMAPPEDINSTRUMENT();

	/*! \brief Set The mapped instrument ID, derived from our mapping rules. This takes the form: \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
	 */
	void setMAPPEDINSTRUMENT(std::string  mAPPED_INSTRUMENT);
	/*! \brief Get The market / exchange under consideration (e.g. coinbase, kraken, etc).
	 */
	std::string getMARKET();

	/*! \brief Set The market / exchange under consideration (e.g. coinbase, kraken, etc).
	 */
	void setMARKET(std::string  mARKET);
	/*! \brief Get The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
	 */
	int getMOVING180DAYHIGH();

	/*! \brief Set The  highest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
	 */
	void setMOVING180DAYHIGH(int  mOVING_180_DAY_HIGH);
	/*! \brief Get The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
	 */
	int getMOVING180DAYLOW();

	/*! \brief Set The lowest traded price of the period. Here, the period runs from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
	 */
	void setMOVING180DAYLOW(int  mOVING_180_DAY_LOW);
	/*! \brief Get The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset.
	 */
	int getMOVING180DAYOPEN();

	/*! \brief Set The price of the closest trade to the period start date (179 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 180 day value. Given in the quote asset.
	 */
	void setMOVING180DAYOPEN(int  mOVING_180_DAY_OPEN);
	/*! \brief Get The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
	 */
	int getMOVING180DAYQUOTEVOLUME();

	/*! \brief Set The sum of all trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
	 */
	void setMOVING180DAYQUOTEVOLUME(int  mOVING_180_DAY_QUOTE_VOLUME);
	/*! \brief Get The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
	 */
	int getMOVING180DAYQUOTEVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
	 */
	void setMOVING180DAYQUOTEVOLUMEBUY(int  mOVING_180_DAY_QUOTE_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
	 */
	int getMOVING180DAYQUOTEVOLUMESELL();

	/*! \brief Set The sum of all sell trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
	 */
	void setMOVING180DAYQUOTEVOLUMESELL(int  mOVING_180_DAY_QUOTE_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
	 */
	int getMOVING180DAYQUOTEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quote quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the quote asset.
	 */
	void setMOVING180DAYQUOTEVOLUMEUNKNOWN(int  mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN);
	/*! \brief Get The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
	 */
	int getMOVING180DAYTOTALTRADES();

	/*! \brief Set The total number of trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
	 */
	void setMOVING180DAYTOTALTRADES(int  mOVING_180_DAY_TOTAL_TRADES);
	/*! \brief Get The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
	 */
	int getMOVING180DAYTOTALTRADESBUY();

	/*! \brief Set The total number of buy trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
	 */
	void setMOVING180DAYTOTALTRADESBUY(int  mOVING_180_DAY_TOTAL_TRADES_BUY);
	/*! \brief Get The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
	 */
	int getMOVING180DAYTOTALTRADESSELL();

	/*! \brief Set The total number of sell trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
	 */
	void setMOVING180DAYTOTALTRADESSELL(int  mOVING_180_DAY_TOTAL_TRADES_SELL);
	/*! \brief Get The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
	 */
	int getMOVING180DAYTOTALTRADESUNKNOWN();

	/*! \brief Set The total number of unknown trades that have occurred in the period from 180 days ago to the beginning (00:00:00 GMT/UTC) of the current day (179 days in total).
	 */
	void setMOVING180DAYTOTALTRADESUNKNOWN(int  mOVING_180_DAY_TOTAL_TRADES_UNKNOWN);
	/*! \brief Get The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
	 */
	int getMOVING180DAYVOLUME();

	/*! \brief Set The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
	 */
	void setMOVING180DAYVOLUME(int  mOVING_180_DAY_VOLUME);
	/*! \brief Get The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
	 */
	int getMOVING180DAYVOLUMEBUY();

	/*! \brief Set The sum of all trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
	 */
	void setMOVING180DAYVOLUMEBUY(int  mOVING_180_DAY_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
	 */
	int getMOVING180DAYVOLUMESELL();

	/*! \brief Set The sum of all sell trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
	 */
	void setMOVING180DAYVOLUMESELL(int  mOVING_180_DAY_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
	 */
	int getMOVING180DAYVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quantities from 180 days ago up to the beginning of the current day (179 days in total). Given in the base asset.
	 */
	void setMOVING180DAYVOLUMEUNKNOWN(int  mOVING_180_DAY_VOLUME_UNKNOWN);
	/*! \brief Get The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
	 */
	int getMOVING24HOURHIGH();

	/*! \brief Set The highest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
	 */
	void setMOVING24HOURHIGH(int  mOVING_24_HOUR_HIGH);
	/*! \brief Get The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
	 */
	int getMOVING24HOURLOW();

	/*! \brief Set The lowest traded price of the period. Here, the period runs from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
	 */
	void setMOVING24HOURLOW(int  mOVING_24_HOUR_LOW);
	/*! \brief Get The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset.
	 */
	int getMOVING24HOUROPEN();

	/*! \brief Set The price of the closest trade to the period start date (23 hours + current hour ago). This will always be supplied and there is no need to do any calculation to get the full 24 hour value. Given in the quote asset.
	 */
	void setMOVING24HOUROPEN(int  mOVING_24_HOUR_OPEN);
	/*! \brief Get The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
	 */
	int getMOVING24HOURQUOTEVOLUME();

	/*! \brief Set The sum of all trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
	 */
	void setMOVING24HOURQUOTEVOLUME(int  mOVING_24_HOUR_QUOTE_VOLUME);
	/*! \brief Get The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
	 */
	int getMOVING24HOURQUOTEVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
	 */
	void setMOVING24HOURQUOTEVOLUMEBUY(int  mOVING_24_HOUR_QUOTE_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
	 */
	int getMOVING24HOURQUOTEVOLUMESELL();

	/*! \brief Set The sum of all sell trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
	 */
	void setMOVING24HOURQUOTEVOLUMESELL(int  mOVING_24_HOUR_QUOTE_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
	 */
	int getMOVING24HOURQUOTEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quote quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the quote asset.
	 */
	void setMOVING24HOURQUOTEVOLUMEUNKNOWN(int  mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN);
	/*! \brief Get The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
	 */
	int getMOVING24HOURTOTALTRADES();

	/*! \brief Set The total number of trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
	 */
	void setMOVING24HOURTOTALTRADES(int  mOVING_24_HOUR_TOTAL_TRADES);
	/*! \brief Get The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
	 */
	int getMOVING24HOURTOTALTRADESBUY();

	/*! \brief Set The total number of buy trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
	 */
	void setMOVING24HOURTOTALTRADESBUY(int  mOVING_24_HOUR_TOTAL_TRADES_BUY);
	/*! \brief Get The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
	 */
	int getMOVING24HOURTOTALTRADESSELL();

	/*! \brief Set The total number of sell trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
	 */
	void setMOVING24HOURTOTALTRADESSELL(int  mOVING_24_HOUR_TOTAL_TRADES_SELL);
	/*! \brief Get The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
	 */
	int getMOVING24HOURTOTALTRADESUNKNOWN();

	/*! \brief Set The total number of unknown trades that have occurred in the period running from 24 hours ago to the beginning (xx:00:00) of the current hour (23 hours in total).
	 */
	void setMOVING24HOURTOTALTRADESUNKNOWN(int  mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN);
	/*! \brief Get The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
	 */
	int getMOVING24HOURVOLUME();

	/*! \brief Set The sum of all trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
	 */
	void setMOVING24HOURVOLUME(int  mOVING_24_HOUR_VOLUME);
	/*! \brief Get The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
	 */
	int getMOVING24HOURVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
	 */
	void setMOVING24HOURVOLUMEBUY(int  mOVING_24_HOUR_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
	 */
	int getMOVING24HOURVOLUMESELL();

	/*! \brief Set The sum of all sell trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
	 */
	void setMOVING24HOURVOLUMESELL(int  mOVING_24_HOUR_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
	 */
	int getMOVING24HOURVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quantities from 24 hours ago up to the beginning of the current hour (23 hours in total). Given in the base asset.
	 */
	void setMOVING24HOURVOLUMEUNKNOWN(int  mOVING_24_HOUR_VOLUME_UNKNOWN);
	/*! \brief Get The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
	 */
	int getMOVING30DAYHIGH();

	/*! \brief Set The highest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
	 */
	void setMOVING30DAYHIGH(int  mOVING_30_DAY_HIGH);
	/*! \brief Get The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
	 */
	int getMOVING30DAYLOW();

	/*! \brief Set The lowest traded price of the period. Here, the period runs from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
	 */
	void setMOVING30DAYLOW(int  mOVING_30_DAY_LOW);
	/*! \brief Get The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset.
	 */
	int getMOVING30DAYOPEN();

	/*! \brief Set The price of the closest trade to the period start date (29 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 30 day value. Given in the quote asset.
	 */
	void setMOVING30DAYOPEN(int  mOVING_30_DAY_OPEN);
	/*! \brief Get The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
	 */
	int getMOVING30DAYQUOTEVOLUME();

	/*! \brief Set The sum of all trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
	 */
	void setMOVING30DAYQUOTEVOLUME(int  mOVING_30_DAY_QUOTE_VOLUME);
	/*! \brief Get The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
	 */
	int getMOVING30DAYQUOTEVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
	 */
	void setMOVING30DAYQUOTEVOLUMEBUY(int  mOVING_30_DAY_QUOTE_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
	 */
	int getMOVING30DAYQUOTEVOLUMESELL();

	/*! \brief Set The sum of all sell trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
	 */
	void setMOVING30DAYQUOTEVOLUMESELL(int  mOVING_30_DAY_QUOTE_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
	 */
	int getMOVING30DAYQUOTEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quote quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the quote asset.
	 */
	void setMOVING30DAYQUOTEVOLUMEUNKNOWN(int  mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN);
	/*! \brief Get The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
	 */
	int getMOVING30DAYTOTALTRADES();

	/*! \brief Set The total number of trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
	 */
	void setMOVING30DAYTOTALTRADES(int  mOVING_30_DAY_TOTAL_TRADES);
	/*! \brief Get The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
	 */
	int getMOVING30DAYTOTALTRADESBUY();

	/*! \brief Set The total number of buy trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
	 */
	void setMOVING30DAYTOTALTRADESBUY(int  mOVING_30_DAY_TOTAL_TRADES_BUY);
	/*! \brief Get The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
	 */
	int getMOVING30DAYTOTALTRADESSELL();

	/*! \brief Set The total number of sell trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
	 */
	void setMOVING30DAYTOTALTRADESSELL(int  mOVING_30_DAY_TOTAL_TRADES_SELL);
	/*! \brief Get The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
	 */
	int getMOVING30DAYTOTALTRADESUNKNOWN();

	/*! \brief Set The total number of unknown trades that have occurred in the period running from 30 days ago to the beginning (00:00:00 GMT/UTC) of the current day (29 days in total).
	 */
	void setMOVING30DAYTOTALTRADESUNKNOWN(int  mOVING_30_DAY_TOTAL_TRADES_UNKNOWN);
	/*! \brief Get The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
	 */
	int getMOVING30DAYVOLUME();

	/*! \brief Set The sum of all trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
	 */
	void setMOVING30DAYVOLUME(int  mOVING_30_DAY_VOLUME);
	/*! \brief Get The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
	 */
	int getMOVING30DAYVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
	 */
	void setMOVING30DAYVOLUMEBUY(int  mOVING_30_DAY_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
	 */
	int getMOVING30DAYVOLUMESELL();

	/*! \brief Set The sum of all sell trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
	 */
	void setMOVING30DAYVOLUMESELL(int  mOVING_30_DAY_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
	 */
	int getMOVING30DAYVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quantities from 30 days ago up to the beginning of the current day (29 days in total). Given in the base asset.
	 */
	void setMOVING30DAYVOLUMEUNKNOWN(int  mOVING_30_DAY_VOLUME_UNKNOWN);
	/*! \brief Get The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
	 */
	int getMOVING365DAYHIGH();

	/*! \brief Set The highest price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
	 */
	void setMOVING365DAYHIGH(int  mOVING_365_DAY_HIGH);
	/*! \brief Get The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
	 */
	int getMOVING365DAYLOW();

	/*! \brief Set The lowest traded price of the period. Here, the period runs from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
	 */
	void setMOVING365DAYLOW(int  mOVING_365_DAY_LOW);
	/*! \brief Get The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset.
	 */
	int getMOVING365DAYOPEN();

	/*! \brief Set The price of the closest trade to the period start date (364 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 365 day value. Given in the quote asset.
	 */
	void setMOVING365DAYOPEN(int  mOVING_365_DAY_OPEN);
	/*! \brief Get The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
	 */
	int getMOVING365DAYQUOTEVOLUME();

	/*! \brief Set The sum of all trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
	 */
	void setMOVING365DAYQUOTEVOLUME(int  mOVING_365_DAY_QUOTE_VOLUME);
	/*! \brief Get The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
	 */
	int getMOVING365DAYQUOTEVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
	 */
	void setMOVING365DAYQUOTEVOLUMEBUY(int  mOVING_365_DAY_QUOTE_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
	 */
	int getMOVING365DAYQUOTEVOLUMESELL();

	/*! \brief Set The sum of all sell trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
	 */
	void setMOVING365DAYQUOTEVOLUMESELL(int  mOVING_365_DAY_QUOTE_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
	 */
	int getMOVING365DAYQUOTEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quote quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the quote asset.
	 */
	void setMOVING365DAYQUOTEVOLUMEUNKNOWN(int  mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN);
	/*! \brief Get The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
	 */
	int getMOVING365DAYTOTALTRADES();

	/*! \brief Set The total number of trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
	 */
	void setMOVING365DAYTOTALTRADES(int  mOVING_365_DAY_TOTAL_TRADES);
	/*! \brief Get The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
	 */
	int getMOVING365DAYTOTALTRADESBUY();

	/*! \brief Set The total number of buy trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
	 */
	void setMOVING365DAYTOTALTRADESBUY(int  mOVING_365_DAY_TOTAL_TRADES_BUY);
	/*! \brief Get The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
	 */
	int getMOVING365DAYTOTALTRADESSELL();

	/*! \brief Set The total number of sell trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
	 */
	void setMOVING365DAYTOTALTRADESSELL(int  mOVING_365_DAY_TOTAL_TRADES_SELL);
	/*! \brief Get The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
	 */
	int getMOVING365DAYTOTALTRADESUNKNOWN();

	/*! \brief Set The total number of unknown trades that have occurred during the period running from 365 days ago to the beginning (00:00:00 GMT/UTC) of the current day (364 days in total).
	 */
	void setMOVING365DAYTOTALTRADESUNKNOWN(int  mOVING_365_DAY_TOTAL_TRADES_UNKNOWN);
	/*! \brief Get The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
	 */
	int getMOVING365DAYVOLUME();

	/*! \brief Set The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
	 */
	void setMOVING365DAYVOLUME(int  mOVING_365_DAY_VOLUME);
	/*! \brief Get The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
	 */
	int getMOVING365DAYVOLUMEBUY();

	/*! \brief Set The sum of all trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
	 */
	void setMOVING365DAYVOLUMEBUY(int  mOVING_365_DAY_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
	 */
	int getMOVING365DAYVOLUMESELL();

	/*! \brief Set The sum of all sell trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
	 */
	void setMOVING365DAYVOLUMESELL(int  mOVING_365_DAY_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
	 */
	int getMOVING365DAYVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quantities from 365 days ago up to the beginning of the current day (364 days in total). Given in the base asset.
	 */
	void setMOVING365DAYVOLUMEUNKNOWN(int  mOVING_365_DAY_VOLUME_UNKNOWN);
	/*! \brief Get The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
	 */
	int getMOVING7DAYHIGH();

	/*! \brief Set The highest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
	 */
	void setMOVING7DAYHIGH(int  mOVING_7_DAY_HIGH);
	/*! \brief Get The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
	 */
	int getMOVING7DAYLOW();

	/*! \brief Set The lowest traded price of the period. Here, the period runs from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
	 */
	void setMOVING7DAYLOW(int  mOVING_7_DAY_LOW);
	/*! \brief Get The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset.
	 */
	int getMOVING7DAYOPEN();

	/*! \brief Set The price of the closest trade to the period start date (6 days + current day - 00:00:00 GMT/UTC to now). This will always be supplied and there is no need to do any calculation to get the full 7 day value. Given in the quote asset.
	 */
	void setMOVING7DAYOPEN(int  mOVING_7_DAY_OPEN);
	/*! \brief Get The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
	 */
	int getMOVING7DAYQUOTEVOLUME();

	/*! \brief Set The sum of all trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
	 */
	void setMOVING7DAYQUOTEVOLUME(int  mOVING_7_DAY_QUOTE_VOLUME);
	/*! \brief Get The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
	 */
	int getMOVING7DAYQUOTEVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
	 */
	void setMOVING7DAYQUOTEVOLUMEBUY(int  mOVING_7_DAY_QUOTE_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
	 */
	int getMOVING7DAYQUOTEVOLUMESELL();

	/*! \brief Set The sum of all sell trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
	 */
	void setMOVING7DAYQUOTEVOLUMESELL(int  mOVING_7_DAY_QUOTE_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
	 */
	int getMOVING7DAYQUOTEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quote quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the quote asset.
	 */
	void setMOVING7DAYQUOTEVOLUMEUNKNOWN(int  mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN);
	/*! \brief Get The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
	 */
	int getMOVING7DAYTOTALTRADES();

	/*! \brief Set The total number of trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
	 */
	void setMOVING7DAYTOTALTRADES(int  mOVING_7_DAY_TOTAL_TRADES);
	/*! \brief Get The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
	 */
	int getMOVING7DAYTOTALTRADESBUY();

	/*! \brief Set The total number of buy trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
	 */
	void setMOVING7DAYTOTALTRADESBUY(int  mOVING_7_DAY_TOTAL_TRADES_BUY);
	/*! \brief Get The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
	 */
	int getMOVING7DAYTOTALTRADESSELL();

	/*! \brief Set The total number of sell trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
	 */
	void setMOVING7DAYTOTALTRADESSELL(int  mOVING_7_DAY_TOTAL_TRADES_SELL);
	/*! \brief Get The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
	 */
	int getMOVING7DAYTOTALTRADESUNKNOWN();

	/*! \brief Set The total number of unknown trades that have occurred in the period running from 7 days ago to the beginning (00:00:00 GMT/UTC) of the current day (6 days in total).
	 */
	void setMOVING7DAYTOTALTRADESUNKNOWN(int  mOVING_7_DAY_TOTAL_TRADES_UNKNOWN);
	/*! \brief Get The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
	 */
	int getMOVING7DAYVOLUME();

	/*! \brief Set The sum of all trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
	 */
	void setMOVING7DAYVOLUME(int  mOVING_7_DAY_VOLUME);
	/*! \brief Get The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
	 */
	int getMOVING7DAYVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
	 */
	void setMOVING7DAYVOLUMEBUY(int  mOVING_7_DAY_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
	 */
	int getMOVING7DAYVOLUMESELL();

	/*! \brief Set The sum of all sell trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
	 */
	void setMOVING7DAYVOLUMESELL(int  mOVING_7_DAY_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
	 */
	int getMOVING7DAYVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quantities from 7 days ago up to the beginning of the current day (6 days in total). Given in the base asset.
	 */
	void setMOVING7DAYVOLUMEUNKNOWN(int  mOVING_7_DAY_VOLUME_UNKNOWN);
	/*! \brief Get The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
	 */
	int getMOVING90DAYHIGH();

	/*! \brief Set The highest value between the MOVING_90_DAY_OPEN and the highest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
	 */
	void setMOVING90DAYHIGH(int  mOVING_90_DAY_HIGH);
	/*! \brief Get The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
	 */
	int getMOVING90DAYLOW();

	/*! \brief Set The lowest traded price of the period. Here, the period runs from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
	 */
	void setMOVING90DAYLOW(int  mOVING_90_DAY_LOW);
	/*! \brief Get The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset.
	 */
	int getMOVING90DAYOPEN();

	/*! \brief Set The price of the closest trade to the period start date (89 days + current day - 00:00:00 GMT/UTC to now).  This will always be supplied and there is no need to do any calculation to get the full 90 day value. Given in the quote asset.
	 */
	void setMOVING90DAYOPEN(int  mOVING_90_DAY_OPEN);
	/*! \brief Get The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
	 */
	int getMOVING90DAYQUOTEVOLUME();

	/*! \brief Set The sum of all trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
	 */
	void setMOVING90DAYQUOTEVOLUME(int  mOVING_90_DAY_QUOTE_VOLUME);
	/*! \brief Get The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
	 */
	int getMOVING90DAYQUOTEVOLUMEBUY();

	/*! \brief Set The sum of all buy trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
	 */
	void setMOVING90DAYQUOTEVOLUMEBUY(int  mOVING_90_DAY_QUOTE_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
	 */
	int getMOVING90DAYQUOTEVOLUMESELL();

	/*! \brief Set The sum of all sell trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
	 */
	void setMOVING90DAYQUOTEVOLUMESELL(int  mOVING_90_DAY_QUOTE_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
	 */
	int getMOVING90DAYQUOTEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quote quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the quote asset.
	 */
	void setMOVING90DAYQUOTEVOLUMEUNKNOWN(int  mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN);
	/*! \brief Get The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
	 */
	int getMOVING90DAYTOTALTRADES();

	/*! \brief Set The total number of trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
	 */
	void setMOVING90DAYTOTALTRADES(int  mOVING_90_DAY_TOTAL_TRADES);
	/*! \brief Get The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
	 */
	int getMOVING90DAYTOTALTRADESBUY();

	/*! \brief Set The total number of buy trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
	 */
	void setMOVING90DAYTOTALTRADESBUY(int  mOVING_90_DAY_TOTAL_TRADES_BUY);
	/*! \brief Get The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
	 */
	int getMOVING90DAYTOTALTRADESSELL();

	/*! \brief Set The total number of sell trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
	 */
	void setMOVING90DAYTOTALTRADESSELL(int  mOVING_90_DAY_TOTAL_TRADES_SELL);
	/*! \brief Get The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
	 */
	int getMOVING90DAYTOTALTRADESUNKNOWN();

	/*! \brief Set The total number of unknown trades that have occurred in the period running from 90 days ago to the beginning (00:00:00 GMT/UTC) of the current day (89 days in total).
	 */
	void setMOVING90DAYTOTALTRADESUNKNOWN(int  mOVING_90_DAY_TOTAL_TRADES_UNKNOWN);
	/*! \brief Get The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
	 */
	int getMOVING90DAYVOLUME();

	/*! \brief Set The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
	 */
	void setMOVING90DAYVOLUME(int  mOVING_90_DAY_VOLUME);
	/*! \brief Get The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
	 */
	int getMOVING90DAYVOLUMEBUY();

	/*! \brief Set The sum of all trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
	 */
	void setMOVING90DAYVOLUMEBUY(int  mOVING_90_DAY_VOLUME_BUY);
	/*! \brief Get The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
	 */
	int getMOVING90DAYVOLUMESELL();

	/*! \brief Set The sum of all sell trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
	 */
	void setMOVING90DAYVOLUMESELL(int  mOVING_90_DAY_VOLUME_SELL);
	/*! \brief Get The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
	 */
	int getMOVING90DAYVOLUMEUNKNOWN();

	/*! \brief Set The sum of all unknown trade quantities from 90 days ago up to the beginning of the current day (89 days in total). Given in the base asset.
	 */
	void setMOVING90DAYVOLUMEUNKNOWN(int  mOVING_90_DAY_VOLUME_UNKNOWN);
	/*! \brief Get The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD).
	 */
	int getPRICE();

	/*! \brief Set The price in the to asset (quote / number symbol / coin) of the latest trade. I.e. for a BTC-USD trade, how much was paid for one BTC in USD).
	 */
	void setPRICE(int  pRICE);
	/*! \brief Get The flag indicating whether the price has increased, decreased, or not changed
	 */
	std::string getPRICEFLAG();

	/*! \brief Set The flag indicating whether the price has increased, decreased, or not changed
	 */
	void setPRICEFLAG(std::string  pRICE_FLAG);
	/*! \brief Get The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned.
	 */
	int getPRICELASTUPDATETS();

	/*! \brief Set The timestamp in seconds as reported by the market / exchange. If the market /exchange does not provide this information, the received timestamp will be returned.
	 */
	void setPRICELASTUPDATETS(int  pRICE_LAST_UPDATE_TS);
	/*! \brief Get The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped.
	 */
	std::string getQUOTE();

	/*! \brief Set The mapped to asset (quote / counter symbol / coin), e.g. USD. Only available on instruments that have been mapped.
	 */
	void setQUOTE(std::string  qUOTE);
	/*! \brief Get The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
	 */
	int getTOPASKLASTUPDATETS();

	/*! \brief Set The timestamp in seconds of the last time the top ask was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
	 */
	void setTOPASKLASTUPDATETS(int  tOP_ASK_LAST_UPDATE_TS);
	/*! \brief Get The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC.
	 */
	int getTOPASKPRICE();

	/*! \brief Set The price of the top ask in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the best price someone is willing to sell some BTC in USD, as quoted for 1 full BTC.
	 */
	void setTOPASKPRICE(int  tOP_ASK_PRICE);
	/*! \brief Get The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price.
	 */
	int getTOPASKQUANTITY();

	/*! \brief Set The quantity of the top ask in the from asset (base / coin). For a BTC-USD order book, this will be the amount of BTC a person is willing to sell at the best price.
	 */
	void setTOPASKQUANTITY(int  tOP_ASK_QUANTITY);
	/*! \brief Get The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
	 */
	int getTOPBIDLASTUPDATETS();

	/*! \brief Set The timestamp in seconds of the last time the top bid was updated, as reported by the market / exchange. If the market / exchange does not provide this information, the received timestamp will be returned.
	 */
	void setTOPBIDLASTUPDATETS(int  tOP_BID_LAST_UPDATE_TS);
	/*! \brief Get The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC.
	 */
	int getTOPBIDPRICE();

	/*! \brief Set The price of the top bid in the to asset (quote / numberer symbol / coin). For a BTC-USD order book, this will be the highest price a person is willing to pay for some BTC in USD, as quoted for 1 full BTC.
	 */
	void setTOPBIDPRICE(int  tOP_BID_PRICE);
	/*! \brief Get The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price.
	 */
	int getTOPBIDQUANTITY();

	/*! \brief Set The quantity of the top bid in the from asset (base / coin). For a BTC-USD order book , this will be the amount of BTC someone is willing to buy at the best price.
	 */
	void setTOPBIDQUANTITY(int  tOP_BID_QUANTITY);
	/*! \brief Get The type of the message.
	 */
	std::string getTYPE();

	/*! \brief Set The type of the message.
	 */
	void setTYPE(std::string  tYPE);

private:
	std::string bASE;
	int cCSEQ;
	int cURRENT_DAY_HIGH;
	int cURRENT_DAY_LOW;
	int cURRENT_DAY_OPEN;
	int cURRENT_DAY_QUOTE_VOLUME;
	int cURRENT_DAY_QUOTE_VOLUME_BUY;
	int cURRENT_DAY_QUOTE_VOLUME_SELL;
	int cURRENT_DAY_QUOTE_VOLUME_UNKNOWN;
	int cURRENT_DAY_TOTAL_TRADES;
	int cURRENT_DAY_TOTAL_TRADES_BUY;
	int cURRENT_DAY_TOTAL_TRADES_SELL;
	int cURRENT_DAY_TOTAL_TRADES_UNKNOWN;
	int cURRENT_DAY_VOLUME;
	int cURRENT_DAY_VOLUME_BUY;
	int cURRENT_DAY_VOLUME_SELL;
	int cURRENT_DAY_VOLUME_UNKNOWN;
	int cURRENT_HOUR_HIGH;
	int cURRENT_HOUR_LOW;
	int cURRENT_HOUR_OPEN;
	int cURRENT_HOUR_QUOTE_VOLUME;
	int cURRENT_HOUR_QUOTE_VOLUME_BUY;
	int cURRENT_HOUR_QUOTE_VOLUME_SELL;
	int cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN;
	int cURRENT_HOUR_TOTAL_TRADES;
	int cURRENT_HOUR_TOTAL_TRADES_BUY;
	int cURRENT_HOUR_TOTAL_TRADES_SELL;
	int cURRENT_HOUR_TOTAL_TRADES_UNKNOWN;
	int cURRENT_HOUR_VOLUME;
	int cURRENT_HOUR_VOLUME_BUY;
	int cURRENT_HOUR_VOLUME_SELL;
	int cURRENT_HOUR_VOLUME_UNKNOWN;
	int cURRENT_MONTH_HIGH;
	int cURRENT_MONTH_LOW;
	int cURRENT_MONTH_OPEN;
	int cURRENT_MONTH_QUOTE_VOLUME;
	int cURRENT_MONTH_QUOTE_VOLUME_BUY;
	int cURRENT_MONTH_QUOTE_VOLUME_SELL;
	int cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN;
	int cURRENT_MONTH_TOTAL_TRADES;
	int cURRENT_MONTH_TOTAL_TRADES_BUY;
	int cURRENT_MONTH_TOTAL_TRADES_SELL;
	int cURRENT_MONTH_TOTAL_TRADES_UNKNOWN;
	int cURRENT_MONTH_VOLUME;
	int cURRENT_MONTH_VOLUME_BUY;
	int cURRENT_MONTH_VOLUME_SELL;
	int cURRENT_MONTH_VOLUME_UNKNOWN;
	int cURRENT_WEEK_HIGH;
	int cURRENT_WEEK_LOW;
	int cURRENT_WEEK_OPEN;
	int cURRENT_WEEK_QUOTE_VOLUME;
	int cURRENT_WEEK_QUOTE_VOLUME_BUY;
	int cURRENT_WEEK_QUOTE_VOLUME_SELL;
	int cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN;
	int cURRENT_WEEK_TOTAL_TRADES;
	int cURRENT_WEEK_TOTAL_TRADES_BUY;
	int cURRENT_WEEK_TOTAL_TRADES_SELL;
	int cURRENT_WEEK_TOTAL_TRADES_UNKNOWN;
	int cURRENT_WEEK_VOLUME;
	int cURRENT_WEEK_VOLUME_BUY;
	int cURRENT_WEEK_VOLUME_SELL;
	int cURRENT_WEEK_VOLUME_UNKNOWN;
	int cURRENT_YEAR_HIGH;
	int cURRENT_YEAR_LOW;
	int cURRENT_YEAR_OPEN;
	int cURRENT_YEAR_QUOTE_VOLUME;
	int cURRENT_YEAR_QUOTE_VOLUME_BUY;
	int cURRENT_YEAR_QUOTE_VOLUME_SELL;
	int cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN;
	int cURRENT_YEAR_TOTAL_TRADES;
	int cURRENT_YEAR_TOTAL_TRADES_BUY;
	int cURRENT_YEAR_TOTAL_TRADES_SELL;
	int cURRENT_YEAR_TOTAL_TRADES_UNKNOWN;
	int cURRENT_YEAR_VOLUME;
	int cURRENT_YEAR_VOLUME_BUY;
	int cURRENT_YEAR_VOLUME_SELL;
	int cURRENT_YEAR_VOLUME_UNKNOWN;
	std::string iNSTRUMENT;
	std::string lAST_PROCESSED_TRADE_CCSEQ;
	int lAST_PROCESSED_TRADE_PRICE;
	int lAST_PROCESSED_TRADE_QUANTITY;
	int lAST_PROCESSED_TRADE_QUOTE_QUANTITY;
	std::string lAST_PROCESSED_TRADE_SIDE;
	int lAST_PROCESSED_TRADE_TS;
	std::string lAST_TRADE_CCSEQ;
	std::string lAST_TRADE_ID;
	int lAST_TRADE_QUANTITY;
	int lAST_TRADE_QUOTE_QUANTITY;
	std::string lAST_TRADE_SIDE;
	int lIFETIME_FIRST_TRADE_TS;
	int lIFETIME_HIGH;
	int lIFETIME_HIGH_TS;
	int lIFETIME_LOW;
	int lIFETIME_LOW_TS;
	int lIFETIME_OPEN;
	int lIFETIME_QUOTE_VOLUME;
	int lIFETIME_QUOTE_VOLUME_BUY;
	int lIFETIME_QUOTE_VOLUME_SELL;
	int lIFETIME_QUOTE_VOLUME_UNKNOWN;
	int lIFETIME_TOTAL_TRADES;
	int lIFETIME_TOTAL_TRADES_BUY;
	int lIFETIME_TOTAL_TRADES_SELL;
	int lIFETIME_TOTAL_TRADES_UNKNOWN;
	int lIFETIME_VOLUME;
	int lIFETIME_VOLUME_BUY;
	int lIFETIME_VOLUME_SELL;
	int lIFETIME_VOLUME_UNKNOWN;
	std::string mAPPED_INSTRUMENT;
	std::string mARKET;
	int mOVING_180_DAY_HIGH;
	int mOVING_180_DAY_LOW;
	int mOVING_180_DAY_OPEN;
	int mOVING_180_DAY_QUOTE_VOLUME;
	int mOVING_180_DAY_QUOTE_VOLUME_BUY;
	int mOVING_180_DAY_QUOTE_VOLUME_SELL;
	int mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN;
	int mOVING_180_DAY_TOTAL_TRADES;
	int mOVING_180_DAY_TOTAL_TRADES_BUY;
	int mOVING_180_DAY_TOTAL_TRADES_SELL;
	int mOVING_180_DAY_TOTAL_TRADES_UNKNOWN;
	int mOVING_180_DAY_VOLUME;
	int mOVING_180_DAY_VOLUME_BUY;
	int mOVING_180_DAY_VOLUME_SELL;
	int mOVING_180_DAY_VOLUME_UNKNOWN;
	int mOVING_24_HOUR_HIGH;
	int mOVING_24_HOUR_LOW;
	int mOVING_24_HOUR_OPEN;
	int mOVING_24_HOUR_QUOTE_VOLUME;
	int mOVING_24_HOUR_QUOTE_VOLUME_BUY;
	int mOVING_24_HOUR_QUOTE_VOLUME_SELL;
	int mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN;
	int mOVING_24_HOUR_TOTAL_TRADES;
	int mOVING_24_HOUR_TOTAL_TRADES_BUY;
	int mOVING_24_HOUR_TOTAL_TRADES_SELL;
	int mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN;
	int mOVING_24_HOUR_VOLUME;
	int mOVING_24_HOUR_VOLUME_BUY;
	int mOVING_24_HOUR_VOLUME_SELL;
	int mOVING_24_HOUR_VOLUME_UNKNOWN;
	int mOVING_30_DAY_HIGH;
	int mOVING_30_DAY_LOW;
	int mOVING_30_DAY_OPEN;
	int mOVING_30_DAY_QUOTE_VOLUME;
	int mOVING_30_DAY_QUOTE_VOLUME_BUY;
	int mOVING_30_DAY_QUOTE_VOLUME_SELL;
	int mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN;
	int mOVING_30_DAY_TOTAL_TRADES;
	int mOVING_30_DAY_TOTAL_TRADES_BUY;
	int mOVING_30_DAY_TOTAL_TRADES_SELL;
	int mOVING_30_DAY_TOTAL_TRADES_UNKNOWN;
	int mOVING_30_DAY_VOLUME;
	int mOVING_30_DAY_VOLUME_BUY;
	int mOVING_30_DAY_VOLUME_SELL;
	int mOVING_30_DAY_VOLUME_UNKNOWN;
	int mOVING_365_DAY_HIGH;
	int mOVING_365_DAY_LOW;
	int mOVING_365_DAY_OPEN;
	int mOVING_365_DAY_QUOTE_VOLUME;
	int mOVING_365_DAY_QUOTE_VOLUME_BUY;
	int mOVING_365_DAY_QUOTE_VOLUME_SELL;
	int mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN;
	int mOVING_365_DAY_TOTAL_TRADES;
	int mOVING_365_DAY_TOTAL_TRADES_BUY;
	int mOVING_365_DAY_TOTAL_TRADES_SELL;
	int mOVING_365_DAY_TOTAL_TRADES_UNKNOWN;
	int mOVING_365_DAY_VOLUME;
	int mOVING_365_DAY_VOLUME_BUY;
	int mOVING_365_DAY_VOLUME_SELL;
	int mOVING_365_DAY_VOLUME_UNKNOWN;
	int mOVING_7_DAY_HIGH;
	int mOVING_7_DAY_LOW;
	int mOVING_7_DAY_OPEN;
	int mOVING_7_DAY_QUOTE_VOLUME;
	int mOVING_7_DAY_QUOTE_VOLUME_BUY;
	int mOVING_7_DAY_QUOTE_VOLUME_SELL;
	int mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN;
	int mOVING_7_DAY_TOTAL_TRADES;
	int mOVING_7_DAY_TOTAL_TRADES_BUY;
	int mOVING_7_DAY_TOTAL_TRADES_SELL;
	int mOVING_7_DAY_TOTAL_TRADES_UNKNOWN;
	int mOVING_7_DAY_VOLUME;
	int mOVING_7_DAY_VOLUME_BUY;
	int mOVING_7_DAY_VOLUME_SELL;
	int mOVING_7_DAY_VOLUME_UNKNOWN;
	int mOVING_90_DAY_HIGH;
	int mOVING_90_DAY_LOW;
	int mOVING_90_DAY_OPEN;
	int mOVING_90_DAY_QUOTE_VOLUME;
	int mOVING_90_DAY_QUOTE_VOLUME_BUY;
	int mOVING_90_DAY_QUOTE_VOLUME_SELL;
	int mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN;
	int mOVING_90_DAY_TOTAL_TRADES;
	int mOVING_90_DAY_TOTAL_TRADES_BUY;
	int mOVING_90_DAY_TOTAL_TRADES_SELL;
	int mOVING_90_DAY_TOTAL_TRADES_UNKNOWN;
	int mOVING_90_DAY_VOLUME;
	int mOVING_90_DAY_VOLUME_BUY;
	int mOVING_90_DAY_VOLUME_SELL;
	int mOVING_90_DAY_VOLUME_UNKNOWN;
	int pRICE;
	std::string pRICE_FLAG;
	int pRICE_LAST_UPDATE_TS;
	std::string qUOTE;
	int tOP_ASK_LAST_UPDATE_TS;
	int tOP_ASK_PRICE;
	int tOP_ASK_QUANTITY;
	int tOP_BID_LAST_UPDATE_TS;
	int tOP_BID_PRICE;
	int tOP_BID_QUANTITY;
	std::string tYPE;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SPOT_INSTRUMENT_MARKET_DATA_H_ */
