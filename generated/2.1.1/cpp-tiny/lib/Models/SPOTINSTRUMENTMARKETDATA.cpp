

#include "SPOT_INSTRUMENT_MARKET_DATA.h"

using namespace Tiny;

SPOT_INSTRUMENT_MARKET_DATA::SPOT_INSTRUMENT_MARKET_DATA()
{
	bASE = std::string();
	cCSEQ = int(0);
	cURRENT_DAY_HIGH = int(0);
	cURRENT_DAY_LOW = int(0);
	cURRENT_DAY_OPEN = int(0);
	cURRENT_DAY_QUOTE_VOLUME = int(0);
	cURRENT_DAY_QUOTE_VOLUME_BUY = int(0);
	cURRENT_DAY_QUOTE_VOLUME_SELL = int(0);
	cURRENT_DAY_QUOTE_VOLUME_UNKNOWN = int(0);
	cURRENT_DAY_TOTAL_TRADES = int(0);
	cURRENT_DAY_TOTAL_TRADES_BUY = int(0);
	cURRENT_DAY_TOTAL_TRADES_SELL = int(0);
	cURRENT_DAY_TOTAL_TRADES_UNKNOWN = int(0);
	cURRENT_DAY_VOLUME = int(0);
	cURRENT_DAY_VOLUME_BUY = int(0);
	cURRENT_DAY_VOLUME_SELL = int(0);
	cURRENT_DAY_VOLUME_UNKNOWN = int(0);
	cURRENT_HOUR_HIGH = int(0);
	cURRENT_HOUR_LOW = int(0);
	cURRENT_HOUR_OPEN = int(0);
	cURRENT_HOUR_QUOTE_VOLUME = int(0);
	cURRENT_HOUR_QUOTE_VOLUME_BUY = int(0);
	cURRENT_HOUR_QUOTE_VOLUME_SELL = int(0);
	cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN = int(0);
	cURRENT_HOUR_TOTAL_TRADES = int(0);
	cURRENT_HOUR_TOTAL_TRADES_BUY = int(0);
	cURRENT_HOUR_TOTAL_TRADES_SELL = int(0);
	cURRENT_HOUR_TOTAL_TRADES_UNKNOWN = int(0);
	cURRENT_HOUR_VOLUME = int(0);
	cURRENT_HOUR_VOLUME_BUY = int(0);
	cURRENT_HOUR_VOLUME_SELL = int(0);
	cURRENT_HOUR_VOLUME_UNKNOWN = int(0);
	cURRENT_MONTH_HIGH = int(0);
	cURRENT_MONTH_LOW = int(0);
	cURRENT_MONTH_OPEN = int(0);
	cURRENT_MONTH_QUOTE_VOLUME = int(0);
	cURRENT_MONTH_QUOTE_VOLUME_BUY = int(0);
	cURRENT_MONTH_QUOTE_VOLUME_SELL = int(0);
	cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN = int(0);
	cURRENT_MONTH_TOTAL_TRADES = int(0);
	cURRENT_MONTH_TOTAL_TRADES_BUY = int(0);
	cURRENT_MONTH_TOTAL_TRADES_SELL = int(0);
	cURRENT_MONTH_TOTAL_TRADES_UNKNOWN = int(0);
	cURRENT_MONTH_VOLUME = int(0);
	cURRENT_MONTH_VOLUME_BUY = int(0);
	cURRENT_MONTH_VOLUME_SELL = int(0);
	cURRENT_MONTH_VOLUME_UNKNOWN = int(0);
	cURRENT_WEEK_HIGH = int(0);
	cURRENT_WEEK_LOW = int(0);
	cURRENT_WEEK_OPEN = int(0);
	cURRENT_WEEK_QUOTE_VOLUME = int(0);
	cURRENT_WEEK_QUOTE_VOLUME_BUY = int(0);
	cURRENT_WEEK_QUOTE_VOLUME_SELL = int(0);
	cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN = int(0);
	cURRENT_WEEK_TOTAL_TRADES = int(0);
	cURRENT_WEEK_TOTAL_TRADES_BUY = int(0);
	cURRENT_WEEK_TOTAL_TRADES_SELL = int(0);
	cURRENT_WEEK_TOTAL_TRADES_UNKNOWN = int(0);
	cURRENT_WEEK_VOLUME = int(0);
	cURRENT_WEEK_VOLUME_BUY = int(0);
	cURRENT_WEEK_VOLUME_SELL = int(0);
	cURRENT_WEEK_VOLUME_UNKNOWN = int(0);
	cURRENT_YEAR_HIGH = int(0);
	cURRENT_YEAR_LOW = int(0);
	cURRENT_YEAR_OPEN = int(0);
	cURRENT_YEAR_QUOTE_VOLUME = int(0);
	cURRENT_YEAR_QUOTE_VOLUME_BUY = int(0);
	cURRENT_YEAR_QUOTE_VOLUME_SELL = int(0);
	cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN = int(0);
	cURRENT_YEAR_TOTAL_TRADES = int(0);
	cURRENT_YEAR_TOTAL_TRADES_BUY = int(0);
	cURRENT_YEAR_TOTAL_TRADES_SELL = int(0);
	cURRENT_YEAR_TOTAL_TRADES_UNKNOWN = int(0);
	cURRENT_YEAR_VOLUME = int(0);
	cURRENT_YEAR_VOLUME_BUY = int(0);
	cURRENT_YEAR_VOLUME_SELL = int(0);
	cURRENT_YEAR_VOLUME_UNKNOWN = int(0);
	iNSTRUMENT = std::string();
	lAST_PROCESSED_TRADE_CCSEQ = std::string();
	lAST_PROCESSED_TRADE_PRICE = int(0);
	lAST_PROCESSED_TRADE_QUANTITY = int(0);
	lAST_PROCESSED_TRADE_QUOTE_QUANTITY = int(0);
	lAST_PROCESSED_TRADE_SIDE = std::string();
	lAST_PROCESSED_TRADE_TS = int(0);
	lAST_TRADE_CCSEQ = std::string();
	lAST_TRADE_ID = std::string();
	lAST_TRADE_QUANTITY = int(0);
	lAST_TRADE_QUOTE_QUANTITY = int(0);
	lAST_TRADE_SIDE = std::string();
	lIFETIME_FIRST_TRADE_TS = int(0);
	lIFETIME_HIGH = int(0);
	lIFETIME_HIGH_TS = int(0);
	lIFETIME_LOW = int(0);
	lIFETIME_LOW_TS = int(0);
	lIFETIME_OPEN = int(0);
	lIFETIME_QUOTE_VOLUME = int(0);
	lIFETIME_QUOTE_VOLUME_BUY = int(0);
	lIFETIME_QUOTE_VOLUME_SELL = int(0);
	lIFETIME_QUOTE_VOLUME_UNKNOWN = int(0);
	lIFETIME_TOTAL_TRADES = int(0);
	lIFETIME_TOTAL_TRADES_BUY = int(0);
	lIFETIME_TOTAL_TRADES_SELL = int(0);
	lIFETIME_TOTAL_TRADES_UNKNOWN = int(0);
	lIFETIME_VOLUME = int(0);
	lIFETIME_VOLUME_BUY = int(0);
	lIFETIME_VOLUME_SELL = int(0);
	lIFETIME_VOLUME_UNKNOWN = int(0);
	mAPPED_INSTRUMENT = std::string();
	mARKET = std::string();
	mOVING_180_DAY_HIGH = int(0);
	mOVING_180_DAY_LOW = int(0);
	mOVING_180_DAY_OPEN = int(0);
	mOVING_180_DAY_QUOTE_VOLUME = int(0);
	mOVING_180_DAY_QUOTE_VOLUME_BUY = int(0);
	mOVING_180_DAY_QUOTE_VOLUME_SELL = int(0);
	mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN = int(0);
	mOVING_180_DAY_TOTAL_TRADES = int(0);
	mOVING_180_DAY_TOTAL_TRADES_BUY = int(0);
	mOVING_180_DAY_TOTAL_TRADES_SELL = int(0);
	mOVING_180_DAY_TOTAL_TRADES_UNKNOWN = int(0);
	mOVING_180_DAY_VOLUME = int(0);
	mOVING_180_DAY_VOLUME_BUY = int(0);
	mOVING_180_DAY_VOLUME_SELL = int(0);
	mOVING_180_DAY_VOLUME_UNKNOWN = int(0);
	mOVING_24_HOUR_HIGH = int(0);
	mOVING_24_HOUR_LOW = int(0);
	mOVING_24_HOUR_OPEN = int(0);
	mOVING_24_HOUR_QUOTE_VOLUME = int(0);
	mOVING_24_HOUR_QUOTE_VOLUME_BUY = int(0);
	mOVING_24_HOUR_QUOTE_VOLUME_SELL = int(0);
	mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN = int(0);
	mOVING_24_HOUR_TOTAL_TRADES = int(0);
	mOVING_24_HOUR_TOTAL_TRADES_BUY = int(0);
	mOVING_24_HOUR_TOTAL_TRADES_SELL = int(0);
	mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN = int(0);
	mOVING_24_HOUR_VOLUME = int(0);
	mOVING_24_HOUR_VOLUME_BUY = int(0);
	mOVING_24_HOUR_VOLUME_SELL = int(0);
	mOVING_24_HOUR_VOLUME_UNKNOWN = int(0);
	mOVING_30_DAY_HIGH = int(0);
	mOVING_30_DAY_LOW = int(0);
	mOVING_30_DAY_OPEN = int(0);
	mOVING_30_DAY_QUOTE_VOLUME = int(0);
	mOVING_30_DAY_QUOTE_VOLUME_BUY = int(0);
	mOVING_30_DAY_QUOTE_VOLUME_SELL = int(0);
	mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN = int(0);
	mOVING_30_DAY_TOTAL_TRADES = int(0);
	mOVING_30_DAY_TOTAL_TRADES_BUY = int(0);
	mOVING_30_DAY_TOTAL_TRADES_SELL = int(0);
	mOVING_30_DAY_TOTAL_TRADES_UNKNOWN = int(0);
	mOVING_30_DAY_VOLUME = int(0);
	mOVING_30_DAY_VOLUME_BUY = int(0);
	mOVING_30_DAY_VOLUME_SELL = int(0);
	mOVING_30_DAY_VOLUME_UNKNOWN = int(0);
	mOVING_365_DAY_HIGH = int(0);
	mOVING_365_DAY_LOW = int(0);
	mOVING_365_DAY_OPEN = int(0);
	mOVING_365_DAY_QUOTE_VOLUME = int(0);
	mOVING_365_DAY_QUOTE_VOLUME_BUY = int(0);
	mOVING_365_DAY_QUOTE_VOLUME_SELL = int(0);
	mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN = int(0);
	mOVING_365_DAY_TOTAL_TRADES = int(0);
	mOVING_365_DAY_TOTAL_TRADES_BUY = int(0);
	mOVING_365_DAY_TOTAL_TRADES_SELL = int(0);
	mOVING_365_DAY_TOTAL_TRADES_UNKNOWN = int(0);
	mOVING_365_DAY_VOLUME = int(0);
	mOVING_365_DAY_VOLUME_BUY = int(0);
	mOVING_365_DAY_VOLUME_SELL = int(0);
	mOVING_365_DAY_VOLUME_UNKNOWN = int(0);
	mOVING_7_DAY_HIGH = int(0);
	mOVING_7_DAY_LOW = int(0);
	mOVING_7_DAY_OPEN = int(0);
	mOVING_7_DAY_QUOTE_VOLUME = int(0);
	mOVING_7_DAY_QUOTE_VOLUME_BUY = int(0);
	mOVING_7_DAY_QUOTE_VOLUME_SELL = int(0);
	mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN = int(0);
	mOVING_7_DAY_TOTAL_TRADES = int(0);
	mOVING_7_DAY_TOTAL_TRADES_BUY = int(0);
	mOVING_7_DAY_TOTAL_TRADES_SELL = int(0);
	mOVING_7_DAY_TOTAL_TRADES_UNKNOWN = int(0);
	mOVING_7_DAY_VOLUME = int(0);
	mOVING_7_DAY_VOLUME_BUY = int(0);
	mOVING_7_DAY_VOLUME_SELL = int(0);
	mOVING_7_DAY_VOLUME_UNKNOWN = int(0);
	mOVING_90_DAY_HIGH = int(0);
	mOVING_90_DAY_LOW = int(0);
	mOVING_90_DAY_OPEN = int(0);
	mOVING_90_DAY_QUOTE_VOLUME = int(0);
	mOVING_90_DAY_QUOTE_VOLUME_BUY = int(0);
	mOVING_90_DAY_QUOTE_VOLUME_SELL = int(0);
	mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN = int(0);
	mOVING_90_DAY_TOTAL_TRADES = int(0);
	mOVING_90_DAY_TOTAL_TRADES_BUY = int(0);
	mOVING_90_DAY_TOTAL_TRADES_SELL = int(0);
	mOVING_90_DAY_TOTAL_TRADES_UNKNOWN = int(0);
	mOVING_90_DAY_VOLUME = int(0);
	mOVING_90_DAY_VOLUME_BUY = int(0);
	mOVING_90_DAY_VOLUME_SELL = int(0);
	mOVING_90_DAY_VOLUME_UNKNOWN = int(0);
	pRICE = int(0);
	pRICE_FLAG = std::string();
	pRICE_LAST_UPDATE_TS = int(0);
	qUOTE = std::string();
	tOP_ASK_LAST_UPDATE_TS = int(0);
	tOP_ASK_PRICE = int(0);
	tOP_ASK_QUANTITY = int(0);
	tOP_BID_LAST_UPDATE_TS = int(0);
	tOP_BID_PRICE = int(0);
	tOP_BID_QUANTITY = int(0);
	tYPE = std::string();
}

SPOT_INSTRUMENT_MARKET_DATA::SPOT_INSTRUMENT_MARKET_DATA(std::string jsonString)
{
	this->fromJson(jsonString);
}

SPOT_INSTRUMENT_MARKET_DATA::~SPOT_INSTRUMENT_MARKET_DATA()
{

}

void
SPOT_INSTRUMENT_MARKET_DATA::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *bASEKey = "BASE";

    if(object.has_key(bASEKey))
    {
        bourne::json value = object[bASEKey];



        jsonToValue(&bASE, value, "std::string");


    }

    const char *cCSEQKey = "CCSEQ";

    if(object.has_key(cCSEQKey))
    {
        bourne::json value = object[cCSEQKey];



        jsonToValue(&cCSEQ, value, "int");


    }

    const char *cURRENT_DAY_HIGHKey = "CURRENT_DAY_HIGH";

    if(object.has_key(cURRENT_DAY_HIGHKey))
    {
        bourne::json value = object[cURRENT_DAY_HIGHKey];



        jsonToValue(&cURRENT_DAY_HIGH, value, "int");


    }

    const char *cURRENT_DAY_LOWKey = "CURRENT_DAY_LOW";

    if(object.has_key(cURRENT_DAY_LOWKey))
    {
        bourne::json value = object[cURRENT_DAY_LOWKey];



        jsonToValue(&cURRENT_DAY_LOW, value, "int");


    }

    const char *cURRENT_DAY_OPENKey = "CURRENT_DAY_OPEN";

    if(object.has_key(cURRENT_DAY_OPENKey))
    {
        bourne::json value = object[cURRENT_DAY_OPENKey];



        jsonToValue(&cURRENT_DAY_OPEN, value, "int");


    }

    const char *cURRENT_DAY_QUOTE_VOLUMEKey = "CURRENT_DAY_QUOTE_VOLUME";

    if(object.has_key(cURRENT_DAY_QUOTE_VOLUMEKey))
    {
        bourne::json value = object[cURRENT_DAY_QUOTE_VOLUMEKey];



        jsonToValue(&cURRENT_DAY_QUOTE_VOLUME, value, "int");


    }

    const char *cURRENT_DAY_QUOTE_VOLUME_BUYKey = "CURRENT_DAY_QUOTE_VOLUME_BUY";

    if(object.has_key(cURRENT_DAY_QUOTE_VOLUME_BUYKey))
    {
        bourne::json value = object[cURRENT_DAY_QUOTE_VOLUME_BUYKey];



        jsonToValue(&cURRENT_DAY_QUOTE_VOLUME_BUY, value, "int");


    }

    const char *cURRENT_DAY_QUOTE_VOLUME_SELLKey = "CURRENT_DAY_QUOTE_VOLUME_SELL";

    if(object.has_key(cURRENT_DAY_QUOTE_VOLUME_SELLKey))
    {
        bourne::json value = object[cURRENT_DAY_QUOTE_VOLUME_SELLKey];



        jsonToValue(&cURRENT_DAY_QUOTE_VOLUME_SELL, value, "int");


    }

    const char *cURRENT_DAY_QUOTE_VOLUME_UNKNOWNKey = "CURRENT_DAY_QUOTE_VOLUME_UNKNOWN";

    if(object.has_key(cURRENT_DAY_QUOTE_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_DAY_QUOTE_VOLUME_UNKNOWNKey];



        jsonToValue(&cURRENT_DAY_QUOTE_VOLUME_UNKNOWN, value, "int");


    }

    const char *cURRENT_DAY_TOTAL_TRADESKey = "CURRENT_DAY_TOTAL_TRADES";

    if(object.has_key(cURRENT_DAY_TOTAL_TRADESKey))
    {
        bourne::json value = object[cURRENT_DAY_TOTAL_TRADESKey];



        jsonToValue(&cURRENT_DAY_TOTAL_TRADES, value, "int");


    }

    const char *cURRENT_DAY_TOTAL_TRADES_BUYKey = "CURRENT_DAY_TOTAL_TRADES_BUY";

    if(object.has_key(cURRENT_DAY_TOTAL_TRADES_BUYKey))
    {
        bourne::json value = object[cURRENT_DAY_TOTAL_TRADES_BUYKey];



        jsonToValue(&cURRENT_DAY_TOTAL_TRADES_BUY, value, "int");


    }

    const char *cURRENT_DAY_TOTAL_TRADES_SELLKey = "CURRENT_DAY_TOTAL_TRADES_SELL";

    if(object.has_key(cURRENT_DAY_TOTAL_TRADES_SELLKey))
    {
        bourne::json value = object[cURRENT_DAY_TOTAL_TRADES_SELLKey];



        jsonToValue(&cURRENT_DAY_TOTAL_TRADES_SELL, value, "int");


    }

    const char *cURRENT_DAY_TOTAL_TRADES_UNKNOWNKey = "CURRENT_DAY_TOTAL_TRADES_UNKNOWN";

    if(object.has_key(cURRENT_DAY_TOTAL_TRADES_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_DAY_TOTAL_TRADES_UNKNOWNKey];



        jsonToValue(&cURRENT_DAY_TOTAL_TRADES_UNKNOWN, value, "int");


    }

    const char *cURRENT_DAY_VOLUMEKey = "CURRENT_DAY_VOLUME";

    if(object.has_key(cURRENT_DAY_VOLUMEKey))
    {
        bourne::json value = object[cURRENT_DAY_VOLUMEKey];



        jsonToValue(&cURRENT_DAY_VOLUME, value, "int");


    }

    const char *cURRENT_DAY_VOLUME_BUYKey = "CURRENT_DAY_VOLUME_BUY";

    if(object.has_key(cURRENT_DAY_VOLUME_BUYKey))
    {
        bourne::json value = object[cURRENT_DAY_VOLUME_BUYKey];



        jsonToValue(&cURRENT_DAY_VOLUME_BUY, value, "int");


    }

    const char *cURRENT_DAY_VOLUME_SELLKey = "CURRENT_DAY_VOLUME_SELL";

    if(object.has_key(cURRENT_DAY_VOLUME_SELLKey))
    {
        bourne::json value = object[cURRENT_DAY_VOLUME_SELLKey];



        jsonToValue(&cURRENT_DAY_VOLUME_SELL, value, "int");


    }

    const char *cURRENT_DAY_VOLUME_UNKNOWNKey = "CURRENT_DAY_VOLUME_UNKNOWN";

    if(object.has_key(cURRENT_DAY_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_DAY_VOLUME_UNKNOWNKey];



        jsonToValue(&cURRENT_DAY_VOLUME_UNKNOWN, value, "int");


    }

    const char *cURRENT_HOUR_HIGHKey = "CURRENT_HOUR_HIGH";

    if(object.has_key(cURRENT_HOUR_HIGHKey))
    {
        bourne::json value = object[cURRENT_HOUR_HIGHKey];



        jsonToValue(&cURRENT_HOUR_HIGH, value, "int");


    }

    const char *cURRENT_HOUR_LOWKey = "CURRENT_HOUR_LOW";

    if(object.has_key(cURRENT_HOUR_LOWKey))
    {
        bourne::json value = object[cURRENT_HOUR_LOWKey];



        jsonToValue(&cURRENT_HOUR_LOW, value, "int");


    }

    const char *cURRENT_HOUR_OPENKey = "CURRENT_HOUR_OPEN";

    if(object.has_key(cURRENT_HOUR_OPENKey))
    {
        bourne::json value = object[cURRENT_HOUR_OPENKey];



        jsonToValue(&cURRENT_HOUR_OPEN, value, "int");


    }

    const char *cURRENT_HOUR_QUOTE_VOLUMEKey = "CURRENT_HOUR_QUOTE_VOLUME";

    if(object.has_key(cURRENT_HOUR_QUOTE_VOLUMEKey))
    {
        bourne::json value = object[cURRENT_HOUR_QUOTE_VOLUMEKey];



        jsonToValue(&cURRENT_HOUR_QUOTE_VOLUME, value, "int");


    }

    const char *cURRENT_HOUR_QUOTE_VOLUME_BUYKey = "CURRENT_HOUR_QUOTE_VOLUME_BUY";

    if(object.has_key(cURRENT_HOUR_QUOTE_VOLUME_BUYKey))
    {
        bourne::json value = object[cURRENT_HOUR_QUOTE_VOLUME_BUYKey];



        jsonToValue(&cURRENT_HOUR_QUOTE_VOLUME_BUY, value, "int");


    }

    const char *cURRENT_HOUR_QUOTE_VOLUME_SELLKey = "CURRENT_HOUR_QUOTE_VOLUME_SELL";

    if(object.has_key(cURRENT_HOUR_QUOTE_VOLUME_SELLKey))
    {
        bourne::json value = object[cURRENT_HOUR_QUOTE_VOLUME_SELLKey];



        jsonToValue(&cURRENT_HOUR_QUOTE_VOLUME_SELL, value, "int");


    }

    const char *cURRENT_HOUR_QUOTE_VOLUME_UNKNOWNKey = "CURRENT_HOUR_QUOTE_VOLUME_UNKNOWN";

    if(object.has_key(cURRENT_HOUR_QUOTE_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_HOUR_QUOTE_VOLUME_UNKNOWNKey];



        jsonToValue(&cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN, value, "int");


    }

    const char *cURRENT_HOUR_TOTAL_TRADESKey = "CURRENT_HOUR_TOTAL_TRADES";

    if(object.has_key(cURRENT_HOUR_TOTAL_TRADESKey))
    {
        bourne::json value = object[cURRENT_HOUR_TOTAL_TRADESKey];



        jsonToValue(&cURRENT_HOUR_TOTAL_TRADES, value, "int");


    }

    const char *cURRENT_HOUR_TOTAL_TRADES_BUYKey = "CURRENT_HOUR_TOTAL_TRADES_BUY";

    if(object.has_key(cURRENT_HOUR_TOTAL_TRADES_BUYKey))
    {
        bourne::json value = object[cURRENT_HOUR_TOTAL_TRADES_BUYKey];



        jsonToValue(&cURRENT_HOUR_TOTAL_TRADES_BUY, value, "int");


    }

    const char *cURRENT_HOUR_TOTAL_TRADES_SELLKey = "CURRENT_HOUR_TOTAL_TRADES_SELL";

    if(object.has_key(cURRENT_HOUR_TOTAL_TRADES_SELLKey))
    {
        bourne::json value = object[cURRENT_HOUR_TOTAL_TRADES_SELLKey];



        jsonToValue(&cURRENT_HOUR_TOTAL_TRADES_SELL, value, "int");


    }

    const char *cURRENT_HOUR_TOTAL_TRADES_UNKNOWNKey = "CURRENT_HOUR_TOTAL_TRADES_UNKNOWN";

    if(object.has_key(cURRENT_HOUR_TOTAL_TRADES_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_HOUR_TOTAL_TRADES_UNKNOWNKey];



        jsonToValue(&cURRENT_HOUR_TOTAL_TRADES_UNKNOWN, value, "int");


    }

    const char *cURRENT_HOUR_VOLUMEKey = "CURRENT_HOUR_VOLUME";

    if(object.has_key(cURRENT_HOUR_VOLUMEKey))
    {
        bourne::json value = object[cURRENT_HOUR_VOLUMEKey];



        jsonToValue(&cURRENT_HOUR_VOLUME, value, "int");


    }

    const char *cURRENT_HOUR_VOLUME_BUYKey = "CURRENT_HOUR_VOLUME_BUY";

    if(object.has_key(cURRENT_HOUR_VOLUME_BUYKey))
    {
        bourne::json value = object[cURRENT_HOUR_VOLUME_BUYKey];



        jsonToValue(&cURRENT_HOUR_VOLUME_BUY, value, "int");


    }

    const char *cURRENT_HOUR_VOLUME_SELLKey = "CURRENT_HOUR_VOLUME_SELL";

    if(object.has_key(cURRENT_HOUR_VOLUME_SELLKey))
    {
        bourne::json value = object[cURRENT_HOUR_VOLUME_SELLKey];



        jsonToValue(&cURRENT_HOUR_VOLUME_SELL, value, "int");


    }

    const char *cURRENT_HOUR_VOLUME_UNKNOWNKey = "CURRENT_HOUR_VOLUME_UNKNOWN";

    if(object.has_key(cURRENT_HOUR_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_HOUR_VOLUME_UNKNOWNKey];



        jsonToValue(&cURRENT_HOUR_VOLUME_UNKNOWN, value, "int");


    }

    const char *cURRENT_MONTH_HIGHKey = "CURRENT_MONTH_HIGH";

    if(object.has_key(cURRENT_MONTH_HIGHKey))
    {
        bourne::json value = object[cURRENT_MONTH_HIGHKey];



        jsonToValue(&cURRENT_MONTH_HIGH, value, "int");


    }

    const char *cURRENT_MONTH_LOWKey = "CURRENT_MONTH_LOW";

    if(object.has_key(cURRENT_MONTH_LOWKey))
    {
        bourne::json value = object[cURRENT_MONTH_LOWKey];



        jsonToValue(&cURRENT_MONTH_LOW, value, "int");


    }

    const char *cURRENT_MONTH_OPENKey = "CURRENT_MONTH_OPEN";

    if(object.has_key(cURRENT_MONTH_OPENKey))
    {
        bourne::json value = object[cURRENT_MONTH_OPENKey];



        jsonToValue(&cURRENT_MONTH_OPEN, value, "int");


    }

    const char *cURRENT_MONTH_QUOTE_VOLUMEKey = "CURRENT_MONTH_QUOTE_VOLUME";

    if(object.has_key(cURRENT_MONTH_QUOTE_VOLUMEKey))
    {
        bourne::json value = object[cURRENT_MONTH_QUOTE_VOLUMEKey];



        jsonToValue(&cURRENT_MONTH_QUOTE_VOLUME, value, "int");


    }

    const char *cURRENT_MONTH_QUOTE_VOLUME_BUYKey = "CURRENT_MONTH_QUOTE_VOLUME_BUY";

    if(object.has_key(cURRENT_MONTH_QUOTE_VOLUME_BUYKey))
    {
        bourne::json value = object[cURRENT_MONTH_QUOTE_VOLUME_BUYKey];



        jsonToValue(&cURRENT_MONTH_QUOTE_VOLUME_BUY, value, "int");


    }

    const char *cURRENT_MONTH_QUOTE_VOLUME_SELLKey = "CURRENT_MONTH_QUOTE_VOLUME_SELL";

    if(object.has_key(cURRENT_MONTH_QUOTE_VOLUME_SELLKey))
    {
        bourne::json value = object[cURRENT_MONTH_QUOTE_VOLUME_SELLKey];



        jsonToValue(&cURRENT_MONTH_QUOTE_VOLUME_SELL, value, "int");


    }

    const char *cURRENT_MONTH_QUOTE_VOLUME_UNKNOWNKey = "CURRENT_MONTH_QUOTE_VOLUME_UNKNOWN";

    if(object.has_key(cURRENT_MONTH_QUOTE_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_MONTH_QUOTE_VOLUME_UNKNOWNKey];



        jsonToValue(&cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN, value, "int");


    }

    const char *cURRENT_MONTH_TOTAL_TRADESKey = "CURRENT_MONTH_TOTAL_TRADES";

    if(object.has_key(cURRENT_MONTH_TOTAL_TRADESKey))
    {
        bourne::json value = object[cURRENT_MONTH_TOTAL_TRADESKey];



        jsonToValue(&cURRENT_MONTH_TOTAL_TRADES, value, "int");


    }

    const char *cURRENT_MONTH_TOTAL_TRADES_BUYKey = "CURRENT_MONTH_TOTAL_TRADES_BUY";

    if(object.has_key(cURRENT_MONTH_TOTAL_TRADES_BUYKey))
    {
        bourne::json value = object[cURRENT_MONTH_TOTAL_TRADES_BUYKey];



        jsonToValue(&cURRENT_MONTH_TOTAL_TRADES_BUY, value, "int");


    }

    const char *cURRENT_MONTH_TOTAL_TRADES_SELLKey = "CURRENT_MONTH_TOTAL_TRADES_SELL";

    if(object.has_key(cURRENT_MONTH_TOTAL_TRADES_SELLKey))
    {
        bourne::json value = object[cURRENT_MONTH_TOTAL_TRADES_SELLKey];



        jsonToValue(&cURRENT_MONTH_TOTAL_TRADES_SELL, value, "int");


    }

    const char *cURRENT_MONTH_TOTAL_TRADES_UNKNOWNKey = "CURRENT_MONTH_TOTAL_TRADES_UNKNOWN";

    if(object.has_key(cURRENT_MONTH_TOTAL_TRADES_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_MONTH_TOTAL_TRADES_UNKNOWNKey];



        jsonToValue(&cURRENT_MONTH_TOTAL_TRADES_UNKNOWN, value, "int");


    }

    const char *cURRENT_MONTH_VOLUMEKey = "CURRENT_MONTH_VOLUME";

    if(object.has_key(cURRENT_MONTH_VOLUMEKey))
    {
        bourne::json value = object[cURRENT_MONTH_VOLUMEKey];



        jsonToValue(&cURRENT_MONTH_VOLUME, value, "int");


    }

    const char *cURRENT_MONTH_VOLUME_BUYKey = "CURRENT_MONTH_VOLUME_BUY";

    if(object.has_key(cURRENT_MONTH_VOLUME_BUYKey))
    {
        bourne::json value = object[cURRENT_MONTH_VOLUME_BUYKey];



        jsonToValue(&cURRENT_MONTH_VOLUME_BUY, value, "int");


    }

    const char *cURRENT_MONTH_VOLUME_SELLKey = "CURRENT_MONTH_VOLUME_SELL";

    if(object.has_key(cURRENT_MONTH_VOLUME_SELLKey))
    {
        bourne::json value = object[cURRENT_MONTH_VOLUME_SELLKey];



        jsonToValue(&cURRENT_MONTH_VOLUME_SELL, value, "int");


    }

    const char *cURRENT_MONTH_VOLUME_UNKNOWNKey = "CURRENT_MONTH_VOLUME_UNKNOWN";

    if(object.has_key(cURRENT_MONTH_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_MONTH_VOLUME_UNKNOWNKey];



        jsonToValue(&cURRENT_MONTH_VOLUME_UNKNOWN, value, "int");


    }

    const char *cURRENT_WEEK_HIGHKey = "CURRENT_WEEK_HIGH";

    if(object.has_key(cURRENT_WEEK_HIGHKey))
    {
        bourne::json value = object[cURRENT_WEEK_HIGHKey];



        jsonToValue(&cURRENT_WEEK_HIGH, value, "int");


    }

    const char *cURRENT_WEEK_LOWKey = "CURRENT_WEEK_LOW";

    if(object.has_key(cURRENT_WEEK_LOWKey))
    {
        bourne::json value = object[cURRENT_WEEK_LOWKey];



        jsonToValue(&cURRENT_WEEK_LOW, value, "int");


    }

    const char *cURRENT_WEEK_OPENKey = "CURRENT_WEEK_OPEN";

    if(object.has_key(cURRENT_WEEK_OPENKey))
    {
        bourne::json value = object[cURRENT_WEEK_OPENKey];



        jsonToValue(&cURRENT_WEEK_OPEN, value, "int");


    }

    const char *cURRENT_WEEK_QUOTE_VOLUMEKey = "CURRENT_WEEK_QUOTE_VOLUME";

    if(object.has_key(cURRENT_WEEK_QUOTE_VOLUMEKey))
    {
        bourne::json value = object[cURRENT_WEEK_QUOTE_VOLUMEKey];



        jsonToValue(&cURRENT_WEEK_QUOTE_VOLUME, value, "int");


    }

    const char *cURRENT_WEEK_QUOTE_VOLUME_BUYKey = "CURRENT_WEEK_QUOTE_VOLUME_BUY";

    if(object.has_key(cURRENT_WEEK_QUOTE_VOLUME_BUYKey))
    {
        bourne::json value = object[cURRENT_WEEK_QUOTE_VOLUME_BUYKey];



        jsonToValue(&cURRENT_WEEK_QUOTE_VOLUME_BUY, value, "int");


    }

    const char *cURRENT_WEEK_QUOTE_VOLUME_SELLKey = "CURRENT_WEEK_QUOTE_VOLUME_SELL";

    if(object.has_key(cURRENT_WEEK_QUOTE_VOLUME_SELLKey))
    {
        bourne::json value = object[cURRENT_WEEK_QUOTE_VOLUME_SELLKey];



        jsonToValue(&cURRENT_WEEK_QUOTE_VOLUME_SELL, value, "int");


    }

    const char *cURRENT_WEEK_QUOTE_VOLUME_UNKNOWNKey = "CURRENT_WEEK_QUOTE_VOLUME_UNKNOWN";

    if(object.has_key(cURRENT_WEEK_QUOTE_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_WEEK_QUOTE_VOLUME_UNKNOWNKey];



        jsonToValue(&cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN, value, "int");


    }

    const char *cURRENT_WEEK_TOTAL_TRADESKey = "CURRENT_WEEK_TOTAL_TRADES";

    if(object.has_key(cURRENT_WEEK_TOTAL_TRADESKey))
    {
        bourne::json value = object[cURRENT_WEEK_TOTAL_TRADESKey];



        jsonToValue(&cURRENT_WEEK_TOTAL_TRADES, value, "int");


    }

    const char *cURRENT_WEEK_TOTAL_TRADES_BUYKey = "CURRENT_WEEK_TOTAL_TRADES_BUY";

    if(object.has_key(cURRENT_WEEK_TOTAL_TRADES_BUYKey))
    {
        bourne::json value = object[cURRENT_WEEK_TOTAL_TRADES_BUYKey];



        jsonToValue(&cURRENT_WEEK_TOTAL_TRADES_BUY, value, "int");


    }

    const char *cURRENT_WEEK_TOTAL_TRADES_SELLKey = "CURRENT_WEEK_TOTAL_TRADES_SELL";

    if(object.has_key(cURRENT_WEEK_TOTAL_TRADES_SELLKey))
    {
        bourne::json value = object[cURRENT_WEEK_TOTAL_TRADES_SELLKey];



        jsonToValue(&cURRENT_WEEK_TOTAL_TRADES_SELL, value, "int");


    }

    const char *cURRENT_WEEK_TOTAL_TRADES_UNKNOWNKey = "CURRENT_WEEK_TOTAL_TRADES_UNKNOWN";

    if(object.has_key(cURRENT_WEEK_TOTAL_TRADES_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_WEEK_TOTAL_TRADES_UNKNOWNKey];



        jsonToValue(&cURRENT_WEEK_TOTAL_TRADES_UNKNOWN, value, "int");


    }

    const char *cURRENT_WEEK_VOLUMEKey = "CURRENT_WEEK_VOLUME";

    if(object.has_key(cURRENT_WEEK_VOLUMEKey))
    {
        bourne::json value = object[cURRENT_WEEK_VOLUMEKey];



        jsonToValue(&cURRENT_WEEK_VOLUME, value, "int");


    }

    const char *cURRENT_WEEK_VOLUME_BUYKey = "CURRENT_WEEK_VOLUME_BUY";

    if(object.has_key(cURRENT_WEEK_VOLUME_BUYKey))
    {
        bourne::json value = object[cURRENT_WEEK_VOLUME_BUYKey];



        jsonToValue(&cURRENT_WEEK_VOLUME_BUY, value, "int");


    }

    const char *cURRENT_WEEK_VOLUME_SELLKey = "CURRENT_WEEK_VOLUME_SELL";

    if(object.has_key(cURRENT_WEEK_VOLUME_SELLKey))
    {
        bourne::json value = object[cURRENT_WEEK_VOLUME_SELLKey];



        jsonToValue(&cURRENT_WEEK_VOLUME_SELL, value, "int");


    }

    const char *cURRENT_WEEK_VOLUME_UNKNOWNKey = "CURRENT_WEEK_VOLUME_UNKNOWN";

    if(object.has_key(cURRENT_WEEK_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_WEEK_VOLUME_UNKNOWNKey];



        jsonToValue(&cURRENT_WEEK_VOLUME_UNKNOWN, value, "int");


    }

    const char *cURRENT_YEAR_HIGHKey = "CURRENT_YEAR_HIGH";

    if(object.has_key(cURRENT_YEAR_HIGHKey))
    {
        bourne::json value = object[cURRENT_YEAR_HIGHKey];



        jsonToValue(&cURRENT_YEAR_HIGH, value, "int");


    }

    const char *cURRENT_YEAR_LOWKey = "CURRENT_YEAR_LOW";

    if(object.has_key(cURRENT_YEAR_LOWKey))
    {
        bourne::json value = object[cURRENT_YEAR_LOWKey];



        jsonToValue(&cURRENT_YEAR_LOW, value, "int");


    }

    const char *cURRENT_YEAR_OPENKey = "CURRENT_YEAR_OPEN";

    if(object.has_key(cURRENT_YEAR_OPENKey))
    {
        bourne::json value = object[cURRENT_YEAR_OPENKey];



        jsonToValue(&cURRENT_YEAR_OPEN, value, "int");


    }

    const char *cURRENT_YEAR_QUOTE_VOLUMEKey = "CURRENT_YEAR_QUOTE_VOLUME";

    if(object.has_key(cURRENT_YEAR_QUOTE_VOLUMEKey))
    {
        bourne::json value = object[cURRENT_YEAR_QUOTE_VOLUMEKey];



        jsonToValue(&cURRENT_YEAR_QUOTE_VOLUME, value, "int");


    }

    const char *cURRENT_YEAR_QUOTE_VOLUME_BUYKey = "CURRENT_YEAR_QUOTE_VOLUME_BUY";

    if(object.has_key(cURRENT_YEAR_QUOTE_VOLUME_BUYKey))
    {
        bourne::json value = object[cURRENT_YEAR_QUOTE_VOLUME_BUYKey];



        jsonToValue(&cURRENT_YEAR_QUOTE_VOLUME_BUY, value, "int");


    }

    const char *cURRENT_YEAR_QUOTE_VOLUME_SELLKey = "CURRENT_YEAR_QUOTE_VOLUME_SELL";

    if(object.has_key(cURRENT_YEAR_QUOTE_VOLUME_SELLKey))
    {
        bourne::json value = object[cURRENT_YEAR_QUOTE_VOLUME_SELLKey];



        jsonToValue(&cURRENT_YEAR_QUOTE_VOLUME_SELL, value, "int");


    }

    const char *cURRENT_YEAR_QUOTE_VOLUME_UNKNOWNKey = "CURRENT_YEAR_QUOTE_VOLUME_UNKNOWN";

    if(object.has_key(cURRENT_YEAR_QUOTE_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_YEAR_QUOTE_VOLUME_UNKNOWNKey];



        jsonToValue(&cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN, value, "int");


    }

    const char *cURRENT_YEAR_TOTAL_TRADESKey = "CURRENT_YEAR_TOTAL_TRADES";

    if(object.has_key(cURRENT_YEAR_TOTAL_TRADESKey))
    {
        bourne::json value = object[cURRENT_YEAR_TOTAL_TRADESKey];



        jsonToValue(&cURRENT_YEAR_TOTAL_TRADES, value, "int");


    }

    const char *cURRENT_YEAR_TOTAL_TRADES_BUYKey = "CURRENT_YEAR_TOTAL_TRADES_BUY";

    if(object.has_key(cURRENT_YEAR_TOTAL_TRADES_BUYKey))
    {
        bourne::json value = object[cURRENT_YEAR_TOTAL_TRADES_BUYKey];



        jsonToValue(&cURRENT_YEAR_TOTAL_TRADES_BUY, value, "int");


    }

    const char *cURRENT_YEAR_TOTAL_TRADES_SELLKey = "CURRENT_YEAR_TOTAL_TRADES_SELL";

    if(object.has_key(cURRENT_YEAR_TOTAL_TRADES_SELLKey))
    {
        bourne::json value = object[cURRENT_YEAR_TOTAL_TRADES_SELLKey];



        jsonToValue(&cURRENT_YEAR_TOTAL_TRADES_SELL, value, "int");


    }

    const char *cURRENT_YEAR_TOTAL_TRADES_UNKNOWNKey = "CURRENT_YEAR_TOTAL_TRADES_UNKNOWN";

    if(object.has_key(cURRENT_YEAR_TOTAL_TRADES_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_YEAR_TOTAL_TRADES_UNKNOWNKey];



        jsonToValue(&cURRENT_YEAR_TOTAL_TRADES_UNKNOWN, value, "int");


    }

    const char *cURRENT_YEAR_VOLUMEKey = "CURRENT_YEAR_VOLUME";

    if(object.has_key(cURRENT_YEAR_VOLUMEKey))
    {
        bourne::json value = object[cURRENT_YEAR_VOLUMEKey];



        jsonToValue(&cURRENT_YEAR_VOLUME, value, "int");


    }

    const char *cURRENT_YEAR_VOLUME_BUYKey = "CURRENT_YEAR_VOLUME_BUY";

    if(object.has_key(cURRENT_YEAR_VOLUME_BUYKey))
    {
        bourne::json value = object[cURRENT_YEAR_VOLUME_BUYKey];



        jsonToValue(&cURRENT_YEAR_VOLUME_BUY, value, "int");


    }

    const char *cURRENT_YEAR_VOLUME_SELLKey = "CURRENT_YEAR_VOLUME_SELL";

    if(object.has_key(cURRENT_YEAR_VOLUME_SELLKey))
    {
        bourne::json value = object[cURRENT_YEAR_VOLUME_SELLKey];



        jsonToValue(&cURRENT_YEAR_VOLUME_SELL, value, "int");


    }

    const char *cURRENT_YEAR_VOLUME_UNKNOWNKey = "CURRENT_YEAR_VOLUME_UNKNOWN";

    if(object.has_key(cURRENT_YEAR_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[cURRENT_YEAR_VOLUME_UNKNOWNKey];



        jsonToValue(&cURRENT_YEAR_VOLUME_UNKNOWN, value, "int");


    }

    const char *iNSTRUMENTKey = "INSTRUMENT";

    if(object.has_key(iNSTRUMENTKey))
    {
        bourne::json value = object[iNSTRUMENTKey];



        jsonToValue(&iNSTRUMENT, value, "std::string");


    }

    const char *lAST_PROCESSED_TRADE_CCSEQKey = "LAST_PROCESSED_TRADE_CCSEQ";

    if(object.has_key(lAST_PROCESSED_TRADE_CCSEQKey))
    {
        bourne::json value = object[lAST_PROCESSED_TRADE_CCSEQKey];



        jsonToValue(&lAST_PROCESSED_TRADE_CCSEQ, value, "std::string");


    }

    const char *lAST_PROCESSED_TRADE_PRICEKey = "LAST_PROCESSED_TRADE_PRICE";

    if(object.has_key(lAST_PROCESSED_TRADE_PRICEKey))
    {
        bourne::json value = object[lAST_PROCESSED_TRADE_PRICEKey];



        jsonToValue(&lAST_PROCESSED_TRADE_PRICE, value, "int");


    }

    const char *lAST_PROCESSED_TRADE_QUANTITYKey = "LAST_PROCESSED_TRADE_QUANTITY";

    if(object.has_key(lAST_PROCESSED_TRADE_QUANTITYKey))
    {
        bourne::json value = object[lAST_PROCESSED_TRADE_QUANTITYKey];



        jsonToValue(&lAST_PROCESSED_TRADE_QUANTITY, value, "int");


    }

    const char *lAST_PROCESSED_TRADE_QUOTE_QUANTITYKey = "LAST_PROCESSED_TRADE_QUOTE_QUANTITY";

    if(object.has_key(lAST_PROCESSED_TRADE_QUOTE_QUANTITYKey))
    {
        bourne::json value = object[lAST_PROCESSED_TRADE_QUOTE_QUANTITYKey];



        jsonToValue(&lAST_PROCESSED_TRADE_QUOTE_QUANTITY, value, "int");


    }

    const char *lAST_PROCESSED_TRADE_SIDEKey = "LAST_PROCESSED_TRADE_SIDE";

    if(object.has_key(lAST_PROCESSED_TRADE_SIDEKey))
    {
        bourne::json value = object[lAST_PROCESSED_TRADE_SIDEKey];



        jsonToValue(&lAST_PROCESSED_TRADE_SIDE, value, "std::string");


    }

    const char *lAST_PROCESSED_TRADE_TSKey = "LAST_PROCESSED_TRADE_TS";

    if(object.has_key(lAST_PROCESSED_TRADE_TSKey))
    {
        bourne::json value = object[lAST_PROCESSED_TRADE_TSKey];



        jsonToValue(&lAST_PROCESSED_TRADE_TS, value, "int");


    }

    const char *lAST_TRADE_CCSEQKey = "LAST_TRADE_CCSEQ";

    if(object.has_key(lAST_TRADE_CCSEQKey))
    {
        bourne::json value = object[lAST_TRADE_CCSEQKey];



        jsonToValue(&lAST_TRADE_CCSEQ, value, "std::string");


    }

    const char *lAST_TRADE_IDKey = "LAST_TRADE_ID";

    if(object.has_key(lAST_TRADE_IDKey))
    {
        bourne::json value = object[lAST_TRADE_IDKey];



        jsonToValue(&lAST_TRADE_ID, value, "std::string");


    }

    const char *lAST_TRADE_QUANTITYKey = "LAST_TRADE_QUANTITY";

    if(object.has_key(lAST_TRADE_QUANTITYKey))
    {
        bourne::json value = object[lAST_TRADE_QUANTITYKey];



        jsonToValue(&lAST_TRADE_QUANTITY, value, "int");


    }

    const char *lAST_TRADE_QUOTE_QUANTITYKey = "LAST_TRADE_QUOTE_QUANTITY";

    if(object.has_key(lAST_TRADE_QUOTE_QUANTITYKey))
    {
        bourne::json value = object[lAST_TRADE_QUOTE_QUANTITYKey];



        jsonToValue(&lAST_TRADE_QUOTE_QUANTITY, value, "int");


    }

    const char *lAST_TRADE_SIDEKey = "LAST_TRADE_SIDE";

    if(object.has_key(lAST_TRADE_SIDEKey))
    {
        bourne::json value = object[lAST_TRADE_SIDEKey];



        jsonToValue(&lAST_TRADE_SIDE, value, "std::string");


    }

    const char *lIFETIME_FIRST_TRADE_TSKey = "LIFETIME_FIRST_TRADE_TS";

    if(object.has_key(lIFETIME_FIRST_TRADE_TSKey))
    {
        bourne::json value = object[lIFETIME_FIRST_TRADE_TSKey];



        jsonToValue(&lIFETIME_FIRST_TRADE_TS, value, "int");


    }

    const char *lIFETIME_HIGHKey = "LIFETIME_HIGH";

    if(object.has_key(lIFETIME_HIGHKey))
    {
        bourne::json value = object[lIFETIME_HIGHKey];



        jsonToValue(&lIFETIME_HIGH, value, "int");


    }

    const char *lIFETIME_HIGH_TSKey = "LIFETIME_HIGH_TS";

    if(object.has_key(lIFETIME_HIGH_TSKey))
    {
        bourne::json value = object[lIFETIME_HIGH_TSKey];



        jsonToValue(&lIFETIME_HIGH_TS, value, "int");


    }

    const char *lIFETIME_LOWKey = "LIFETIME_LOW";

    if(object.has_key(lIFETIME_LOWKey))
    {
        bourne::json value = object[lIFETIME_LOWKey];



        jsonToValue(&lIFETIME_LOW, value, "int");


    }

    const char *lIFETIME_LOW_TSKey = "LIFETIME_LOW_TS";

    if(object.has_key(lIFETIME_LOW_TSKey))
    {
        bourne::json value = object[lIFETIME_LOW_TSKey];



        jsonToValue(&lIFETIME_LOW_TS, value, "int");


    }

    const char *lIFETIME_OPENKey = "LIFETIME_OPEN";

    if(object.has_key(lIFETIME_OPENKey))
    {
        bourne::json value = object[lIFETIME_OPENKey];



        jsonToValue(&lIFETIME_OPEN, value, "int");


    }

    const char *lIFETIME_QUOTE_VOLUMEKey = "LIFETIME_QUOTE_VOLUME";

    if(object.has_key(lIFETIME_QUOTE_VOLUMEKey))
    {
        bourne::json value = object[lIFETIME_QUOTE_VOLUMEKey];



        jsonToValue(&lIFETIME_QUOTE_VOLUME, value, "int");


    }

    const char *lIFETIME_QUOTE_VOLUME_BUYKey = "LIFETIME_QUOTE_VOLUME_BUY";

    if(object.has_key(lIFETIME_QUOTE_VOLUME_BUYKey))
    {
        bourne::json value = object[lIFETIME_QUOTE_VOLUME_BUYKey];



        jsonToValue(&lIFETIME_QUOTE_VOLUME_BUY, value, "int");


    }

    const char *lIFETIME_QUOTE_VOLUME_SELLKey = "LIFETIME_QUOTE_VOLUME_SELL";

    if(object.has_key(lIFETIME_QUOTE_VOLUME_SELLKey))
    {
        bourne::json value = object[lIFETIME_QUOTE_VOLUME_SELLKey];



        jsonToValue(&lIFETIME_QUOTE_VOLUME_SELL, value, "int");


    }

    const char *lIFETIME_QUOTE_VOLUME_UNKNOWNKey = "LIFETIME_QUOTE_VOLUME_UNKNOWN";

    if(object.has_key(lIFETIME_QUOTE_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[lIFETIME_QUOTE_VOLUME_UNKNOWNKey];



        jsonToValue(&lIFETIME_QUOTE_VOLUME_UNKNOWN, value, "int");


    }

    const char *lIFETIME_TOTAL_TRADESKey = "LIFETIME_TOTAL_TRADES";

    if(object.has_key(lIFETIME_TOTAL_TRADESKey))
    {
        bourne::json value = object[lIFETIME_TOTAL_TRADESKey];



        jsonToValue(&lIFETIME_TOTAL_TRADES, value, "int");


    }

    const char *lIFETIME_TOTAL_TRADES_BUYKey = "LIFETIME_TOTAL_TRADES_BUY";

    if(object.has_key(lIFETIME_TOTAL_TRADES_BUYKey))
    {
        bourne::json value = object[lIFETIME_TOTAL_TRADES_BUYKey];



        jsonToValue(&lIFETIME_TOTAL_TRADES_BUY, value, "int");


    }

    const char *lIFETIME_TOTAL_TRADES_SELLKey = "LIFETIME_TOTAL_TRADES_SELL";

    if(object.has_key(lIFETIME_TOTAL_TRADES_SELLKey))
    {
        bourne::json value = object[lIFETIME_TOTAL_TRADES_SELLKey];



        jsonToValue(&lIFETIME_TOTAL_TRADES_SELL, value, "int");


    }

    const char *lIFETIME_TOTAL_TRADES_UNKNOWNKey = "LIFETIME_TOTAL_TRADES_UNKNOWN";

    if(object.has_key(lIFETIME_TOTAL_TRADES_UNKNOWNKey))
    {
        bourne::json value = object[lIFETIME_TOTAL_TRADES_UNKNOWNKey];



        jsonToValue(&lIFETIME_TOTAL_TRADES_UNKNOWN, value, "int");


    }

    const char *lIFETIME_VOLUMEKey = "LIFETIME_VOLUME";

    if(object.has_key(lIFETIME_VOLUMEKey))
    {
        bourne::json value = object[lIFETIME_VOLUMEKey];



        jsonToValue(&lIFETIME_VOLUME, value, "int");


    }

    const char *lIFETIME_VOLUME_BUYKey = "LIFETIME_VOLUME_BUY";

    if(object.has_key(lIFETIME_VOLUME_BUYKey))
    {
        bourne::json value = object[lIFETIME_VOLUME_BUYKey];



        jsonToValue(&lIFETIME_VOLUME_BUY, value, "int");


    }

    const char *lIFETIME_VOLUME_SELLKey = "LIFETIME_VOLUME_SELL";

    if(object.has_key(lIFETIME_VOLUME_SELLKey))
    {
        bourne::json value = object[lIFETIME_VOLUME_SELLKey];



        jsonToValue(&lIFETIME_VOLUME_SELL, value, "int");


    }

    const char *lIFETIME_VOLUME_UNKNOWNKey = "LIFETIME_VOLUME_UNKNOWN";

    if(object.has_key(lIFETIME_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[lIFETIME_VOLUME_UNKNOWNKey];



        jsonToValue(&lIFETIME_VOLUME_UNKNOWN, value, "int");


    }

    const char *mAPPED_INSTRUMENTKey = "MAPPED_INSTRUMENT";

    if(object.has_key(mAPPED_INSTRUMENTKey))
    {
        bourne::json value = object[mAPPED_INSTRUMENTKey];



        jsonToValue(&mAPPED_INSTRUMENT, value, "std::string");


    }

    const char *mARKETKey = "MARKET";

    if(object.has_key(mARKETKey))
    {
        bourne::json value = object[mARKETKey];



        jsonToValue(&mARKET, value, "std::string");


    }

    const char *mOVING_180_DAY_HIGHKey = "MOVING_180_DAY_HIGH";

    if(object.has_key(mOVING_180_DAY_HIGHKey))
    {
        bourne::json value = object[mOVING_180_DAY_HIGHKey];



        jsonToValue(&mOVING_180_DAY_HIGH, value, "int");


    }

    const char *mOVING_180_DAY_LOWKey = "MOVING_180_DAY_LOW";

    if(object.has_key(mOVING_180_DAY_LOWKey))
    {
        bourne::json value = object[mOVING_180_DAY_LOWKey];



        jsonToValue(&mOVING_180_DAY_LOW, value, "int");


    }

    const char *mOVING_180_DAY_OPENKey = "MOVING_180_DAY_OPEN";

    if(object.has_key(mOVING_180_DAY_OPENKey))
    {
        bourne::json value = object[mOVING_180_DAY_OPENKey];



        jsonToValue(&mOVING_180_DAY_OPEN, value, "int");


    }

    const char *mOVING_180_DAY_QUOTE_VOLUMEKey = "MOVING_180_DAY_QUOTE_VOLUME";

    if(object.has_key(mOVING_180_DAY_QUOTE_VOLUMEKey))
    {
        bourne::json value = object[mOVING_180_DAY_QUOTE_VOLUMEKey];



        jsonToValue(&mOVING_180_DAY_QUOTE_VOLUME, value, "int");


    }

    const char *mOVING_180_DAY_QUOTE_VOLUME_BUYKey = "MOVING_180_DAY_QUOTE_VOLUME_BUY";

    if(object.has_key(mOVING_180_DAY_QUOTE_VOLUME_BUYKey))
    {
        bourne::json value = object[mOVING_180_DAY_QUOTE_VOLUME_BUYKey];



        jsonToValue(&mOVING_180_DAY_QUOTE_VOLUME_BUY, value, "int");


    }

    const char *mOVING_180_DAY_QUOTE_VOLUME_SELLKey = "MOVING_180_DAY_QUOTE_VOLUME_SELL";

    if(object.has_key(mOVING_180_DAY_QUOTE_VOLUME_SELLKey))
    {
        bourne::json value = object[mOVING_180_DAY_QUOTE_VOLUME_SELLKey];



        jsonToValue(&mOVING_180_DAY_QUOTE_VOLUME_SELL, value, "int");


    }

    const char *mOVING_180_DAY_QUOTE_VOLUME_UNKNOWNKey = "MOVING_180_DAY_QUOTE_VOLUME_UNKNOWN";

    if(object.has_key(mOVING_180_DAY_QUOTE_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_180_DAY_QUOTE_VOLUME_UNKNOWNKey];



        jsonToValue(&mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN, value, "int");


    }

    const char *mOVING_180_DAY_TOTAL_TRADESKey = "MOVING_180_DAY_TOTAL_TRADES";

    if(object.has_key(mOVING_180_DAY_TOTAL_TRADESKey))
    {
        bourne::json value = object[mOVING_180_DAY_TOTAL_TRADESKey];



        jsonToValue(&mOVING_180_DAY_TOTAL_TRADES, value, "int");


    }

    const char *mOVING_180_DAY_TOTAL_TRADES_BUYKey = "MOVING_180_DAY_TOTAL_TRADES_BUY";

    if(object.has_key(mOVING_180_DAY_TOTAL_TRADES_BUYKey))
    {
        bourne::json value = object[mOVING_180_DAY_TOTAL_TRADES_BUYKey];



        jsonToValue(&mOVING_180_DAY_TOTAL_TRADES_BUY, value, "int");


    }

    const char *mOVING_180_DAY_TOTAL_TRADES_SELLKey = "MOVING_180_DAY_TOTAL_TRADES_SELL";

    if(object.has_key(mOVING_180_DAY_TOTAL_TRADES_SELLKey))
    {
        bourne::json value = object[mOVING_180_DAY_TOTAL_TRADES_SELLKey];



        jsonToValue(&mOVING_180_DAY_TOTAL_TRADES_SELL, value, "int");


    }

    const char *mOVING_180_DAY_TOTAL_TRADES_UNKNOWNKey = "MOVING_180_DAY_TOTAL_TRADES_UNKNOWN";

    if(object.has_key(mOVING_180_DAY_TOTAL_TRADES_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_180_DAY_TOTAL_TRADES_UNKNOWNKey];



        jsonToValue(&mOVING_180_DAY_TOTAL_TRADES_UNKNOWN, value, "int");


    }

    const char *mOVING_180_DAY_VOLUMEKey = "MOVING_180_DAY_VOLUME";

    if(object.has_key(mOVING_180_DAY_VOLUMEKey))
    {
        bourne::json value = object[mOVING_180_DAY_VOLUMEKey];



        jsonToValue(&mOVING_180_DAY_VOLUME, value, "int");


    }

    const char *mOVING_180_DAY_VOLUME_BUYKey = "MOVING_180_DAY_VOLUME_BUY";

    if(object.has_key(mOVING_180_DAY_VOLUME_BUYKey))
    {
        bourne::json value = object[mOVING_180_DAY_VOLUME_BUYKey];



        jsonToValue(&mOVING_180_DAY_VOLUME_BUY, value, "int");


    }

    const char *mOVING_180_DAY_VOLUME_SELLKey = "MOVING_180_DAY_VOLUME_SELL";

    if(object.has_key(mOVING_180_DAY_VOLUME_SELLKey))
    {
        bourne::json value = object[mOVING_180_DAY_VOLUME_SELLKey];



        jsonToValue(&mOVING_180_DAY_VOLUME_SELL, value, "int");


    }

    const char *mOVING_180_DAY_VOLUME_UNKNOWNKey = "MOVING_180_DAY_VOLUME_UNKNOWN";

    if(object.has_key(mOVING_180_DAY_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_180_DAY_VOLUME_UNKNOWNKey];



        jsonToValue(&mOVING_180_DAY_VOLUME_UNKNOWN, value, "int");


    }

    const char *mOVING_24_HOUR_HIGHKey = "MOVING_24_HOUR_HIGH";

    if(object.has_key(mOVING_24_HOUR_HIGHKey))
    {
        bourne::json value = object[mOVING_24_HOUR_HIGHKey];



        jsonToValue(&mOVING_24_HOUR_HIGH, value, "int");


    }

    const char *mOVING_24_HOUR_LOWKey = "MOVING_24_HOUR_LOW";

    if(object.has_key(mOVING_24_HOUR_LOWKey))
    {
        bourne::json value = object[mOVING_24_HOUR_LOWKey];



        jsonToValue(&mOVING_24_HOUR_LOW, value, "int");


    }

    const char *mOVING_24_HOUR_OPENKey = "MOVING_24_HOUR_OPEN";

    if(object.has_key(mOVING_24_HOUR_OPENKey))
    {
        bourne::json value = object[mOVING_24_HOUR_OPENKey];



        jsonToValue(&mOVING_24_HOUR_OPEN, value, "int");


    }

    const char *mOVING_24_HOUR_QUOTE_VOLUMEKey = "MOVING_24_HOUR_QUOTE_VOLUME";

    if(object.has_key(mOVING_24_HOUR_QUOTE_VOLUMEKey))
    {
        bourne::json value = object[mOVING_24_HOUR_QUOTE_VOLUMEKey];



        jsonToValue(&mOVING_24_HOUR_QUOTE_VOLUME, value, "int");


    }

    const char *mOVING_24_HOUR_QUOTE_VOLUME_BUYKey = "MOVING_24_HOUR_QUOTE_VOLUME_BUY";

    if(object.has_key(mOVING_24_HOUR_QUOTE_VOLUME_BUYKey))
    {
        bourne::json value = object[mOVING_24_HOUR_QUOTE_VOLUME_BUYKey];



        jsonToValue(&mOVING_24_HOUR_QUOTE_VOLUME_BUY, value, "int");


    }

    const char *mOVING_24_HOUR_QUOTE_VOLUME_SELLKey = "MOVING_24_HOUR_QUOTE_VOLUME_SELL";

    if(object.has_key(mOVING_24_HOUR_QUOTE_VOLUME_SELLKey))
    {
        bourne::json value = object[mOVING_24_HOUR_QUOTE_VOLUME_SELLKey];



        jsonToValue(&mOVING_24_HOUR_QUOTE_VOLUME_SELL, value, "int");


    }

    const char *mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWNKey = "MOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN";

    if(object.has_key(mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWNKey];



        jsonToValue(&mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN, value, "int");


    }

    const char *mOVING_24_HOUR_TOTAL_TRADESKey = "MOVING_24_HOUR_TOTAL_TRADES";

    if(object.has_key(mOVING_24_HOUR_TOTAL_TRADESKey))
    {
        bourne::json value = object[mOVING_24_HOUR_TOTAL_TRADESKey];



        jsonToValue(&mOVING_24_HOUR_TOTAL_TRADES, value, "int");


    }

    const char *mOVING_24_HOUR_TOTAL_TRADES_BUYKey = "MOVING_24_HOUR_TOTAL_TRADES_BUY";

    if(object.has_key(mOVING_24_HOUR_TOTAL_TRADES_BUYKey))
    {
        bourne::json value = object[mOVING_24_HOUR_TOTAL_TRADES_BUYKey];



        jsonToValue(&mOVING_24_HOUR_TOTAL_TRADES_BUY, value, "int");


    }

    const char *mOVING_24_HOUR_TOTAL_TRADES_SELLKey = "MOVING_24_HOUR_TOTAL_TRADES_SELL";

    if(object.has_key(mOVING_24_HOUR_TOTAL_TRADES_SELLKey))
    {
        bourne::json value = object[mOVING_24_HOUR_TOTAL_TRADES_SELLKey];



        jsonToValue(&mOVING_24_HOUR_TOTAL_TRADES_SELL, value, "int");


    }

    const char *mOVING_24_HOUR_TOTAL_TRADES_UNKNOWNKey = "MOVING_24_HOUR_TOTAL_TRADES_UNKNOWN";

    if(object.has_key(mOVING_24_HOUR_TOTAL_TRADES_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_24_HOUR_TOTAL_TRADES_UNKNOWNKey];



        jsonToValue(&mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN, value, "int");


    }

    const char *mOVING_24_HOUR_VOLUMEKey = "MOVING_24_HOUR_VOLUME";

    if(object.has_key(mOVING_24_HOUR_VOLUMEKey))
    {
        bourne::json value = object[mOVING_24_HOUR_VOLUMEKey];



        jsonToValue(&mOVING_24_HOUR_VOLUME, value, "int");


    }

    const char *mOVING_24_HOUR_VOLUME_BUYKey = "MOVING_24_HOUR_VOLUME_BUY";

    if(object.has_key(mOVING_24_HOUR_VOLUME_BUYKey))
    {
        bourne::json value = object[mOVING_24_HOUR_VOLUME_BUYKey];



        jsonToValue(&mOVING_24_HOUR_VOLUME_BUY, value, "int");


    }

    const char *mOVING_24_HOUR_VOLUME_SELLKey = "MOVING_24_HOUR_VOLUME_SELL";

    if(object.has_key(mOVING_24_HOUR_VOLUME_SELLKey))
    {
        bourne::json value = object[mOVING_24_HOUR_VOLUME_SELLKey];



        jsonToValue(&mOVING_24_HOUR_VOLUME_SELL, value, "int");


    }

    const char *mOVING_24_HOUR_VOLUME_UNKNOWNKey = "MOVING_24_HOUR_VOLUME_UNKNOWN";

    if(object.has_key(mOVING_24_HOUR_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_24_HOUR_VOLUME_UNKNOWNKey];



        jsonToValue(&mOVING_24_HOUR_VOLUME_UNKNOWN, value, "int");


    }

    const char *mOVING_30_DAY_HIGHKey = "MOVING_30_DAY_HIGH";

    if(object.has_key(mOVING_30_DAY_HIGHKey))
    {
        bourne::json value = object[mOVING_30_DAY_HIGHKey];



        jsonToValue(&mOVING_30_DAY_HIGH, value, "int");


    }

    const char *mOVING_30_DAY_LOWKey = "MOVING_30_DAY_LOW";

    if(object.has_key(mOVING_30_DAY_LOWKey))
    {
        bourne::json value = object[mOVING_30_DAY_LOWKey];



        jsonToValue(&mOVING_30_DAY_LOW, value, "int");


    }

    const char *mOVING_30_DAY_OPENKey = "MOVING_30_DAY_OPEN";

    if(object.has_key(mOVING_30_DAY_OPENKey))
    {
        bourne::json value = object[mOVING_30_DAY_OPENKey];



        jsonToValue(&mOVING_30_DAY_OPEN, value, "int");


    }

    const char *mOVING_30_DAY_QUOTE_VOLUMEKey = "MOVING_30_DAY_QUOTE_VOLUME";

    if(object.has_key(mOVING_30_DAY_QUOTE_VOLUMEKey))
    {
        bourne::json value = object[mOVING_30_DAY_QUOTE_VOLUMEKey];



        jsonToValue(&mOVING_30_DAY_QUOTE_VOLUME, value, "int");


    }

    const char *mOVING_30_DAY_QUOTE_VOLUME_BUYKey = "MOVING_30_DAY_QUOTE_VOLUME_BUY";

    if(object.has_key(mOVING_30_DAY_QUOTE_VOLUME_BUYKey))
    {
        bourne::json value = object[mOVING_30_DAY_QUOTE_VOLUME_BUYKey];



        jsonToValue(&mOVING_30_DAY_QUOTE_VOLUME_BUY, value, "int");


    }

    const char *mOVING_30_DAY_QUOTE_VOLUME_SELLKey = "MOVING_30_DAY_QUOTE_VOLUME_SELL";

    if(object.has_key(mOVING_30_DAY_QUOTE_VOLUME_SELLKey))
    {
        bourne::json value = object[mOVING_30_DAY_QUOTE_VOLUME_SELLKey];



        jsonToValue(&mOVING_30_DAY_QUOTE_VOLUME_SELL, value, "int");


    }

    const char *mOVING_30_DAY_QUOTE_VOLUME_UNKNOWNKey = "MOVING_30_DAY_QUOTE_VOLUME_UNKNOWN";

    if(object.has_key(mOVING_30_DAY_QUOTE_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_30_DAY_QUOTE_VOLUME_UNKNOWNKey];



        jsonToValue(&mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN, value, "int");


    }

    const char *mOVING_30_DAY_TOTAL_TRADESKey = "MOVING_30_DAY_TOTAL_TRADES";

    if(object.has_key(mOVING_30_DAY_TOTAL_TRADESKey))
    {
        bourne::json value = object[mOVING_30_DAY_TOTAL_TRADESKey];



        jsonToValue(&mOVING_30_DAY_TOTAL_TRADES, value, "int");


    }

    const char *mOVING_30_DAY_TOTAL_TRADES_BUYKey = "MOVING_30_DAY_TOTAL_TRADES_BUY";

    if(object.has_key(mOVING_30_DAY_TOTAL_TRADES_BUYKey))
    {
        bourne::json value = object[mOVING_30_DAY_TOTAL_TRADES_BUYKey];



        jsonToValue(&mOVING_30_DAY_TOTAL_TRADES_BUY, value, "int");


    }

    const char *mOVING_30_DAY_TOTAL_TRADES_SELLKey = "MOVING_30_DAY_TOTAL_TRADES_SELL";

    if(object.has_key(mOVING_30_DAY_TOTAL_TRADES_SELLKey))
    {
        bourne::json value = object[mOVING_30_DAY_TOTAL_TRADES_SELLKey];



        jsonToValue(&mOVING_30_DAY_TOTAL_TRADES_SELL, value, "int");


    }

    const char *mOVING_30_DAY_TOTAL_TRADES_UNKNOWNKey = "MOVING_30_DAY_TOTAL_TRADES_UNKNOWN";

    if(object.has_key(mOVING_30_DAY_TOTAL_TRADES_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_30_DAY_TOTAL_TRADES_UNKNOWNKey];



        jsonToValue(&mOVING_30_DAY_TOTAL_TRADES_UNKNOWN, value, "int");


    }

    const char *mOVING_30_DAY_VOLUMEKey = "MOVING_30_DAY_VOLUME";

    if(object.has_key(mOVING_30_DAY_VOLUMEKey))
    {
        bourne::json value = object[mOVING_30_DAY_VOLUMEKey];



        jsonToValue(&mOVING_30_DAY_VOLUME, value, "int");


    }

    const char *mOVING_30_DAY_VOLUME_BUYKey = "MOVING_30_DAY_VOLUME_BUY";

    if(object.has_key(mOVING_30_DAY_VOLUME_BUYKey))
    {
        bourne::json value = object[mOVING_30_DAY_VOLUME_BUYKey];



        jsonToValue(&mOVING_30_DAY_VOLUME_BUY, value, "int");


    }

    const char *mOVING_30_DAY_VOLUME_SELLKey = "MOVING_30_DAY_VOLUME_SELL";

    if(object.has_key(mOVING_30_DAY_VOLUME_SELLKey))
    {
        bourne::json value = object[mOVING_30_DAY_VOLUME_SELLKey];



        jsonToValue(&mOVING_30_DAY_VOLUME_SELL, value, "int");


    }

    const char *mOVING_30_DAY_VOLUME_UNKNOWNKey = "MOVING_30_DAY_VOLUME_UNKNOWN";

    if(object.has_key(mOVING_30_DAY_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_30_DAY_VOLUME_UNKNOWNKey];



        jsonToValue(&mOVING_30_DAY_VOLUME_UNKNOWN, value, "int");


    }

    const char *mOVING_365_DAY_HIGHKey = "MOVING_365_DAY_HIGH";

    if(object.has_key(mOVING_365_DAY_HIGHKey))
    {
        bourne::json value = object[mOVING_365_DAY_HIGHKey];



        jsonToValue(&mOVING_365_DAY_HIGH, value, "int");


    }

    const char *mOVING_365_DAY_LOWKey = "MOVING_365_DAY_LOW";

    if(object.has_key(mOVING_365_DAY_LOWKey))
    {
        bourne::json value = object[mOVING_365_DAY_LOWKey];



        jsonToValue(&mOVING_365_DAY_LOW, value, "int");


    }

    const char *mOVING_365_DAY_OPENKey = "MOVING_365_DAY_OPEN";

    if(object.has_key(mOVING_365_DAY_OPENKey))
    {
        bourne::json value = object[mOVING_365_DAY_OPENKey];



        jsonToValue(&mOVING_365_DAY_OPEN, value, "int");


    }

    const char *mOVING_365_DAY_QUOTE_VOLUMEKey = "MOVING_365_DAY_QUOTE_VOLUME";

    if(object.has_key(mOVING_365_DAY_QUOTE_VOLUMEKey))
    {
        bourne::json value = object[mOVING_365_DAY_QUOTE_VOLUMEKey];



        jsonToValue(&mOVING_365_DAY_QUOTE_VOLUME, value, "int");


    }

    const char *mOVING_365_DAY_QUOTE_VOLUME_BUYKey = "MOVING_365_DAY_QUOTE_VOLUME_BUY";

    if(object.has_key(mOVING_365_DAY_QUOTE_VOLUME_BUYKey))
    {
        bourne::json value = object[mOVING_365_DAY_QUOTE_VOLUME_BUYKey];



        jsonToValue(&mOVING_365_DAY_QUOTE_VOLUME_BUY, value, "int");


    }

    const char *mOVING_365_DAY_QUOTE_VOLUME_SELLKey = "MOVING_365_DAY_QUOTE_VOLUME_SELL";

    if(object.has_key(mOVING_365_DAY_QUOTE_VOLUME_SELLKey))
    {
        bourne::json value = object[mOVING_365_DAY_QUOTE_VOLUME_SELLKey];



        jsonToValue(&mOVING_365_DAY_QUOTE_VOLUME_SELL, value, "int");


    }

    const char *mOVING_365_DAY_QUOTE_VOLUME_UNKNOWNKey = "MOVING_365_DAY_QUOTE_VOLUME_UNKNOWN";

    if(object.has_key(mOVING_365_DAY_QUOTE_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_365_DAY_QUOTE_VOLUME_UNKNOWNKey];



        jsonToValue(&mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN, value, "int");


    }

    const char *mOVING_365_DAY_TOTAL_TRADESKey = "MOVING_365_DAY_TOTAL_TRADES";

    if(object.has_key(mOVING_365_DAY_TOTAL_TRADESKey))
    {
        bourne::json value = object[mOVING_365_DAY_TOTAL_TRADESKey];



        jsonToValue(&mOVING_365_DAY_TOTAL_TRADES, value, "int");


    }

    const char *mOVING_365_DAY_TOTAL_TRADES_BUYKey = "MOVING_365_DAY_TOTAL_TRADES_BUY";

    if(object.has_key(mOVING_365_DAY_TOTAL_TRADES_BUYKey))
    {
        bourne::json value = object[mOVING_365_DAY_TOTAL_TRADES_BUYKey];



        jsonToValue(&mOVING_365_DAY_TOTAL_TRADES_BUY, value, "int");


    }

    const char *mOVING_365_DAY_TOTAL_TRADES_SELLKey = "MOVING_365_DAY_TOTAL_TRADES_SELL";

    if(object.has_key(mOVING_365_DAY_TOTAL_TRADES_SELLKey))
    {
        bourne::json value = object[mOVING_365_DAY_TOTAL_TRADES_SELLKey];



        jsonToValue(&mOVING_365_DAY_TOTAL_TRADES_SELL, value, "int");


    }

    const char *mOVING_365_DAY_TOTAL_TRADES_UNKNOWNKey = "MOVING_365_DAY_TOTAL_TRADES_UNKNOWN";

    if(object.has_key(mOVING_365_DAY_TOTAL_TRADES_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_365_DAY_TOTAL_TRADES_UNKNOWNKey];



        jsonToValue(&mOVING_365_DAY_TOTAL_TRADES_UNKNOWN, value, "int");


    }

    const char *mOVING_365_DAY_VOLUMEKey = "MOVING_365_DAY_VOLUME";

    if(object.has_key(mOVING_365_DAY_VOLUMEKey))
    {
        bourne::json value = object[mOVING_365_DAY_VOLUMEKey];



        jsonToValue(&mOVING_365_DAY_VOLUME, value, "int");


    }

    const char *mOVING_365_DAY_VOLUME_BUYKey = "MOVING_365_DAY_VOLUME_BUY";

    if(object.has_key(mOVING_365_DAY_VOLUME_BUYKey))
    {
        bourne::json value = object[mOVING_365_DAY_VOLUME_BUYKey];



        jsonToValue(&mOVING_365_DAY_VOLUME_BUY, value, "int");


    }

    const char *mOVING_365_DAY_VOLUME_SELLKey = "MOVING_365_DAY_VOLUME_SELL";

    if(object.has_key(mOVING_365_DAY_VOLUME_SELLKey))
    {
        bourne::json value = object[mOVING_365_DAY_VOLUME_SELLKey];



        jsonToValue(&mOVING_365_DAY_VOLUME_SELL, value, "int");


    }

    const char *mOVING_365_DAY_VOLUME_UNKNOWNKey = "MOVING_365_DAY_VOLUME_UNKNOWN";

    if(object.has_key(mOVING_365_DAY_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_365_DAY_VOLUME_UNKNOWNKey];



        jsonToValue(&mOVING_365_DAY_VOLUME_UNKNOWN, value, "int");


    }

    const char *mOVING_7_DAY_HIGHKey = "MOVING_7_DAY_HIGH";

    if(object.has_key(mOVING_7_DAY_HIGHKey))
    {
        bourne::json value = object[mOVING_7_DAY_HIGHKey];



        jsonToValue(&mOVING_7_DAY_HIGH, value, "int");


    }

    const char *mOVING_7_DAY_LOWKey = "MOVING_7_DAY_LOW";

    if(object.has_key(mOVING_7_DAY_LOWKey))
    {
        bourne::json value = object[mOVING_7_DAY_LOWKey];



        jsonToValue(&mOVING_7_DAY_LOW, value, "int");


    }

    const char *mOVING_7_DAY_OPENKey = "MOVING_7_DAY_OPEN";

    if(object.has_key(mOVING_7_DAY_OPENKey))
    {
        bourne::json value = object[mOVING_7_DAY_OPENKey];



        jsonToValue(&mOVING_7_DAY_OPEN, value, "int");


    }

    const char *mOVING_7_DAY_QUOTE_VOLUMEKey = "MOVING_7_DAY_QUOTE_VOLUME";

    if(object.has_key(mOVING_7_DAY_QUOTE_VOLUMEKey))
    {
        bourne::json value = object[mOVING_7_DAY_QUOTE_VOLUMEKey];



        jsonToValue(&mOVING_7_DAY_QUOTE_VOLUME, value, "int");


    }

    const char *mOVING_7_DAY_QUOTE_VOLUME_BUYKey = "MOVING_7_DAY_QUOTE_VOLUME_BUY";

    if(object.has_key(mOVING_7_DAY_QUOTE_VOLUME_BUYKey))
    {
        bourne::json value = object[mOVING_7_DAY_QUOTE_VOLUME_BUYKey];



        jsonToValue(&mOVING_7_DAY_QUOTE_VOLUME_BUY, value, "int");


    }

    const char *mOVING_7_DAY_QUOTE_VOLUME_SELLKey = "MOVING_7_DAY_QUOTE_VOLUME_SELL";

    if(object.has_key(mOVING_7_DAY_QUOTE_VOLUME_SELLKey))
    {
        bourne::json value = object[mOVING_7_DAY_QUOTE_VOLUME_SELLKey];



        jsonToValue(&mOVING_7_DAY_QUOTE_VOLUME_SELL, value, "int");


    }

    const char *mOVING_7_DAY_QUOTE_VOLUME_UNKNOWNKey = "MOVING_7_DAY_QUOTE_VOLUME_UNKNOWN";

    if(object.has_key(mOVING_7_DAY_QUOTE_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_7_DAY_QUOTE_VOLUME_UNKNOWNKey];



        jsonToValue(&mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN, value, "int");


    }

    const char *mOVING_7_DAY_TOTAL_TRADESKey = "MOVING_7_DAY_TOTAL_TRADES";

    if(object.has_key(mOVING_7_DAY_TOTAL_TRADESKey))
    {
        bourne::json value = object[mOVING_7_DAY_TOTAL_TRADESKey];



        jsonToValue(&mOVING_7_DAY_TOTAL_TRADES, value, "int");


    }

    const char *mOVING_7_DAY_TOTAL_TRADES_BUYKey = "MOVING_7_DAY_TOTAL_TRADES_BUY";

    if(object.has_key(mOVING_7_DAY_TOTAL_TRADES_BUYKey))
    {
        bourne::json value = object[mOVING_7_DAY_TOTAL_TRADES_BUYKey];



        jsonToValue(&mOVING_7_DAY_TOTAL_TRADES_BUY, value, "int");


    }

    const char *mOVING_7_DAY_TOTAL_TRADES_SELLKey = "MOVING_7_DAY_TOTAL_TRADES_SELL";

    if(object.has_key(mOVING_7_DAY_TOTAL_TRADES_SELLKey))
    {
        bourne::json value = object[mOVING_7_DAY_TOTAL_TRADES_SELLKey];



        jsonToValue(&mOVING_7_DAY_TOTAL_TRADES_SELL, value, "int");


    }

    const char *mOVING_7_DAY_TOTAL_TRADES_UNKNOWNKey = "MOVING_7_DAY_TOTAL_TRADES_UNKNOWN";

    if(object.has_key(mOVING_7_DAY_TOTAL_TRADES_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_7_DAY_TOTAL_TRADES_UNKNOWNKey];



        jsonToValue(&mOVING_7_DAY_TOTAL_TRADES_UNKNOWN, value, "int");


    }

    const char *mOVING_7_DAY_VOLUMEKey = "MOVING_7_DAY_VOLUME";

    if(object.has_key(mOVING_7_DAY_VOLUMEKey))
    {
        bourne::json value = object[mOVING_7_DAY_VOLUMEKey];



        jsonToValue(&mOVING_7_DAY_VOLUME, value, "int");


    }

    const char *mOVING_7_DAY_VOLUME_BUYKey = "MOVING_7_DAY_VOLUME_BUY";

    if(object.has_key(mOVING_7_DAY_VOLUME_BUYKey))
    {
        bourne::json value = object[mOVING_7_DAY_VOLUME_BUYKey];



        jsonToValue(&mOVING_7_DAY_VOLUME_BUY, value, "int");


    }

    const char *mOVING_7_DAY_VOLUME_SELLKey = "MOVING_7_DAY_VOLUME_SELL";

    if(object.has_key(mOVING_7_DAY_VOLUME_SELLKey))
    {
        bourne::json value = object[mOVING_7_DAY_VOLUME_SELLKey];



        jsonToValue(&mOVING_7_DAY_VOLUME_SELL, value, "int");


    }

    const char *mOVING_7_DAY_VOLUME_UNKNOWNKey = "MOVING_7_DAY_VOLUME_UNKNOWN";

    if(object.has_key(mOVING_7_DAY_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_7_DAY_VOLUME_UNKNOWNKey];



        jsonToValue(&mOVING_7_DAY_VOLUME_UNKNOWN, value, "int");


    }

    const char *mOVING_90_DAY_HIGHKey = "MOVING_90_DAY_HIGH";

    if(object.has_key(mOVING_90_DAY_HIGHKey))
    {
        bourne::json value = object[mOVING_90_DAY_HIGHKey];



        jsonToValue(&mOVING_90_DAY_HIGH, value, "int");


    }

    const char *mOVING_90_DAY_LOWKey = "MOVING_90_DAY_LOW";

    if(object.has_key(mOVING_90_DAY_LOWKey))
    {
        bourne::json value = object[mOVING_90_DAY_LOWKey];



        jsonToValue(&mOVING_90_DAY_LOW, value, "int");


    }

    const char *mOVING_90_DAY_OPENKey = "MOVING_90_DAY_OPEN";

    if(object.has_key(mOVING_90_DAY_OPENKey))
    {
        bourne::json value = object[mOVING_90_DAY_OPENKey];



        jsonToValue(&mOVING_90_DAY_OPEN, value, "int");


    }

    const char *mOVING_90_DAY_QUOTE_VOLUMEKey = "MOVING_90_DAY_QUOTE_VOLUME";

    if(object.has_key(mOVING_90_DAY_QUOTE_VOLUMEKey))
    {
        bourne::json value = object[mOVING_90_DAY_QUOTE_VOLUMEKey];



        jsonToValue(&mOVING_90_DAY_QUOTE_VOLUME, value, "int");


    }

    const char *mOVING_90_DAY_QUOTE_VOLUME_BUYKey = "MOVING_90_DAY_QUOTE_VOLUME_BUY";

    if(object.has_key(mOVING_90_DAY_QUOTE_VOLUME_BUYKey))
    {
        bourne::json value = object[mOVING_90_DAY_QUOTE_VOLUME_BUYKey];



        jsonToValue(&mOVING_90_DAY_QUOTE_VOLUME_BUY, value, "int");


    }

    const char *mOVING_90_DAY_QUOTE_VOLUME_SELLKey = "MOVING_90_DAY_QUOTE_VOLUME_SELL";

    if(object.has_key(mOVING_90_DAY_QUOTE_VOLUME_SELLKey))
    {
        bourne::json value = object[mOVING_90_DAY_QUOTE_VOLUME_SELLKey];



        jsonToValue(&mOVING_90_DAY_QUOTE_VOLUME_SELL, value, "int");


    }

    const char *mOVING_90_DAY_QUOTE_VOLUME_UNKNOWNKey = "MOVING_90_DAY_QUOTE_VOLUME_UNKNOWN";

    if(object.has_key(mOVING_90_DAY_QUOTE_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_90_DAY_QUOTE_VOLUME_UNKNOWNKey];



        jsonToValue(&mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN, value, "int");


    }

    const char *mOVING_90_DAY_TOTAL_TRADESKey = "MOVING_90_DAY_TOTAL_TRADES";

    if(object.has_key(mOVING_90_DAY_TOTAL_TRADESKey))
    {
        bourne::json value = object[mOVING_90_DAY_TOTAL_TRADESKey];



        jsonToValue(&mOVING_90_DAY_TOTAL_TRADES, value, "int");


    }

    const char *mOVING_90_DAY_TOTAL_TRADES_BUYKey = "MOVING_90_DAY_TOTAL_TRADES_BUY";

    if(object.has_key(mOVING_90_DAY_TOTAL_TRADES_BUYKey))
    {
        bourne::json value = object[mOVING_90_DAY_TOTAL_TRADES_BUYKey];



        jsonToValue(&mOVING_90_DAY_TOTAL_TRADES_BUY, value, "int");


    }

    const char *mOVING_90_DAY_TOTAL_TRADES_SELLKey = "MOVING_90_DAY_TOTAL_TRADES_SELL";

    if(object.has_key(mOVING_90_DAY_TOTAL_TRADES_SELLKey))
    {
        bourne::json value = object[mOVING_90_DAY_TOTAL_TRADES_SELLKey];



        jsonToValue(&mOVING_90_DAY_TOTAL_TRADES_SELL, value, "int");


    }

    const char *mOVING_90_DAY_TOTAL_TRADES_UNKNOWNKey = "MOVING_90_DAY_TOTAL_TRADES_UNKNOWN";

    if(object.has_key(mOVING_90_DAY_TOTAL_TRADES_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_90_DAY_TOTAL_TRADES_UNKNOWNKey];



        jsonToValue(&mOVING_90_DAY_TOTAL_TRADES_UNKNOWN, value, "int");


    }

    const char *mOVING_90_DAY_VOLUMEKey = "MOVING_90_DAY_VOLUME";

    if(object.has_key(mOVING_90_DAY_VOLUMEKey))
    {
        bourne::json value = object[mOVING_90_DAY_VOLUMEKey];



        jsonToValue(&mOVING_90_DAY_VOLUME, value, "int");


    }

    const char *mOVING_90_DAY_VOLUME_BUYKey = "MOVING_90_DAY_VOLUME_BUY";

    if(object.has_key(mOVING_90_DAY_VOLUME_BUYKey))
    {
        bourne::json value = object[mOVING_90_DAY_VOLUME_BUYKey];



        jsonToValue(&mOVING_90_DAY_VOLUME_BUY, value, "int");


    }

    const char *mOVING_90_DAY_VOLUME_SELLKey = "MOVING_90_DAY_VOLUME_SELL";

    if(object.has_key(mOVING_90_DAY_VOLUME_SELLKey))
    {
        bourne::json value = object[mOVING_90_DAY_VOLUME_SELLKey];



        jsonToValue(&mOVING_90_DAY_VOLUME_SELL, value, "int");


    }

    const char *mOVING_90_DAY_VOLUME_UNKNOWNKey = "MOVING_90_DAY_VOLUME_UNKNOWN";

    if(object.has_key(mOVING_90_DAY_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[mOVING_90_DAY_VOLUME_UNKNOWNKey];



        jsonToValue(&mOVING_90_DAY_VOLUME_UNKNOWN, value, "int");


    }

    const char *pRICEKey = "PRICE";

    if(object.has_key(pRICEKey))
    {
        bourne::json value = object[pRICEKey];



        jsonToValue(&pRICE, value, "int");


    }

    const char *pRICE_FLAGKey = "PRICE_FLAG";

    if(object.has_key(pRICE_FLAGKey))
    {
        bourne::json value = object[pRICE_FLAGKey];



        jsonToValue(&pRICE_FLAG, value, "std::string");


    }

    const char *pRICE_LAST_UPDATE_TSKey = "PRICE_LAST_UPDATE_TS";

    if(object.has_key(pRICE_LAST_UPDATE_TSKey))
    {
        bourne::json value = object[pRICE_LAST_UPDATE_TSKey];



        jsonToValue(&pRICE_LAST_UPDATE_TS, value, "int");


    }

    const char *qUOTEKey = "QUOTE";

    if(object.has_key(qUOTEKey))
    {
        bourne::json value = object[qUOTEKey];



        jsonToValue(&qUOTE, value, "std::string");


    }

    const char *tOP_ASK_LAST_UPDATE_TSKey = "TOP_ASK_LAST_UPDATE_TS";

    if(object.has_key(tOP_ASK_LAST_UPDATE_TSKey))
    {
        bourne::json value = object[tOP_ASK_LAST_UPDATE_TSKey];



        jsonToValue(&tOP_ASK_LAST_UPDATE_TS, value, "int");


    }

    const char *tOP_ASK_PRICEKey = "TOP_ASK_PRICE";

    if(object.has_key(tOP_ASK_PRICEKey))
    {
        bourne::json value = object[tOP_ASK_PRICEKey];



        jsonToValue(&tOP_ASK_PRICE, value, "int");


    }

    const char *tOP_ASK_QUANTITYKey = "TOP_ASK_QUANTITY";

    if(object.has_key(tOP_ASK_QUANTITYKey))
    {
        bourne::json value = object[tOP_ASK_QUANTITYKey];



        jsonToValue(&tOP_ASK_QUANTITY, value, "int");


    }

    const char *tOP_BID_LAST_UPDATE_TSKey = "TOP_BID_LAST_UPDATE_TS";

    if(object.has_key(tOP_BID_LAST_UPDATE_TSKey))
    {
        bourne::json value = object[tOP_BID_LAST_UPDATE_TSKey];



        jsonToValue(&tOP_BID_LAST_UPDATE_TS, value, "int");


    }

    const char *tOP_BID_PRICEKey = "TOP_BID_PRICE";

    if(object.has_key(tOP_BID_PRICEKey))
    {
        bourne::json value = object[tOP_BID_PRICEKey];



        jsonToValue(&tOP_BID_PRICE, value, "int");


    }

    const char *tOP_BID_QUANTITYKey = "TOP_BID_QUANTITY";

    if(object.has_key(tOP_BID_QUANTITYKey))
    {
        bourne::json value = object[tOP_BID_QUANTITYKey];



        jsonToValue(&tOP_BID_QUANTITY, value, "int");


    }

    const char *tYPEKey = "TYPE";

    if(object.has_key(tYPEKey))
    {
        bourne::json value = object[tYPEKey];



        jsonToValue(&tYPE, value, "std::string");


    }


}

bourne::json
SPOT_INSTRUMENT_MARKET_DATA::toJson()
{
    bourne::json object = bourne::json::object();





    object["bASE"] = getBASE();






    object["cCSEQ"] = getCCSEQ();






    object["cURRENT_DAY_HIGH"] = getCURRENTDAYHIGH();






    object["cURRENT_DAY_LOW"] = getCURRENTDAYLOW();






    object["cURRENT_DAY_OPEN"] = getCURRENTDAYOPEN();






    object["cURRENT_DAY_QUOTE_VOLUME"] = getCURRENTDAYQUOTEVOLUME();






    object["cURRENT_DAY_QUOTE_VOLUME_BUY"] = getCURRENTDAYQUOTEVOLUMEBUY();






    object["cURRENT_DAY_QUOTE_VOLUME_SELL"] = getCURRENTDAYQUOTEVOLUMESELL();






    object["cURRENT_DAY_QUOTE_VOLUME_UNKNOWN"] = getCURRENTDAYQUOTEVOLUMEUNKNOWN();






    object["cURRENT_DAY_TOTAL_TRADES"] = getCURRENTDAYTOTALTRADES();






    object["cURRENT_DAY_TOTAL_TRADES_BUY"] = getCURRENTDAYTOTALTRADESBUY();






    object["cURRENT_DAY_TOTAL_TRADES_SELL"] = getCURRENTDAYTOTALTRADESSELL();






    object["cURRENT_DAY_TOTAL_TRADES_UNKNOWN"] = getCURRENTDAYTOTALTRADESUNKNOWN();






    object["cURRENT_DAY_VOLUME"] = getCURRENTDAYVOLUME();






    object["cURRENT_DAY_VOLUME_BUY"] = getCURRENTDAYVOLUMEBUY();






    object["cURRENT_DAY_VOLUME_SELL"] = getCURRENTDAYVOLUMESELL();






    object["cURRENT_DAY_VOLUME_UNKNOWN"] = getCURRENTDAYVOLUMEUNKNOWN();






    object["cURRENT_HOUR_HIGH"] = getCURRENTHOURHIGH();






    object["cURRENT_HOUR_LOW"] = getCURRENTHOURLOW();






    object["cURRENT_HOUR_OPEN"] = getCURRENTHOUROPEN();






    object["cURRENT_HOUR_QUOTE_VOLUME"] = getCURRENTHOURQUOTEVOLUME();






    object["cURRENT_HOUR_QUOTE_VOLUME_BUY"] = getCURRENTHOURQUOTEVOLUMEBUY();






    object["cURRENT_HOUR_QUOTE_VOLUME_SELL"] = getCURRENTHOURQUOTEVOLUMESELL();






    object["cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN"] = getCURRENTHOURQUOTEVOLUMEUNKNOWN();






    object["cURRENT_HOUR_TOTAL_TRADES"] = getCURRENTHOURTOTALTRADES();






    object["cURRENT_HOUR_TOTAL_TRADES_BUY"] = getCURRENTHOURTOTALTRADESBUY();






    object["cURRENT_HOUR_TOTAL_TRADES_SELL"] = getCURRENTHOURTOTALTRADESSELL();






    object["cURRENT_HOUR_TOTAL_TRADES_UNKNOWN"] = getCURRENTHOURTOTALTRADESUNKNOWN();






    object["cURRENT_HOUR_VOLUME"] = getCURRENTHOURVOLUME();






    object["cURRENT_HOUR_VOLUME_BUY"] = getCURRENTHOURVOLUMEBUY();






    object["cURRENT_HOUR_VOLUME_SELL"] = getCURRENTHOURVOLUMESELL();






    object["cURRENT_HOUR_VOLUME_UNKNOWN"] = getCURRENTHOURVOLUMEUNKNOWN();






    object["cURRENT_MONTH_HIGH"] = getCURRENTMONTHHIGH();






    object["cURRENT_MONTH_LOW"] = getCURRENTMONTHLOW();






    object["cURRENT_MONTH_OPEN"] = getCURRENTMONTHOPEN();






    object["cURRENT_MONTH_QUOTE_VOLUME"] = getCURRENTMONTHQUOTEVOLUME();






    object["cURRENT_MONTH_QUOTE_VOLUME_BUY"] = getCURRENTMONTHQUOTEVOLUMEBUY();






    object["cURRENT_MONTH_QUOTE_VOLUME_SELL"] = getCURRENTMONTHQUOTEVOLUMESELL();






    object["cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN"] = getCURRENTMONTHQUOTEVOLUMEUNKNOWN();






    object["cURRENT_MONTH_TOTAL_TRADES"] = getCURRENTMONTHTOTALTRADES();






    object["cURRENT_MONTH_TOTAL_TRADES_BUY"] = getCURRENTMONTHTOTALTRADESBUY();






    object["cURRENT_MONTH_TOTAL_TRADES_SELL"] = getCURRENTMONTHTOTALTRADESSELL();






    object["cURRENT_MONTH_TOTAL_TRADES_UNKNOWN"] = getCURRENTMONTHTOTALTRADESUNKNOWN();






    object["cURRENT_MONTH_VOLUME"] = getCURRENTMONTHVOLUME();






    object["cURRENT_MONTH_VOLUME_BUY"] = getCURRENTMONTHVOLUMEBUY();






    object["cURRENT_MONTH_VOLUME_SELL"] = getCURRENTMONTHVOLUMESELL();






    object["cURRENT_MONTH_VOLUME_UNKNOWN"] = getCURRENTMONTHVOLUMEUNKNOWN();






    object["cURRENT_WEEK_HIGH"] = getCURRENTWEEKHIGH();






    object["cURRENT_WEEK_LOW"] = getCURRENTWEEKLOW();






    object["cURRENT_WEEK_OPEN"] = getCURRENTWEEKOPEN();






    object["cURRENT_WEEK_QUOTE_VOLUME"] = getCURRENTWEEKQUOTEVOLUME();






    object["cURRENT_WEEK_QUOTE_VOLUME_BUY"] = getCURRENTWEEKQUOTEVOLUMEBUY();






    object["cURRENT_WEEK_QUOTE_VOLUME_SELL"] = getCURRENTWEEKQUOTEVOLUMESELL();






    object["cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN"] = getCURRENTWEEKQUOTEVOLUMEUNKNOWN();






    object["cURRENT_WEEK_TOTAL_TRADES"] = getCURRENTWEEKTOTALTRADES();






    object["cURRENT_WEEK_TOTAL_TRADES_BUY"] = getCURRENTWEEKTOTALTRADESBUY();






    object["cURRENT_WEEK_TOTAL_TRADES_SELL"] = getCURRENTWEEKTOTALTRADESSELL();






    object["cURRENT_WEEK_TOTAL_TRADES_UNKNOWN"] = getCURRENTWEEKTOTALTRADESUNKNOWN();






    object["cURRENT_WEEK_VOLUME"] = getCURRENTWEEKVOLUME();






    object["cURRENT_WEEK_VOLUME_BUY"] = getCURRENTWEEKVOLUMEBUY();






    object["cURRENT_WEEK_VOLUME_SELL"] = getCURRENTWEEKVOLUMESELL();






    object["cURRENT_WEEK_VOLUME_UNKNOWN"] = getCURRENTWEEKVOLUMEUNKNOWN();






    object["cURRENT_YEAR_HIGH"] = getCURRENTYEARHIGH();






    object["cURRENT_YEAR_LOW"] = getCURRENTYEARLOW();






    object["cURRENT_YEAR_OPEN"] = getCURRENTYEAROPEN();






    object["cURRENT_YEAR_QUOTE_VOLUME"] = getCURRENTYEARQUOTEVOLUME();






    object["cURRENT_YEAR_QUOTE_VOLUME_BUY"] = getCURRENTYEARQUOTEVOLUMEBUY();






    object["cURRENT_YEAR_QUOTE_VOLUME_SELL"] = getCURRENTYEARQUOTEVOLUMESELL();






    object["cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN"] = getCURRENTYEARQUOTEVOLUMEUNKNOWN();






    object["cURRENT_YEAR_TOTAL_TRADES"] = getCURRENTYEARTOTALTRADES();






    object["cURRENT_YEAR_TOTAL_TRADES_BUY"] = getCURRENTYEARTOTALTRADESBUY();






    object["cURRENT_YEAR_TOTAL_TRADES_SELL"] = getCURRENTYEARTOTALTRADESSELL();






    object["cURRENT_YEAR_TOTAL_TRADES_UNKNOWN"] = getCURRENTYEARTOTALTRADESUNKNOWN();






    object["cURRENT_YEAR_VOLUME"] = getCURRENTYEARVOLUME();






    object["cURRENT_YEAR_VOLUME_BUY"] = getCURRENTYEARVOLUMEBUY();






    object["cURRENT_YEAR_VOLUME_SELL"] = getCURRENTYEARVOLUMESELL();






    object["cURRENT_YEAR_VOLUME_UNKNOWN"] = getCURRENTYEARVOLUMEUNKNOWN();






    object["iNSTRUMENT"] = getINSTRUMENT();






    object["lAST_PROCESSED_TRADE_CCSEQ"] = getLASTPROCESSEDTRADECCSEQ();






    object["lAST_PROCESSED_TRADE_PRICE"] = getLASTPROCESSEDTRADEPRICE();






    object["lAST_PROCESSED_TRADE_QUANTITY"] = getLASTPROCESSEDTRADEQUANTITY();






    object["lAST_PROCESSED_TRADE_QUOTE_QUANTITY"] = getLASTPROCESSEDTRADEQUOTEQUANTITY();






    object["lAST_PROCESSED_TRADE_SIDE"] = getLASTPROCESSEDTRADESIDE();






    object["lAST_PROCESSED_TRADE_TS"] = getLASTPROCESSEDTRADETS();






    object["lAST_TRADE_CCSEQ"] = getLASTTRADECCSEQ();






    object["lAST_TRADE_ID"] = getLASTTRADEID();






    object["lAST_TRADE_QUANTITY"] = getLASTTRADEQUANTITY();






    object["lAST_TRADE_QUOTE_QUANTITY"] = getLASTTRADEQUOTEQUANTITY();






    object["lAST_TRADE_SIDE"] = getLASTTRADESIDE();






    object["lIFETIME_FIRST_TRADE_TS"] = getLIFETIMEFIRSTTRADETS();






    object["lIFETIME_HIGH"] = getLIFETIMEHIGH();






    object["lIFETIME_HIGH_TS"] = getLIFETIMEHIGHTS();






    object["lIFETIME_LOW"] = getLIFETIMELOW();






    object["lIFETIME_LOW_TS"] = getLIFETIMELOWTS();






    object["lIFETIME_OPEN"] = getLIFETIMEOPEN();






    object["lIFETIME_QUOTE_VOLUME"] = getLIFETIMEQUOTEVOLUME();






    object["lIFETIME_QUOTE_VOLUME_BUY"] = getLIFETIMEQUOTEVOLUMEBUY();






    object["lIFETIME_QUOTE_VOLUME_SELL"] = getLIFETIMEQUOTEVOLUMESELL();






    object["lIFETIME_QUOTE_VOLUME_UNKNOWN"] = getLIFETIMEQUOTEVOLUMEUNKNOWN();






    object["lIFETIME_TOTAL_TRADES"] = getLIFETIMETOTALTRADES();






    object["lIFETIME_TOTAL_TRADES_BUY"] = getLIFETIMETOTALTRADESBUY();






    object["lIFETIME_TOTAL_TRADES_SELL"] = getLIFETIMETOTALTRADESSELL();






    object["lIFETIME_TOTAL_TRADES_UNKNOWN"] = getLIFETIMETOTALTRADESUNKNOWN();






    object["lIFETIME_VOLUME"] = getLIFETIMEVOLUME();






    object["lIFETIME_VOLUME_BUY"] = getLIFETIMEVOLUMEBUY();






    object["lIFETIME_VOLUME_SELL"] = getLIFETIMEVOLUMESELL();






    object["lIFETIME_VOLUME_UNKNOWN"] = getLIFETIMEVOLUMEUNKNOWN();






    object["mAPPED_INSTRUMENT"] = getMAPPEDINSTRUMENT();






    object["mARKET"] = getMARKET();






    object["mOVING_180_DAY_HIGH"] = getMOVING180DAYHIGH();






    object["mOVING_180_DAY_LOW"] = getMOVING180DAYLOW();






    object["mOVING_180_DAY_OPEN"] = getMOVING180DAYOPEN();






    object["mOVING_180_DAY_QUOTE_VOLUME"] = getMOVING180DAYQUOTEVOLUME();






    object["mOVING_180_DAY_QUOTE_VOLUME_BUY"] = getMOVING180DAYQUOTEVOLUMEBUY();






    object["mOVING_180_DAY_QUOTE_VOLUME_SELL"] = getMOVING180DAYQUOTEVOLUMESELL();






    object["mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN"] = getMOVING180DAYQUOTEVOLUMEUNKNOWN();






    object["mOVING_180_DAY_TOTAL_TRADES"] = getMOVING180DAYTOTALTRADES();






    object["mOVING_180_DAY_TOTAL_TRADES_BUY"] = getMOVING180DAYTOTALTRADESBUY();






    object["mOVING_180_DAY_TOTAL_TRADES_SELL"] = getMOVING180DAYTOTALTRADESSELL();






    object["mOVING_180_DAY_TOTAL_TRADES_UNKNOWN"] = getMOVING180DAYTOTALTRADESUNKNOWN();






    object["mOVING_180_DAY_VOLUME"] = getMOVING180DAYVOLUME();






    object["mOVING_180_DAY_VOLUME_BUY"] = getMOVING180DAYVOLUMEBUY();






    object["mOVING_180_DAY_VOLUME_SELL"] = getMOVING180DAYVOLUMESELL();






    object["mOVING_180_DAY_VOLUME_UNKNOWN"] = getMOVING180DAYVOLUMEUNKNOWN();






    object["mOVING_24_HOUR_HIGH"] = getMOVING24HOURHIGH();






    object["mOVING_24_HOUR_LOW"] = getMOVING24HOURLOW();






    object["mOVING_24_HOUR_OPEN"] = getMOVING24HOUROPEN();






    object["mOVING_24_HOUR_QUOTE_VOLUME"] = getMOVING24HOURQUOTEVOLUME();






    object["mOVING_24_HOUR_QUOTE_VOLUME_BUY"] = getMOVING24HOURQUOTEVOLUMEBUY();






    object["mOVING_24_HOUR_QUOTE_VOLUME_SELL"] = getMOVING24HOURQUOTEVOLUMESELL();






    object["mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN"] = getMOVING24HOURQUOTEVOLUMEUNKNOWN();






    object["mOVING_24_HOUR_TOTAL_TRADES"] = getMOVING24HOURTOTALTRADES();






    object["mOVING_24_HOUR_TOTAL_TRADES_BUY"] = getMOVING24HOURTOTALTRADESBUY();






    object["mOVING_24_HOUR_TOTAL_TRADES_SELL"] = getMOVING24HOURTOTALTRADESSELL();






    object["mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN"] = getMOVING24HOURTOTALTRADESUNKNOWN();






    object["mOVING_24_HOUR_VOLUME"] = getMOVING24HOURVOLUME();






    object["mOVING_24_HOUR_VOLUME_BUY"] = getMOVING24HOURVOLUMEBUY();






    object["mOVING_24_HOUR_VOLUME_SELL"] = getMOVING24HOURVOLUMESELL();






    object["mOVING_24_HOUR_VOLUME_UNKNOWN"] = getMOVING24HOURVOLUMEUNKNOWN();






    object["mOVING_30_DAY_HIGH"] = getMOVING30DAYHIGH();






    object["mOVING_30_DAY_LOW"] = getMOVING30DAYLOW();






    object["mOVING_30_DAY_OPEN"] = getMOVING30DAYOPEN();






    object["mOVING_30_DAY_QUOTE_VOLUME"] = getMOVING30DAYQUOTEVOLUME();






    object["mOVING_30_DAY_QUOTE_VOLUME_BUY"] = getMOVING30DAYQUOTEVOLUMEBUY();






    object["mOVING_30_DAY_QUOTE_VOLUME_SELL"] = getMOVING30DAYQUOTEVOLUMESELL();






    object["mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN"] = getMOVING30DAYQUOTEVOLUMEUNKNOWN();






    object["mOVING_30_DAY_TOTAL_TRADES"] = getMOVING30DAYTOTALTRADES();






    object["mOVING_30_DAY_TOTAL_TRADES_BUY"] = getMOVING30DAYTOTALTRADESBUY();






    object["mOVING_30_DAY_TOTAL_TRADES_SELL"] = getMOVING30DAYTOTALTRADESSELL();






    object["mOVING_30_DAY_TOTAL_TRADES_UNKNOWN"] = getMOVING30DAYTOTALTRADESUNKNOWN();






    object["mOVING_30_DAY_VOLUME"] = getMOVING30DAYVOLUME();






    object["mOVING_30_DAY_VOLUME_BUY"] = getMOVING30DAYVOLUMEBUY();






    object["mOVING_30_DAY_VOLUME_SELL"] = getMOVING30DAYVOLUMESELL();






    object["mOVING_30_DAY_VOLUME_UNKNOWN"] = getMOVING30DAYVOLUMEUNKNOWN();






    object["mOVING_365_DAY_HIGH"] = getMOVING365DAYHIGH();






    object["mOVING_365_DAY_LOW"] = getMOVING365DAYLOW();






    object["mOVING_365_DAY_OPEN"] = getMOVING365DAYOPEN();






    object["mOVING_365_DAY_QUOTE_VOLUME"] = getMOVING365DAYQUOTEVOLUME();






    object["mOVING_365_DAY_QUOTE_VOLUME_BUY"] = getMOVING365DAYQUOTEVOLUMEBUY();






    object["mOVING_365_DAY_QUOTE_VOLUME_SELL"] = getMOVING365DAYQUOTEVOLUMESELL();






    object["mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN"] = getMOVING365DAYQUOTEVOLUMEUNKNOWN();






    object["mOVING_365_DAY_TOTAL_TRADES"] = getMOVING365DAYTOTALTRADES();






    object["mOVING_365_DAY_TOTAL_TRADES_BUY"] = getMOVING365DAYTOTALTRADESBUY();






    object["mOVING_365_DAY_TOTAL_TRADES_SELL"] = getMOVING365DAYTOTALTRADESSELL();






    object["mOVING_365_DAY_TOTAL_TRADES_UNKNOWN"] = getMOVING365DAYTOTALTRADESUNKNOWN();






    object["mOVING_365_DAY_VOLUME"] = getMOVING365DAYVOLUME();






    object["mOVING_365_DAY_VOLUME_BUY"] = getMOVING365DAYVOLUMEBUY();






    object["mOVING_365_DAY_VOLUME_SELL"] = getMOVING365DAYVOLUMESELL();






    object["mOVING_365_DAY_VOLUME_UNKNOWN"] = getMOVING365DAYVOLUMEUNKNOWN();






    object["mOVING_7_DAY_HIGH"] = getMOVING7DAYHIGH();






    object["mOVING_7_DAY_LOW"] = getMOVING7DAYLOW();






    object["mOVING_7_DAY_OPEN"] = getMOVING7DAYOPEN();






    object["mOVING_7_DAY_QUOTE_VOLUME"] = getMOVING7DAYQUOTEVOLUME();






    object["mOVING_7_DAY_QUOTE_VOLUME_BUY"] = getMOVING7DAYQUOTEVOLUMEBUY();






    object["mOVING_7_DAY_QUOTE_VOLUME_SELL"] = getMOVING7DAYQUOTEVOLUMESELL();






    object["mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN"] = getMOVING7DAYQUOTEVOLUMEUNKNOWN();






    object["mOVING_7_DAY_TOTAL_TRADES"] = getMOVING7DAYTOTALTRADES();






    object["mOVING_7_DAY_TOTAL_TRADES_BUY"] = getMOVING7DAYTOTALTRADESBUY();






    object["mOVING_7_DAY_TOTAL_TRADES_SELL"] = getMOVING7DAYTOTALTRADESSELL();






    object["mOVING_7_DAY_TOTAL_TRADES_UNKNOWN"] = getMOVING7DAYTOTALTRADESUNKNOWN();






    object["mOVING_7_DAY_VOLUME"] = getMOVING7DAYVOLUME();






    object["mOVING_7_DAY_VOLUME_BUY"] = getMOVING7DAYVOLUMEBUY();






    object["mOVING_7_DAY_VOLUME_SELL"] = getMOVING7DAYVOLUMESELL();






    object["mOVING_7_DAY_VOLUME_UNKNOWN"] = getMOVING7DAYVOLUMEUNKNOWN();






    object["mOVING_90_DAY_HIGH"] = getMOVING90DAYHIGH();






    object["mOVING_90_DAY_LOW"] = getMOVING90DAYLOW();






    object["mOVING_90_DAY_OPEN"] = getMOVING90DAYOPEN();






    object["mOVING_90_DAY_QUOTE_VOLUME"] = getMOVING90DAYQUOTEVOLUME();






    object["mOVING_90_DAY_QUOTE_VOLUME_BUY"] = getMOVING90DAYQUOTEVOLUMEBUY();






    object["mOVING_90_DAY_QUOTE_VOLUME_SELL"] = getMOVING90DAYQUOTEVOLUMESELL();






    object["mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN"] = getMOVING90DAYQUOTEVOLUMEUNKNOWN();






    object["mOVING_90_DAY_TOTAL_TRADES"] = getMOVING90DAYTOTALTRADES();






    object["mOVING_90_DAY_TOTAL_TRADES_BUY"] = getMOVING90DAYTOTALTRADESBUY();






    object["mOVING_90_DAY_TOTAL_TRADES_SELL"] = getMOVING90DAYTOTALTRADESSELL();






    object["mOVING_90_DAY_TOTAL_TRADES_UNKNOWN"] = getMOVING90DAYTOTALTRADESUNKNOWN();






    object["mOVING_90_DAY_VOLUME"] = getMOVING90DAYVOLUME();






    object["mOVING_90_DAY_VOLUME_BUY"] = getMOVING90DAYVOLUMEBUY();






    object["mOVING_90_DAY_VOLUME_SELL"] = getMOVING90DAYVOLUMESELL();






    object["mOVING_90_DAY_VOLUME_UNKNOWN"] = getMOVING90DAYVOLUMEUNKNOWN();






    object["pRICE"] = getPRICE();






    object["pRICE_FLAG"] = getPRICEFLAG();






    object["pRICE_LAST_UPDATE_TS"] = getPRICELASTUPDATETS();






    object["qUOTE"] = getQUOTE();






    object["tOP_ASK_LAST_UPDATE_TS"] = getTOPASKLASTUPDATETS();






    object["tOP_ASK_PRICE"] = getTOPASKPRICE();






    object["tOP_ASK_QUANTITY"] = getTOPASKQUANTITY();






    object["tOP_BID_LAST_UPDATE_TS"] = getTOPBIDLASTUPDATETS();






    object["tOP_BID_PRICE"] = getTOPBIDPRICE();






    object["tOP_BID_QUANTITY"] = getTOPBIDQUANTITY();






    object["tYPE"] = getTYPE();



    return object;

}

std::string
SPOT_INSTRUMENT_MARKET_DATA::getBASE()
{
	return bASE;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setBASE(std::string  bASE)
{
	this->bASE = bASE;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCCSEQ()
{
	return cCSEQ;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCCSEQ(int  cCSEQ)
{
	this->cCSEQ = cCSEQ;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYHIGH()
{
	return cURRENT_DAY_HIGH;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYHIGH(int  cURRENT_DAY_HIGH)
{
	this->cURRENT_DAY_HIGH = cURRENT_DAY_HIGH;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYLOW()
{
	return cURRENT_DAY_LOW;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYLOW(int  cURRENT_DAY_LOW)
{
	this->cURRENT_DAY_LOW = cURRENT_DAY_LOW;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYOPEN()
{
	return cURRENT_DAY_OPEN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYOPEN(int  cURRENT_DAY_OPEN)
{
	this->cURRENT_DAY_OPEN = cURRENT_DAY_OPEN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYQUOTEVOLUME()
{
	return cURRENT_DAY_QUOTE_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYQUOTEVOLUME(int  cURRENT_DAY_QUOTE_VOLUME)
{
	this->cURRENT_DAY_QUOTE_VOLUME = cURRENT_DAY_QUOTE_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYQUOTEVOLUMEBUY()
{
	return cURRENT_DAY_QUOTE_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYQUOTEVOLUMEBUY(int  cURRENT_DAY_QUOTE_VOLUME_BUY)
{
	this->cURRENT_DAY_QUOTE_VOLUME_BUY = cURRENT_DAY_QUOTE_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYQUOTEVOLUMESELL()
{
	return cURRENT_DAY_QUOTE_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYQUOTEVOLUMESELL(int  cURRENT_DAY_QUOTE_VOLUME_SELL)
{
	this->cURRENT_DAY_QUOTE_VOLUME_SELL = cURRENT_DAY_QUOTE_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYQUOTEVOLUMEUNKNOWN()
{
	return cURRENT_DAY_QUOTE_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYQUOTEVOLUMEUNKNOWN(int  cURRENT_DAY_QUOTE_VOLUME_UNKNOWN)
{
	this->cURRENT_DAY_QUOTE_VOLUME_UNKNOWN = cURRENT_DAY_QUOTE_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYTOTALTRADES()
{
	return cURRENT_DAY_TOTAL_TRADES;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYTOTALTRADES(int  cURRENT_DAY_TOTAL_TRADES)
{
	this->cURRENT_DAY_TOTAL_TRADES = cURRENT_DAY_TOTAL_TRADES;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYTOTALTRADESBUY()
{
	return cURRENT_DAY_TOTAL_TRADES_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYTOTALTRADESBUY(int  cURRENT_DAY_TOTAL_TRADES_BUY)
{
	this->cURRENT_DAY_TOTAL_TRADES_BUY = cURRENT_DAY_TOTAL_TRADES_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYTOTALTRADESSELL()
{
	return cURRENT_DAY_TOTAL_TRADES_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYTOTALTRADESSELL(int  cURRENT_DAY_TOTAL_TRADES_SELL)
{
	this->cURRENT_DAY_TOTAL_TRADES_SELL = cURRENT_DAY_TOTAL_TRADES_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYTOTALTRADESUNKNOWN()
{
	return cURRENT_DAY_TOTAL_TRADES_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYTOTALTRADESUNKNOWN(int  cURRENT_DAY_TOTAL_TRADES_UNKNOWN)
{
	this->cURRENT_DAY_TOTAL_TRADES_UNKNOWN = cURRENT_DAY_TOTAL_TRADES_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYVOLUME()
{
	return cURRENT_DAY_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYVOLUME(int  cURRENT_DAY_VOLUME)
{
	this->cURRENT_DAY_VOLUME = cURRENT_DAY_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYVOLUMEBUY()
{
	return cURRENT_DAY_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYVOLUMEBUY(int  cURRENT_DAY_VOLUME_BUY)
{
	this->cURRENT_DAY_VOLUME_BUY = cURRENT_DAY_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYVOLUMESELL()
{
	return cURRENT_DAY_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYVOLUMESELL(int  cURRENT_DAY_VOLUME_SELL)
{
	this->cURRENT_DAY_VOLUME_SELL = cURRENT_DAY_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTDAYVOLUMEUNKNOWN()
{
	return cURRENT_DAY_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTDAYVOLUMEUNKNOWN(int  cURRENT_DAY_VOLUME_UNKNOWN)
{
	this->cURRENT_DAY_VOLUME_UNKNOWN = cURRENT_DAY_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURHIGH()
{
	return cURRENT_HOUR_HIGH;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURHIGH(int  cURRENT_HOUR_HIGH)
{
	this->cURRENT_HOUR_HIGH = cURRENT_HOUR_HIGH;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURLOW()
{
	return cURRENT_HOUR_LOW;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURLOW(int  cURRENT_HOUR_LOW)
{
	this->cURRENT_HOUR_LOW = cURRENT_HOUR_LOW;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOUROPEN()
{
	return cURRENT_HOUR_OPEN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOUROPEN(int  cURRENT_HOUR_OPEN)
{
	this->cURRENT_HOUR_OPEN = cURRENT_HOUR_OPEN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURQUOTEVOLUME()
{
	return cURRENT_HOUR_QUOTE_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURQUOTEVOLUME(int  cURRENT_HOUR_QUOTE_VOLUME)
{
	this->cURRENT_HOUR_QUOTE_VOLUME = cURRENT_HOUR_QUOTE_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURQUOTEVOLUMEBUY()
{
	return cURRENT_HOUR_QUOTE_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURQUOTEVOLUMEBUY(int  cURRENT_HOUR_QUOTE_VOLUME_BUY)
{
	this->cURRENT_HOUR_QUOTE_VOLUME_BUY = cURRENT_HOUR_QUOTE_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURQUOTEVOLUMESELL()
{
	return cURRENT_HOUR_QUOTE_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURQUOTEVOLUMESELL(int  cURRENT_HOUR_QUOTE_VOLUME_SELL)
{
	this->cURRENT_HOUR_QUOTE_VOLUME_SELL = cURRENT_HOUR_QUOTE_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURQUOTEVOLUMEUNKNOWN()
{
	return cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURQUOTEVOLUMEUNKNOWN(int  cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN)
{
	this->cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN = cURRENT_HOUR_QUOTE_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURTOTALTRADES()
{
	return cURRENT_HOUR_TOTAL_TRADES;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURTOTALTRADES(int  cURRENT_HOUR_TOTAL_TRADES)
{
	this->cURRENT_HOUR_TOTAL_TRADES = cURRENT_HOUR_TOTAL_TRADES;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURTOTALTRADESBUY()
{
	return cURRENT_HOUR_TOTAL_TRADES_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURTOTALTRADESBUY(int  cURRENT_HOUR_TOTAL_TRADES_BUY)
{
	this->cURRENT_HOUR_TOTAL_TRADES_BUY = cURRENT_HOUR_TOTAL_TRADES_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURTOTALTRADESSELL()
{
	return cURRENT_HOUR_TOTAL_TRADES_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURTOTALTRADESSELL(int  cURRENT_HOUR_TOTAL_TRADES_SELL)
{
	this->cURRENT_HOUR_TOTAL_TRADES_SELL = cURRENT_HOUR_TOTAL_TRADES_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURTOTALTRADESUNKNOWN()
{
	return cURRENT_HOUR_TOTAL_TRADES_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURTOTALTRADESUNKNOWN(int  cURRENT_HOUR_TOTAL_TRADES_UNKNOWN)
{
	this->cURRENT_HOUR_TOTAL_TRADES_UNKNOWN = cURRENT_HOUR_TOTAL_TRADES_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURVOLUME()
{
	return cURRENT_HOUR_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURVOLUME(int  cURRENT_HOUR_VOLUME)
{
	this->cURRENT_HOUR_VOLUME = cURRENT_HOUR_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURVOLUMEBUY()
{
	return cURRENT_HOUR_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURVOLUMEBUY(int  cURRENT_HOUR_VOLUME_BUY)
{
	this->cURRENT_HOUR_VOLUME_BUY = cURRENT_HOUR_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURVOLUMESELL()
{
	return cURRENT_HOUR_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURVOLUMESELL(int  cURRENT_HOUR_VOLUME_SELL)
{
	this->cURRENT_HOUR_VOLUME_SELL = cURRENT_HOUR_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTHOURVOLUMEUNKNOWN()
{
	return cURRENT_HOUR_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTHOURVOLUMEUNKNOWN(int  cURRENT_HOUR_VOLUME_UNKNOWN)
{
	this->cURRENT_HOUR_VOLUME_UNKNOWN = cURRENT_HOUR_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHHIGH()
{
	return cURRENT_MONTH_HIGH;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHHIGH(int  cURRENT_MONTH_HIGH)
{
	this->cURRENT_MONTH_HIGH = cURRENT_MONTH_HIGH;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHLOW()
{
	return cURRENT_MONTH_LOW;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHLOW(int  cURRENT_MONTH_LOW)
{
	this->cURRENT_MONTH_LOW = cURRENT_MONTH_LOW;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHOPEN()
{
	return cURRENT_MONTH_OPEN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHOPEN(int  cURRENT_MONTH_OPEN)
{
	this->cURRENT_MONTH_OPEN = cURRENT_MONTH_OPEN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHQUOTEVOLUME()
{
	return cURRENT_MONTH_QUOTE_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHQUOTEVOLUME(int  cURRENT_MONTH_QUOTE_VOLUME)
{
	this->cURRENT_MONTH_QUOTE_VOLUME = cURRENT_MONTH_QUOTE_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHQUOTEVOLUMEBUY()
{
	return cURRENT_MONTH_QUOTE_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHQUOTEVOLUMEBUY(int  cURRENT_MONTH_QUOTE_VOLUME_BUY)
{
	this->cURRENT_MONTH_QUOTE_VOLUME_BUY = cURRENT_MONTH_QUOTE_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHQUOTEVOLUMESELL()
{
	return cURRENT_MONTH_QUOTE_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHQUOTEVOLUMESELL(int  cURRENT_MONTH_QUOTE_VOLUME_SELL)
{
	this->cURRENT_MONTH_QUOTE_VOLUME_SELL = cURRENT_MONTH_QUOTE_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHQUOTEVOLUMEUNKNOWN()
{
	return cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHQUOTEVOLUMEUNKNOWN(int  cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN)
{
	this->cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN = cURRENT_MONTH_QUOTE_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHTOTALTRADES()
{
	return cURRENT_MONTH_TOTAL_TRADES;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHTOTALTRADES(int  cURRENT_MONTH_TOTAL_TRADES)
{
	this->cURRENT_MONTH_TOTAL_TRADES = cURRENT_MONTH_TOTAL_TRADES;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHTOTALTRADESBUY()
{
	return cURRENT_MONTH_TOTAL_TRADES_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHTOTALTRADESBUY(int  cURRENT_MONTH_TOTAL_TRADES_BUY)
{
	this->cURRENT_MONTH_TOTAL_TRADES_BUY = cURRENT_MONTH_TOTAL_TRADES_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHTOTALTRADESSELL()
{
	return cURRENT_MONTH_TOTAL_TRADES_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHTOTALTRADESSELL(int  cURRENT_MONTH_TOTAL_TRADES_SELL)
{
	this->cURRENT_MONTH_TOTAL_TRADES_SELL = cURRENT_MONTH_TOTAL_TRADES_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHTOTALTRADESUNKNOWN()
{
	return cURRENT_MONTH_TOTAL_TRADES_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHTOTALTRADESUNKNOWN(int  cURRENT_MONTH_TOTAL_TRADES_UNKNOWN)
{
	this->cURRENT_MONTH_TOTAL_TRADES_UNKNOWN = cURRENT_MONTH_TOTAL_TRADES_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHVOLUME()
{
	return cURRENT_MONTH_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHVOLUME(int  cURRENT_MONTH_VOLUME)
{
	this->cURRENT_MONTH_VOLUME = cURRENT_MONTH_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHVOLUMEBUY()
{
	return cURRENT_MONTH_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHVOLUMEBUY(int  cURRENT_MONTH_VOLUME_BUY)
{
	this->cURRENT_MONTH_VOLUME_BUY = cURRENT_MONTH_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHVOLUMESELL()
{
	return cURRENT_MONTH_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHVOLUMESELL(int  cURRENT_MONTH_VOLUME_SELL)
{
	this->cURRENT_MONTH_VOLUME_SELL = cURRENT_MONTH_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTMONTHVOLUMEUNKNOWN()
{
	return cURRENT_MONTH_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTMONTHVOLUMEUNKNOWN(int  cURRENT_MONTH_VOLUME_UNKNOWN)
{
	this->cURRENT_MONTH_VOLUME_UNKNOWN = cURRENT_MONTH_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKHIGH()
{
	return cURRENT_WEEK_HIGH;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKHIGH(int  cURRENT_WEEK_HIGH)
{
	this->cURRENT_WEEK_HIGH = cURRENT_WEEK_HIGH;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKLOW()
{
	return cURRENT_WEEK_LOW;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKLOW(int  cURRENT_WEEK_LOW)
{
	this->cURRENT_WEEK_LOW = cURRENT_WEEK_LOW;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKOPEN()
{
	return cURRENT_WEEK_OPEN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKOPEN(int  cURRENT_WEEK_OPEN)
{
	this->cURRENT_WEEK_OPEN = cURRENT_WEEK_OPEN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKQUOTEVOLUME()
{
	return cURRENT_WEEK_QUOTE_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKQUOTEVOLUME(int  cURRENT_WEEK_QUOTE_VOLUME)
{
	this->cURRENT_WEEK_QUOTE_VOLUME = cURRENT_WEEK_QUOTE_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKQUOTEVOLUMEBUY()
{
	return cURRENT_WEEK_QUOTE_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKQUOTEVOLUMEBUY(int  cURRENT_WEEK_QUOTE_VOLUME_BUY)
{
	this->cURRENT_WEEK_QUOTE_VOLUME_BUY = cURRENT_WEEK_QUOTE_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKQUOTEVOLUMESELL()
{
	return cURRENT_WEEK_QUOTE_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKQUOTEVOLUMESELL(int  cURRENT_WEEK_QUOTE_VOLUME_SELL)
{
	this->cURRENT_WEEK_QUOTE_VOLUME_SELL = cURRENT_WEEK_QUOTE_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKQUOTEVOLUMEUNKNOWN()
{
	return cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKQUOTEVOLUMEUNKNOWN(int  cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN)
{
	this->cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN = cURRENT_WEEK_QUOTE_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKTOTALTRADES()
{
	return cURRENT_WEEK_TOTAL_TRADES;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKTOTALTRADES(int  cURRENT_WEEK_TOTAL_TRADES)
{
	this->cURRENT_WEEK_TOTAL_TRADES = cURRENT_WEEK_TOTAL_TRADES;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKTOTALTRADESBUY()
{
	return cURRENT_WEEK_TOTAL_TRADES_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKTOTALTRADESBUY(int  cURRENT_WEEK_TOTAL_TRADES_BUY)
{
	this->cURRENT_WEEK_TOTAL_TRADES_BUY = cURRENT_WEEK_TOTAL_TRADES_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKTOTALTRADESSELL()
{
	return cURRENT_WEEK_TOTAL_TRADES_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKTOTALTRADESSELL(int  cURRENT_WEEK_TOTAL_TRADES_SELL)
{
	this->cURRENT_WEEK_TOTAL_TRADES_SELL = cURRENT_WEEK_TOTAL_TRADES_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKTOTALTRADESUNKNOWN()
{
	return cURRENT_WEEK_TOTAL_TRADES_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKTOTALTRADESUNKNOWN(int  cURRENT_WEEK_TOTAL_TRADES_UNKNOWN)
{
	this->cURRENT_WEEK_TOTAL_TRADES_UNKNOWN = cURRENT_WEEK_TOTAL_TRADES_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKVOLUME()
{
	return cURRENT_WEEK_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKVOLUME(int  cURRENT_WEEK_VOLUME)
{
	this->cURRENT_WEEK_VOLUME = cURRENT_WEEK_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKVOLUMEBUY()
{
	return cURRENT_WEEK_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKVOLUMEBUY(int  cURRENT_WEEK_VOLUME_BUY)
{
	this->cURRENT_WEEK_VOLUME_BUY = cURRENT_WEEK_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKVOLUMESELL()
{
	return cURRENT_WEEK_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKVOLUMESELL(int  cURRENT_WEEK_VOLUME_SELL)
{
	this->cURRENT_WEEK_VOLUME_SELL = cURRENT_WEEK_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTWEEKVOLUMEUNKNOWN()
{
	return cURRENT_WEEK_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTWEEKVOLUMEUNKNOWN(int  cURRENT_WEEK_VOLUME_UNKNOWN)
{
	this->cURRENT_WEEK_VOLUME_UNKNOWN = cURRENT_WEEK_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARHIGH()
{
	return cURRENT_YEAR_HIGH;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARHIGH(int  cURRENT_YEAR_HIGH)
{
	this->cURRENT_YEAR_HIGH = cURRENT_YEAR_HIGH;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARLOW()
{
	return cURRENT_YEAR_LOW;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARLOW(int  cURRENT_YEAR_LOW)
{
	this->cURRENT_YEAR_LOW = cURRENT_YEAR_LOW;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEAROPEN()
{
	return cURRENT_YEAR_OPEN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEAROPEN(int  cURRENT_YEAR_OPEN)
{
	this->cURRENT_YEAR_OPEN = cURRENT_YEAR_OPEN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARQUOTEVOLUME()
{
	return cURRENT_YEAR_QUOTE_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARQUOTEVOLUME(int  cURRENT_YEAR_QUOTE_VOLUME)
{
	this->cURRENT_YEAR_QUOTE_VOLUME = cURRENT_YEAR_QUOTE_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARQUOTEVOLUMEBUY()
{
	return cURRENT_YEAR_QUOTE_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARQUOTEVOLUMEBUY(int  cURRENT_YEAR_QUOTE_VOLUME_BUY)
{
	this->cURRENT_YEAR_QUOTE_VOLUME_BUY = cURRENT_YEAR_QUOTE_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARQUOTEVOLUMESELL()
{
	return cURRENT_YEAR_QUOTE_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARQUOTEVOLUMESELL(int  cURRENT_YEAR_QUOTE_VOLUME_SELL)
{
	this->cURRENT_YEAR_QUOTE_VOLUME_SELL = cURRENT_YEAR_QUOTE_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARQUOTEVOLUMEUNKNOWN()
{
	return cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARQUOTEVOLUMEUNKNOWN(int  cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN)
{
	this->cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN = cURRENT_YEAR_QUOTE_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARTOTALTRADES()
{
	return cURRENT_YEAR_TOTAL_TRADES;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARTOTALTRADES(int  cURRENT_YEAR_TOTAL_TRADES)
{
	this->cURRENT_YEAR_TOTAL_TRADES = cURRENT_YEAR_TOTAL_TRADES;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARTOTALTRADESBUY()
{
	return cURRENT_YEAR_TOTAL_TRADES_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARTOTALTRADESBUY(int  cURRENT_YEAR_TOTAL_TRADES_BUY)
{
	this->cURRENT_YEAR_TOTAL_TRADES_BUY = cURRENT_YEAR_TOTAL_TRADES_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARTOTALTRADESSELL()
{
	return cURRENT_YEAR_TOTAL_TRADES_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARTOTALTRADESSELL(int  cURRENT_YEAR_TOTAL_TRADES_SELL)
{
	this->cURRENT_YEAR_TOTAL_TRADES_SELL = cURRENT_YEAR_TOTAL_TRADES_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARTOTALTRADESUNKNOWN()
{
	return cURRENT_YEAR_TOTAL_TRADES_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARTOTALTRADESUNKNOWN(int  cURRENT_YEAR_TOTAL_TRADES_UNKNOWN)
{
	this->cURRENT_YEAR_TOTAL_TRADES_UNKNOWN = cURRENT_YEAR_TOTAL_TRADES_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARVOLUME()
{
	return cURRENT_YEAR_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARVOLUME(int  cURRENT_YEAR_VOLUME)
{
	this->cURRENT_YEAR_VOLUME = cURRENT_YEAR_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARVOLUMEBUY()
{
	return cURRENT_YEAR_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARVOLUMEBUY(int  cURRENT_YEAR_VOLUME_BUY)
{
	this->cURRENT_YEAR_VOLUME_BUY = cURRENT_YEAR_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARVOLUMESELL()
{
	return cURRENT_YEAR_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARVOLUMESELL(int  cURRENT_YEAR_VOLUME_SELL)
{
	this->cURRENT_YEAR_VOLUME_SELL = cURRENT_YEAR_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getCURRENTYEARVOLUMEUNKNOWN()
{
	return cURRENT_YEAR_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setCURRENTYEARVOLUMEUNKNOWN(int  cURRENT_YEAR_VOLUME_UNKNOWN)
{
	this->cURRENT_YEAR_VOLUME_UNKNOWN = cURRENT_YEAR_VOLUME_UNKNOWN;
}

std::string
SPOT_INSTRUMENT_MARKET_DATA::getINSTRUMENT()
{
	return iNSTRUMENT;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setINSTRUMENT(std::string  iNSTRUMENT)
{
	this->iNSTRUMENT = iNSTRUMENT;
}

std::string
SPOT_INSTRUMENT_MARKET_DATA::getLASTPROCESSEDTRADECCSEQ()
{
	return lAST_PROCESSED_TRADE_CCSEQ;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLASTPROCESSEDTRADECCSEQ(std::string  lAST_PROCESSED_TRADE_CCSEQ)
{
	this->lAST_PROCESSED_TRADE_CCSEQ = lAST_PROCESSED_TRADE_CCSEQ;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLASTPROCESSEDTRADEPRICE()
{
	return lAST_PROCESSED_TRADE_PRICE;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLASTPROCESSEDTRADEPRICE(int  lAST_PROCESSED_TRADE_PRICE)
{
	this->lAST_PROCESSED_TRADE_PRICE = lAST_PROCESSED_TRADE_PRICE;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLASTPROCESSEDTRADEQUANTITY()
{
	return lAST_PROCESSED_TRADE_QUANTITY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLASTPROCESSEDTRADEQUANTITY(int  lAST_PROCESSED_TRADE_QUANTITY)
{
	this->lAST_PROCESSED_TRADE_QUANTITY = lAST_PROCESSED_TRADE_QUANTITY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLASTPROCESSEDTRADEQUOTEQUANTITY()
{
	return lAST_PROCESSED_TRADE_QUOTE_QUANTITY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLASTPROCESSEDTRADEQUOTEQUANTITY(int  lAST_PROCESSED_TRADE_QUOTE_QUANTITY)
{
	this->lAST_PROCESSED_TRADE_QUOTE_QUANTITY = lAST_PROCESSED_TRADE_QUOTE_QUANTITY;
}

std::string
SPOT_INSTRUMENT_MARKET_DATA::getLASTPROCESSEDTRADESIDE()
{
	return lAST_PROCESSED_TRADE_SIDE;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLASTPROCESSEDTRADESIDE(std::string  lAST_PROCESSED_TRADE_SIDE)
{
	this->lAST_PROCESSED_TRADE_SIDE = lAST_PROCESSED_TRADE_SIDE;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLASTPROCESSEDTRADETS()
{
	return lAST_PROCESSED_TRADE_TS;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLASTPROCESSEDTRADETS(int  lAST_PROCESSED_TRADE_TS)
{
	this->lAST_PROCESSED_TRADE_TS = lAST_PROCESSED_TRADE_TS;
}

std::string
SPOT_INSTRUMENT_MARKET_DATA::getLASTTRADECCSEQ()
{
	return lAST_TRADE_CCSEQ;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLASTTRADECCSEQ(std::string  lAST_TRADE_CCSEQ)
{
	this->lAST_TRADE_CCSEQ = lAST_TRADE_CCSEQ;
}

std::string
SPOT_INSTRUMENT_MARKET_DATA::getLASTTRADEID()
{
	return lAST_TRADE_ID;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLASTTRADEID(std::string  lAST_TRADE_ID)
{
	this->lAST_TRADE_ID = lAST_TRADE_ID;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLASTTRADEQUANTITY()
{
	return lAST_TRADE_QUANTITY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLASTTRADEQUANTITY(int  lAST_TRADE_QUANTITY)
{
	this->lAST_TRADE_QUANTITY = lAST_TRADE_QUANTITY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLASTTRADEQUOTEQUANTITY()
{
	return lAST_TRADE_QUOTE_QUANTITY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLASTTRADEQUOTEQUANTITY(int  lAST_TRADE_QUOTE_QUANTITY)
{
	this->lAST_TRADE_QUOTE_QUANTITY = lAST_TRADE_QUOTE_QUANTITY;
}

std::string
SPOT_INSTRUMENT_MARKET_DATA::getLASTTRADESIDE()
{
	return lAST_TRADE_SIDE;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLASTTRADESIDE(std::string  lAST_TRADE_SIDE)
{
	this->lAST_TRADE_SIDE = lAST_TRADE_SIDE;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMEFIRSTTRADETS()
{
	return lIFETIME_FIRST_TRADE_TS;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMEFIRSTTRADETS(int  lIFETIME_FIRST_TRADE_TS)
{
	this->lIFETIME_FIRST_TRADE_TS = lIFETIME_FIRST_TRADE_TS;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMEHIGH()
{
	return lIFETIME_HIGH;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMEHIGH(int  lIFETIME_HIGH)
{
	this->lIFETIME_HIGH = lIFETIME_HIGH;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMEHIGHTS()
{
	return lIFETIME_HIGH_TS;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMEHIGHTS(int  lIFETIME_HIGH_TS)
{
	this->lIFETIME_HIGH_TS = lIFETIME_HIGH_TS;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMELOW()
{
	return lIFETIME_LOW;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMELOW(int  lIFETIME_LOW)
{
	this->lIFETIME_LOW = lIFETIME_LOW;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMELOWTS()
{
	return lIFETIME_LOW_TS;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMELOWTS(int  lIFETIME_LOW_TS)
{
	this->lIFETIME_LOW_TS = lIFETIME_LOW_TS;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMEOPEN()
{
	return lIFETIME_OPEN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMEOPEN(int  lIFETIME_OPEN)
{
	this->lIFETIME_OPEN = lIFETIME_OPEN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMEQUOTEVOLUME()
{
	return lIFETIME_QUOTE_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMEQUOTEVOLUME(int  lIFETIME_QUOTE_VOLUME)
{
	this->lIFETIME_QUOTE_VOLUME = lIFETIME_QUOTE_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMEQUOTEVOLUMEBUY()
{
	return lIFETIME_QUOTE_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMEQUOTEVOLUMEBUY(int  lIFETIME_QUOTE_VOLUME_BUY)
{
	this->lIFETIME_QUOTE_VOLUME_BUY = lIFETIME_QUOTE_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMEQUOTEVOLUMESELL()
{
	return lIFETIME_QUOTE_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMEQUOTEVOLUMESELL(int  lIFETIME_QUOTE_VOLUME_SELL)
{
	this->lIFETIME_QUOTE_VOLUME_SELL = lIFETIME_QUOTE_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMEQUOTEVOLUMEUNKNOWN()
{
	return lIFETIME_QUOTE_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMEQUOTEVOLUMEUNKNOWN(int  lIFETIME_QUOTE_VOLUME_UNKNOWN)
{
	this->lIFETIME_QUOTE_VOLUME_UNKNOWN = lIFETIME_QUOTE_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMETOTALTRADES()
{
	return lIFETIME_TOTAL_TRADES;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMETOTALTRADES(int  lIFETIME_TOTAL_TRADES)
{
	this->lIFETIME_TOTAL_TRADES = lIFETIME_TOTAL_TRADES;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMETOTALTRADESBUY()
{
	return lIFETIME_TOTAL_TRADES_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMETOTALTRADESBUY(int  lIFETIME_TOTAL_TRADES_BUY)
{
	this->lIFETIME_TOTAL_TRADES_BUY = lIFETIME_TOTAL_TRADES_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMETOTALTRADESSELL()
{
	return lIFETIME_TOTAL_TRADES_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMETOTALTRADESSELL(int  lIFETIME_TOTAL_TRADES_SELL)
{
	this->lIFETIME_TOTAL_TRADES_SELL = lIFETIME_TOTAL_TRADES_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMETOTALTRADESUNKNOWN()
{
	return lIFETIME_TOTAL_TRADES_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMETOTALTRADESUNKNOWN(int  lIFETIME_TOTAL_TRADES_UNKNOWN)
{
	this->lIFETIME_TOTAL_TRADES_UNKNOWN = lIFETIME_TOTAL_TRADES_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMEVOLUME()
{
	return lIFETIME_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMEVOLUME(int  lIFETIME_VOLUME)
{
	this->lIFETIME_VOLUME = lIFETIME_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMEVOLUMEBUY()
{
	return lIFETIME_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMEVOLUMEBUY(int  lIFETIME_VOLUME_BUY)
{
	this->lIFETIME_VOLUME_BUY = lIFETIME_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMEVOLUMESELL()
{
	return lIFETIME_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMEVOLUMESELL(int  lIFETIME_VOLUME_SELL)
{
	this->lIFETIME_VOLUME_SELL = lIFETIME_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getLIFETIMEVOLUMEUNKNOWN()
{
	return lIFETIME_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setLIFETIMEVOLUMEUNKNOWN(int  lIFETIME_VOLUME_UNKNOWN)
{
	this->lIFETIME_VOLUME_UNKNOWN = lIFETIME_VOLUME_UNKNOWN;
}

std::string
SPOT_INSTRUMENT_MARKET_DATA::getMAPPEDINSTRUMENT()
{
	return mAPPED_INSTRUMENT;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMAPPEDINSTRUMENT(std::string  mAPPED_INSTRUMENT)
{
	this->mAPPED_INSTRUMENT = mAPPED_INSTRUMENT;
}

std::string
SPOT_INSTRUMENT_MARKET_DATA::getMARKET()
{
	return mARKET;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMARKET(std::string  mARKET)
{
	this->mARKET = mARKET;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYHIGH()
{
	return mOVING_180_DAY_HIGH;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYHIGH(int  mOVING_180_DAY_HIGH)
{
	this->mOVING_180_DAY_HIGH = mOVING_180_DAY_HIGH;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYLOW()
{
	return mOVING_180_DAY_LOW;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYLOW(int  mOVING_180_DAY_LOW)
{
	this->mOVING_180_DAY_LOW = mOVING_180_DAY_LOW;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYOPEN()
{
	return mOVING_180_DAY_OPEN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYOPEN(int  mOVING_180_DAY_OPEN)
{
	this->mOVING_180_DAY_OPEN = mOVING_180_DAY_OPEN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYQUOTEVOLUME()
{
	return mOVING_180_DAY_QUOTE_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYQUOTEVOLUME(int  mOVING_180_DAY_QUOTE_VOLUME)
{
	this->mOVING_180_DAY_QUOTE_VOLUME = mOVING_180_DAY_QUOTE_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYQUOTEVOLUMEBUY()
{
	return mOVING_180_DAY_QUOTE_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYQUOTEVOLUMEBUY(int  mOVING_180_DAY_QUOTE_VOLUME_BUY)
{
	this->mOVING_180_DAY_QUOTE_VOLUME_BUY = mOVING_180_DAY_QUOTE_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYQUOTEVOLUMESELL()
{
	return mOVING_180_DAY_QUOTE_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYQUOTEVOLUMESELL(int  mOVING_180_DAY_QUOTE_VOLUME_SELL)
{
	this->mOVING_180_DAY_QUOTE_VOLUME_SELL = mOVING_180_DAY_QUOTE_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYQUOTEVOLUMEUNKNOWN()
{
	return mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYQUOTEVOLUMEUNKNOWN(int  mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN)
{
	this->mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN = mOVING_180_DAY_QUOTE_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYTOTALTRADES()
{
	return mOVING_180_DAY_TOTAL_TRADES;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYTOTALTRADES(int  mOVING_180_DAY_TOTAL_TRADES)
{
	this->mOVING_180_DAY_TOTAL_TRADES = mOVING_180_DAY_TOTAL_TRADES;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYTOTALTRADESBUY()
{
	return mOVING_180_DAY_TOTAL_TRADES_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYTOTALTRADESBUY(int  mOVING_180_DAY_TOTAL_TRADES_BUY)
{
	this->mOVING_180_DAY_TOTAL_TRADES_BUY = mOVING_180_DAY_TOTAL_TRADES_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYTOTALTRADESSELL()
{
	return mOVING_180_DAY_TOTAL_TRADES_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYTOTALTRADESSELL(int  mOVING_180_DAY_TOTAL_TRADES_SELL)
{
	this->mOVING_180_DAY_TOTAL_TRADES_SELL = mOVING_180_DAY_TOTAL_TRADES_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYTOTALTRADESUNKNOWN()
{
	return mOVING_180_DAY_TOTAL_TRADES_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYTOTALTRADESUNKNOWN(int  mOVING_180_DAY_TOTAL_TRADES_UNKNOWN)
{
	this->mOVING_180_DAY_TOTAL_TRADES_UNKNOWN = mOVING_180_DAY_TOTAL_TRADES_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYVOLUME()
{
	return mOVING_180_DAY_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYVOLUME(int  mOVING_180_DAY_VOLUME)
{
	this->mOVING_180_DAY_VOLUME = mOVING_180_DAY_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYVOLUMEBUY()
{
	return mOVING_180_DAY_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYVOLUMEBUY(int  mOVING_180_DAY_VOLUME_BUY)
{
	this->mOVING_180_DAY_VOLUME_BUY = mOVING_180_DAY_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYVOLUMESELL()
{
	return mOVING_180_DAY_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYVOLUMESELL(int  mOVING_180_DAY_VOLUME_SELL)
{
	this->mOVING_180_DAY_VOLUME_SELL = mOVING_180_DAY_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING180DAYVOLUMEUNKNOWN()
{
	return mOVING_180_DAY_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING180DAYVOLUMEUNKNOWN(int  mOVING_180_DAY_VOLUME_UNKNOWN)
{
	this->mOVING_180_DAY_VOLUME_UNKNOWN = mOVING_180_DAY_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURHIGH()
{
	return mOVING_24_HOUR_HIGH;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURHIGH(int  mOVING_24_HOUR_HIGH)
{
	this->mOVING_24_HOUR_HIGH = mOVING_24_HOUR_HIGH;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURLOW()
{
	return mOVING_24_HOUR_LOW;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURLOW(int  mOVING_24_HOUR_LOW)
{
	this->mOVING_24_HOUR_LOW = mOVING_24_HOUR_LOW;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOUROPEN()
{
	return mOVING_24_HOUR_OPEN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOUROPEN(int  mOVING_24_HOUR_OPEN)
{
	this->mOVING_24_HOUR_OPEN = mOVING_24_HOUR_OPEN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURQUOTEVOLUME()
{
	return mOVING_24_HOUR_QUOTE_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURQUOTEVOLUME(int  mOVING_24_HOUR_QUOTE_VOLUME)
{
	this->mOVING_24_HOUR_QUOTE_VOLUME = mOVING_24_HOUR_QUOTE_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURQUOTEVOLUMEBUY()
{
	return mOVING_24_HOUR_QUOTE_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURQUOTEVOLUMEBUY(int  mOVING_24_HOUR_QUOTE_VOLUME_BUY)
{
	this->mOVING_24_HOUR_QUOTE_VOLUME_BUY = mOVING_24_HOUR_QUOTE_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURQUOTEVOLUMESELL()
{
	return mOVING_24_HOUR_QUOTE_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURQUOTEVOLUMESELL(int  mOVING_24_HOUR_QUOTE_VOLUME_SELL)
{
	this->mOVING_24_HOUR_QUOTE_VOLUME_SELL = mOVING_24_HOUR_QUOTE_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURQUOTEVOLUMEUNKNOWN()
{
	return mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURQUOTEVOLUMEUNKNOWN(int  mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN)
{
	this->mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN = mOVING_24_HOUR_QUOTE_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURTOTALTRADES()
{
	return mOVING_24_HOUR_TOTAL_TRADES;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURTOTALTRADES(int  mOVING_24_HOUR_TOTAL_TRADES)
{
	this->mOVING_24_HOUR_TOTAL_TRADES = mOVING_24_HOUR_TOTAL_TRADES;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURTOTALTRADESBUY()
{
	return mOVING_24_HOUR_TOTAL_TRADES_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURTOTALTRADESBUY(int  mOVING_24_HOUR_TOTAL_TRADES_BUY)
{
	this->mOVING_24_HOUR_TOTAL_TRADES_BUY = mOVING_24_HOUR_TOTAL_TRADES_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURTOTALTRADESSELL()
{
	return mOVING_24_HOUR_TOTAL_TRADES_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURTOTALTRADESSELL(int  mOVING_24_HOUR_TOTAL_TRADES_SELL)
{
	this->mOVING_24_HOUR_TOTAL_TRADES_SELL = mOVING_24_HOUR_TOTAL_TRADES_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURTOTALTRADESUNKNOWN()
{
	return mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURTOTALTRADESUNKNOWN(int  mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN)
{
	this->mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN = mOVING_24_HOUR_TOTAL_TRADES_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURVOLUME()
{
	return mOVING_24_HOUR_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURVOLUME(int  mOVING_24_HOUR_VOLUME)
{
	this->mOVING_24_HOUR_VOLUME = mOVING_24_HOUR_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURVOLUMEBUY()
{
	return mOVING_24_HOUR_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURVOLUMEBUY(int  mOVING_24_HOUR_VOLUME_BUY)
{
	this->mOVING_24_HOUR_VOLUME_BUY = mOVING_24_HOUR_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURVOLUMESELL()
{
	return mOVING_24_HOUR_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURVOLUMESELL(int  mOVING_24_HOUR_VOLUME_SELL)
{
	this->mOVING_24_HOUR_VOLUME_SELL = mOVING_24_HOUR_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING24HOURVOLUMEUNKNOWN()
{
	return mOVING_24_HOUR_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING24HOURVOLUMEUNKNOWN(int  mOVING_24_HOUR_VOLUME_UNKNOWN)
{
	this->mOVING_24_HOUR_VOLUME_UNKNOWN = mOVING_24_HOUR_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYHIGH()
{
	return mOVING_30_DAY_HIGH;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYHIGH(int  mOVING_30_DAY_HIGH)
{
	this->mOVING_30_DAY_HIGH = mOVING_30_DAY_HIGH;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYLOW()
{
	return mOVING_30_DAY_LOW;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYLOW(int  mOVING_30_DAY_LOW)
{
	this->mOVING_30_DAY_LOW = mOVING_30_DAY_LOW;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYOPEN()
{
	return mOVING_30_DAY_OPEN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYOPEN(int  mOVING_30_DAY_OPEN)
{
	this->mOVING_30_DAY_OPEN = mOVING_30_DAY_OPEN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYQUOTEVOLUME()
{
	return mOVING_30_DAY_QUOTE_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYQUOTEVOLUME(int  mOVING_30_DAY_QUOTE_VOLUME)
{
	this->mOVING_30_DAY_QUOTE_VOLUME = mOVING_30_DAY_QUOTE_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYQUOTEVOLUMEBUY()
{
	return mOVING_30_DAY_QUOTE_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYQUOTEVOLUMEBUY(int  mOVING_30_DAY_QUOTE_VOLUME_BUY)
{
	this->mOVING_30_DAY_QUOTE_VOLUME_BUY = mOVING_30_DAY_QUOTE_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYQUOTEVOLUMESELL()
{
	return mOVING_30_DAY_QUOTE_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYQUOTEVOLUMESELL(int  mOVING_30_DAY_QUOTE_VOLUME_SELL)
{
	this->mOVING_30_DAY_QUOTE_VOLUME_SELL = mOVING_30_DAY_QUOTE_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYQUOTEVOLUMEUNKNOWN()
{
	return mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYQUOTEVOLUMEUNKNOWN(int  mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN)
{
	this->mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN = mOVING_30_DAY_QUOTE_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYTOTALTRADES()
{
	return mOVING_30_DAY_TOTAL_TRADES;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYTOTALTRADES(int  mOVING_30_DAY_TOTAL_TRADES)
{
	this->mOVING_30_DAY_TOTAL_TRADES = mOVING_30_DAY_TOTAL_TRADES;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYTOTALTRADESBUY()
{
	return mOVING_30_DAY_TOTAL_TRADES_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYTOTALTRADESBUY(int  mOVING_30_DAY_TOTAL_TRADES_BUY)
{
	this->mOVING_30_DAY_TOTAL_TRADES_BUY = mOVING_30_DAY_TOTAL_TRADES_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYTOTALTRADESSELL()
{
	return mOVING_30_DAY_TOTAL_TRADES_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYTOTALTRADESSELL(int  mOVING_30_DAY_TOTAL_TRADES_SELL)
{
	this->mOVING_30_DAY_TOTAL_TRADES_SELL = mOVING_30_DAY_TOTAL_TRADES_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYTOTALTRADESUNKNOWN()
{
	return mOVING_30_DAY_TOTAL_TRADES_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYTOTALTRADESUNKNOWN(int  mOVING_30_DAY_TOTAL_TRADES_UNKNOWN)
{
	this->mOVING_30_DAY_TOTAL_TRADES_UNKNOWN = mOVING_30_DAY_TOTAL_TRADES_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYVOLUME()
{
	return mOVING_30_DAY_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYVOLUME(int  mOVING_30_DAY_VOLUME)
{
	this->mOVING_30_DAY_VOLUME = mOVING_30_DAY_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYVOLUMEBUY()
{
	return mOVING_30_DAY_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYVOLUMEBUY(int  mOVING_30_DAY_VOLUME_BUY)
{
	this->mOVING_30_DAY_VOLUME_BUY = mOVING_30_DAY_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYVOLUMESELL()
{
	return mOVING_30_DAY_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYVOLUMESELL(int  mOVING_30_DAY_VOLUME_SELL)
{
	this->mOVING_30_DAY_VOLUME_SELL = mOVING_30_DAY_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING30DAYVOLUMEUNKNOWN()
{
	return mOVING_30_DAY_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING30DAYVOLUMEUNKNOWN(int  mOVING_30_DAY_VOLUME_UNKNOWN)
{
	this->mOVING_30_DAY_VOLUME_UNKNOWN = mOVING_30_DAY_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYHIGH()
{
	return mOVING_365_DAY_HIGH;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYHIGH(int  mOVING_365_DAY_HIGH)
{
	this->mOVING_365_DAY_HIGH = mOVING_365_DAY_HIGH;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYLOW()
{
	return mOVING_365_DAY_LOW;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYLOW(int  mOVING_365_DAY_LOW)
{
	this->mOVING_365_DAY_LOW = mOVING_365_DAY_LOW;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYOPEN()
{
	return mOVING_365_DAY_OPEN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYOPEN(int  mOVING_365_DAY_OPEN)
{
	this->mOVING_365_DAY_OPEN = mOVING_365_DAY_OPEN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYQUOTEVOLUME()
{
	return mOVING_365_DAY_QUOTE_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYQUOTEVOLUME(int  mOVING_365_DAY_QUOTE_VOLUME)
{
	this->mOVING_365_DAY_QUOTE_VOLUME = mOVING_365_DAY_QUOTE_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYQUOTEVOLUMEBUY()
{
	return mOVING_365_DAY_QUOTE_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYQUOTEVOLUMEBUY(int  mOVING_365_DAY_QUOTE_VOLUME_BUY)
{
	this->mOVING_365_DAY_QUOTE_VOLUME_BUY = mOVING_365_DAY_QUOTE_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYQUOTEVOLUMESELL()
{
	return mOVING_365_DAY_QUOTE_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYQUOTEVOLUMESELL(int  mOVING_365_DAY_QUOTE_VOLUME_SELL)
{
	this->mOVING_365_DAY_QUOTE_VOLUME_SELL = mOVING_365_DAY_QUOTE_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYQUOTEVOLUMEUNKNOWN()
{
	return mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYQUOTEVOLUMEUNKNOWN(int  mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN)
{
	this->mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN = mOVING_365_DAY_QUOTE_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYTOTALTRADES()
{
	return mOVING_365_DAY_TOTAL_TRADES;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYTOTALTRADES(int  mOVING_365_DAY_TOTAL_TRADES)
{
	this->mOVING_365_DAY_TOTAL_TRADES = mOVING_365_DAY_TOTAL_TRADES;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYTOTALTRADESBUY()
{
	return mOVING_365_DAY_TOTAL_TRADES_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYTOTALTRADESBUY(int  mOVING_365_DAY_TOTAL_TRADES_BUY)
{
	this->mOVING_365_DAY_TOTAL_TRADES_BUY = mOVING_365_DAY_TOTAL_TRADES_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYTOTALTRADESSELL()
{
	return mOVING_365_DAY_TOTAL_TRADES_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYTOTALTRADESSELL(int  mOVING_365_DAY_TOTAL_TRADES_SELL)
{
	this->mOVING_365_DAY_TOTAL_TRADES_SELL = mOVING_365_DAY_TOTAL_TRADES_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYTOTALTRADESUNKNOWN()
{
	return mOVING_365_DAY_TOTAL_TRADES_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYTOTALTRADESUNKNOWN(int  mOVING_365_DAY_TOTAL_TRADES_UNKNOWN)
{
	this->mOVING_365_DAY_TOTAL_TRADES_UNKNOWN = mOVING_365_DAY_TOTAL_TRADES_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYVOLUME()
{
	return mOVING_365_DAY_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYVOLUME(int  mOVING_365_DAY_VOLUME)
{
	this->mOVING_365_DAY_VOLUME = mOVING_365_DAY_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYVOLUMEBUY()
{
	return mOVING_365_DAY_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYVOLUMEBUY(int  mOVING_365_DAY_VOLUME_BUY)
{
	this->mOVING_365_DAY_VOLUME_BUY = mOVING_365_DAY_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYVOLUMESELL()
{
	return mOVING_365_DAY_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYVOLUMESELL(int  mOVING_365_DAY_VOLUME_SELL)
{
	this->mOVING_365_DAY_VOLUME_SELL = mOVING_365_DAY_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING365DAYVOLUMEUNKNOWN()
{
	return mOVING_365_DAY_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING365DAYVOLUMEUNKNOWN(int  mOVING_365_DAY_VOLUME_UNKNOWN)
{
	this->mOVING_365_DAY_VOLUME_UNKNOWN = mOVING_365_DAY_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYHIGH()
{
	return mOVING_7_DAY_HIGH;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYHIGH(int  mOVING_7_DAY_HIGH)
{
	this->mOVING_7_DAY_HIGH = mOVING_7_DAY_HIGH;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYLOW()
{
	return mOVING_7_DAY_LOW;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYLOW(int  mOVING_7_DAY_LOW)
{
	this->mOVING_7_DAY_LOW = mOVING_7_DAY_LOW;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYOPEN()
{
	return mOVING_7_DAY_OPEN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYOPEN(int  mOVING_7_DAY_OPEN)
{
	this->mOVING_7_DAY_OPEN = mOVING_7_DAY_OPEN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYQUOTEVOLUME()
{
	return mOVING_7_DAY_QUOTE_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYQUOTEVOLUME(int  mOVING_7_DAY_QUOTE_VOLUME)
{
	this->mOVING_7_DAY_QUOTE_VOLUME = mOVING_7_DAY_QUOTE_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYQUOTEVOLUMEBUY()
{
	return mOVING_7_DAY_QUOTE_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYQUOTEVOLUMEBUY(int  mOVING_7_DAY_QUOTE_VOLUME_BUY)
{
	this->mOVING_7_DAY_QUOTE_VOLUME_BUY = mOVING_7_DAY_QUOTE_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYQUOTEVOLUMESELL()
{
	return mOVING_7_DAY_QUOTE_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYQUOTEVOLUMESELL(int  mOVING_7_DAY_QUOTE_VOLUME_SELL)
{
	this->mOVING_7_DAY_QUOTE_VOLUME_SELL = mOVING_7_DAY_QUOTE_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYQUOTEVOLUMEUNKNOWN()
{
	return mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYQUOTEVOLUMEUNKNOWN(int  mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN)
{
	this->mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN = mOVING_7_DAY_QUOTE_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYTOTALTRADES()
{
	return mOVING_7_DAY_TOTAL_TRADES;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYTOTALTRADES(int  mOVING_7_DAY_TOTAL_TRADES)
{
	this->mOVING_7_DAY_TOTAL_TRADES = mOVING_7_DAY_TOTAL_TRADES;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYTOTALTRADESBUY()
{
	return mOVING_7_DAY_TOTAL_TRADES_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYTOTALTRADESBUY(int  mOVING_7_DAY_TOTAL_TRADES_BUY)
{
	this->mOVING_7_DAY_TOTAL_TRADES_BUY = mOVING_7_DAY_TOTAL_TRADES_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYTOTALTRADESSELL()
{
	return mOVING_7_DAY_TOTAL_TRADES_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYTOTALTRADESSELL(int  mOVING_7_DAY_TOTAL_TRADES_SELL)
{
	this->mOVING_7_DAY_TOTAL_TRADES_SELL = mOVING_7_DAY_TOTAL_TRADES_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYTOTALTRADESUNKNOWN()
{
	return mOVING_7_DAY_TOTAL_TRADES_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYTOTALTRADESUNKNOWN(int  mOVING_7_DAY_TOTAL_TRADES_UNKNOWN)
{
	this->mOVING_7_DAY_TOTAL_TRADES_UNKNOWN = mOVING_7_DAY_TOTAL_TRADES_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYVOLUME()
{
	return mOVING_7_DAY_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYVOLUME(int  mOVING_7_DAY_VOLUME)
{
	this->mOVING_7_DAY_VOLUME = mOVING_7_DAY_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYVOLUMEBUY()
{
	return mOVING_7_DAY_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYVOLUMEBUY(int  mOVING_7_DAY_VOLUME_BUY)
{
	this->mOVING_7_DAY_VOLUME_BUY = mOVING_7_DAY_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYVOLUMESELL()
{
	return mOVING_7_DAY_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYVOLUMESELL(int  mOVING_7_DAY_VOLUME_SELL)
{
	this->mOVING_7_DAY_VOLUME_SELL = mOVING_7_DAY_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING7DAYVOLUMEUNKNOWN()
{
	return mOVING_7_DAY_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING7DAYVOLUMEUNKNOWN(int  mOVING_7_DAY_VOLUME_UNKNOWN)
{
	this->mOVING_7_DAY_VOLUME_UNKNOWN = mOVING_7_DAY_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYHIGH()
{
	return mOVING_90_DAY_HIGH;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYHIGH(int  mOVING_90_DAY_HIGH)
{
	this->mOVING_90_DAY_HIGH = mOVING_90_DAY_HIGH;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYLOW()
{
	return mOVING_90_DAY_LOW;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYLOW(int  mOVING_90_DAY_LOW)
{
	this->mOVING_90_DAY_LOW = mOVING_90_DAY_LOW;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYOPEN()
{
	return mOVING_90_DAY_OPEN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYOPEN(int  mOVING_90_DAY_OPEN)
{
	this->mOVING_90_DAY_OPEN = mOVING_90_DAY_OPEN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYQUOTEVOLUME()
{
	return mOVING_90_DAY_QUOTE_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYQUOTEVOLUME(int  mOVING_90_DAY_QUOTE_VOLUME)
{
	this->mOVING_90_DAY_QUOTE_VOLUME = mOVING_90_DAY_QUOTE_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYQUOTEVOLUMEBUY()
{
	return mOVING_90_DAY_QUOTE_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYQUOTEVOLUMEBUY(int  mOVING_90_DAY_QUOTE_VOLUME_BUY)
{
	this->mOVING_90_DAY_QUOTE_VOLUME_BUY = mOVING_90_DAY_QUOTE_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYQUOTEVOLUMESELL()
{
	return mOVING_90_DAY_QUOTE_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYQUOTEVOLUMESELL(int  mOVING_90_DAY_QUOTE_VOLUME_SELL)
{
	this->mOVING_90_DAY_QUOTE_VOLUME_SELL = mOVING_90_DAY_QUOTE_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYQUOTEVOLUMEUNKNOWN()
{
	return mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYQUOTEVOLUMEUNKNOWN(int  mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN)
{
	this->mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN = mOVING_90_DAY_QUOTE_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYTOTALTRADES()
{
	return mOVING_90_DAY_TOTAL_TRADES;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYTOTALTRADES(int  mOVING_90_DAY_TOTAL_TRADES)
{
	this->mOVING_90_DAY_TOTAL_TRADES = mOVING_90_DAY_TOTAL_TRADES;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYTOTALTRADESBUY()
{
	return mOVING_90_DAY_TOTAL_TRADES_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYTOTALTRADESBUY(int  mOVING_90_DAY_TOTAL_TRADES_BUY)
{
	this->mOVING_90_DAY_TOTAL_TRADES_BUY = mOVING_90_DAY_TOTAL_TRADES_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYTOTALTRADESSELL()
{
	return mOVING_90_DAY_TOTAL_TRADES_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYTOTALTRADESSELL(int  mOVING_90_DAY_TOTAL_TRADES_SELL)
{
	this->mOVING_90_DAY_TOTAL_TRADES_SELL = mOVING_90_DAY_TOTAL_TRADES_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYTOTALTRADESUNKNOWN()
{
	return mOVING_90_DAY_TOTAL_TRADES_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYTOTALTRADESUNKNOWN(int  mOVING_90_DAY_TOTAL_TRADES_UNKNOWN)
{
	this->mOVING_90_DAY_TOTAL_TRADES_UNKNOWN = mOVING_90_DAY_TOTAL_TRADES_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYVOLUME()
{
	return mOVING_90_DAY_VOLUME;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYVOLUME(int  mOVING_90_DAY_VOLUME)
{
	this->mOVING_90_DAY_VOLUME = mOVING_90_DAY_VOLUME;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYVOLUMEBUY()
{
	return mOVING_90_DAY_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYVOLUMEBUY(int  mOVING_90_DAY_VOLUME_BUY)
{
	this->mOVING_90_DAY_VOLUME_BUY = mOVING_90_DAY_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYVOLUMESELL()
{
	return mOVING_90_DAY_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYVOLUMESELL(int  mOVING_90_DAY_VOLUME_SELL)
{
	this->mOVING_90_DAY_VOLUME_SELL = mOVING_90_DAY_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getMOVING90DAYVOLUMEUNKNOWN()
{
	return mOVING_90_DAY_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setMOVING90DAYVOLUMEUNKNOWN(int  mOVING_90_DAY_VOLUME_UNKNOWN)
{
	this->mOVING_90_DAY_VOLUME_UNKNOWN = mOVING_90_DAY_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getPRICE()
{
	return pRICE;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setPRICE(int  pRICE)
{
	this->pRICE = pRICE;
}

std::string
SPOT_INSTRUMENT_MARKET_DATA::getPRICEFLAG()
{
	return pRICE_FLAG;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setPRICEFLAG(std::string  pRICE_FLAG)
{
	this->pRICE_FLAG = pRICE_FLAG;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getPRICELASTUPDATETS()
{
	return pRICE_LAST_UPDATE_TS;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setPRICELASTUPDATETS(int  pRICE_LAST_UPDATE_TS)
{
	this->pRICE_LAST_UPDATE_TS = pRICE_LAST_UPDATE_TS;
}

std::string
SPOT_INSTRUMENT_MARKET_DATA::getQUOTE()
{
	return qUOTE;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setQUOTE(std::string  qUOTE)
{
	this->qUOTE = qUOTE;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getTOPASKLASTUPDATETS()
{
	return tOP_ASK_LAST_UPDATE_TS;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setTOPASKLASTUPDATETS(int  tOP_ASK_LAST_UPDATE_TS)
{
	this->tOP_ASK_LAST_UPDATE_TS = tOP_ASK_LAST_UPDATE_TS;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getTOPASKPRICE()
{
	return tOP_ASK_PRICE;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setTOPASKPRICE(int  tOP_ASK_PRICE)
{
	this->tOP_ASK_PRICE = tOP_ASK_PRICE;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getTOPASKQUANTITY()
{
	return tOP_ASK_QUANTITY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setTOPASKQUANTITY(int  tOP_ASK_QUANTITY)
{
	this->tOP_ASK_QUANTITY = tOP_ASK_QUANTITY;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getTOPBIDLASTUPDATETS()
{
	return tOP_BID_LAST_UPDATE_TS;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setTOPBIDLASTUPDATETS(int  tOP_BID_LAST_UPDATE_TS)
{
	this->tOP_BID_LAST_UPDATE_TS = tOP_BID_LAST_UPDATE_TS;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getTOPBIDPRICE()
{
	return tOP_BID_PRICE;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setTOPBIDPRICE(int  tOP_BID_PRICE)
{
	this->tOP_BID_PRICE = tOP_BID_PRICE;
}

int
SPOT_INSTRUMENT_MARKET_DATA::getTOPBIDQUANTITY()
{
	return tOP_BID_QUANTITY;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setTOPBIDQUANTITY(int  tOP_BID_QUANTITY)
{
	this->tOP_BID_QUANTITY = tOP_BID_QUANTITY;
}

std::string
SPOT_INSTRUMENT_MARKET_DATA::getTYPE()
{
	return tYPE;
}

void
SPOT_INSTRUMENT_MARKET_DATA::setTYPE(std::string  tYPE)
{
	this->tYPE = tYPE;
}



