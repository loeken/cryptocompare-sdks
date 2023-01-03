

#include "SPOT_INSTRUMENT_TRADE.h"

using namespace Tiny;

SPOT_INSTRUMENT_TRADE::SPOT_INSTRUMENT_TRADE()
{
	bASE = std::string();
	cCSEQ = int(0);
	iD = std::string();
	iNSTRUMENT = std::string();
	mAPPED_INSTRUMENT = std::string();
	mARKET = std::string();
	pRICE = int(0);
	qUANTITY = int(0);
	qUOTE = std::string();
	qUOTE_QUANTITY = int(0);
	rECEIVED_TIMESTAMP = int(0);
	rECEIVED_TIMESTAMP_NS = int(0);
	sIDE = std::string();
	sOURCE = std::string();
	tIMESTAMP = int(0);
	tIMESTAMP_NS = int(0);
	tYPE = std::string();
}

SPOT_INSTRUMENT_TRADE::SPOT_INSTRUMENT_TRADE(std::string jsonString)
{
	this->fromJson(jsonString);
}

SPOT_INSTRUMENT_TRADE::~SPOT_INSTRUMENT_TRADE()
{

}

void
SPOT_INSTRUMENT_TRADE::fromJson(std::string jsonObj)
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

    const char *iDKey = "ID";

    if(object.has_key(iDKey))
    {
        bourne::json value = object[iDKey];



        jsonToValue(&iD, value, "std::string");


    }

    const char *iNSTRUMENTKey = "INSTRUMENT";

    if(object.has_key(iNSTRUMENTKey))
    {
        bourne::json value = object[iNSTRUMENTKey];



        jsonToValue(&iNSTRUMENT, value, "std::string");


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

    const char *pRICEKey = "PRICE";

    if(object.has_key(pRICEKey))
    {
        bourne::json value = object[pRICEKey];



        jsonToValue(&pRICE, value, "int");


    }

    const char *qUANTITYKey = "QUANTITY";

    if(object.has_key(qUANTITYKey))
    {
        bourne::json value = object[qUANTITYKey];



        jsonToValue(&qUANTITY, value, "int");


    }

    const char *qUOTEKey = "QUOTE";

    if(object.has_key(qUOTEKey))
    {
        bourne::json value = object[qUOTEKey];



        jsonToValue(&qUOTE, value, "std::string");


    }

    const char *qUOTE_QUANTITYKey = "QUOTE_QUANTITY";

    if(object.has_key(qUOTE_QUANTITYKey))
    {
        bourne::json value = object[qUOTE_QUANTITYKey];



        jsonToValue(&qUOTE_QUANTITY, value, "int");


    }

    const char *rECEIVED_TIMESTAMPKey = "RECEIVED_TIMESTAMP";

    if(object.has_key(rECEIVED_TIMESTAMPKey))
    {
        bourne::json value = object[rECEIVED_TIMESTAMPKey];



        jsonToValue(&rECEIVED_TIMESTAMP, value, "int");


    }

    const char *rECEIVED_TIMESTAMP_NSKey = "RECEIVED_TIMESTAMP_NS";

    if(object.has_key(rECEIVED_TIMESTAMP_NSKey))
    {
        bourne::json value = object[rECEIVED_TIMESTAMP_NSKey];



        jsonToValue(&rECEIVED_TIMESTAMP_NS, value, "int");


    }

    const char *sIDEKey = "SIDE";

    if(object.has_key(sIDEKey))
    {
        bourne::json value = object[sIDEKey];



        jsonToValue(&sIDE, value, "std::string");


    }

    const char *sOURCEKey = "SOURCE";

    if(object.has_key(sOURCEKey))
    {
        bourne::json value = object[sOURCEKey];



        jsonToValue(&sOURCE, value, "std::string");


    }

    const char *tIMESTAMPKey = "TIMESTAMP";

    if(object.has_key(tIMESTAMPKey))
    {
        bourne::json value = object[tIMESTAMPKey];



        jsonToValue(&tIMESTAMP, value, "int");


    }

    const char *tIMESTAMP_NSKey = "TIMESTAMP_NS";

    if(object.has_key(tIMESTAMP_NSKey))
    {
        bourne::json value = object[tIMESTAMP_NSKey];



        jsonToValue(&tIMESTAMP_NS, value, "int");


    }

    const char *tYPEKey = "TYPE";

    if(object.has_key(tYPEKey))
    {
        bourne::json value = object[tYPEKey];



        jsonToValue(&tYPE, value, "std::string");


    }


}

bourne::json
SPOT_INSTRUMENT_TRADE::toJson()
{
    bourne::json object = bourne::json::object();





    object["bASE"] = getBASE();






    object["cCSEQ"] = getCCSEQ();






    object["iD"] = getID();






    object["iNSTRUMENT"] = getINSTRUMENT();






    object["mAPPED_INSTRUMENT"] = getMAPPEDINSTRUMENT();






    object["mARKET"] = getMARKET();






    object["pRICE"] = getPRICE();






    object["qUANTITY"] = getQUANTITY();






    object["qUOTE"] = getQUOTE();






    object["qUOTE_QUANTITY"] = getQUOTEQUANTITY();






    object["rECEIVED_TIMESTAMP"] = getRECEIVEDTIMESTAMP();






    object["rECEIVED_TIMESTAMP_NS"] = getRECEIVEDTIMESTAMPNS();






    object["sIDE"] = getSIDE();






    object["sOURCE"] = getSOURCE();






    object["tIMESTAMP"] = getTIMESTAMP();






    object["tIMESTAMP_NS"] = getTIMESTAMPNS();






    object["tYPE"] = getTYPE();



    return object;

}

std::string
SPOT_INSTRUMENT_TRADE::getBASE()
{
	return bASE;
}

void
SPOT_INSTRUMENT_TRADE::setBASE(std::string  bASE)
{
	this->bASE = bASE;
}

int
SPOT_INSTRUMENT_TRADE::getCCSEQ()
{
	return cCSEQ;
}

void
SPOT_INSTRUMENT_TRADE::setCCSEQ(int  cCSEQ)
{
	this->cCSEQ = cCSEQ;
}

std::string
SPOT_INSTRUMENT_TRADE::getID()
{
	return iD;
}

void
SPOT_INSTRUMENT_TRADE::setID(std::string  iD)
{
	this->iD = iD;
}

std::string
SPOT_INSTRUMENT_TRADE::getINSTRUMENT()
{
	return iNSTRUMENT;
}

void
SPOT_INSTRUMENT_TRADE::setINSTRUMENT(std::string  iNSTRUMENT)
{
	this->iNSTRUMENT = iNSTRUMENT;
}

std::string
SPOT_INSTRUMENT_TRADE::getMAPPEDINSTRUMENT()
{
	return mAPPED_INSTRUMENT;
}

void
SPOT_INSTRUMENT_TRADE::setMAPPEDINSTRUMENT(std::string  mAPPED_INSTRUMENT)
{
	this->mAPPED_INSTRUMENT = mAPPED_INSTRUMENT;
}

std::string
SPOT_INSTRUMENT_TRADE::getMARKET()
{
	return mARKET;
}

void
SPOT_INSTRUMENT_TRADE::setMARKET(std::string  mARKET)
{
	this->mARKET = mARKET;
}

int
SPOT_INSTRUMENT_TRADE::getPRICE()
{
	return pRICE;
}

void
SPOT_INSTRUMENT_TRADE::setPRICE(int  pRICE)
{
	this->pRICE = pRICE;
}

int
SPOT_INSTRUMENT_TRADE::getQUANTITY()
{
	return qUANTITY;
}

void
SPOT_INSTRUMENT_TRADE::setQUANTITY(int  qUANTITY)
{
	this->qUANTITY = qUANTITY;
}

std::string
SPOT_INSTRUMENT_TRADE::getQUOTE()
{
	return qUOTE;
}

void
SPOT_INSTRUMENT_TRADE::setQUOTE(std::string  qUOTE)
{
	this->qUOTE = qUOTE;
}

int
SPOT_INSTRUMENT_TRADE::getQUOTEQUANTITY()
{
	return qUOTE_QUANTITY;
}

void
SPOT_INSTRUMENT_TRADE::setQUOTEQUANTITY(int  qUOTE_QUANTITY)
{
	this->qUOTE_QUANTITY = qUOTE_QUANTITY;
}

int
SPOT_INSTRUMENT_TRADE::getRECEIVEDTIMESTAMP()
{
	return rECEIVED_TIMESTAMP;
}

void
SPOT_INSTRUMENT_TRADE::setRECEIVEDTIMESTAMP(int  rECEIVED_TIMESTAMP)
{
	this->rECEIVED_TIMESTAMP = rECEIVED_TIMESTAMP;
}

int
SPOT_INSTRUMENT_TRADE::getRECEIVEDTIMESTAMPNS()
{
	return rECEIVED_TIMESTAMP_NS;
}

void
SPOT_INSTRUMENT_TRADE::setRECEIVEDTIMESTAMPNS(int  rECEIVED_TIMESTAMP_NS)
{
	this->rECEIVED_TIMESTAMP_NS = rECEIVED_TIMESTAMP_NS;
}

std::string
SPOT_INSTRUMENT_TRADE::getSIDE()
{
	return sIDE;
}

void
SPOT_INSTRUMENT_TRADE::setSIDE(std::string  sIDE)
{
	this->sIDE = sIDE;
}

std::string
SPOT_INSTRUMENT_TRADE::getSOURCE()
{
	return sOURCE;
}

void
SPOT_INSTRUMENT_TRADE::setSOURCE(std::string  sOURCE)
{
	this->sOURCE = sOURCE;
}

int
SPOT_INSTRUMENT_TRADE::getTIMESTAMP()
{
	return tIMESTAMP;
}

void
SPOT_INSTRUMENT_TRADE::setTIMESTAMP(int  tIMESTAMP)
{
	this->tIMESTAMP = tIMESTAMP;
}

int
SPOT_INSTRUMENT_TRADE::getTIMESTAMPNS()
{
	return tIMESTAMP_NS;
}

void
SPOT_INSTRUMENT_TRADE::setTIMESTAMPNS(int  tIMESTAMP_NS)
{
	this->tIMESTAMP_NS = tIMESTAMP_NS;
}

std::string
SPOT_INSTRUMENT_TRADE::getTYPE()
{
	return tYPE;
}

void
SPOT_INSTRUMENT_TRADE::setTYPE(std::string  tYPE)
{
	this->tYPE = tYPE;
}



