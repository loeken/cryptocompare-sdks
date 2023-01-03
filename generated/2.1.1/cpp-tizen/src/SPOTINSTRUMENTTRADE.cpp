#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SPOT_INSTRUMENT_TRADE.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SPOT_INSTRUMENT_TRADE::SPOT_INSTRUMENT_TRADE()
{
	//__init();
}

SPOT_INSTRUMENT_TRADE::~SPOT_INSTRUMENT_TRADE()
{
	//__cleanup();
}

void
SPOT_INSTRUMENT_TRADE::__init()
{
	//bASE = std::string();
	//cCSEQ = int(0);
	//iD = std::string();
	//iNSTRUMENT = std::string();
	//mAPPED_INSTRUMENT = std::string();
	//mARKET = std::string();
	//pRICE = int(0);
	//qUANTITY = int(0);
	//qUOTE = std::string();
	//qUOTE_QUANTITY = int(0);
	//rECEIVED_TIMESTAMP = int(0);
	//rECEIVED_TIMESTAMP_NS = int(0);
	//sIDE = std::string();
	//sOURCE = std::string();
	//tIMESTAMP = int(0);
	//tIMESTAMP_NS = int(0);
	//tYPE = std::string();
}

void
SPOT_INSTRUMENT_TRADE::__cleanup()
{
	//if(bASE != NULL) {
	//
	//delete bASE;
	//bASE = NULL;
	//}
	//if(cCSEQ != NULL) {
	//
	//delete cCSEQ;
	//cCSEQ = NULL;
	//}
	//if(iD != NULL) {
	//
	//delete iD;
	//iD = NULL;
	//}
	//if(iNSTRUMENT != NULL) {
	//
	//delete iNSTRUMENT;
	//iNSTRUMENT = NULL;
	//}
	//if(mAPPED_INSTRUMENT != NULL) {
	//
	//delete mAPPED_INSTRUMENT;
	//mAPPED_INSTRUMENT = NULL;
	//}
	//if(mARKET != NULL) {
	//
	//delete mARKET;
	//mARKET = NULL;
	//}
	//if(pRICE != NULL) {
	//
	//delete pRICE;
	//pRICE = NULL;
	//}
	//if(qUANTITY != NULL) {
	//
	//delete qUANTITY;
	//qUANTITY = NULL;
	//}
	//if(qUOTE != NULL) {
	//
	//delete qUOTE;
	//qUOTE = NULL;
	//}
	//if(qUOTE_QUANTITY != NULL) {
	//
	//delete qUOTE_QUANTITY;
	//qUOTE_QUANTITY = NULL;
	//}
	//if(rECEIVED_TIMESTAMP != NULL) {
	//
	//delete rECEIVED_TIMESTAMP;
	//rECEIVED_TIMESTAMP = NULL;
	//}
	//if(rECEIVED_TIMESTAMP_NS != NULL) {
	//
	//delete rECEIVED_TIMESTAMP_NS;
	//rECEIVED_TIMESTAMP_NS = NULL;
	//}
	//if(sIDE != NULL) {
	//
	//delete sIDE;
	//sIDE = NULL;
	//}
	//if(sOURCE != NULL) {
	//
	//delete sOURCE;
	//sOURCE = NULL;
	//}
	//if(tIMESTAMP != NULL) {
	//
	//delete tIMESTAMP;
	//tIMESTAMP = NULL;
	//}
	//if(tIMESTAMP_NS != NULL) {
	//
	//delete tIMESTAMP_NS;
	//tIMESTAMP_NS = NULL;
	//}
	//if(tYPE != NULL) {
	//
	//delete tYPE;
	//tYPE = NULL;
	//}
	//
}

void
SPOT_INSTRUMENT_TRADE::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *bASEKey = "BASE";
	node = json_object_get_member(pJsonObject, bASEKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&bASE, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *cCSEQKey = "CCSEQ";
	node = json_object_get_member(pJsonObject, cCSEQKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&cCSEQ, node, "int", "");
		} else {
			
		}
	}
	const gchar *iDKey = "ID";
	node = json_object_get_member(pJsonObject, iDKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iD, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *iNSTRUMENTKey = "INSTRUMENT";
	node = json_object_get_member(pJsonObject, iNSTRUMENTKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&iNSTRUMENT, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *mAPPED_INSTRUMENTKey = "MAPPED_INSTRUMENT";
	node = json_object_get_member(pJsonObject, mAPPED_INSTRUMENTKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&mAPPED_INSTRUMENT, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *mARKETKey = "MARKET";
	node = json_object_get_member(pJsonObject, mARKETKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&mARKET, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *pRICEKey = "PRICE";
	node = json_object_get_member(pJsonObject, pRICEKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&pRICE, node, "int", "");
		} else {
			
		}
	}
	const gchar *qUANTITYKey = "QUANTITY";
	node = json_object_get_member(pJsonObject, qUANTITYKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&qUANTITY, node, "int", "");
		} else {
			
		}
	}
	const gchar *qUOTEKey = "QUOTE";
	node = json_object_get_member(pJsonObject, qUOTEKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&qUOTE, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *qUOTE_QUANTITYKey = "QUOTE_QUANTITY";
	node = json_object_get_member(pJsonObject, qUOTE_QUANTITYKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&qUOTE_QUANTITY, node, "int", "");
		} else {
			
		}
	}
	const gchar *rECEIVED_TIMESTAMPKey = "RECEIVED_TIMESTAMP";
	node = json_object_get_member(pJsonObject, rECEIVED_TIMESTAMPKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&rECEIVED_TIMESTAMP, node, "int", "");
		} else {
			
		}
	}
	const gchar *rECEIVED_TIMESTAMP_NSKey = "RECEIVED_TIMESTAMP_NS";
	node = json_object_get_member(pJsonObject, rECEIVED_TIMESTAMP_NSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&rECEIVED_TIMESTAMP_NS, node, "int", "");
		} else {
			
		}
	}
	const gchar *sIDEKey = "SIDE";
	node = json_object_get_member(pJsonObject, sIDEKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&sIDE, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *sOURCEKey = "SOURCE";
	node = json_object_get_member(pJsonObject, sOURCEKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&sOURCE, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *tIMESTAMPKey = "TIMESTAMP";
	node = json_object_get_member(pJsonObject, tIMESTAMPKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&tIMESTAMP, node, "int", "");
		} else {
			
		}
	}
	const gchar *tIMESTAMP_NSKey = "TIMESTAMP_NS";
	node = json_object_get_member(pJsonObject, tIMESTAMP_NSKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&tIMESTAMP_NS, node, "int", "");
		} else {
			
		}
	}
	const gchar *tYPEKey = "TYPE";
	node = json_object_get_member(pJsonObject, tYPEKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&tYPE, node, "std::string", "");
		} else {
			
		}
	}
}

SPOT_INSTRUMENT_TRADE::SPOT_INSTRUMENT_TRADE(char* json)
{
	this->fromJson(json);
}

char*
SPOT_INSTRUMENT_TRADE::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getBASE();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *bASEKey = "BASE";
	json_object_set_member(pJsonObject, bASEKey, node);
	if (isprimitive("int")) {
		int obj = getCCSEQ();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *cCSEQKey = "CCSEQ";
	json_object_set_member(pJsonObject, cCSEQKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getID();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iDKey = "ID";
	json_object_set_member(pJsonObject, iDKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getINSTRUMENT();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *iNSTRUMENTKey = "INSTRUMENT";
	json_object_set_member(pJsonObject, iNSTRUMENTKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMAPPEDINSTRUMENT();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *mAPPED_INSTRUMENTKey = "MAPPED_INSTRUMENT";
	json_object_set_member(pJsonObject, mAPPED_INSTRUMENTKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getMARKET();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *mARKETKey = "MARKET";
	json_object_set_member(pJsonObject, mARKETKey, node);
	if (isprimitive("int")) {
		int obj = getPRICE();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *pRICEKey = "PRICE";
	json_object_set_member(pJsonObject, pRICEKey, node);
	if (isprimitive("int")) {
		int obj = getQUANTITY();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *qUANTITYKey = "QUANTITY";
	json_object_set_member(pJsonObject, qUANTITYKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getQUOTE();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *qUOTEKey = "QUOTE";
	json_object_set_member(pJsonObject, qUOTEKey, node);
	if (isprimitive("int")) {
		int obj = getQUOTEQUANTITY();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *qUOTE_QUANTITYKey = "QUOTE_QUANTITY";
	json_object_set_member(pJsonObject, qUOTE_QUANTITYKey, node);
	if (isprimitive("int")) {
		int obj = getRECEIVEDTIMESTAMP();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *rECEIVED_TIMESTAMPKey = "RECEIVED_TIMESTAMP";
	json_object_set_member(pJsonObject, rECEIVED_TIMESTAMPKey, node);
	if (isprimitive("int")) {
		int obj = getRECEIVEDTIMESTAMPNS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *rECEIVED_TIMESTAMP_NSKey = "RECEIVED_TIMESTAMP_NS";
	json_object_set_member(pJsonObject, rECEIVED_TIMESTAMP_NSKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSIDE();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *sIDEKey = "SIDE";
	json_object_set_member(pJsonObject, sIDEKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSOURCE();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *sOURCEKey = "SOURCE";
	json_object_set_member(pJsonObject, sOURCEKey, node);
	if (isprimitive("int")) {
		int obj = getTIMESTAMP();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *tIMESTAMPKey = "TIMESTAMP";
	json_object_set_member(pJsonObject, tIMESTAMPKey, node);
	if (isprimitive("int")) {
		int obj = getTIMESTAMPNS();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *tIMESTAMP_NSKey = "TIMESTAMP_NS";
	json_object_set_member(pJsonObject, tIMESTAMP_NSKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTYPE();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *tYPEKey = "TYPE";
	json_object_set_member(pJsonObject, tYPEKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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


