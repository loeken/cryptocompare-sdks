
/*
 * SPOT_INSTRUMENT_TRADE.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_SPOT_INSTRUMENT_TRADE_H_
#define TINY_CPP_CLIENT_SPOT_INSTRUMENT_TRADE_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class SPOT_INSTRUMENT_TRADE{
public:

    /*! \brief Constructor.
	 */
    SPOT_INSTRUMENT_TRADE();
    SPOT_INSTRUMENT_TRADE(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~SPOT_INSTRUMENT_TRADE();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).
	 */
	std::string getBASE();

	/*! \brief Set The mapped from asset (base / symbol/ coin). Only available on instruments that have been mapped (e.g. BTC).
	 */
	void setBASE(std::string  bASE);
	/*! \brief Get Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.
	 */
	int getCCSEQ();

	/*! \brief Set Our internal sequence number for this trade, this is unique per market / exchange and trading pair. Should always be increasing by 1 for each new trade we discover, not in chronological order.
	 */
	void setCCSEQ(int  cCSEQ);
	/*! \brief Get The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.
	 */
	std::string getID();

	/*! \brief Set The trade ID as reported by the market / exchange. If the exchange does not provide a trade ID, this will be the timestamp of the trade + a number from 0 - 999. This preserves uniqueness, assuming there would never be more than 999 trades in any given second.
	 */
	void setID(std::string  iD);
	/*! \brief Get The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).
	 */
	std::string getINSTRUMENT();

	/*! \brief Set The unmapped instrument ID as given by the exchange (e.g. BTCUSD, BTC_USD, XBT-ZUSD, BTC-USD).
	 */
	void setINSTRUMENT(std::string  iNSTRUMENT);
	/*! \brief Get The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD).
	 */
	std::string getMAPPEDINSTRUMENT();

	/*! \brief Set The mapped instrument ID, as derived from our mapping rules. This takes the form: \"BASE-QUOTE\". Only available on instruments that have been mapped (e.g. BTC-USD).
	 */
	void setMAPPEDINSTRUMENT(std::string  mAPPED_INSTRUMENT);
	/*! \brief Get The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).
	 */
	std::string getMARKET();

	/*! \brief Set The market / exchange under consideration (e.g. Coinbase, Kraken, etc.).
	 */
	void setMARKET(std::string  mARKET);
	/*! \brief Get The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.
	 */
	int getPRICE();

	/*! \brief Set The price in the to instrument (quote / counter symbol / coin) of the trade. For a BTC-USD trade, this is how much was paid for one BTC in USD. For futures, this will be the price of the contract.
	 */
	void setPRICE(int  pRICE);
	/*! \brief Get The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.
	 */
	int getQUANTITY();

	/*! \brief Set The volume of the trade, given in the from instrument (base symbol / coin/ contract). For a spot BTC-USD trade, this is how much BTC was traded at the trade price. For a futures BTCUSDPERP, this is the BTC equivalent for the contracts traded.
	 */
	void setQUANTITY(int  qUANTITY);
	/*! \brief Get The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).
	 */
	std::string getQUOTE();

	/*! \brief Set The mapped to asset (quote / counter symbol / coin). Only available on instruments that have been mapped (e.g. USD).
	 */
	void setQUOTE(std::string  qUOTE);
	/*! \brief Get The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.
	 */
	int getQUOTEQUANTITY();

	/*! \brief Set The volume of the trade, given in the to instrument (quote / counter symbol / coin). This is equivalent to QUANTITY * PRICE. E.g. for a BTC-USD trade, this is how much USD was paid in total for the volume of BTC traded. For futures this is the quote currency equivalent for the contracts traded.
	 */
	void setQUOTEQUANTITY(int  qUOTE_QUANTITY);
	/*! \brief Get The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.
	 */
	int getRECEIVEDTIMESTAMP();

	/*! \brief Set The timestamp in seconds that the trade was received. This varies from the trade taking place on the market by a few millisconds to a few seconds depending on the market / exchange API options / rate limits.
	 */
	void setRECEIVEDTIMESTAMP(int  rECEIVED_TIMESTAMP);
	/*! \brief Get The nanosecond part of the received timestamp.
	 */
	int getRECEIVEDTIMESTAMPNS();

	/*! \brief Set The nanosecond part of the received timestamp.
	 */
	void setRECEIVEDTIMESTAMPNS(int  rECEIVED_TIMESTAMP_NS);
	/*! \brief Get The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned.
	 */
	std::string getSIDE();

	/*! \brief Set The side of the trade: SELL, BUY or UNKNOWN. If the exchange / api does not provide a side, \"UNKNOWN\" will be returned.
	 */
	void setSIDE(std::string  sIDE);
	/*! \brief Get The source of the trade update: POLLING, STREAMING, GO, BLOB etc.
	 */
	std::string getSOURCE();

	/*! \brief Set The source of the trade update: POLLING, STREAMING, GO, BLOB etc.
	 */
	void setSOURCE(std::string  sOURCE);
	/*! \brief Get The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.
	 */
	int getTIMESTAMP();

	/*! \brief Set The timestamp in seconds as reported by the market / exchange or the received timestamp if the market / exchange does not provide one.
	 */
	void setTIMESTAMP(int  tIMESTAMP);
	/*! \brief Get The nanosecond part of the reported timestamp.
	 */
	int getTIMESTAMPNS();

	/*! \brief Set The nanosecond part of the reported timestamp.
	 */
	void setTIMESTAMPNS(int  tIMESTAMP_NS);
	/*! \brief Get The type of the message.
	 */
	std::string getTYPE();

	/*! \brief Set The type of the message.
	 */
	void setTYPE(std::string  tYPE);


    private:
    std::string bASE{};
    int cCSEQ{};
    std::string iD{};
    std::string iNSTRUMENT{};
    std::string mAPPED_INSTRUMENT{};
    std::string mARKET{};
    int pRICE{};
    int qUANTITY{};
    std::string qUOTE{};
    int qUOTE_QUANTITY{};
    int rECEIVED_TIMESTAMP{};
    int rECEIVED_TIMESTAMP_NS{};
    std::string sIDE{};
    std::string sOURCE{};
    int tIMESTAMP{};
    int tIMESTAMP_NS{};
    std::string tYPE{};
};
}

#endif /* TINY_CPP_CLIENT_SPOT_INSTRUMENT_TRADE_H_ */
