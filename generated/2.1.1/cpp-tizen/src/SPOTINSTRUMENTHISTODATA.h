/*
 * SPOT_INSTRUMENT_HISTO_DATA.h
 *
 * 
 */

#ifndef _SPOT_INSTRUMENT_HISTO_DATA_H_
#define _SPOT_INSTRUMENT_HISTO_DATA_H_


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

class SPOT_INSTRUMENT_HISTO_DATA : public Object {
public:
	/*! \brief Constructor.
	 */
	SPOT_INSTRUMENT_HISTO_DATA();
	SPOT_INSTRUMENT_HISTO_DATA(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SPOT_INSTRUMENT_HISTO_DATA();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
	 */
	std::string getBASE();

	/*! \brief Set The mapped from asset (base / symbol/ coin) (e.g. BTC). Only available on instruments that have mapping.
	 */
	void setBASE(std::string  bASE);
	/*! \brief Get The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
	 */
	int getCLOSE();

	/*! \brief Set The price of the last trade in this time period. If there were no trades in the time period, the open price will be given.
	 */
	void setCLOSE(int  cLOSE);
	/*! \brief Get The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
	 */
	int getFIRSTTRADEPRICE();

	/*! \brief Set The price of the first trade in the time period. This is only available when there is at least one trade in the time period.
	 */
	void setFIRSTTRADEPRICE(int  fIRST_TRADE_PRICE);
	/*! \brief Get The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
	 */
	int getFIRSTTRADETIMESTAMP();

	/*! \brief Set The timestamp, in seconds, of the first trade in this time perio. This is only available when there is at least one trade in the time period.
	 */
	void setFIRSTTRADETIMESTAMP(int  fIRST_TRADE_TIMESTAMP);
	/*! \brief Get The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
	 */
	int getHIGH();

	/*! \brief Set The highest trade price in the time period. If there were no trades in the time period, the open price will be given.
	 */
	void setHIGH(int  hIGH);
	/*! \brief Get The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
	 */
	int getHIGHTRADEPRICE();

	/*! \brief Set The highest value of the trades in the time period. This is only available when there is at least one trade in the time period.
	 */
	void setHIGHTRADEPRICE(int  hIGH_TRADE_PRICE);
	/*! \brief Get The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
	 */
	int getHIGHTRADETIMESTAMP();

	/*! \brief Set The timestamp, in seconds, of the highest trade in the time period. This is only available when there is at least one trade in the time period.
	 */
	void setHIGHTRADETIMESTAMP(int  hIGH_TRADE_TIMESTAMP);
	/*! \brief Get The unmapped instrument ID
	 */
	std::string getINSTRUMENT();

	/*! \brief Set The unmapped instrument ID
	 */
	void setINSTRUMENT(std::string  iNSTRUMENT);
	/*! \brief Get The last trade price in the time period. This is only available when there is at least one trade in the time period.
	 */
	int getLASTTRADEPRICE();

	/*! \brief Set The last trade price in the time period. This is only available when there is at least one trade in the time period.
	 */
	void setLASTTRADEPRICE(int  lAST_TRADE_PRICE);
	/*! \brief Get The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
	 */
	int getLASTTRADETIMESTAMP();

	/*! \brief Set The timestamp, in seconds, of the last trade in this time period. This is only available when there is at least one trade in the time period.
	 */
	void setLASTTRADETIMESTAMP(int  lAST_TRADE_TIMESTAMP);
	/*! \brief Get The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
	 */
	int getLOW();

	/*! \brief Set The lowest trade price in the time period. If there were no trades in the time period, the open price will be given.
	 */
	void setLOW(int  lOW);
	/*! \brief Get The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
	 */
	int getLOWTRADEPRICE();

	/*! \brief Set The lowest value of the trades in the time period. This is only available when there is at least one trade in the time period.
	 */
	void setLOWTRADEPRICE(int  lOW_TRADE_PRICE);
	/*! \brief Get The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
	 */
	int getLOWTRADETIMESTAMP();

	/*! \brief Set The timestamp, in seconds, of the lowest trade in the time period. This is only available when there is at least one trade in the time period.
	 */
	void setLOWTRADETIMESTAMP(int  lOW_TRADE_TIMESTAMP);
	/*! \brief Get The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
	 */
	std::string getMAPPEDINSTRUMENT();

	/*! \brief Set The instrument ID, as derived from our mapping rules. This takes the form \"BASE-QUOTE\" (e.g. BTC-USD). Only available on instruments that have been mapped.
	 */
	void setMAPPEDINSTRUMENT(std::string  mAPPED_INSTRUMENT);
	/*! \brief Get The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
	 */
	std::string getMARKET();

	/*! \brief Set The market / exchange under consideration (e.g. gemini, kraken, coinbase, etc).
	 */
	void setMARKET(std::string  mARKET);
	/*! \brief Get The open price for the historical period, this is based on the closest trade before the period start.
	 */
	int getOPEN();

	/*! \brief Set The open price for the historical period, this is based on the closest trade before the period start.
	 */
	void setOPEN(int  oPEN);
	/*! \brief Get The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
	 */
	std::string getQUOTE();

	/*! \brief Set The mapped to asset (quote / counter symbol / coin) (e.g. USD). Only available on instruments that have mapping.
	 */
	void setQUOTE(std::string  qUOTE);
	/*! \brief Get The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
	 */
	int getQUOTEVOLUME();

	/*! \brief Set The sum of all the trade volumes in the To asset (quote/counter symbol/coin) for the time period. If there were no trades in the time period, 0 will be returned.
	 */
	void setQUOTEVOLUME(int  qUOTE_VOLUME);
	/*! \brief Get The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
	 */
	int getQUOTEVOLUMEBUY();

	/*! \brief Set The sum of all the BUY trade volumes in the to asset (quote/counter symbol/coin) for the time period.
	 */
	void setQUOTEVOLUMEBUY(int  qUOTE_VOLUME_BUY);
	/*! \brief Get The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
	 */
	int getQUOTEVOLUMESELL();

	/*! \brief Set The sum of all the SELL trade volumes in the To asset (quote/counter symbol/coin) for the time period.
	 */
	void setQUOTEVOLUMESELL(int  qUOTE_VOLUME_SELL);
	/*! \brief Get The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
	 */
	int getQUOTEVOLUMEUNKNOWN();

	/*! \brief Set The sum of all the UNKNOWN trade volumes in the To asset (quote/counter symbol/coin) for the time period.
	 */
	void setQUOTEVOLUMEUNKNOWN(int  qUOTE_VOLUME_UNKNOWN);
	/*! \brief Get The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
	 */
	int getTIMESTAMP();

	/*! \brief Set The timestamp in seconds of the beginning of the histo period. For minute it would be every minute at the beginning of the minute, for hour it would be the start of the hour and for daily it is 00:00 GMT.
	 */
	void setTIMESTAMP(int  tIMESTAMP);
	/*! \brief Get The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
	 */
	int getTOTALTRADES();

	/*! \brief Set The total number of trades seen in this time period. If there were no trades in the time period, 0 will be returned.
	 */
	void setTOTALTRADES(int  tOTAL_TRADES);
	/*! \brief Get The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
	 */
	int getTOTALTRADESBUY();

	/*! \brief Set The total number of BUY trades seen in this time period. If there were no trades in the time period, 0 will be returned.
	 */
	void setTOTALTRADESBUY(int  tOTAL_TRADES_BUY);
	/*! \brief Get The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
	 */
	int getTOTALTRADESSELL();

	/*! \brief Set The total number of SELL trades seen in this time period. If there were no trades in the time period, 0 will be returned.
	 */
	void setTOTALTRADESSELL(int  tOTAL_TRADES_SELL);
	/*! \brief Get The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
	 */
	int getTOTALTRADESUNKNOWN();

	/*! \brief Set The total number of UNKNOWN trades seen in this time period. If there were no trades in the time period, 0 will be returned.
	 */
	void setTOTALTRADESUNKNOWN(int  tOTAL_TRADES_UNKNOWN);
	/*! \brief Get The type of the message.
	 */
	std::string getTYPE();

	/*! \brief Set The type of the message.
	 */
	void setTYPE(std::string  tYPE);
	/*! \brief Get The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
	 */
	std::string getUNIT();

	/*! \brief Set The unit of the historical period update: MINUTE for minute, HOUR for hour and DAY for day.
	 */
	void setUNIT(std::string  uNIT);
	/*! \brief Get The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
	 */
	int getVOLUME();

	/*! \brief Set The sum of all the trade volumes in the from asset (base symbol / coin) for the time period. If there were no trades in the time period, 0 will be returned.
	 */
	void setVOLUME(int  vOLUME);
	/*! \brief Get The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
	 */
	int getVOLUMEBUY();

	/*! \brief Set The sum of all the BUY trade volumes in the from asset (base symbol / coin) for the time period.
	 */
	void setVOLUMEBUY(int  vOLUME_BUY);
	/*! \brief Get The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
	 */
	int getVOLUMESELL();

	/*! \brief Set The sum of all the SELL trade volumes in the from asset (base symbol / coin) for the time period.
	 */
	void setVOLUMESELL(int  vOLUME_SELL);
	/*! \brief Get The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
	 */
	int getVOLUMEUNKNOWN();

	/*! \brief Set The sum of all the UNKNOWN trade volumes in the from asset (base symbol / coin) for the time period.
	 */
	void setVOLUMEUNKNOWN(int  vOLUME_UNKNOWN);

private:
	std::string bASE;
	int cLOSE;
	int fIRST_TRADE_PRICE;
	int fIRST_TRADE_TIMESTAMP;
	int hIGH;
	int hIGH_TRADE_PRICE;
	int hIGH_TRADE_TIMESTAMP;
	std::string iNSTRUMENT;
	int lAST_TRADE_PRICE;
	int lAST_TRADE_TIMESTAMP;
	int lOW;
	int lOW_TRADE_PRICE;
	int lOW_TRADE_TIMESTAMP;
	std::string mAPPED_INSTRUMENT;
	std::string mARKET;
	int oPEN;
	std::string qUOTE;
	int qUOTE_VOLUME;
	int qUOTE_VOLUME_BUY;
	int qUOTE_VOLUME_SELL;
	int qUOTE_VOLUME_UNKNOWN;
	int tIMESTAMP;
	int tOTAL_TRADES;
	int tOTAL_TRADES_BUY;
	int tOTAL_TRADES_SELL;
	int tOTAL_TRADES_UNKNOWN;
	std::string tYPE;
	std::string uNIT;
	int vOLUME;
	int vOLUME_BUY;
	int vOLUME_SELL;
	int vOLUME_UNKNOWN;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SPOT_INSTRUMENT_HISTO_DATA_H_ */
