

#include "SPOT_INSTRUMENT_HISTO_DATA.h"

using namespace Tiny;

SPOT_INSTRUMENT_HISTO_DATA::SPOT_INSTRUMENT_HISTO_DATA()
{
	bASE = std::string();
	cLOSE = int(0);
	fIRST_TRADE_PRICE = int(0);
	fIRST_TRADE_TIMESTAMP = int(0);
	hIGH = int(0);
	hIGH_TRADE_PRICE = int(0);
	hIGH_TRADE_TIMESTAMP = int(0);
	iNSTRUMENT = std::string();
	lAST_TRADE_PRICE = int(0);
	lAST_TRADE_TIMESTAMP = int(0);
	lOW = int(0);
	lOW_TRADE_PRICE = int(0);
	lOW_TRADE_TIMESTAMP = int(0);
	mAPPED_INSTRUMENT = std::string();
	mARKET = std::string();
	oPEN = int(0);
	qUOTE = std::string();
	qUOTE_VOLUME = int(0);
	qUOTE_VOLUME_BUY = int(0);
	qUOTE_VOLUME_SELL = int(0);
	qUOTE_VOLUME_UNKNOWN = int(0);
	tIMESTAMP = int(0);
	tOTAL_TRADES = int(0);
	tOTAL_TRADES_BUY = int(0);
	tOTAL_TRADES_SELL = int(0);
	tOTAL_TRADES_UNKNOWN = int(0);
	tYPE = std::string();
	uNIT = std::string();
	vOLUME = int(0);
	vOLUME_BUY = int(0);
	vOLUME_SELL = int(0);
	vOLUME_UNKNOWN = int(0);
}

SPOT_INSTRUMENT_HISTO_DATA::SPOT_INSTRUMENT_HISTO_DATA(std::string jsonString)
{
	this->fromJson(jsonString);
}

SPOT_INSTRUMENT_HISTO_DATA::~SPOT_INSTRUMENT_HISTO_DATA()
{

}

void
SPOT_INSTRUMENT_HISTO_DATA::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *bASEKey = "BASE";

    if(object.has_key(bASEKey))
    {
        bourne::json value = object[bASEKey];



        jsonToValue(&bASE, value, "std::string");


    }

    const char *cLOSEKey = "CLOSE";

    if(object.has_key(cLOSEKey))
    {
        bourne::json value = object[cLOSEKey];



        jsonToValue(&cLOSE, value, "int");


    }

    const char *fIRST_TRADE_PRICEKey = "FIRST_TRADE_PRICE";

    if(object.has_key(fIRST_TRADE_PRICEKey))
    {
        bourne::json value = object[fIRST_TRADE_PRICEKey];



        jsonToValue(&fIRST_TRADE_PRICE, value, "int");


    }

    const char *fIRST_TRADE_TIMESTAMPKey = "FIRST_TRADE_TIMESTAMP";

    if(object.has_key(fIRST_TRADE_TIMESTAMPKey))
    {
        bourne::json value = object[fIRST_TRADE_TIMESTAMPKey];



        jsonToValue(&fIRST_TRADE_TIMESTAMP, value, "int");


    }

    const char *hIGHKey = "HIGH";

    if(object.has_key(hIGHKey))
    {
        bourne::json value = object[hIGHKey];



        jsonToValue(&hIGH, value, "int");


    }

    const char *hIGH_TRADE_PRICEKey = "HIGH_TRADE_PRICE";

    if(object.has_key(hIGH_TRADE_PRICEKey))
    {
        bourne::json value = object[hIGH_TRADE_PRICEKey];



        jsonToValue(&hIGH_TRADE_PRICE, value, "int");


    }

    const char *hIGH_TRADE_TIMESTAMPKey = "HIGH_TRADE_TIMESTAMP";

    if(object.has_key(hIGH_TRADE_TIMESTAMPKey))
    {
        bourne::json value = object[hIGH_TRADE_TIMESTAMPKey];



        jsonToValue(&hIGH_TRADE_TIMESTAMP, value, "int");


    }

    const char *iNSTRUMENTKey = "INSTRUMENT";

    if(object.has_key(iNSTRUMENTKey))
    {
        bourne::json value = object[iNSTRUMENTKey];



        jsonToValue(&iNSTRUMENT, value, "std::string");


    }

    const char *lAST_TRADE_PRICEKey = "LAST_TRADE_PRICE";

    if(object.has_key(lAST_TRADE_PRICEKey))
    {
        bourne::json value = object[lAST_TRADE_PRICEKey];



        jsonToValue(&lAST_TRADE_PRICE, value, "int");


    }

    const char *lAST_TRADE_TIMESTAMPKey = "LAST_TRADE_TIMESTAMP";

    if(object.has_key(lAST_TRADE_TIMESTAMPKey))
    {
        bourne::json value = object[lAST_TRADE_TIMESTAMPKey];



        jsonToValue(&lAST_TRADE_TIMESTAMP, value, "int");


    }

    const char *lOWKey = "LOW";

    if(object.has_key(lOWKey))
    {
        bourne::json value = object[lOWKey];



        jsonToValue(&lOW, value, "int");


    }

    const char *lOW_TRADE_PRICEKey = "LOW_TRADE_PRICE";

    if(object.has_key(lOW_TRADE_PRICEKey))
    {
        bourne::json value = object[lOW_TRADE_PRICEKey];



        jsonToValue(&lOW_TRADE_PRICE, value, "int");


    }

    const char *lOW_TRADE_TIMESTAMPKey = "LOW_TRADE_TIMESTAMP";

    if(object.has_key(lOW_TRADE_TIMESTAMPKey))
    {
        bourne::json value = object[lOW_TRADE_TIMESTAMPKey];



        jsonToValue(&lOW_TRADE_TIMESTAMP, value, "int");


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

    const char *oPENKey = "OPEN";

    if(object.has_key(oPENKey))
    {
        bourne::json value = object[oPENKey];



        jsonToValue(&oPEN, value, "int");


    }

    const char *qUOTEKey = "QUOTE";

    if(object.has_key(qUOTEKey))
    {
        bourne::json value = object[qUOTEKey];



        jsonToValue(&qUOTE, value, "std::string");


    }

    const char *qUOTE_VOLUMEKey = "QUOTE_VOLUME";

    if(object.has_key(qUOTE_VOLUMEKey))
    {
        bourne::json value = object[qUOTE_VOLUMEKey];



        jsonToValue(&qUOTE_VOLUME, value, "int");


    }

    const char *qUOTE_VOLUME_BUYKey = "QUOTE_VOLUME_BUY";

    if(object.has_key(qUOTE_VOLUME_BUYKey))
    {
        bourne::json value = object[qUOTE_VOLUME_BUYKey];



        jsonToValue(&qUOTE_VOLUME_BUY, value, "int");


    }

    const char *qUOTE_VOLUME_SELLKey = "QUOTE_VOLUME_SELL";

    if(object.has_key(qUOTE_VOLUME_SELLKey))
    {
        bourne::json value = object[qUOTE_VOLUME_SELLKey];



        jsonToValue(&qUOTE_VOLUME_SELL, value, "int");


    }

    const char *qUOTE_VOLUME_UNKNOWNKey = "QUOTE_VOLUME_UNKNOWN";

    if(object.has_key(qUOTE_VOLUME_UNKNOWNKey))
    {
        bourne::json value = object[qUOTE_VOLUME_UNKNOWNKey];



        jsonToValue(&qUOTE_VOLUME_UNKNOWN, value, "int");


    }

    const char *tIMESTAMPKey = "TIMESTAMP";

    if(object.has_key(tIMESTAMPKey))
    {
        bourne::json value = object[tIMESTAMPKey];



        jsonToValue(&tIMESTAMP, value, "int");


    }

    const char *tOTAL_TRADESKey = "TOTAL_TRADES";

    if(object.has_key(tOTAL_TRADESKey))
    {
        bourne::json value = object[tOTAL_TRADESKey];



        jsonToValue(&tOTAL_TRADES, value, "int");


    }

    const char *tOTAL_TRADES_BUYKey = "TOTAL_TRADES_BUY";

    if(object.has_key(tOTAL_TRADES_BUYKey))
    {
        bourne::json value = object[tOTAL_TRADES_BUYKey];



        jsonToValue(&tOTAL_TRADES_BUY, value, "int");


    }

    const char *tOTAL_TRADES_SELLKey = "TOTAL_TRADES_SELL";

    if(object.has_key(tOTAL_TRADES_SELLKey))
    {
        bourne::json value = object[tOTAL_TRADES_SELLKey];



        jsonToValue(&tOTAL_TRADES_SELL, value, "int");


    }

    const char *tOTAL_TRADES_UNKNOWNKey = "TOTAL_TRADES_UNKNOWN";

    if(object.has_key(tOTAL_TRADES_UNKNOWNKey))
    {
        bourne::json value = object[tOTAL_TRADES_UNKNOWNKey];



        jsonToValue(&tOTAL_TRADES_UNKNOWN, value, "int");


    }

    const char *tYPEKey = "TYPE";

    if(object.has_key(tYPEKey))
    {
        bourne::json value = object[tYPEKey];



        jsonToValue(&tYPE, value, "std::string");


    }

    const char *uNITKey = "UNIT";

    if(object.has_key(uNITKey))
    {
        bourne::json value = object[uNITKey];



        jsonToValue(&uNIT, value, "std::string");


    }

    const char *vOLUMEKey = "VOLUME";

    if(object.has_key(vOLUMEKey))
    {
        bourne::json value = object[vOLUMEKey];



        jsonToValue(&vOLUME, value, "int");


    }

    const char *vOLUME_BUYKey = "VOLUME_BUY";

    if(object.has_key(vOLUME_BUYKey))
    {
        bourne::json value = object[vOLUME_BUYKey];



        jsonToValue(&vOLUME_BUY, value, "int");


    }

    const char *vOLUME_SELLKey = "VOLUME_SELL";

    if(object.has_key(vOLUME_SELLKey))
    {
        bourne::json value = object[vOLUME_SELLKey];



        jsonToValue(&vOLUME_SELL, value, "int");


    }

    const char *vOLUME_UNKNOWNKey = "VOLUME_UNKNOWN";

    if(object.has_key(vOLUME_UNKNOWNKey))
    {
        bourne::json value = object[vOLUME_UNKNOWNKey];



        jsonToValue(&vOLUME_UNKNOWN, value, "int");


    }


}

bourne::json
SPOT_INSTRUMENT_HISTO_DATA::toJson()
{
    bourne::json object = bourne::json::object();





    object["bASE"] = getBASE();






    object["cLOSE"] = getCLOSE();






    object["fIRST_TRADE_PRICE"] = getFIRSTTRADEPRICE();






    object["fIRST_TRADE_TIMESTAMP"] = getFIRSTTRADETIMESTAMP();






    object["hIGH"] = getHIGH();






    object["hIGH_TRADE_PRICE"] = getHIGHTRADEPRICE();






    object["hIGH_TRADE_TIMESTAMP"] = getHIGHTRADETIMESTAMP();






    object["iNSTRUMENT"] = getINSTRUMENT();






    object["lAST_TRADE_PRICE"] = getLASTTRADEPRICE();






    object["lAST_TRADE_TIMESTAMP"] = getLASTTRADETIMESTAMP();






    object["lOW"] = getLOW();






    object["lOW_TRADE_PRICE"] = getLOWTRADEPRICE();






    object["lOW_TRADE_TIMESTAMP"] = getLOWTRADETIMESTAMP();






    object["mAPPED_INSTRUMENT"] = getMAPPEDINSTRUMENT();






    object["mARKET"] = getMARKET();






    object["oPEN"] = getOPEN();






    object["qUOTE"] = getQUOTE();






    object["qUOTE_VOLUME"] = getQUOTEVOLUME();






    object["qUOTE_VOLUME_BUY"] = getQUOTEVOLUMEBUY();






    object["qUOTE_VOLUME_SELL"] = getQUOTEVOLUMESELL();






    object["qUOTE_VOLUME_UNKNOWN"] = getQUOTEVOLUMEUNKNOWN();






    object["tIMESTAMP"] = getTIMESTAMP();






    object["tOTAL_TRADES"] = getTOTALTRADES();






    object["tOTAL_TRADES_BUY"] = getTOTALTRADESBUY();






    object["tOTAL_TRADES_SELL"] = getTOTALTRADESSELL();






    object["tOTAL_TRADES_UNKNOWN"] = getTOTALTRADESUNKNOWN();






    object["tYPE"] = getTYPE();






    object["uNIT"] = getUNIT();






    object["vOLUME"] = getVOLUME();






    object["vOLUME_BUY"] = getVOLUMEBUY();






    object["vOLUME_SELL"] = getVOLUMESELL();






    object["vOLUME_UNKNOWN"] = getVOLUMEUNKNOWN();



    return object;

}

std::string
SPOT_INSTRUMENT_HISTO_DATA::getBASE()
{
	return bASE;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setBASE(std::string  bASE)
{
	this->bASE = bASE;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getCLOSE()
{
	return cLOSE;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setCLOSE(int  cLOSE)
{
	this->cLOSE = cLOSE;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getFIRSTTRADEPRICE()
{
	return fIRST_TRADE_PRICE;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setFIRSTTRADEPRICE(int  fIRST_TRADE_PRICE)
{
	this->fIRST_TRADE_PRICE = fIRST_TRADE_PRICE;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getFIRSTTRADETIMESTAMP()
{
	return fIRST_TRADE_TIMESTAMP;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setFIRSTTRADETIMESTAMP(int  fIRST_TRADE_TIMESTAMP)
{
	this->fIRST_TRADE_TIMESTAMP = fIRST_TRADE_TIMESTAMP;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getHIGH()
{
	return hIGH;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setHIGH(int  hIGH)
{
	this->hIGH = hIGH;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getHIGHTRADEPRICE()
{
	return hIGH_TRADE_PRICE;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setHIGHTRADEPRICE(int  hIGH_TRADE_PRICE)
{
	this->hIGH_TRADE_PRICE = hIGH_TRADE_PRICE;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getHIGHTRADETIMESTAMP()
{
	return hIGH_TRADE_TIMESTAMP;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setHIGHTRADETIMESTAMP(int  hIGH_TRADE_TIMESTAMP)
{
	this->hIGH_TRADE_TIMESTAMP = hIGH_TRADE_TIMESTAMP;
}

std::string
SPOT_INSTRUMENT_HISTO_DATA::getINSTRUMENT()
{
	return iNSTRUMENT;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setINSTRUMENT(std::string  iNSTRUMENT)
{
	this->iNSTRUMENT = iNSTRUMENT;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getLASTTRADEPRICE()
{
	return lAST_TRADE_PRICE;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setLASTTRADEPRICE(int  lAST_TRADE_PRICE)
{
	this->lAST_TRADE_PRICE = lAST_TRADE_PRICE;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getLASTTRADETIMESTAMP()
{
	return lAST_TRADE_TIMESTAMP;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setLASTTRADETIMESTAMP(int  lAST_TRADE_TIMESTAMP)
{
	this->lAST_TRADE_TIMESTAMP = lAST_TRADE_TIMESTAMP;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getLOW()
{
	return lOW;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setLOW(int  lOW)
{
	this->lOW = lOW;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getLOWTRADEPRICE()
{
	return lOW_TRADE_PRICE;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setLOWTRADEPRICE(int  lOW_TRADE_PRICE)
{
	this->lOW_TRADE_PRICE = lOW_TRADE_PRICE;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getLOWTRADETIMESTAMP()
{
	return lOW_TRADE_TIMESTAMP;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setLOWTRADETIMESTAMP(int  lOW_TRADE_TIMESTAMP)
{
	this->lOW_TRADE_TIMESTAMP = lOW_TRADE_TIMESTAMP;
}

std::string
SPOT_INSTRUMENT_HISTO_DATA::getMAPPEDINSTRUMENT()
{
	return mAPPED_INSTRUMENT;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setMAPPEDINSTRUMENT(std::string  mAPPED_INSTRUMENT)
{
	this->mAPPED_INSTRUMENT = mAPPED_INSTRUMENT;
}

std::string
SPOT_INSTRUMENT_HISTO_DATA::getMARKET()
{
	return mARKET;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setMARKET(std::string  mARKET)
{
	this->mARKET = mARKET;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getOPEN()
{
	return oPEN;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setOPEN(int  oPEN)
{
	this->oPEN = oPEN;
}

std::string
SPOT_INSTRUMENT_HISTO_DATA::getQUOTE()
{
	return qUOTE;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setQUOTE(std::string  qUOTE)
{
	this->qUOTE = qUOTE;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getQUOTEVOLUME()
{
	return qUOTE_VOLUME;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setQUOTEVOLUME(int  qUOTE_VOLUME)
{
	this->qUOTE_VOLUME = qUOTE_VOLUME;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getQUOTEVOLUMEBUY()
{
	return qUOTE_VOLUME_BUY;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setQUOTEVOLUMEBUY(int  qUOTE_VOLUME_BUY)
{
	this->qUOTE_VOLUME_BUY = qUOTE_VOLUME_BUY;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getQUOTEVOLUMESELL()
{
	return qUOTE_VOLUME_SELL;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setQUOTEVOLUMESELL(int  qUOTE_VOLUME_SELL)
{
	this->qUOTE_VOLUME_SELL = qUOTE_VOLUME_SELL;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getQUOTEVOLUMEUNKNOWN()
{
	return qUOTE_VOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setQUOTEVOLUMEUNKNOWN(int  qUOTE_VOLUME_UNKNOWN)
{
	this->qUOTE_VOLUME_UNKNOWN = qUOTE_VOLUME_UNKNOWN;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getTIMESTAMP()
{
	return tIMESTAMP;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setTIMESTAMP(int  tIMESTAMP)
{
	this->tIMESTAMP = tIMESTAMP;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getTOTALTRADES()
{
	return tOTAL_TRADES;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setTOTALTRADES(int  tOTAL_TRADES)
{
	this->tOTAL_TRADES = tOTAL_TRADES;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getTOTALTRADESBUY()
{
	return tOTAL_TRADES_BUY;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setTOTALTRADESBUY(int  tOTAL_TRADES_BUY)
{
	this->tOTAL_TRADES_BUY = tOTAL_TRADES_BUY;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getTOTALTRADESSELL()
{
	return tOTAL_TRADES_SELL;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setTOTALTRADESSELL(int  tOTAL_TRADES_SELL)
{
	this->tOTAL_TRADES_SELL = tOTAL_TRADES_SELL;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getTOTALTRADESUNKNOWN()
{
	return tOTAL_TRADES_UNKNOWN;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setTOTALTRADESUNKNOWN(int  tOTAL_TRADES_UNKNOWN)
{
	this->tOTAL_TRADES_UNKNOWN = tOTAL_TRADES_UNKNOWN;
}

std::string
SPOT_INSTRUMENT_HISTO_DATA::getTYPE()
{
	return tYPE;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setTYPE(std::string  tYPE)
{
	this->tYPE = tYPE;
}

std::string
SPOT_INSTRUMENT_HISTO_DATA::getUNIT()
{
	return uNIT;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setUNIT(std::string  uNIT)
{
	this->uNIT = uNIT;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getVOLUME()
{
	return vOLUME;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setVOLUME(int  vOLUME)
{
	this->vOLUME = vOLUME;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getVOLUMEBUY()
{
	return vOLUME_BUY;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setVOLUMEBUY(int  vOLUME_BUY)
{
	this->vOLUME_BUY = vOLUME_BUY;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getVOLUMESELL()
{
	return vOLUME_SELL;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setVOLUMESELL(int  vOLUME_SELL)
{
	this->vOLUME_SELL = vOLUME_SELL;
}

int
SPOT_INSTRUMENT_HISTO_DATA::getVOLUMEUNKNOWN()
{
	return vOLUME_UNKNOWN;
}

void
SPOT_INSTRUMENT_HISTO_DATA::setVOLUMEUNKNOWN(int  vOLUME_UNKNOWN)
{
	this->vOLUME_UNKNOWN = vOLUME_UNKNOWN;
}



